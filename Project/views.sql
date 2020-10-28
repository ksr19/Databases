-- Турнирная таблица текущего сезона на основе домашних матчей
-- https://www.flashscore.com/football/england/premier-league/

DROP VIEW IF EXISTS current_table_home;
CREATE VIEW 
	current_table_home
AS
	SELECT
		t.name as 'Team',
		COUNT(*) as 'Played Matches',
		(SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.home_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score > mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id) as W,
		(SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.home_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score = mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id) as D,
		(SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.home_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score < mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id) as L,
		SUM(m.home_team_score) as 'Goals Scored',
		SUM(m.away_team_score) as 'Goals Conceded',
		(3 * (SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.home_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score > mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id) + 1 * (SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.home_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score = mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id)) as 'Points'
	FROM
		matches m
	JOIN
		teams t
	ON
		m.home_team_id = t.id
	WHERE
		m.status = 'Finished' and m.season = '20/21' and m.competition_id = 18
	GROUP BY
		t.name
	ORDER BY 
		`Points` DESC,
		(`Goals Scored` - `Goals Conceded`) DESC,
		`Goals Scored` DESC;


-- Турнирная таблица текущего сезона на основе гостевых матчей
-- https://www.flashscore.com/football/england/premier-league/

DROP VIEW IF EXISTS current_table_guest;
CREATE VIEW 
	current_table_guest
AS
	SELECT
		t.name as 'Team',
		COUNT(*) as 'Played Matches',
		(SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.away_team_id = tt.id WHERE tt.name = t.name and mm.away_team_score > mm.home_team_score and mm.season = m.season and mm.competition_id = m.competition_id) as W,
		(SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.away_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score = mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id) as D,
		(SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.away_team_id = tt.id WHERE tt.name = t.name and mm.away_team_score < mm.home_team_score and mm.season = m.season and mm.competition_id = m.competition_id) as L,
		SUM(m.away_team_score) as 'Goals Scored',
		SUM(m.home_team_score) as 'Goals Conceded',
		(3 * (SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.away_team_id = tt.id WHERE tt.name = t.name and mm.away_team_score > mm.home_team_score and mm.season = m.season and mm.competition_id = m.competition_id) + 1 * (SELECT COUNT(*) FROM matches mm JOIN teams tt ON mm.away_team_id = tt.id WHERE tt.name = t.name and mm.home_team_score = mm.away_team_score and mm.season = m.season and mm.competition_id = m.competition_id)) as 'Points'
	FROM
		matches m
	JOIN
		teams t
	ON
		m.away_team_id = t.id
	WHERE
		m.status = 'Finished' and m.season = '20/21' and m.competition_id = 18
	GROUP BY
		t.name
	ORDER BY 
		`Points` DESC,
		(`Goals Scored` - `Goals Conceded`) DESC,
		`Goals Scored` DESC;


-- Турнирная таблица по итогам прошедших матчей сезона
-- https://www.flashscore.com/football/england/premier-league/

DROP VIEW IF EXISTS current_table_total;
CREATE VIEW
	current_table_total
AS
	SELECT 
		Team,
		SUM(`Played Matches`) as 'Played Matches', 
		SUM(`W`) as 'W', 
		SUM(`D`) as 'D', 
		SUM(`L`) as 'L', 
		SUM(`Goals Scored`) as 'Goals Scored',
		SUM(`Goals Conceded`) as 'Goals Conceded', 
		SUM(`Points`) as 'Points'
	FROM (
		SELECT 
				*
		FROM
			current_table_home
		UNION ALL
		SELECT 
				*
		FROM
			current_table_guest) ct
	GROUP BY
		Team
	ORDER BY
		SUM(`Points`) DESC,
		(SUM(`Goals Scored`) - SUM(`Goals Conceded`)) DESC,
		SUM(`Goals Scored`) DESC,
		SUM(`Played Matches`) ASC;