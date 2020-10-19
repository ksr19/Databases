/* 
Проект на основе сайта https://www.flashscore.com

БД будет содержать информацию по различным видам спорта (в первую очередь планирую сконцентрироваться на футболе).
Информация по разным лигам в разных странах, командам и игрокам.
Планирую реализовать запросы: 
1) позволяющие посмотреть результаты прошедших матчей в конкретной лиге, а также календарь будущих матчей. Аналог - главная страница сайта. 
2) общую статистику по игрокам в команде, как например, по данной ссылке: https://www.flashscore.com/team/aston-villa/W00wmLO0/squad/
3) детальную статистику по игроку. Пример: https://www.flashscore.com/player/trezeguet/GEpGVvdq/ (таблица - Last Matches)
4) составы команд в конкретном матче. Пример: https://www.flashscore.com/match/6J0L2p0r/#match-summary (вкладка Lineups)
5) история переходов игрока между клубами. Пример: https://www.flashscore.com/player/adrian/CEm70uDg/ (таблица Transfers в нижней части страницы)
6) история травм игрока. Пример: https://www.flashscore.com/player/adrian/CEm70uDg/ (таблица Injury History в нижней части страницы)


*/

CREATE DATABASE flashscore_example_db;

use flashscore_example_db;

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
	sports_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (sports_id) REFERENCES sports (id)
);


DROP TABLE IF EXISTS persons;

CREATE TABLE persons (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'ФИО игрока',
	team_id BIGINT UNSIGNED NOT NULL,
	position_id BIGINT UNSIGNED NOT NULL,
	nationality BIGINT UNSIGNED NOT NULL,
	number SMALLINT UNSIGNED,
	type enum('player', 'coach', 'referee') DEFAULT 'player',
	status enum('Injured', 'Disqualified', 'Ready to play') DEFAULT 'Ready to play',
	birthday DATE,
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
	description VARCHAR(255) COMMENT 'Описание травмы',
	FOREIGN KEY (player_id) REFERENCES persons (id)
);

DROP TABLE IF EXISTS matches;

CREATE TABLE matches (
	id SERIAL PRIMARY KEY,
	match_date DATETIME,
	competition_id BIGINT UNSIGNED NOT NULL,
	home_team_id BIGINT UNSIGNED NOT NULL,
	away_team_id BIGINT UNSIGNED NOT NULL,
	points_home_team SMALLINT UNSIGNED,
	points_away_team SMALLINT UNSIGNED,
	season VARCHAR(255) COMMENT 'Сезон соревнования',
	referee_id BIGINT UNSIGNED NOT NULL,
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
	event_time DATETIME,
	reason VARCHAR(255) COMMENT 'Причина события, если требуется',
	FOREIGN KEY (match_id) REFERENCES matches (id),
	FOREIGN KEY (person_id) REFERENCES persons (id),
	FOREIGN KEY (event_id) REFERENCES events (id)
);


INSERT INTO sports (name) VALUES
	('football'),
	('basketball'),
	('rugby union'),
	('handball');

INSERT INTO countries (name, flagname) VALUES
	('England', 'eng.png'),
	('Russia', 'rus.png'),
	('Spain', 'spa.png'),
	('Italy', 'ita.png'),
	('Australia', 'aus.png'),
	('France','fr.png'),
	('Denmark', 'den.png'),
	('Germany', 'ger.png'),
	('Poland', 'pln.png'),
	('World', 'wrld.png'),
	('USA', 'us.png'),
	('Europe', 'eu.png');

INSERT INTO countries (name, flagname) VALUES
	('Brazil', 'brazil.png'),
	('Belgium', 'belgium.png'),
	('Wales', 'wales.png'),
	('Cote d\'Ivoire', 'cote d_ivoire.png'),
	('Netherlands', 'netherlands.png'),
	('Ireland', 'ireland.png'),
	('South Korea', 'korea.png'),
	('Argentina', 'argentina.png'),
	('Portugal', 'portugal.png'),
	('Colombia', 'colombia.png');

INSERT INTO countries (name, flagname) VALUES
	('Scotland', 'scotland.png'),
	('Morocco', 'morocco.png'),
	('Nortern Ireland', 'northern ireland.png'),
	('North Macedonia', 'north macedonia.png');

INSERT INTO countries (name, flagname) VALUES
	('Cameroon', 'cameroon.png'),
	('Egypt', 'egypt.png'),
	('Guinea', 'guinea.png'),
	('Japan', 'japan.png'),
	('Switzerland', 'switzerland.png'),
	('Greece', 'greece.png');

INSERT INTO countries (name, flagname) VALUES
	('Senegal', 'senegal.png');

INSERT INTO countries (name, flagname) VALUES
	('Iran', 'iran.png'),
	('Romania', 'romania.png'),
	('Mali', 'mali.png');

INSERT INTO countries (name, flagname) VALUES
	('Austria', 'austria.png'),
	('St.Kitts & Nevis', 'stkn.png'),
	('Mexico', 'mexico.png'),
	('Sweden', 'sweden.png'),
	('Finland', 'finland.png'),
	('Norway', 'norway.png'),
	('Iceland', 'iceland.png'),
	('DR Congo', 'drc.png'),
	('Turkey', 'turkey.png'),
	('Bosnia & Herzegovina', 'bos_her.png'),
	('Kosovo', 'kosovo.png'),
	('Slovakia', 'slovakia.png'),
	('Israel', 'israel.png'),
	('Hungary', 'hungary.png'),
	('Jamaica', 'jamaica.png'),
	('Gabon', 'gabon.png'),
	('Ghana', 'ghana.png'),
	('Croatia', 'croatia.png'),
	('Serbia', 'serbia.png'),
	('Czech Republic', 'czr.png'),
	('Ukraine', 'ukraine.png'),
	('Burkina Faso', 'bur_faso.png'),
	('Zimbabwe', 'zimbabwe.png'),
	('Nigeria', 'nigeria.png'),
	('Algeria', 'algeria.png'),
	('Paraguay', 'paraguay.png'),
	('Uruguay', 'uruguay.png'),
	('New Zealand', 'nz.png');

INSERT INTO competitions (name, country_id, sports_id) VALUES
	('Lidl Starligue', 6, 4),
	('Bundesliga', 8, 4),
	('Liga ASOBAL', 3, 4),
	('Herre Handbold Ligaen', 7, 4),
	('World Championship', 10, 4),
	('Top 14', 6, 3),
	('Premiership Rugby', 1, 3),
	('Premier League', 2, 3),
	('Six Nations', 12, 3),
	('Super Rugby', 10, 3),
	('Euroleague', 12, 2),
	('NBA', 11, 2),
	('LNB', 6, 2),
	('VTB United League', 2, 2),
	('Energa Basket Liga', 9, 2),
	('Lega A', 4, 2),
	('ACB', 3, 2),
	('Premier League', 1, 1),
	('Championship', 1, 1),
	('EFL Cup', 1, 1),
	('Ligue 1', 6, 1),
	('Bundesliga', 8, 1),
	('2.Bundesliga', 8, 1),
	('Serie A', 4, 1),
	('Ekstraklasa', 9, 1),
	('Premier League', 2, 1),
	('FNL', 2, 1),
	('LaLiga', 3, 1),
	('Champions League', 10, 1),
	('MLS', 11, 1),
	('World Cup', 12, 1),
	('A-League', 5, 1),
	('Superliga', 7, 1);

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Newcastle', 18, 'newcastle.png'), ('Leicester', 18, 'leicester.png'), ('Burnley', 18, 'burnley.png'), ('Brighton', 18, 'brighton.png'), ('Fulham', 18, 'fulham.png'), ('Manchester Utd', 18, 'manchester utd.png'), ('Aston Villa', 18, 'aston villa.png'), ('West Brom', 18, 'west brom.png'), ('West Ham', 18, 'west ham.png'), ('Chelsea', 18, 'chelsea.png'), ('Leeds', 18, 'leeds.png'), ('Liverpool', 18, 'liverpool.png'), ('Arsenal', 18, 'arsenal.png'), ('Manchester City', 18, 'manchester city.png'), ('Wolves', 18, 'wolves.png'), ('Crystal Palace', 18, 'crystal palace.png'), ('Sheffield Utd', 18, 'sheffield utd.png'), ('Tottenham', 18, 'tottenham.png'), ('Southampton', 18, 'southampton.png'), ('Everton', 18, 'everton.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Bournemouth', 19, 'bournemouth.png'), ('Barnsley', 19, 'barnsley.png'), ('Stoke', 19, 'stoke.png'), ('QPR', 19, 'qpr.png'), ('Swansea', 19, 'swansea.png'), ('Bristol City', 19, 'bristol city.png'), ('Rotherham', 19, 'rotherham.png'), ('Cardiff', 19, 'cardiff.png'), ('Preston', 19, 'preston.png'), ('Nottingham', 19, 'nottingham.png'), ('Norwich', 19, 'norwich.png'), ('Millwall', 19, 'millwall.png'), ('Birmingham', 19, 'birmingham.png'), ('Brentford', 19, 'brentford.png'), ('Reading', 19, 'reading.png'), ('Blackburn', 19, 'blackburn.png'), ('Luton', 19, 'luton.png'), ('Sheffield Wed', 19, 'sheffield wed.png'), ('Huddersfield', 19, 'huddersfield.png'), ('Derby', 19, 'derby.png'), ('Middlesbrough', 19, 'middlesbrough.png'), ('Watford', 19, 'watford.png'), ('Wycombe', 19, 'wycombe.png'), ('Coventry', 19, 'coventry.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Aix', 1, 'aix.png'), ('Limoges', 1, 'limoges.png'), ('Nantes', 1, 'nantes.png'), ('Cesson Rennes-Metropole', 1, 'cesson rennes-metropole.png'), ('Chartres', 1, 'chartres.png'), ('Chambery Savoie', 1, 'chambery savoie.png'), ('Tremblay', 1, 'tremblay.png'), ('Creteil', 1, 'creteil.png'), ('Ivry', 1, 'ivry.png'), ('Dunkerque', 1, 'dunkerque.png'), ('St. Raphael', 1, 'st. raphael.png'), ('Istres', 1, 'istres.png'), ('Paris SG', 1, 'paris sg.png'), ('Montpellier', 1, 'montpellier.png'), ('Nimes', 1, 'nimes.png'), ('Toulouse', 1, 'toulouse.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Hannover-Burgdorf', 2, 'hannover-burgdorf.png'), ('Fuchse Berlin', 2, 'fuchse berlin.png'), ('Erlangen', 2, 'erlangen.png'), ('Coburg 2000', 2, 'coburg 2000.png'), ('Lemgo', 2, 'lemgo.png'), ('Bergischer', 2, 'bergischer.png'), ('SC Magdeburg', 2, 'sc magdeburg.png'), ('HBW Balingen-Weilstetten', 2, 'hbw balingen-weilstetten.png'), ('Leipzig', 2, 'leipzig.png'), ('Kiel', 2, 'kiel.png'), ('HSG Wetzlar', 2, 'hsg wetzlar.png'), ('Essen', 2, 'essen.png'), ('Minden', 2, 'minden.png'), ('Stuttgart', 2, 'stuttgart.png'), ('MT Melsungen', 2, 'mt melsungen.png'), ('Rhein-Neckar', 2, 'rhein-neckar.png'), ('Flensburg-H.', 2, 'flensburg-h..png'), ('Goppingen', 2, 'goppingen.png'), ('Ludwigshafen', 2, 'ludwigshafen.png'), ('Nordhorn-Lingen', 2, 'nordhorn-lingen.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Cisne', 3, 'cisne.png'), ('Puerto Sagunto', 3, 'puerto sagunto.png'), ('Morrazo Cangas', 3, 'morrazo cangas.png'), ('Puente Genil', 3, 'puente genil.png'), ('Granollers', 3, 'granollers.png'), ('Ademar', 3, 'ademar.png'), ('Nava', 3, 'nava.png'), ('Atl. Valladolid', 3, 'atl. valladolid.png'), ('CD Bidasoa Irun', 3, 'cd bidasoa irun.png'), ('Barcelona', 3, 'barcelona.png'), ('Villa de Aranda', 3, 'villa de aranda.png'), ('Anaitasuna', 3, 'anaitasuna.png'), ('Cuenca', 3, 'cuenca.png'), ('La Rioja', 3, 'la rioja.png'), ('Quabit Guadalajara', 3, 'quabit guadalajara.png'), ('Benidorm', 3, 'benidorm.png'), ('Huesca', 3, 'huesca.png'), ('BM Sinfin', 3, 'bm sinfin.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Aarhus', 4, 'aarhus.png'), ('Sonderjyske', 4, 'sonderjyske.png'), ('Mors', 4, 'mors.png'), ('Lemvig', 4, 'lemvig.png'), ('Ringsted', 4, 'ringsted.png'), ('Holstebro', 4, 'holstebro.png'), ('Bjerringbro/Silkeborg', 4, 'bjerringbrosilkeborg.png'), ('Fredericia', 4, 'fredericia.png'), ('Skanderborg', 4, 'skanderborg.png'), ('GOG', 4, 'gog.png'), ('Skjern', 4, 'skjern.png'), ('Ribe-Esbjerg', 4, 'ribe-esbjerg.png'), ('Aalborg', 4, 'aalborg.png'), ('Kolding', 4, 'kolding.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Uruguay', 5, 'uruguay.png'), ('Russia', 5, 'russia.png'), ('Angola', 5, 'angola.png'), ('Belarus', 5, 'belarus.png'), ('Argentina', 5, 'argentina.png'), ('Hungary', 5, 'hungary.png'), ('Austria', 5, 'austria.png'), ('South Korea', 5, 'south korea.png'), ('Tunisia', 5, 'tunisia.png'), ('Spain', 5, 'spain.png'), ('France', 5, 'france.png'), ('Algeria', 5, 'algeria.png'), ('Morocco', 5, 'morocco.png'), ('Croatia', 5, 'croatia.png'), ('Portugal', 5, 'portugal.png'), ('D.R. Congo', 5, 'd.r. congo.png'), ('Egypt', 5, 'egypt.png'), ('Sweden', 5, 'sweden.png'), ('Poland', 5, 'poland.png'), ('Cape Verde', 5, 'cape verde.png'), ('Iceland', 5, 'iceland.png'), ('Slovenia', 5, 'slovenia.png'), ('Qatar', 5, 'qatar.png'), ('Germany', 5, 'germany.png'), ('Norway', 5, 'norway.png'), ('Bahrain', 5, 'bahrain.png'), ('Japan', 5, 'japan.png'), ('Denmark', 5, 'denmark.png'), ('Czech Republic', 5, 'czech republic.png'), ('Brazil', 5, 'brazil.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('B. Monchengladbach', 22, 'b. monchengladbach.png'), ('Union Berlin', 22, 'union berlin.png'), ('Dortmund', 22, 'dortmund.png'), ('Bayern Munich', 22, 'bayern munich.png'), ('Freiburg', 22, 'freiburg.png'), ('Arminia Bielefeld', 22, 'arminia bielefeld.png'), ('FC Koln', 22, 'fc koln.png'), ('Mainz', 22, 'mainz.png'), ('Wolfsburg', 22, 'wolfsburg.png'), ('Hoffenheim', 22, 'hoffenheim.png'), ('RB Leipzig', 22, 'rb leipzig.png'), ('Stuttgart', 22, 'stuttgart.png'), ('Werder Bremen', 22, 'werder bremen.png'), ('Hertha Berlin', 22, 'hertha berlin.png'), ('Bayer Leverkusen', 22, 'bayer leverkusen.png'), ('Augsburg', 22, 'augsburg.png'), ('Schalke', 22, 'schalke.png'), ('Eintracht Frankfurt', 22, 'eintracht frankfurt.png');


INSERT INTO teams (name, competition_id, logoname)
		VALUES('Greuther Furth', 23, 'greuther furth.png'), ('Darmstadt', 23, 'darmstadt.png'), ('Holstein Kiel', 23, 'holstein kiel.png'), ('Aue', 23, 'aue.png'), ('Bochum', 23, 'bochum.png'), ('Hamburger SV', 23, 'hamburger sv.png'), ('VfL Osnabruck', 23, 'vfl osnabruck.png'), ('Dusseldorf', 23, 'dusseldorf.png'), ('Braunschweig', 23, 'braunschweig.png'), ('Regensburg', 23, 'regensburg.png'), ('Heidenheim', 23, 'heidenheim.png'), ('St. Pauli', 23, 'st. pauli.png'), ('Karlsruher', 23, 'karlsruher.png'), ('Sandhausen', 23, 'sandhausen.png'), ('Hannover', 23, 'hannover.png'), ('Nurnberg', 23, 'nurnberg.png'), ('Wurzburger Kickers', 23, 'wurzburger kickers.png'), ('Paderborn', 23, 'paderborn.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Krasnodar', 26, 'krasnodar.png'), ('Dynamo Moscow', 26, 'dynamo moscow.png'), ('CSKA Moscow', 26, 'cska moscow.png'), ('Rubin Kazan', 26, 'rubin kazan.png'), ('R. Volgograd', 26, 'r. volgograd.png'), ('Zenit', 26, 'zenit.png'), ('Sochi', 26, 'sochi.png'), ('Akhmat Grozny', 26, 'akhmat grozny.png'), ('Ural', 26, 'ural.png'), ('Arsenal Tula', 26, 'arsenal tula.png'), ('Spartak Moscow', 26, 'spartak moscow.png'), ('Tambov', 26, 'tambov.png'), ('Ufa', 26, 'ufa.png'), ('Lokomotiv Moscow', 26, 'lokomotiv moscow.png'), ('Khimki', 26, 'khimki.png'), ('FK Rostov', 26, 'fk rostov.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Baltika', 27, 'baltika.png'), ('SKA Khabarovsk', 27, 'ska khabarovsk.png'), ('Volgar-Astrakhan', 27, 'volgar-astrakhan.png'), ('Chertanovo M.', 27, 'chertanovo m..png'), ('Yenisey', 27, 'yenisey.png'), ('Akron Togliatti', 27, 'akron togliatti.png'), ('Spartak Moscow 2', 27, 'spartak moscow 2.png'), ('Krasnodar 2', 27, 'krasnodar 2.png'), ('T. Moscow', 27, 't. moscow.png'), ('FK Chayka', 27, 'fk chayka.png'), ('D. Bryansk', 27, 'd. bryansk.png'), ('Neftekhimik', 27, 'neftekhimik.png'), ('F. Voronezh', 27, 'f. voronezh.png'), ('Veles Moscow', 27, 'veles moscow.png'), ('Omsk', 27, 'omsk.png'), ('Tomsk', 27, 'tomsk.png'), ('Tekstilshtik', 27, 'tekstilshtik.png'), ('Orenburg', 27, 'orenburg.png'), ('Shinnik Yaroslavl', 27, 'shinnik yaroslavl.png'), ('Alania Vladikavkaz', 27, 'alania vladikavkaz.png'), ('Nizhny Novgorod', 27, 'nizhny novgorod.png'), ('FK Krylya Sovetov Samara', 27, 'fk krylya sovetov samara.png');

INSERT INTO positions(name, sports_id)
	VALUES ('Goalkeeper', 1), ('Defender', 1), ('Midfielder', 1), ('Forward', 1);


-- Tottenham
INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Hugo Lloris', 18, 1, 6, 1, '1986-12-26'), ('Paulo Gazzaniga', 18, 1, 20, 22, '1992-01-02'), ('Joe Hart', 18, 1, 1, 12, '1987-04-19'), ('Alfie Whiteman', 18, 1, 1, 41, '1998-10-02'), ('Davinson Sánchez', 18, 2, 22, 6, '1996-06-12'), ('Toby Alderweireld', 18, 2, 14, 4, '1989-03-02'), ('Eric Dier', 18, 2, 1, 15, '1994-01-15'), ('Japhet Tanganga', 18, 2, 1, 25, '1999-03-31'), ('Cameron Carter-Vickers', 18, 2, 11, 38, '1997-12-31'), ('Sergio Reguilón', 18, 2, 3, 3, '1996-12-16'), ('Ben Davies', 18, 2, 15, 33, '1993-04-24'), ('Danny Rose', 18, 2, 1, NULL, '1990-07-02'), ('Matt Doherty', 18, 2, 18, 2, '1992-01-16'), ('Serge Aurier', 18, 2, 16, 24, '1992-12-24'), ('Pierre-Emile Höjbjerg', 18, 3, 7, 5, '1995-08-05'), ('Tanguy Ndombélé', 18, 3, 6, 28, '1996-12-28'), ('Giovani Lo Celso', 18, 3, 20, 18, '1996-04-09'), ('Harry Winks', 18, 3, 1, 8, '1996-02-02'), ('Moussa Sissoko', 18, 3, 6, 17, '1989-08-16'), ('Gedson Fernandes', 18, 3, 21, 30, '1999-01-09'), ('Dele Alli', 18, 3, 1, 20, '1996-04-11'), ('Heung-min Son', 18, 4, 19, 7, '1992-07-08'), ('Steven Bergwijn', 18, 4, 17, 23, '1997-10-08'), ('Lucas Moura', 18, 4, 13, 27, '1992-08-13'), ('Gareth Bale', 18, 4, 15, 9, '1989-07-16'), ('Erik Lamela', 18, 4, 20, 11, '1992-03-04'), ('Jack Clarke', 18, 4, 1, 47, '2000-11-23'), ('Harry Kane', 18, 4, 1, 10, '1993-07-28'), ('Carlos Vinícius', 18, 4, 13, 45, '1995-03-22');


-- Leeds
INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Illan Meslier', 11, 1, 6, 1, '2000-03-02'), ('Kiko Casilla', 11, 1, 3, 13, '1986-10-02'), ('Elia Caprile', 11, 1, 4, 25, '2001-08-25'), ('Diego Llorente', 11, 2, 3, 14, '1993-08-16'), ('Robin Koch', 11, 2, 8, 5, '1996-07-17'), ('Liam Cooper', 11, 2, 23, 6, '1991-08-30'), ('Pascal Struijk', 11, 2, 17, 21, '1999-08-11'), ('Oliver Casey', 11, 2, 1, 49, '2000-10-14'), ('Stuart Dallas', 11, 2, 25, 15, '1991-04-19'), ('Barry Douglas', 11, 2, 23, 3, '1989-09-04'), ('Leif Davis', 11, 2, 1, 24, '1999-12-31'), ('Luke Ayling', 11, 2, 1, 2, '1991-08-25'), ('Kalvin Phillips', 11, 3, 1, 23, '1995-12-02'), ('Ouasim Bouy', 11, 3, 24, NULL, '1993-06-11'), ('Conor Shaughnessy', 11, 3, 18, NULL, '1996-06-30'), ('Adam Forshaw', 11, 3, 1, 4, '1991-10-08'), ('Mateusz Klich', 11, 3, 9, 43, '1990-06-13'), ('Jamie Shackleton', 11, 3, 1, 46, '1999-10-08'), ('Robbie Gotts', 11, 3, 1, 36, '1999-11-09'), ('Ezgjan Alioski', 11, 3, 26, 10, '1992-02-12'), ('Tyler Roberts', 11, 3, 15, 11, '1999-01-12'), ('Pablo Hernández', 11, 3, 3, 19, '1985-04-11'), ('Jack Harrison', 11, 4, 1, 22, '1996-11-20'), ('Raphinha', 11, 4, 13, 18, '1996-12-14'), ('Hélder Costa', 11, 4, 21, 17, '1994-01-12'), ('Ian Poveda', 11, 4, 1, 7, '2000-02-09'), ('Rodrigo', 11, 4, 3, 20, '1991-03-06'), ('Patrick Bamford', 11, 4, 1, 9, '1993-09-05'), ('Joe Gelhardt', 11, 4, 1, 30, '2002-05-04'), ('Jay-Roy Grot', 11, 4, 17, NULL, '1998-03-13');

UPDATE persons SET status = 'injured' WHERE name in ('Jay-Roy Grot', 'Adam Forshaw', 'Giovani Lo Celso');


-- Liverpool
INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Alisson', 12, 1, 13, 1, '1992-10-02'), ('Adrián', 12, 1, 3, 13, '1987-01-03'), ('Caoimhin Kelleher', 12, 1, 18, 62, '1998-11-23'), ('Virgil van Dijk', 12, 2, 17, 4, '1991-07-08'), ('Joe Gomez', 12, 2, 1, 12, '1997-05-23'), ('Joel Matip', 12, 2, 27, 32, '1991-08-08'), ('Sepp van den Berg', 12, 2, 17, 72, '2001-12-20'), ('Andrew Robertson', 12, 2, 23, 26, '1994-03-11'), ('Konstantinos Tsimikas', 12, 2, 32, 21, '1996-05-12'), ('Trent Alexander-Arnold', 12, 2, 1, 66, '1998-10-07'), ('Neco Williams', 12, 2, 15, 76, '2001-04-13'), ('Fabinho', 12, 3, 13, 3, '1993-10-23'), ('Thiago', 12, 3, 3, 6, '1991-04-11'), ('Georginio Wijnaldum', 12, 3, 17, 5, '1990-11-11'), ('Naby Keïta', 12, 3, 29, 8, '1995-02-10'), ('Jordan Henderson', 12, 3, 1, 14, '1990-06-17'), ('Alex Oxlade-Chamberlain', 12, 3, 1, 15, '1993-08-15'), ('James Milner', 12, 3, 1, 7, '1986-01-04'), ('Curtis Jones', 12, 3, 1, 17, '2001-01-30'), ('Ben Woodburn', 12, 3, 15, 58, '1999-10-15'), ('Sadio Mané', 12, 4, 33, 10, '1992-04-10'), ('Diogo Jota', 12, 4, 21, 20, '1996-12-04'), ('Takumi Minamino', 12, 4, 30, 18, '1995-01-16'), ('Mohamed Salah', 12, 4, 28, 11, '1992-06-15'), ('Harry Wilson', 12, 4, 15, 59, '1997-03-22'), ('Xherdan Shaqiri', 12, 4, 31, 23, '1991-10-10'), ('Roberto Firmino', 12, 4, 13, 9, '1991-10-02'), ('Divock Origi', 12, 4, 14, 27, '1995-04-18');

UPDATE persons SET status = 'injured' WHERE name = 'Sadio Mané';

-- Brighton
INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Mathew Ryan', 4, 1, 5, 1, '1992-04-08'), ('Christian Walton', 4, 1, 1, 31, '1995-11-09'), ('Jason Steele', 4, 1, 1, 23, '1990-08-18'), ('Robert Sánchez', 4, 1, 3, 26, '1997-11-18'), ('Lewis Dunk', 4, 2, 1, 5, '1991-11-21'), ('Adam Webster', 4, 2, 1, 4, '1995-01-04'), ('Joël Veltman', 4, 2, 17, 34, '1992-01-15'), ('Ben White', 4, 2, 1, 3, '1997-10-08'), ('Dan Burn', 4, 2, 1, 33, '1992-05-09'), ('Bernardo', 4, 2, 13, 30, '1995-05-14'), ('Tariq Lamptey', 4, 2, 1, 2, '2000-09-30'), ('Davy Pröpper', 4, 3, 17, 24, '1991-09-02'), ('Yves Bissouma', 4, 3, 36, 8, '1996-08-30'), ('Steven Alzate', 4, 3, 22, 17, '1998-09-08'), ('Jayson Molumby', 4, 3, 18, 49, '1999-08-06'), ('Max Sanders', 4, 3, 1, 41, '1999-01-04'), ('Solly March', 4, 3, 1, 20, '1994-07-20'), ('Alexis Mac Allister', 4, 3, 20, 10, '1998-12-24'), ('Pascal Groß', 4, 3, 8, 13, '1991-06-15'), ('Adam Lallana', 4, 3, 1, 14, '1988-05-10'), ('Leandro Trossard', 4, 4, 14, 11, '1994-12-04'), ('José Izquierdo', 4, 4, 22, 19, '1992-07-07'), ('Alireza Jahanbakhsh', 4, 4, 34, 16, '1993-08-11'), ('Neal Maupay', 4, 4, 6, 9, '1996-08-14'), ('Aaron Connolly', 4, 4, 18, 7, '2000-01-28'), ('Florin Andone', 4, 4, 35, 21, '1993-04-11'), ('Andi Zeqiri', 4, 4, 31, 29, '1999-06-22');

INSERT INTO injuries (start_date, end_date, player_id, description) VALUES
	('2020-01-02', '2020-01-22', 81, 'Calf Injury'),
	('2019-09-23', '2019-10-18', 81, 'Foot Injury'),
	('2018-12-16', '2019-01-05', 81, 'Thigh Injury'),
	('2018-10-28', '2018-11-10', 81, 'Knock'),
	('2018-03-14', '2018-04-02', 81, 'Ankle Injury'),
	('2016-08-17', '2016-08-26', 81, 'Ankle Injury');


SELECT id, name FROM countries WHERE id > 36;