-- inner join
select * from users_communities uc
	join users u
	on u.id = uc.user_id;
	
-- inner join
select distinct c.id from communities c
	join users_communities uc
	on c.id = uc.community_id
	order by c.id;
	
-- outer left join 
select * from communities c	
left join users_communities uc
	on c.id = uc.community_id;
	
-- outer left join (получили сообщества в которых нет пользователей)
select * from communities c	
left join users_communities uc
	on c.id = uc.community_id
where user_id is null;

-- список пользователей	с фото (пример, поиск пользователя)
select 
	name,
	surname,
	hometown,
	filename
from users u 
	left join photos p
	on u.photo_id = p.id;

-- пользователи, кто в какой группе состоит
select 
	u.name,
	u.surname,
	c.name as community_name,
	uc.is_admin 
from communities c
	join users_communities uc 
	on c.id = uc.community_id 
	join users u 
	on uc.user_id = u.id;

-- пользователи, кто в какой группе состоит
select 
	u.name,
	u.surname,
	c.name as community_name,
	uc.is_admin 
from communities c
	join users_communities uc 
	on c.id = uc.community_id 
	join users u 
	on uc.user_id = u.id
where c.name = 'Информация, системы счисления';

-- заявки в друзья (входящие/исходящие/чёрный список) 1 пользователя
select 
	target_user_id, -- входящая initiator_user_id
	name,
	surname 
from friend_requests fr
	join users u
	on fr.target_user_id = u.id
where initiator_user_id = 1 and status ='requested';

-- чёрный список 1 пользователя
select 
	initiator_user_id,
	name,
	surname 
from friend_requests fr
	join users u
	on fr.target_user_id = u.id
where target_user_id = 1 and status ='unfriended';

-- Выборка постов пользователя с комментариями и комментаторами
select
	concat(u2.name, ' ', u2.surname) as author,
	p.body as post,
	p.created_at as post_created,
	c.body as comment,
	c.created_at as comment_created,
	concat(u.name, ' ', u.surname) as commentator	
from posts p
	left join comments c
	on c.post_id  = p.id
	join users u
	on c.user_id = u.id
	join users u2
	on p.user_id = u2.id
where p.user_id = 1
order by post_created, comment_created;

-- друзья первого пользователя

select 
	name,
	surname
from 
(select
	case 
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1  and status = 'approved' then initiator_user_id 
	end
	as friend_id
from friend_requests) as friends
	join users u
	on friends.friend_id = u.id;

-- список друзей первого пользователя с фото

select 
	name,
	surname,
	hometown,
	filename
from
(select
	case 
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1  and status = 'approved' then initiator_user_id 
	end
	as friend_id
from friend_requests) as friends
	join users u
	on friends.friend_id = u.id 
	left join photos p
	on u.photo_id = p.id;

-- переписка пользователей 1 и 17
select 
concat(u1.name, ' ', u1.surname) as 'from_user',
m.body as msg,
concat(u2.name, ' ', u2.surname) as 'to_user'
from messages m 
join users u1
	on m.from_user_id = u1.id
join users u2
	on m.to_user_id = u2.id
where from_user_id in (1, 17) and to_user_id in (1, 17) and from_user_id <> to_user_id;

-- непрочитанные сообщения, адресованные пользователю 1
select
	concat(u.name, ' ', u.surname) as 'from_user',
	count(*) as unread_msg
from messages m
	join users u
	on m.from_user_id = u.id
where to_user_id = 1 and is_read = 0
group by m.from_user_id order by unread_msg desc;

-- cross join (!!!)
select count(*) from communities, users_communities, users;
select count(*) from users join posts;

-- Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
select
	id,
	name,
	surname,
(select count(*) from messages where from_user_id = u.id and to_user_id = 1) 'from',
(select count(*) from messages where to_user_id = u.id and from_user_id = 1) 'to',
(select count(*) from messages where from_user_id = u.id and to_user_id = 1) + (select count(*) from messages where to_user_id = u.id and from_user_id = 1) 'total'
from users u
where id in (
	select target_user_id ff from friend_requests where initiator_user_id = 1 and status = 'approved'
		union
	select initiator_user_id ff from friend_requests where target_user_id = 1 and status = 'approved'
) order by total desc;

-- Пусть задан некоторый пользователь. (друг, который борльше всех писал)
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
select from_user_id, count(*) as inbox
from messages m
join (select
	case 
		when initiator_user_id = 1 and status = 'approved' then target_user_id
		when target_user_id = 1  and status = 'approved' then initiator_user_id 
	end
	as friend_id
from friend_requests) as friends
	on friends.friend_id  = m.from_user_id
where to_user_id = 1
group by m.from_user_id
order by inbox desc;
