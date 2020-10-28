/* 
Проект на основе сайта https://www.flashscore.com

БД содержит информацию по футбольным матчам (игроки, составы команд, информация о переходах, результаты матчей), в первую очередь по текущему сезону Английской Премьер Лиги.
В дальнейшем можно развить, добавив информацию по разным лигам в разных странах, плюс по разным видам спорта.
В файле db_dump содержится дамп БД.
В данном файле содержатся запросы на добавление необходимых таблиц.
В файле fill_queries сождержатся запросы на заполнение таблиц данными. Постарался заполнить данными таким образом, чтобы показать работу наиболее важных запросов, по моему мнению.
В файле triggers содержатся триггеры и функции.
В файле views содержатся представления.
В файле useful_queries содержатся типовые запросы и ссылки на примеры с сайта, на основе которых этих запросов были реализованы.
*/

DROP DATABASE IF EXISTS flashscore_example_db;

CREATE DATABASE flashscore_example_db;

USE flashscore_example_db;

DROP TABLE IF EXISTS sports;

CREATE TABLE sports (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название спорта'
);

DROP TABLE IF EXISTS countries;

CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название страны',
	flagname VARCHAR(255) COMMENT 'Название файла с изображением флага'
);

DROP TABLE IF EXISTS competitions;

CREATE TABLE competitions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название турнира',
	country_id BIGINT UNSIGNED NOT NULL,
	sports_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (country_id) REFERENCES countries (id),
	FOREIGN KEY (sports_id) REFERENCES sports (id)
);

DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название команды',
	competition_id BIGINT UNSIGNED NOT NULL,
	logoname VARCHAR(255) COMMENT 'Название файла с изображением логотипа клуба',
	FOREIGN KEY (competition_id) REFERENCES competitions (id)
);


DROP TABLE IF EXISTS positions;

CREATE TABLE positions (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название позиции',
	sports_id BIGINT UNSIGNED,
	FOREIGN KEY (sports_id) REFERENCES sports (id)
);


DROP TABLE IF EXISTS persons;

CREATE TABLE persons (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'ФИО игрока',
	team_id BIGINT UNSIGNED NOT NULL,
	position_id BIGINT UNSIGNED NOT NULL,
	nationality BIGINT UNSIGNED NOT NULL,
	number SMALLINT UNSIGNED DEFAULT NULL,
	status enum('Injured', 'Disqualified', 'Ready to play') DEFAULT 'Ready to play',
	birthday DATE,
	img_name VARCHAR(255) COMMENT 'Название файла с фото игрока',
	KEY index_team(team_id),
	FOREIGN KEY (nationality) REFERENCES countries (id),
	FOREIGN KEY (position_id) REFERENCES positions (id),
	FOREIGN KEY (team_id) REFERENCES teams (id)
);

DROP TABLE IF EXISTS transfers;

CREATE TABLE transfers (
	id SERIAL PRIMARY KEY,
	transfer_date DATE,
	player_id BIGINT UNSIGNED NOT NULL,
	team_out_id BIGINT UNSIGNED NOT NULL,
	team_in_id BIGINT UNSIGNED NOT NULL,
	type enum('Loan', 'Return from loan', 'Transfer', 'Free agent') DEFAULT 'Transfer',
	FOREIGN KEY (team_out_id) REFERENCES teams (id),
	FOREIGN KEY (team_in_id) REFERENCES teams (id),
	FOREIGN KEY (player_id) REFERENCES persons (id)
);

DROP TABLE IF EXISTS injuries;

CREATE TABLE injuries (
	id SERIAL PRIMARY KEY,
	start_date DATE,
	end_date DATE,
	player_id BIGINT UNSIGNED NOT NULL,
	description VARCHAR(255) COMMENT 'Описание травмы' DEFAULT NULL,
	FOREIGN KEY (player_id) REFERENCES persons (id)
);

DROP TABLE IF EXISTS matches;

CREATE TABLE matches (
	id SERIAL PRIMARY KEY,
	match_date DATETIME,
	matchday SMALLINT UNSIGNED,
	competition_id BIGINT UNSIGNED NOT NULL,
	home_team_id BIGINT UNSIGNED NOT NULL,
	away_team_id BIGINT UNSIGNED NOT NULL,
	home_team_score SMALLINT UNSIGNED,
	away_team_score SMALLINT UNSIGNED,
	season VARCHAR(255) COMMENT 'Сезон соревнования',
	referee_id BIGINT UNSIGNED DEFAULT NULL,
	status enum('Finished', 'Live', 'Half time', 'Postponed', 'Cancelled', 'After ET', 'After pen.', 'Not started yet') DEFAULT 'Not started yet',
	FOREIGN KEY (home_team_id) REFERENCES teams (id),
	FOREIGN KEY (away_team_id) REFERENCES teams (id),
	FOREIGN KEY (competition_id) REFERENCES competitions (id),
	FOREIGN KEY (referee_id) REFERENCES persons (id)
);


DROP TABLE IF EXISTS events;

CREATE TABLE events (
	id SERIAL PRIMARY KEY,
	description VARCHAR(255) COMMENT 'Описание события'
);


DROP TABLE IF EXISTS match_stats;

CREATE TABLE match_stats(
	id SERIAL PRIMARY KEY,
	person_id BIGINT UNSIGNED NOT NULL,
	match_id BIGINT UNSIGNED NOT NULL,
	event_id BIGINT UNSIGNED NOT NULL,
	event_time TIME DEFAULT '00:00:00',
	reason VARCHAR(255) COMMENT 'Причина события, если требуется' DEFAULT NULL,
	KEY index_person_match(person_id, match_id),
	FOREIGN KEY (match_id) REFERENCES matches (id),
	FOREIGN KEY (person_id) REFERENCES persons (id),
	FOREIGN KEY (event_id) REFERENCES events (id)
);


