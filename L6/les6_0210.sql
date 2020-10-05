use snet1509;

-- 1. По запросам с вебинара вопросов нет, все понятно. Предложений по улучшению/корректировкам нет.
-- 2. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

SELECT
	-- Выводим полную информацию по найденному пользователю
	*
FROM
	users
WHERE
	id in (
		SELECT
		-- Выводим id друга, который больше всего общался с заданным пользователем
			(
				SELECT
					friend_id
				FROM (
					SELECT
						to_user_id AS friend_id,
						'Исходящее'
					FROM
						messages
					WHERE
						from_user_id = u.id
						AND to_user_id in(
							-- Друзья пользователя
							SELECT
								target_user_id FROM friend_requests
							WHERE
								initiator_user_id = u.id
								AND status = 'approved'
							UNION
							SELECT
								initiator_user_id FROM friend_requests
							WHERE
								target_user_id = u.id
								AND status = 'approved')
					UNION ALL
					SELECT
						from_user_id AS friend_id, 'Входящее'
					FROM
						messages
					WHERE
						from_user_id in(
							-- Друзья пользователя
							SELECT
								target_user_id FROM friend_requests
							WHERE
								initiator_user_id = u.id
								AND status = 'approved'
							UNION
							SELECT
								initiator_user_id FROM friend_requests
							WHERE
								target_user_id = u.id
								AND status = 'approved')
						AND to_user_id = u.id) AS fr_msg
				GROUP BY
					friend_id
				ORDER BY
					COUNT(friend_id)
					DESC
				LIMIT 1) AS max_msg_friend_id
		FROM
			users AS u
		WHERE
		-- Необходимо указать id анализируемого пользователя 
			id = 1);


-- 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT
	SUM(total_likes) AS total_likes_10_youngest
FROM (
	SELECT
		id,
		TIMESTAMPDIFF(year, birthday, NOW()) AS age,
		IF((
			SELECT
				SUM((
					SELECT
						COUNT(*)
					FROM 
						likes_posts
					WHERE
						post_id = p.id))
			FROM 
				posts AS p
			WHERE
				user_id = u.id) IS NOT NULL, 
			(
			SELECT
				SUM((
					SELECT
						COUNT(*)
					FROM 
						likes_posts
					WHERE
						post_id = p.id))
			FROM 
				posts AS p
			WHERE
				user_id = u.id), 0) AS total_likes
	FROM
		users AS u
	ORDER BY
		age ASC
	LIMIT 10) AS age_likes;

-- 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	CASE (SELECT gender FROM users WHERE id = lp.user_id)
		WHEN 'f' THEN 'Женщины'
		WHEN 'm' THEN 'Мужчины'
	END as gender,
	COUNT(*) as total_number_of_likes
FROM
	likes_posts as lp
GROUP BY
	gender
ORDER BY
	total_number_of_likes DESC;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
-- Будем оценивать социальную активность по количеству групп, в которые входит пользователь, написанных пользователем сообщений, опубликованных постов и поставленных лайков

SELECT
	id,
	( -- Количество групп, в которых состоит пользователь
		SELECT
			COUNT(*) as number_communities
		FROM
			users_communities
		WHERE
			user_id = u.id) +
	( -- Количество отправленных сообщений
		SELECT
			COUNT(*) AS number_send_msg
		FROM
			messages
		WHERE
			from_user_id = u.id) + 
	( -- Количество постов пользователя
		SELECT
			COUNT(*) AS number_posts
		FROM
			posts
		WHERE
			user_id = u.id) + 
	( -- Количество поставленных лайков
		SELECT
			COUNT(*) AS number_likes
		FROM
			likes_posts
		WHERE
			user_id = u.id) AS social_activity_index
FROM
	users AS u
ORDER BY
	social_activity_index ASC, id
LIMIT 10;