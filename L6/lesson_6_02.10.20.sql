-- utf8
-- ` кавычка для названий БД, таблиц, столцбов
-- ' для данных

-- персональная страница пользователя с id = 1
select 
	name,
	surname,
	(select filename from photos where id = u.photo_id) 'personal_photo',
	(select count(*) from 
	(select target_user_id ff from friend_requests where initiator_user_id = u.id and status = 'approved'
		union
	select initiator_user_id ff from friend_requests where target_user_id = u.id and status = 'approved') 
	as fr_tbl) 'friends',
	(select count(*) from friend_requests where target_user_id = u.id and status = 'requested') 'followers',
	(select count(*) from photos where user_id = u.id) 'photos'
from users u
where id = 1;

-- получение списка друзей пользователя с id = 1 (способ №2)
select name, surname, phone from users where id in ( select * from 	
	(select 
	case
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1 and status = 'approved' then initiator_user_id
	end as friend_id
	from friend_requests) as fr_tbl where friend_id is not null);

-- получение списка друзей с полом и возрастом пользователя с id = 1
select name, surname, phone, 
case (gender)
	when 'm' then 'Мужчина'
	when 'f' then 'Женщина'
end as 'gender',
-- if (gender=='m', 'Мужчина', 'Женщина')
timestampdiff(year, birthday, now()) as 'age'
from users 
where id in ( select * from 	
	(select 
	case
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1 and status = 'approved' then initiator_user_id
	end as friend_id
	from friend_requests) as fr_tbl where friend_id is not null);

-- непрочитанные сообщения, адресованные пользователю 1
select
from_user_id,
count(*) 'unread_msg',
(select concat(name, ' ', surname) from users where id  = m.from_user_id)
from messages m where to_user_id = 1 and is_read = 0 group by from_user_id;

-- среднее количество постов, опубликованных каждым пользователем
select avg(`total_user_news`) 
from 
	(select count(*) as `total_user_news` from posts group by user_id) 
		as count_news_tbl;

-- Среднее количество групп у всех пользователей
-- неверный вариант
	select avg(`total_communities`) from 
(select count(*) as `total_communities` from users_communities group by user_id) `tbl2`;
-- 
select (select count(*) from users_communities)/(select count(*) from users)


-- использование else для отладки
select 
	case
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1 and status = 'approved' then initiator_user_id
		else 'ошибка'
	end as friend_id
	from friend_requests
-- использование алиаса для отладки 
select target_user_id ff, 'входящие' from friend_requests where initiator_user_id = 1 and status = 'approved'
	union
select initiator_user_id ff, 'исходящие'  from friend_requests where target_user_id = 1 and status = 'approved'



