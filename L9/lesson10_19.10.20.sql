-- представления view
-- функции
-- хранимые процедуры
-- триггеры

-- функция проверки дружбы
delimiter // -- меняем знак окончания команды

create function check_friendship(u_id INT, check_friend_id INT)
returns int reads sql data
begin
	declare res INT;
	select count(*) into res from friend_requests 
	where 
		((initiator_user_id = u_id and target_user_id = check_friend_id) 
		or (target_user_id = u_id and initiator_user_id = check_friend_id))
		and status = 'approved';
	return res;
end//

delimiter ;

select check_friendship(1,11);

-- функция соотношени отправленных и полученных запросов в друзья
-- drop function if exists friendship_direction;

delimiter //

create function friendship_direction(check_user_id int)
returns float deterministic
begin
	declare requests_to_user int;
	declare requests_from_user int;
	-- получить из запроса значение в переменную (способ 1)
	set requests_to_user = (select count(*) from friend_requests where target_user_id = check_user_id);
	-- получить из запроса значение в переменную (способ 2)
	select count(*) into requests_from_user from friend_requests where initiator_user_id = check_user_id;
	return requests_to_user / requests_from_user;
end//

delimiter ;

select friendship_direction(11);

show function status; -- список функций

-- процедура 

-- in
-- out
-- inout
drop procedure if exists params_example;

delimiter //

create procedure params_example(in x int, out y int)
begin
	set y = x + 8;
	set x = x - 8;
end//

set @a = 10;
set @b = 2;
call params_example(@a,@b);

select @a;
select @b;

delimiter ;


drop procedure if exists friendship_offers;

delimiter //

create procedure friendship_offers(in for_user_id int )
begin
	-- общий город
	select u2.id
	from users u1
	join users u2
		on u1.hometown = u2.hometown
	where u1.id = for_user_id
	and u2.id <> for_user_id
	union
	-- общие группы
	select distinct uc2.user_id
	from users_communities uc1
	join users_communities uc2
	on uc1.community_id = uc2.community_id
	where uc1.user_id = for_user_id
	and uc1.user_id <> uc2.user_id
	union
	-- друзья друзей
	select target_user_id from friend_requests fr1
	right join 
	(select * from (select
		case 
		  when initiator_user_id = for_user_id and status = 'approved' then target_user_id
		  when target_user_id = for_user_id  and status = 'approved' then initiator_user_id 
		end as friend_id
	    from friend_requests) friends_ids where friend_id is not null) fr2
	 on fr1.initiator_user_id = fr2.friend_id
	 where target_user_id <> for_user_id
	union
	select initiator_user_id as ff from friend_requests fr3
	right join
	(
	select * from (
	select
		case 
		  when initiator_user_id = for_user_id and status = 'approved' then target_user_id
		  when target_user_id = for_user_id  and status = 'approved' then initiator_user_id 
		end as friend_id
	    from friend_requests
	) friends_ids where friend_id is not null) fr4
	on target_user_id = friend_id
	where initiator_user_id <> for_user_id
	order by rand()
	limit 5;
end//

delimiter ;

set @user_id = 1;

call friendship_offers(@user_id);

-- триггеры
-- триггер добавление лайка после репоста 
drop trigger if exists like_from_repost;

delimiter //

create trigger like_from_repost after insert on reposts
for each row
begin
	insert into likes_posts (post_id, user_id, likepage)
	values (new.post_id, new.to_user_id, new.to_user_id);
end//

delimiter ;

-- проверяет, больше ли дата рождения пользователя сегодняшнего числа (1.выдаём ошибку 2. устанавливаем значение по умолчанию)

drop trigger if exists check_user_age_before_update;
delimiter //

create trigger check_user_age_before_update before update on users 
for each row
begin 
-- 1
-- 	if new.birthday >= current_date() then 
-- 		signal sqlstate '45000' set message_text = 'Обновление отменено. День рождения должен быть в прошлом!';
-- 	end if;

-- 2
	if new.birthday >= current_date() then
		set new.birthday = current_date();
	end if;
end//

delimiter ;

UPDATE users
	SET birthday='2222-05-22'
WHERE id=2;
