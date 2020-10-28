-- Переходы конкретного игрока между клубами (Transfer History)
-- https://www.flashscore.com/player/milner-james/QLY3kAEt/

SELECT t1.name as 'From', t2.name as 'To', tr.transfer_date as 'Transfer Date', tr.type as 'Transfer Type'
FROM 
	transfers tr
JOIN
	persons p
ON
	tr.player_id = p.id
JOIN
	teams t1
ON
	tr.team_out_id = t1.id
JOIN
	teams t2
ON
	tr.team_in_id = t2.id 
WHERE 
	p.name = 'James Milner'
ORDER BY 
	tr.transfer_date DESC;


-- История травм конкретного игрока (Injury History)
-- https://www.flashscore.com/player/alcantara-thiago/vcSKqUSq/


SELECT 
	inj.start_date as 'Start Date', 
	CASE 
		WHEN inj.end_date is NULL THEN 'No Expected Return Date'
		ELSE inj.end_date
	END as 'End Date', 
	inj.description as 'Details'
FROM 
	injuries inj
JOIN
	persons p
ON
	inj.player_id = p.id
WHERE 
	p.name = 'Thiago'
ORDER BY 
	inj.start_date DESC;


-- Расписание предстоящих матчей клуба
-- https://www.flashscore.com/team/arsenal/hA1Zm19f/fixtures/

SELECT m.matchday as 'MatchDay', Date(m.match_date) as 'Day', Time(m.match_date) as 'Time', t.name as 'HomeTeam' , tt.name as 'AwayTeam'
FROM 
	matches m
JOIN
	teams t
ON
	m.home_team_id = t.id
JOIN
	teams tt
ON
	m.away_team_id = tt.id
WHERE status != 'Finished' and (t.name = 'Arsenal' OR tt.name = 'Arsenal');


-- Результаты матчей тура
-- https://www.flashscore.com/football/england/premier-league/results/

SELECT m.matchday as 'MatchDay', m.match_date as 'Date', t.name as 'HomeTeam' , CONCAT(m.home_team_score, '-', m.away_team_score) as 'Result', tt.name as 'AwayTeam'
FROM 
	matches m
JOIN
	teams t
ON
	m.home_team_id = t.id
JOIN
	teams tt
ON
	m.away_team_id = tt.id
WHERE m.matchday = 6
ORDER BY
	`Date` DESC;



-- Детализированная статистика игрока в сыгранных матчах
-- По мотивам таблицы "Last Matches" https://www.flashscore.com/player/kane-harry/v5HSlEAa/ 

SELECT DISTINCT
	p.name as Player, 
	DATE(m.match_date) as 'Day',
	TIME(m.match_date) as 'Time',
	(SELECT name FROM competitions WHERE id = m.competition_id) as Competition,
	m.matchday as 'Matchday',
	(SELECT name FROM teams WHERE id = m.home_team_id) as 'Home Team',
	(SELECT name FROM teams WHERE id = m.away_team_id) as 'Away Team',
	CONCAT(m.home_team_score,':',m.away_team_score) as 'Result',
	played_minutes(p.id, m.id) as 'Played Minutes',
	(SELECT COUNT(*) FROM match_stats JOIN events ON match_stats.event_id = events.id WHERE person_id = p.id AND match_id = m.id AND (events.description = 'Goal' OR events.description = 'Penalty scored')) as 'Goals',
	(SELECT COUNT(*) FROM match_stats JOIN events ON match_stats.event_id = events.id WHERE person_id = p.id AND match_id = m.id AND events.description = 'Assist') as 'Assists',
	(SELECT COUNT(*) FROM match_stats JOIN events ON match_stats.event_id = events.id WHERE person_id = p.id AND match_id = m.id AND events.description = 'Yellow Card') as 'Yellow Cards',
	(SELECT COUNT(*) FROM match_stats JOIN events ON match_stats.event_id = events.id WHERE person_id = p.id AND match_id = m.id AND events.description = 'Red Card') as 'Red Cards'
FROM
	match_stats ms
JOIN
	matches m
ON
	ms.match_id = m.id
JOIN
	persons p
ON
	m.away_team_id = p.team_id OR m.home_team_id = p.team_id
WHERE
	p.name = 'Harry Kane' 
-- 	p.name = 'Serge Aurier'
-- 	p.name = 'Harry Winks'
-- 	p.name = 'Matt Doherty'
-- 	p.name = 'Dele Alli'
-- 	p.name = 'Danny Ings'
ORDER BY
	Day DESC;



-- Суммарная статистика сезона по игрокам клуба
-- Пример: https://www.flashscore.com/team/tottenham/UDg08Ohm/squad/


SELECT 
	p.number as 'Number',
	p.name as 'Player',
	pos.name as 'Position',
	p.status as 'Current Status',
	TIMESTAMPDIFF(year, p.birthday, NOW()) as 'Age',
	(SELECT COUNT(*)
		FROM
			match_stats ms1
		JOIN
			matches m1
		ON
			m1.id = ms1.match_id AND m1.season = '20/21'		
		JOIN
			persons pp1
		ON 
			pp1.id = ms1.person_id AND (event_id = 1 OR event_id = 7) AND pp1.name = p.name) as 'Matches',
	(SELECT COUNT(*)
		FROM
			match_stats ms1
		JOIN
			matches m1
		ON
			m1.id = ms1.match_id AND m1.season = '20/21'
		JOIN
			persons pp1
		ON 
			pp1.id = ms1.person_id AND (event_id = 2 OR event_id = 10) AND pp1.name = p.name) as 'Goals',
	(SELECT COUNT(*)
		FROM
			match_stats ms1
		JOIN
			matches m1
		ON
			m1.id = ms1.match_id AND m1.season = '20/21'
		JOIN
			persons pp1
		ON 
			pp1.id = ms1.person_id AND event_id = 3 AND pp1.name = p.name) as 'Assists',
	(SELECT COUNT(*)
		FROM
			match_stats ms1
		JOIN
			matches m1
		ON
			m1.id = ms1.match_id AND m1.season = '20/21'
		JOIN
			persons pp1
		ON 
			pp1.id = ms1.person_id AND event_id = 5 AND pp1.name = p.name) as 'Yellow Cards',
	(SELECT COUNT(*)
		FROM
			match_stats ms1
		JOIN
			matches m1
		ON
			m1.id = ms1.match_id AND m1.season = '20/21'
		JOIN
			persons pp1
		ON 
			pp1.id = ms1.person_id AND event_id = 6 AND pp1.name = p.name) as 'Red Cards'
FROM
	persons p
JOIN
	teams t
ON
	p.team_id = t.id
JOIN
	positions pos
ON 
	p.position_id = pos.id
WHERE
	t.name = 'Tottenham' and pos.name != 'Coach';


-- Заявки команд в конкретном матче

SELECT
	p.number as '#',
	p.name as 'Player', 
	t.name as 'Team',
	CASE
		WHEN ms.event_id = 1 THEN 'Starting Lineup'
		WHEN ms.event_id = 9 THEN 'Bench'
	END as 'Start'
FROM
	persons p
JOIN
	match_stats ms
ON
	ms.person_id = p.id
JOIN
	teams t
ON
	p.team_id = t.id
WHERE ms.match_id = 60 AND ms.event_id in (1, 9);