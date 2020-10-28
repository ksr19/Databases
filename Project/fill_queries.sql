-- Заполняем таблицу с видами спорта

INSERT INTO sports (name) VALUES
	('Football'),
	('Basketball'),
	('Rugby union'),
	('Handball');

-- Заполняем таблицу со странами

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
	('Europe', 'eu.png'),
	('Brazil', 'brazil.png'),
	('Belgium', 'belgium.png'),
	('Wales', 'wales.png'),
	('Cote d\'Ivoire', 'cote d_ivoire.png'),
	('Netherlands', 'netherlands.png'),
	('Ireland', 'ireland.png'),
	('South Korea', 'korea.png'),
	('Argentina', 'argentina.png'),
	('Portugal', 'portugal.png'),
	('Colombia', 'colombia.png'),
	('Scotland', 'scotland.png'),
	('Morocco', 'morocco.png'),
	('Nortern Ireland', 'northern ireland.png'),
	('North Macedonia', 'north macedonia.png'),
	('Cameroon', 'cameroon.png'),
	('Egypt', 'egypt.png'),
	('Guinea', 'guinea.png'),
	('Japan', 'japan.png'),
	('Switzerland', 'switzerland.png'),
	('Greece', 'greece.png'),
	('Senegal', 'senegal.png'),
	('Iran', 'iran.png'),
	('Romania', 'romania.png'),
	('Mali', 'mali.png'),
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

-- Заполняем таблицу соревнований

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

-- Заполняем таблицу с командами

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

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Barcelona', 28, 'barcelona.png'), ('Alaves', 28, 'alaves.png'), ('Real Sociedad', 28, 'real sociedad.png'), ('Cadiz CF', 28, 'cadiz cf.png'), ('Real Madrid', 28, 'real madrid.png'), ('Levante', 28, 'levante.png'), ('Osasuna', 28, 'osasuna.png'), ('Eibar', 28, 'eibar.png'), ('Huesca', 28, 'huesca.png'), ('Sevilla', 28, 'sevilla.png'), ('Granada CF', 28, 'granada cf.png'), ('Elche', 28, 'elche.png'), ('Ath Bilbao', 28, 'ath bilbao.png'), ('Valladolid', 28, 'valladolid.png'), ('Getafe', 28, 'getafe.png'), ('Atl. Madrid', 28, 'atl. madrid.png'), ('Celta Vigo', 28, 'celta vigo.png'), ('Villarreal', 28, 'villarreal.png'), ('Valencia', 28, 'valencia.png'), ('Betis', 28, 'betis.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Napoli', 24, 'napoli.png'), ('Spezia', 24, 'spezia.png'), ('AS Roma', 24, 'as roma.png'), ('Torino', 24, 'torino.png'), ('Juventus', 24, 'juventus.png'), ('Cagliari', 24, 'cagliari.png'), ('Benevento', 24, 'benevento.png'), ('Udinese', 24, 'udinese.png'), ('AC Milan', 24, 'ac milan.png'), ('Atalanta', 24, 'atalanta.png'), ('Parma', 24, 'parma.png'), ('Crotone', 24, 'crotone.png'), ('Bologna', 24, 'bologna.png'), ('Inter', 24, 'inter.png'), ('Genoa', 24, 'genoa.png'), ('Sassuolo', 24, 'sassuolo.png'), ('Sampdoria', 24, 'sampdoria.png'), ('Verona', 24, 'verona.png'), ('Lazio', 24, 'lazio.png'), ('Fiorentina', 24, 'fiorentina.png');

INSERT INTO teams (name, competition_id, logoname)
		VALUES('Reims', 21, 'reims.png'), ('Metz', 21, 'metz.png'), ('Paris SG', 21, 'paris sg.png'), ('St Etienne', 21, 'st etienne.png'), ('Strasbourg', 21, 'strasbourg.png'), ('Montpellier', 21, 'montpellier.png'), ('Lille', 21, 'lille.png'), ('Lyon', 21, 'lyon.png'), ('Angers', 21, 'angers.png'), ('Brest', 21, 'brest.png'), ('Monaco', 21, 'monaco.png'), ('Bordeaux', 21, 'bordeaux.png'), ('Lens', 21, 'lens.png'), ('Dijon', 21, 'dijon.png'), ('Lorient', 21, 'lorient.png'), ('Nice', 21, 'nice.png'), ('Nimes', 21, 'nimes.png'), ('Nantes', 21, 'nantes.png'), ('Marseille', 21, 'marseille.png'), ('Rennes', 21, 'rennes.png');



-- Заполняем таблицу с позициями/должностями

INSERT INTO positions(name, sports_id)
	VALUES ('Goalkeeper', 1), ('Defender', 1), ('Midfielder', 1), ('Forward', 1), ('Coach', NULL), ('Referee', NULL);

-- Заполняем таблицу с игроками/судьями/тренерами

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Hugo Lloris', 18, 1, 6, 1, '1986-12-26'), ('Paulo Gazzaniga', 18, 1, 20, 22, '1992-01-02'), ('Joe Hart', 18, 1, 1, 12, '1987-04-19'), ('Alfie Whiteman', 18, 1, 1, 41, '1998-10-02'), ('Davinson Sánchez', 18, 2, 22, 6, '1996-06-12'), ('Toby Alderweireld', 18, 2, 14, 4, '1989-03-02'), ('Eric Dier', 18, 2, 1, 15, '1994-01-15'), ('Japhet Tanganga', 18, 2, 1, 25, '1999-03-31'), ('Cameron Carter-Vickers', 18, 2, 11, 38, '1997-12-31'), ('Sergio Reguilón', 18, 2, 3, 3, '1996-12-16'), ('Ben Davies', 18, 2, 15, 33, '1993-04-24'), ('Danny Rose', 18, 2, 1, NULL, '1990-07-02'), ('Matt Doherty', 18, 2, 18, 2, '1992-01-16'), ('Serge Aurier', 18, 2, 16, 24, '1992-12-24'), ('Pierre-Emile Höjbjerg', 18, 3, 7, 5, '1995-08-05'), ('Tanguy Ndombélé', 18, 3, 6, 28, '1996-12-28'), ('Giovani Lo Celso', 18, 3, 20, 18, '1996-04-09'), ('Harry Winks', 18, 3, 1, 8, '1996-02-02'), ('Moussa Sissoko', 18, 3, 6, 17, '1989-08-16'), ('Gedson Fernandes', 18, 3, 21, 30, '1999-01-09'), ('Dele Alli', 18, 3, 1, 20, '1996-04-11'), ('Heung-min Son', 18, 4, 19, 7, '1992-07-08'), ('Steven Bergwijn', 18, 4, 17, 23, '1997-10-08'), ('Lucas Moura', 18, 4, 13, 27, '1992-08-13'), ('Gareth Bale', 18, 4, 15, 9, '1989-07-16'), ('Erik Lamela', 18, 4, 20, 11, '1992-03-04'), ('Jack Clarke', 18, 4, 1, 47, '2000-11-23'), ('Harry Kane', 18, 4, 1, 10, '1993-07-28'), ('Carlos Vinícius', 18, 4, 13, 45, '1995-03-22');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Illan Meslier', 11, 1, 6, 1, '2000-03-02'), ('Kiko Casilla', 11, 1, 3, 13, '1986-10-02'), ('Elia Caprile', 11, 1, 4, 25, '2001-08-25'), ('Diego Llorente', 11, 2, 3, 14, '1993-08-16'), ('Robin Koch', 11, 2, 8, 5, '1996-07-17'), ('Liam Cooper', 11, 2, 23, 6, '1991-08-30'), ('Pascal Struijk', 11, 2, 17, 21, '1999-08-11'), ('Oliver Casey', 11, 2, 1, 49, '2000-10-14'), ('Stuart Dallas', 11, 2, 25, 15, '1991-04-19'), ('Barry Douglas', 11, 2, 23, 3, '1989-09-04'), ('Leif Davis', 11, 2, 1, 24, '1999-12-31'), ('Luke Ayling', 11, 2, 1, 2, '1991-08-25'), ('Kalvin Phillips', 11, 3, 1, 23, '1995-12-02'), ('Ouasim Bouy', 11, 3, 24, NULL, '1993-06-11'), ('Conor Shaughnessy', 11, 3, 18, NULL, '1996-06-30'), ('Adam Forshaw', 11, 3, 1, 4, '1991-10-08'), ('Mateusz Klich', 11, 3, 9, 43, '1990-06-13'), ('Jamie Shackleton', 11, 3, 1, 46, '1999-10-08'), ('Robbie Gotts', 11, 3, 1, 36, '1999-11-09'), ('Ezgjan Alioski', 11, 3, 26, 10, '1992-02-12'), ('Tyler Roberts', 11, 3, 15, 11, '1999-01-12'), ('Pablo Hernández', 11, 3, 3, 19, '1985-04-11'), ('Jack Harrison', 11, 4, 1, 22, '1996-11-20'), ('Raphinha', 11, 4, 13, 18, '1996-12-14'), ('Hélder Costa', 11, 4, 21, 17, '1994-01-12'), ('Ian Poveda', 11, 4, 1, 7, '2000-02-09'), ('Rodrigo', 11, 4, 3, 20, '1991-03-06'), ('Patrick Bamford', 11, 4, 1, 9, '1993-09-05'), ('Joe Gelhardt', 11, 4, 1, 30, '2002-05-04'), ('Jay-Roy Grot', 11, 4, 17, NULL, '1998-03-13');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Alisson', 12, 1, 13, 1, '1992-10-02'), ('Adrián', 12, 1, 3, 13, '1987-01-03'), ('Caoimhin Kelleher', 12, 1, 18, 62, '1998-11-23'), ('Virgil van Dijk', 12, 2, 17, 4, '1991-07-08'), ('Joe Gomez', 12, 2, 1, 12, '1997-05-23'), ('Joel Matip', 12, 2, 27, 32, '1991-08-08'), ('Sepp van den Berg', 12, 2, 17, 72, '2001-12-20'), ('Andrew Robertson', 12, 2, 23, 26, '1994-03-11'), ('Konstantinos Tsimikas', 12, 2, 32, 21, '1996-05-12'), ('Trent Alexander-Arnold', 12, 2, 1, 66, '1998-10-07'), ('Neco Williams', 12, 2, 15, 76, '2001-04-13'), ('Fabinho', 12, 3, 13, 3, '1993-10-23'), ('Thiago', 12, 3, 3, 6, '1991-04-11'), ('Georginio Wijnaldum', 12, 3, 17, 5, '1990-11-11'), ('Naby Keïta', 12, 3, 29, 8, '1995-02-10'), ('Jordan Henderson', 12, 3, 1, 14, '1990-06-17'), ('Alex Oxlade-Chamberlain', 12, 3, 1, 15, '1993-08-15'), ('James Milner', 12, 3, 1, 7, '1986-01-04'), ('Curtis Jones', 12, 3, 1, 17, '2001-01-30'), ('Ben Woodburn', 12, 3, 15, 58, '1999-10-15'), ('Sadio Mané', 12, 4, 33, 10, '1992-04-10'), ('Diogo Jota', 12, 4, 21, 20, '1996-12-04'), ('Takumi Minamino', 12, 4, 30, 18, '1995-01-16'), ('Mohamed Salah', 12, 4, 28, 11, '1992-06-15'), ('Harry Wilson', 12, 4, 15, 59, '1997-03-22'), ('Xherdan Shaqiri', 12, 4, 31, 23, '1991-10-10'), ('Roberto Firmino', 12, 4, 13, 9, '1991-10-02'), ('Divock Origi', 12, 4, 14, 27, '1995-04-18');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Mathew Ryan', 4, 1, 5, 1, '1992-04-08'), ('Christian Walton', 4, 1, 1, 31, '1995-11-09'), ('Jason Steele', 4, 1, 1, 23, '1990-08-18'), ('Robert Sánchez', 4, 1, 3, 26, '1997-11-18'), ('Lewis Dunk', 4, 2, 1, 5, '1991-11-21'), ('Adam Webster', 4, 2, 1, 4, '1995-01-04'), ('Joël Veltman', 4, 2, 17, 34, '1992-01-15'), ('Ben White', 4, 2, 1, 3, '1997-10-08'), ('Dan Burn', 4, 2, 1, 33, '1992-05-09'), ('Bernardo', 4, 2, 13, 30, '1995-05-14'), ('Tariq Lamptey', 4, 2, 1, 2, '2000-09-30'), ('Davy Pröpper', 4, 3, 17, 24, '1991-09-02'), ('Yves Bissouma', 4, 3, 36, 8, '1996-08-30'), ('Steven Alzate', 4, 3, 22, 17, '1998-09-08'), ('Jayson Molumby', 4, 3, 18, 49, '1999-08-06'), ('Max Sanders', 4, 3, 1, 41, '1999-01-04'), ('Solly March', 4, 3, 1, 20, '1994-07-20'), ('Alexis Mac Allister', 4, 3, 20, 10, '1998-12-24'), ('Pascal Groß', 4, 3, 8, 13, '1991-06-15'), ('Adam Lallana', 4, 3, 1, 14, '1988-05-10'), ('Leandro Trossard', 4, 4, 14, 11, '1994-12-04'), ('José Izquierdo', 4, 4, 22, 19, '1992-07-07'), ('Alireza Jahanbakhsh', 4, 4, 34, 16, '1993-08-11'), ('Neal Maupay', 4, 4, 6, 9, '1996-08-14'), ('Aaron Connolly', 4, 4, 18, 7, '2000-01-28'), ('Florin Andone', 4, 4, 35, 21, '1993-04-11'), ('Andi Zeqiri', 4, 4, 31, 29, '1999-06-22');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday)
		VALUES('Aaron Ramsdale', 17, 1, 1, 1, '1998-05-14'), ('Michael Verrips', 17, 1, 17, 21, '1996-12-03'), ('Wes Foderingham', 17, 1, 1, 18, '1991-01-14'), ('Simon Moore', 17, 1, 1, 25, '1990-05-19'), ('John Egan', 17, 2, 18, 12, '1992-10-20'), ('Jack O\'Connell', 17, 2, 1, 5, '1994-03-29'), ('Ethan Ampadu', 17, 2, 15, 22, '2000-09-14'), ('Chris Basham', 17, 2, 1, 6, '1988-07-20'), ('Phil Jagielka', 17, 2, 1, 15, '1982-08-17'), ('Kean Bryan', 17, 2, 1, 29, '1996-11-01'), ('Kyron Gordon', 17, 2, 1, NULL, '2002-05-24'), ('Enda Stevens', 17, 2, 18, 3, '1990-07-09'), ('Jack Robinson', 17, 2, 1, 19, '1993-09-01'), ('Max Lowe', 17, 2, 1, 13, '1997-05-11'), ('George Baldock', 17, 2, 1, 2, '1993-03-09'), ('Jayden Bogle', 17, 2, 1, 20, '2000-07-27'), ('Sander Berge', 17, 3, 42, 8, '1998-02-14'), ('Jack Rodwell', 17, 3, 1, 26, '1991-03-11'), ('Oliver Norwood', 17, 3, 25, 16, '1991-04-12'), ('John Fleck', 17, 3, 23, 4, '1991-08-24'), ('John Lundstram', 17, 3, 1, 7, '1994-02-18'), ('George Broadbent', 17, 3, 1, NULL, '2000-09-30'), ('Zak Brunt', 17, 3, 1, 42, '2001-11-17'), ('Ben Osborn', 17, 3, 1, 23, '1994-08-05'), ('Oliver Burke', 17, 4, 23, 14, '1997-04-07'), ('Lys Mousset', 17, 4, 6, 11, '1996-02-08'), ('Oliver McBurnie', 17, 4, 23, 9, '1996-06-04'), ('Rhian Brewster', 17, 4, 1, 24, '2000-04-01'), ('David McGoldrick', 17, 4, 18, 17, '1987-11-29'), ('Billy Sharp', 17, 4, 1, 10, '1986-02-05'), ('Antwoine Hackford', 17, 4, 1, 39, '2004-03-20');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Kepa', 10, 1, 3, 1, '1994-10-03'), ('Edouard Mendy', 10, 1, 33, 16, '1992-03-01'), ('Willy Caballero', 10, 1, 20, 13, '1981-09-28'), ('Antonio Rüdiger', 10, 2, 8, 2, '1993-03-03'), ('Kurt Zouma', 10, 2, 6, 15, '1994-10-27'), ('Andreas Christensen', 10, 2, 7, 4, '1996-04-10'), ('Fikayo Tomori', 10, 2, 1, 14, '1997-12-19'), ('Thiago Silva', 10, 2, 13, 6, '1984-09-22'), ('Ben Chilwell', 10, 2, 1, 21, '1996-12-21'), ('Emerson', 10, 2, 4, 33, '1994-08-03'), ('Marcos Alonso', 10, 2, 3, 3, '1990-12-28'), ('Abdul Rahman Baba', 10, 2, 53, NULL, '1994-07-02'), ('César Azpilicueta', 10, 2, 3, 28, '1989-08-28'), ('Reece James', 10, 2, 1, 24, '1999-12-08'), ('Jorginho', 10, 3, 4, 5, '1991-12-20'), ('N\'Golo Kanté', 10, 3, 6, 7, '1991-03-29'), ('Mateo Kovacic', 10, 3, 54, 17, '1994-05-06'), ('Billy Gilmour', 10, 3, 23, 23, '2001-06-11'), ('Danny Drinkwater', 10, 3, 1, NULL, '1990-03-05'), ('Kai Havertz', 10, 3, 8, 29, '1999-06-11'), ('Mason Mount', 10, 3, 1, 19, '1999-01-10'), ('Charly Musonda Jr.', 10, 3, 14, NULL, '1996-10-15'), ('Christian Pulisic', 10, 4, 11, 10, '1998-09-18'), ('Callum Hudson-Odoi', 10, 4, 1, 20, '2000-11-07'), ('Hakim Ziyech', 10, 4, 24, 22, '1993-03-19'), ('Victor Moses', 10, 4, 60, NULL, '1990-12-12'), ('Timo Werner', 10, 4, 8, 11, '1996-03-06'), ('Tammy Abraham', 10, 4, 1, 9, '1997-10-02'), ('Olivier Giroud', 10, 4, 6, 18, '1986-09-30');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Martin Dubravka', 1, 1, 48, 1, '1989-01-15'), ('Karl Darlow', 1, 1, 1, 26, '1990-10-08'), ('Mark Gillespie', 1, 1, 1, 29, '1992-03-27'), ('Dan Langley', 1, 1, 1, 41, '2000-12-28'), ('Jamaal Lascelles', 1, 2, 1, 6, '1993-11-11'), ('Fabian Schär', 1, 2, 31, 5, '1991-12-20'), ('Paul Dummett', 1, 2, 15, 3, '1991-09-26'), ('Federico Fernández', 1, 2, 20, 18, '1989-02-21'), ('Ciaran Clark', 1, 2, 18, 2, '1989-09-26'), ('Jamal Lewis', 1, 2, 25, 15, '1998-01-25'), ('Matt Ritchie', 1, 2, 23, 11, '1989-09-10'), ('Achraf Lazaar', 1, 2, 24, NULL, '1992-01-22'), ('DeAndre Yedlin', 1, 2, 11, 22, '1993-07-09'), ('Emil Krafth', 1, 2, 40, 17, '1994-08-02'), ('Javier Manquillo', 1, 2, 3, 19, '1994-05-05'), ('Isaac Hayden', 1, 3, 1, 14, '1995-03-22'), ('Matthew Longstaff', 1, 3, 1, 4, '2000-03-21'), ('Sean Longstaff', 1, 3, 1, 36, '1997-10-30'), ('Jonjo Shelvey', 1, 3, 1, 8, '1992-02-27'), ('Jeff Hendrick', 1, 3, 18, 16, '1992-01-31'), ('Miguel Almirón', 1, 3, 62, 24, '1994-02-10'), ('Henri Saivet', 1, 3, 33, 28, '1990-10-26'), ('Allan Saint-Maximin', 1, 4, 6, 10, '1997-03-12'), ('Ryan Fraser', 1, 4, 23, 21, '1994-02-24'), ('Christian Atsu', 1, 4, 53, 30, '1992-01-10'), ('Rolando Aarons', 1, 4, 1, NULL, '1995-11-16'), ('Jacob Murphy', 1, 4, 1, 23, '1995-02-24'), ('Joelinton', 1, 4, 13, 9, '1996-08-14'), ('Callum Wilson', 1, 4, 1, 13, '1992-02-27'), ('Dwight Gayle', 1, 4, 1, 12, '1990-10-17'), ('Andy Carroll', 1, 4, 1, 7, '1989-01-06');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Kasper Schmeichel', 2, 1, 7, 1, '1986-11-05'), ('Danny Ward', 2, 1, 15, 12, '1993-06-22'), ('Eldin Jakupovic', 2, 1, 31, 35, '1984-10-02'), ('Caglar Söyüncü', 2, 2, 45, 4, '1996-05-23'), ('Jonny Evans', 2, 2, 25, 6, '1988-01-03'), ('Wesley Fofana', 2, 2, 6, 3, '2000-12-17'), ('Filip Benkovic', 2, 2, 54, 16, '1997-07-13'), ('Wes Morgan', 2, 2, 51, 5, '1984-01-21'), ('Christian Fuchs', 2, 2, 37, 28, '1986-04-07'), ('Luke Thomas', 2, 2, 1, 33, '2001-06-10'), ('Ricardo Pereira', 2, 2, 21, 21, '1993-10-06'), ('Timothy Castagne', 2, 2, 14, 27, '1995-12-05'), ('James Justin', 2, 2, 1, 2, '1998-02-23'), ('Wilfred Ndidi', 2, 3, 60, 25, '1996-12-16'), ('Hamza Choudhury', 2, 3, 1, 20, '1997-10-01'), ('Nampalys Mendy', 2, 3, 6, 24, '1992-06-23'), ('Daniel Amartey', 2, 3, 53, 18, '1994-12-21'), ('Youri Tielemans', 2, 3, 14, 8, '1997-05-07'), ('Dennis Praet', 2, 3, 14, 26, '1994-05-14'), ('Matty James', 2, 3, 1, 22, '1991-07-22'), ('Marc Albrighton', 2, 3, 1, 11, '1989-11-18'), ('Harvey Barnes', 2, 3, 1, 15, '1997-12-09'), ('James Maddison', 2, 3, 1, 10, '1996-11-23'), ('Demarai Gray', 2, 4, 1, 7, '1996-06-28'), ('Ayoze Pérez', 2, 4, 3, 17, '1993-07-29'), ('Cengiz Ünder', 2, 4, 45, 19, '1997-07-14'), ('Jamie Vardy', 2, 4, 1, 9, '1987-01-11'), ('Kelechi Iheanacho', 2, 4, 60, 14, '1996-10-03'), ('Islam Slimani', 2, 4, 61, 13, '1988-06-18');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Nick Pope', 3, 1, 1, 1, '1992-04-19'), ('Bailey Peacock-Farrell', 3, 1, 25, 15, '1996-10-29'), ('Will Norris', 3, 1, 1, 25, '1993-08-12'), ('Lukas Jensen', 3, 1, 7, 40, '1999-03-18'), ('James Tarkowski', 3, 2, 1, 5, '1992-11-19'), ('Ben Mee', 3, 2, 1, 6, '1989-09-21'), ('Kevin Long', 3, 2, 18, 28, '1990-08-18'), ('Jimmy Dunne', 3, 2, 18, 34, '1997-10-19'), ('Bobby Thomas', 3, 2, 1, 37, '2001-01-30'), ('Charlie Taylor', 3, 2, 1, 3, '1993-09-18'), ('Erik Pieters', 3, 2, 17, 23, '1988-08-07'), ('Matthew Lowton', 3, 2, 1, 2, '1989-06-09'), ('Phil Bardsley', 3, 2, 23, 26, '1985-06-28'), ('Jack Cork', 3, 3, 1, 4, '1989-06-25'), ('Ashley Westwood', 3, 3, 1, 18, '1990-04-01'), ('Josh Brownhill', 3, 3, 1, 8, '1995-12-19'), ('Dale Stephens', 3, 3, 1, 16, '1989-06-12'), ('Mace Goodridge', 3, 3, 1, 44, '1999-09-13'), ('Robbie Brady', 3, 3, 18, 12, '1992-01-14'), ('Dwight McNeil', 3, 4, 1, 11, '1999-11-22'), ('Jóhann Berg Gudmundsson', 3, 4, 43, 7, '1990-10-27'), ('Chris Wood', 3, 4, 64, 9, '1991-12-07'), ('Ashley Barnes', 3, 4, 1, 10, '1989-10-30'), ('Jay Rodríguez', 3, 4, 1, 19, '1989-07-29'), ('Matej Vydra', 3, 4, 56, 27, '1992-05-01');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Alphonse Areola', 5, 1, 6, 1, '1993-02-27'), ('Marek Rodak', 5, 1, 48, 12, '1996-12-13'), ('Fabri', 5, 1, 3, 31, '1987-12-31'), ('George Wickens', 5, 1, 1, 40, '2001-11-08'), ('Joachim Andersen', 5, 2, 7, 5, '1996-05-31'), ('Michael Hector', 5, 2, 51, 3, '1992-07-19'), ('Tosin Adarabioyo', 5, 2, 1, 16, '1997-09-24'), ('Maxime Le Marchand', 5, 2, 6, 20, '1989-10-11'), ('Tim Ream', 5, 2, 11, 13, '1987-10-05'), ('Joe Bryan', 5, 2, 1, 23, '1993-09-17'), ('Antonee Robinson', 5, 2, 11, 33, '1997-08-08'), ('Ola Aina', 5, 2, 60, 34, '1996-10-08'), ('Kenny Tete', 5, 2, 17, 2, '1995-10-09'), ('Denis Odoi', 5, 2, 14, 4, '1988-05-27'), ('André Zambo Anguissa', 5, 3, 27, 29, '1995-11-16'), ('Mario Lemina', 5, 3, 52, 18, '1993-09-01'), ('Harrison Reed', 5, 3, 1, 21, '1995-01-27'), ('Kevin McDonald', 5, 3, 23, 6, '1988-11-04'), ('Ruben Loftus-Cheek', 5, 3, 1, 15, '1996-01-23'), ('Tom Cairney', 5, 3, 23, 10, '1991-01-20'), ('Jean Michaël Seri', 5, 3, 16, 24, '1991-07-19'), ('Stefan Johansen', 5, 3, 42, 8, '1991-01-08'), ('Josh Onomah', 5, 3, 1, 25, '1997-04-27'), ('Ademola Lookman', 5, 4, 1, 19, '1997-10-20'), ('Ivan Cavaleiro', 5, 4, 21, 17, '1993-10-18'), ('Neeskens Kebano', 5, 4, 44, 7, '1992-03-10'), ('Sylvester Jasper', 5, 4, 1, 58, '2001-09-13'), ('Anthony Knockaert', 5, 4, 6, 11, '1991-11-20'), ('Aboubakar Kamara', 5, 4, 6, 47, '1995-03-07'), ('Bobby Reid', 5, 4, 51, 14, '1993-02-02'), ('Aleksandar Mitrovic', 5, 4, 55, 9, '1994-09-16'), ('Jay Stansfield', 5, 4, 1, 71, '2002-11-24');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('David de Gea', 6, 1, 3, 1, '1990-11-07'), ('Dean Henderson', 6, 1, 1, 26, '1997-03-12'), ('Sergio Romero', 6, 1, 20, 22, '1987-02-22'), ('Lee Grant', 6, 1, 1, 13, '1983-01-27'), ('Harry Maguire', 6, 2, 1, 5, '1993-03-05'), ('Victor Lindelöf', 6, 2, 40, 2, '1994-07-17'), ('Eric Bailly', 6, 2, 16, 3, '1994-04-12'), ('Marcos Rojo', 6, 2, 20, 16, '1990-03-20'), ('Axel Tuanzebe', 6, 2, 1, 38, '1997-11-14'), ('Phil Jones', 6, 2, 1, 4, '1992-02-21'), ('Alex Telles', 6, 2, 13, 27, '1992-12-15'), ('Luke Shaw', 6, 2, 1, 23, '1995-07-12'), ('Brandon Williams', 6, 2, 1, 33, '2000-09-03'), ('Aaron Wan-Bissaka', 6, 2, 1, 29, '1997-11-26'), ('Timothy Fosu-Mensah', 6, 2, 17, 24, '1998-01-02'), ('Nemanja Matic', 6, 3, 55, 31, '1988-08-01'), ('Paul Pogba', 6, 3, 6, 6, '1993-03-15'), ('Donny van de Beek', 6, 3, 17, 34, '1997-04-18'), ('Scott McTominay', 6, 3, 23, 39, '1996-12-08'), ('Fred', 6, 3, 13, 17, '1993-03-05'), ('Bruno Fernandes', 6, 3, 21, 18, '1994-09-08'), ('Jesse Lingard', 6, 3, 1, 14, '1992-12-15'), ('Juan Mata', 6, 3, 3, 8, '1988-04-28'), ('Marcus Rashford', 6, 4, 1, 10, '1997-10-31'), ('Daniel James', 6, 4, 15, 21, '1997-11-10'), ('Mason Greenwood', 6, 4, 1, 11, '2001-10-01'), ('Facundo Pellistri', 6, 4, 63, 28, '2001-12-20'), ('Anthony Martial', 6, 4, 6, 9, '1995-12-05'), ('Edinson Cavani', 6, 4, 63, 7, '1987-02-14'), ('Odion Ighalo', 6, 4, 60, 25, '1989-06-16');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Emiliano Martínez', 7, 1, 20, 26, '1992-09-02'), ('Tom Heaton', 7, 1, 1, 1, '1986-04-15'), ('Lovre Kalinic', 7, 1, 54, 28, '1990-04-03'), ('Jed Steer', 7, 1, 1, 12, '1992-09-23'), ('Tyrone Mings', 7, 2, 1, 5, '1993-03-13'), ('Björn Engels', 7, 2, 14, 22, '1994-09-15'), ('Ezri Konsa', 7, 2, 1, 4, '1997-10-23'), ('Kortney Hause', 7, 2, 1, 30, '1995-07-16'), ('Matt Targett', 7, 2, 1, 18, '1995-09-18'), ('Neil Taylor', 7, 2, 15, 3, '1989-02-07'), ('Frédéric Guilbert', 7, 2, 6, 24, '1994-12-24'), ('Matty Cash', 7, 2, 1, 2, '1997-08-07'), ('Ahmed Elmohamady', 7, 2, 28, 27, '1987-09-09'), ('Douglas Luiz', 7, 3, 13, 6, '1998-05-09'), ('Marvelous Nakamba', 7, 3, 59, 19, '1994-01-19'), ('Ross Barkley', 7, 3, 1, 20, '1993-12-05'), ('John McGinn', 7, 3, 23, 7, '1994-10-18'), ('Conor Hourihane', 7, 3, 18, 14, '1991-02-02'), ('Henri Lansbury', 7, 3, 1, 8, '1990-10-12'), ('Jack Grealish', 7, 4, 1, 10, '1995-09-10'), ('Trezeguet', 7, 4, 28, 17, '1994-10-01'), ('Bertrand Traoré', 7, 4, 58, 15, '1995-09-06'), ('Anwar El Ghazi', 7, 4, 17, 21, '1995-05-03'), ('Wesley', 7, 4, 13, 9, '1996-11-26'), ('Ollie Watkins', 7, 4, 1, 11, '1995-12-30'), ('Keinan Davis', 7, 4, 1, 39, '1998-02-13');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Lukasz Fabianski', 9, 1, 9, 1, '1985-04-18'), ('Darren Randolph', 9, 1, 18, 35, '1987-05-12'), ('David Martin', 9, 1, 1, 25, '1986-01-22'), ('Issa Diop', 9, 2, 6, 23, '1997-01-09'), ('Fabián Balbuena', 9, 2, 62, 4, '1991-08-23'), ('Angelo Ogbonna', 9, 2, 4, 21, '1988-05-23'), ('Craig Dawson', 9, 2, 1, 15, '1990-05-06'), ('Aaron Cresswell', 9, 2, 1, 3, '1989-12-15'), ('Arthur Masuaku', 9, 2, 44, 26, '1993-11-07'), ('Ryan Fredericks', 9, 2, 1, 24, '1992-10-10'), ('Vladimir Coufal', 9, 2, 56, 5, '1992-08-22'), ('Ben Johnson', 9, 2, 1, 31, '2000-01-24'), ('Declan Rice', 9, 3, 1, 41, '1999-01-14'), ('Tomas Soucek', 9, 3, 56, 28, '1995-02-27'), ('Mark Noble', 9, 3, 1, 16, '1987-05-08'), ('Manuel Lanzini', 9, 3, 20, 10, '1993-02-15'), ('Pablo Fornals', 9, 3, 3, 18, '1996-02-22'), ('Jarrod Bowen', 9, 4, 1, 20, '1996-12-20'), ('Andriy Yarmolenko', 9, 4, 57, 7, '1989-10-23'), ('Robert Snodgrass', 9, 4, 23, 11, '1987-09-07'), ('Sébastien Haller', 9, 4, 6, 22, '1994-06-22'), ('Michail Antonio', 9, 4, 1, 30, '1990-03-28');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Bernd Leno', 13, 1, 8, 1, '1992-03-04'), ('Rúnar Alex Rúnarsson', 13, 1, 43, 13, '1995-02-18'), ('Matt Macey', 13, 1, 1, 33, '1994-09-09'), ('William Saliba', 13, 2, 6, 4, '2001-03-24'), ('Gabriel', 13, 2, 13, 6, '1997-12-19'), ('Shkodran Mustafi', 13, 2, 8, 20, '1992-04-17'), ('Calum Chambers', 13, 2, 1, 21, '1995-01-20'), ('Rob Holding', 13, 2, 1, 16, '1995-09-20'), ('Sokratis', 13, 2, 32, 5, '1988-06-09'), ('David Luiz', 13, 2, 13, 23, '1987-04-22'), ('Pablo Marí', 13, 2, 3, 22, '1993-08-31'), ('Kieran Tierney', 13, 2, 23, 3, '1997-06-05'), ('Sead Kolasinac', 13, 2, 46, 31, '1993-06-20'), ('Héctor Bellerín', 13, 2, 3, 2, '1995-03-19'), ('Cédric Soares', 13, 2, 21, 17, '1991-08-31'), ('Thomas', 13, 3, 53, 18, '1993-06-13'), ('Granit Xhaka', 13, 3, 31, 34, '1992-09-27'), ('Mohamed Elneny', 13, 3, 28, 25, '1992-07-11'), ('Dani Ceballos', 13, 3, 3, 8, '1996-08-07'), ('Joe Willock', 13, 3, 1, 28, '1999-08-20'), ('Ainsley Maitland-Niles', 13, 3, 1, 15, '1997-08-29'), ('Bukayo Saka', 13, 3, 1, 7, '2001-09-05'), ('Mesut Özil', 13, 3, 8, 10, '1988-10-15'), ('Emile Smith Rowe', 13, 3, 1, 32, '2000-07-28'), ('Gabriel Martinelli', 13, 4, 13, 35, '2001-06-18'), ('Nicolas Pépé', 13, 4, 16, 19, '1995-05-29'), ('Willian', 13, 4, 13, 12, '1988-08-09'), ('Reiss Nelson', 13, 4, 1, 24, '1999-12-10'), ('Pierre-Emerick Aubameyang', 13, 4, 52, 14, '1989-06-18'), ('Alexandre Lacazette', 13, 4, 6, 9, '1991-05-28'), ('Eddie Nketiah', 13, 4, 1, 30, '1999-05-30');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Ederson', 14, 1, 13, 31, '1993-08-17'), ('Zack Steffen', 14, 1, 11, 13, '1995-04-02'), ('Scott Carson', 14, 1, 1, 33, '1985-09-03'), ('Aymeric Laporte', 14, 2, 6, 14, '1994-05-27'), ('Rúben Dias', 14, 2, 21, 3, '1997-05-14'), ('John Stones', 14, 2, 1, 5, '1994-05-28'), ('Nathan Aké', 14, 2, 17, 6, '1995-02-18'), ('Eric García', 14, 2, 3, 50, '2001-01-09'), ('Philippe Sandler', 14, 2, 17, 34, '1997-02-10'), ('Taylor Harwood-Bellis', 14, 2, 1, 78, '2002-01-30'), ('Benjamin Mendy', 14, 2, 6, 22, '1994-07-17'), ('Oleksandr Zinchenko', 14, 2, 57, 11, '1996-12-15'), ('Kyle Walker', 14, 2, 1, 2, '1990-05-28'), ('João Cancelo', 14, 2, 21, 27, '1994-05-27'), ('Rodri', 14, 3, 3, 16, '1996-06-22'), ('Fernandinho', 14, 3, 13, 25, '1985-05-04'), ('Ilkay Gündogan', 14, 3, 8, 8, '1990-10-24'), ('Phil Foden', 14, 3, 1, 47, '2000-05-28'), ('Tommy Doyle', 14, 3, 1, 69, '2001-10-17'), ('Kevin De Bruyne', 14, 3, 14, 17, '1991-06-28'), ('Raheem Sterling', 14, 4, 1, 7, '1994-12-08'), ('Bernardo Silva', 14, 4, 21, 20, '1994-08-10'), ('Riyad Mahrez', 14, 4, 61, 26, '1991-02-21'), ('Ferran Torres', 14, 4, 3, 21, '2000-02-29'), ('Gabriel Jesus', 14, 4, 13, 9, '1997-04-03'), ('Sergio Agüero', 14, 4, 20, 10, '1988-06-02');


INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Rui Patrício', 15, 1, 21, 11, '1988-02-15'), ('John Ruddy', 15, 1, 1, 21, '1986-10-24'), ('Conor Coady', 15, 2, 1, 16, '1993-02-25'), ('Willy Boly', 15, 2, 6, 15, '1991-02-03'), ('Romain Saïss', 15, 2, 24, 27, '1990-03-26'), ('Ryan Bennett', 15, 2, 1, NULL, '1990-03-06'), ('Roderick Miranda', 15, 2, 21, NULL, '1991-03-30'), ('Max Kilman', 15, 2, 1, 49, '1997-05-23'), ('Rayan Aït Nouri', 15, 2, 6, 3, '2001-06-06'), ('Jonny Otto', 15, 2, 3, 19, '1994-03-03'), ('Marçal', 15, 2, 13, 5, '1989-02-19'), ('Nélson Semedo', 15, 2, 21, 22, '1993-11-16'), ('Ki-Jana Hoever', 15, 2, 17, 2, '2002-01-18'), ('Luke Matheson', 15, 2, 1, 41, '2002-10-02'), ('Oskar Buur', 15, 2, 7, 59, '1998-03-31'), ('Rúben Neves', 15, 3, 21, 8, '1997-03-13'), ('Leander Dendoncker', 15, 3, 14, 32, '1995-04-15'), ('João Moutinho', 15, 3, 21, 28, '1986-09-08'), ('Vitinha', 15, 3, 21, 20, '2000-02-13'), ('Daniel Podence', 15, 4, 21, 10, '1995-10-21'), ('Pedro Neto', 15, 4, 21, 7, '2000-03-09'), ('Adama Traoré', 15, 4, 3, 37, '1996-01-25'), ('Raúl Jiménez', 15, 4, 39, 9, '1991-05-05'), ('Fábio Silva', 15, 4, 21, 17, '2002-07-19');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Vicente Guaita', 16, 1, 3, 31, '1987-01-10'), ('Wayne Hennessey', 16, 1, 15, 13, '1987-01-24'), ('Stephen Henderson', 16, 1, 18, 19, '1988-05-02'), ('Mamadou Sakho', 16, 2, 6, 12, '1990-02-13'), ('James Tomkins', 16, 2, 1, 5, '1989-03-29'), ('Gary Cahill', 16, 2, 1, 24, '1985-12-19'), ('Jairo Riedewald', 16, 2, 17, 44, '1996-09-09'), ('Scott Dann', 16, 2, 1, 6, '1987-02-14'), ('Ryan Inniss', 16, 2, 1, 45, '1995-06-05'), ('Sam Woods', 16, 2, 1, 35, '1998-09-11'), ('Patrick van Aanholt', 16, 2, 17, 3, '1990-08-29'), ('Tyrick Mitchell', 16, 2, 1, 27, '1999-09-01'), ('Nathan Ferguson', 16, 2, 1, 36, '2000-10-06'), ('Joel Ward', 16, 2, 1, 2, '1989-10-29'), ('Martin Kelly', 16, 2, 1, 34, '1990-04-27'), ('Luka Milivojevic', 16, 3, 55, 4, '1991-04-07'), ('Cheikhou Kouyaté', 16, 3, 33, 8, '1989-12-21'), ('James McArthur', 16, 3, 23, 18, '1987-10-07'), ('James McCarthy', 16, 3, 18, 22, '1990-11-12'), ('Jeffrey Schlupp', 16, 3, 53, 15, '1992-12-23'), ('Eberechi Eze', 16, 3, 1, 25, '1998-06-29'), ('Max Meyer', 16, 3, 8, 7, '1995-09-18'), ('Brandon Pierrick', 16, 3, 1, 40, '2001-12-10'), ('Wilfried Zaha', 16, 4, 16, 11, '1992-11-10'), ('Andros Townsend', 16, 4, 1, 10, '1991-07-16'), ('Michy Batshuayi', 16, 4, 14, 23, '1993-10-02'), ('Christian Benteke', 16, 4, 14, 20, '1990-12-03'), ('Jordan Ayew', 16, 4, 53, 9, '1991-09-11'), ('Connor Wickham', 16, 4, 1, 21, '1993-03-31');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Alex McCarthy', 19, 1, 1, 1, '1989-12-03'), ('Fraser Forster', 19, 1, 1, 44, '1988-03-17'), ('Angus Gunn', 19, 1, 1, 28, '1996-01-22'), ('Harry Lewis', 19, 1, 1, 41, '1997-12-20'), ('Jan Bednarek', 19, 2, 9, 35, '1996-04-12'), ('Jannik Vestergaard', 19, 2, 7, 4, '1992-08-03'), ('Mohammed Salisu', 19, 2, 53, 22, '1999-04-17'), ('Jack Stephens', 19, 2, 1, 5, '1994-01-27'), ('Ryan Bertrand', 19, 2, 1, 3, '1989-08-05'), ('Sam McQueen', 19, 2, 1, NULL, '1995-02-06'), ('Jake Vokins', 19, 2, 1, 29, '2000-03-17'), ('Kyle Walker-Peters', 19, 2, 1, 2, '1997-04-13'), ('Yan Valery', 19, 2, 6, 18, '1999-02-22'), ('Ibrahima Diallo', 19, 3, 6, 27, '1999-03-08'), ('Oriol Romeu', 19, 3, 3, 6, '1991-09-24'), ('James Ward-Prowse', 19, 3, 1, 8, '1994-11-01'), ('Will Smallbone', 19, 3, 18, 20, '2000-02-21'), ('Stuart Armstrong', 19, 3, 23, 17, '1992-03-30'), ('Jake Hesketh', 19, 3, 1, 42, '1996-03-27'), ('Nathan Redmond', 19, 4, 1, 11, '1994-03-06'), ('Moussa Djenepo', 19, 4, 36, 12, '1998-06-15'), ('Theo Walcott', 19, 4, 1, 32, '1989-03-16'), ('Nathan Tella', 19, 4, 1, 23, '1999-07-05'), ('Danny Ings', 19, 4, 1, 9, '1992-07-23'), ('Che Adams', 19, 4, 1, 10, '1996-07-13'), ('Michael Obafemi', 19, 4, 18, 14, '2000-07-06'), ('Shane Long', 19, 4, 18, 7, '1987-01-22');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Jordan Pickford', 20, 1, 1, 1, '1994-03-07'), ('Robin Olsen', 20, 1, 40, 33, '1990-01-08'), ('Jonas Lössl', 20, 1, 7, 49, '1989-02-01'), ('João Virgínia', 20, 1, 21, 31, '1999-10-10'), ('Michael Keane', 20, 2, 1, 5, '1993-01-11'), ('Yerry Mina', 20, 2, 22, 13, '1994-09-23'), ('Mason Holgate', 20, 2, 1, 4, '1996-10-22'), ('Ben Godfrey', 20, 2, 1, 22, '1998-01-15'), ('Jarrad Branthwaite', 20, 2, 1, 32, '2002-06-27'), ('Matthew Pennington', 20, 2, 1, NULL, '1994-10-06'), ('Lucas Digne', 20, 2, 6, 12, '1993-07-20'), ('Niels Nkounkou', 20, 2, 6, 18, '2000-11-01'), ('Jonjoe Kenny', 20, 2, 1, 2, '1997-03-15'), ('Seamus Coleman', 20, 2, 18, 23, '1988-10-11'), ('Jean-Philippe Gbamin', 20, 3, 16, 25, '1995-09-25'), ('Muhamed Besic', 20, 3, 46, 30, '1992-09-10'), ('Allan', 20, 3, 13, 6, '1991-01-08'), ('André Gomes', 20, 3, 21, 21, '1993-07-30'), ('Abdoulaye Doucouré', 20, 3, 6, 16, '1993-01-01'), ('Tom Davies', 20, 3, 1, 26, '1998-06-30'), ('Fabian Delph', 20, 3, 1, 8, '1989-11-21'), ('Beni Baningime', 20, 3, 44, 34, '1998-09-09'), ('James Rodríguez', 20, 3, 22, 19, '1991-07-12'), ('Gylfi Sigurdsson', 20, 3, 43, 10, '1989-09-08'), ('Alex Iwobi', 20, 4, 60, 17, '1996-05-03'), ('Bernard', 20, 4, 13, 20, '1992-09-08'), ('Anthony Gordon', 20, 4, 1, 24, '2001-02-24'), ('Yannick Bolasie', 20, 4, 44, 29, '1989-05-24'), ('Richarlison', 20, 4, 13, 7, '1997-05-10'), ('Dominic Calvert-Lewin', 20, 4, 1, 9, '1997-03-16'), ('Cenk Tosun', 20, 4, 45, 14, '1991-06-07');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Sam Johnstone', 8, 1, 1, 1, '1993-03-25'), ('David Button', 8, 1, 1, 25, '1989-02-27'), ('Jonathan Bond', 8, 1, 1, 23, '1993-05-19'), ('Semi Ajayi', 8, 2, 60, 6, '1993-11-09'), ('Ahmed Hegazy', 8, 2, 28, 26, '1991-01-25'), ('Kyle Bartley', 8, 2, 1, 5, '1991-05-22'), ('Cédric Kipré', 8, 2, 6, 24, '1996-12-09'), ('Branislav Ivanovic', 8, 2, 55, 20, '1984-02-22'), ('Dara O\'Shea', 8, 2, 18, 27, '1999-03-04'), ('Kieran Gibbs', 8, 2, 1, 3, '1989-09-26'), ('Conor Townsend', 8, 2, 1, 14, '1993-03-04'), ('Darnell Furlong', 8, 2, 1, 2, '1995-10-31'), ('Lee Peltier', 8, 2, 1, 22, '1986-12-11'), ('Jake Livermore', 8, 3, 1, 8, '1989-11-14'), ('Conor Gallagher', 8, 3, 1, 18, '2000-02-06'), ('Romaine Sawyers', 8, 3, 38, 19, '1991-11-02'), ('Rekeem Harper', 8, 3, 1, 16, '2000-03-08'), ('Sam Field', 8, 3, 1, 28, '1998-05-08'), ('Filip Krovinovic', 8, 3, 54, 17, '1995-08-29'), ('Callum Robinson', 8, 4, 18, 7, '1995-02-02'), ('Grady Diangana', 8, 4, 1, 11, '1998-04-19'), ('Kamil Grosicki', 8, 4, 9, 13, '1988-06-08'), ('Kyle Edwards', 8, 4, 1, 21, '1998-02-17'), ('Matheus Pereira', 8, 4, 13, 12, '1996-05-05'), ('Matt Phillips', 8, 4, 23, 10, '1991-03-13'), ('Kenneth Zohore', 8, 4, 7, 9, '1994-01-31'), ('Charlie Austin', 8, 4, 1, 15, '1989-07-05'), ('Hal Robson-Kanu', 8, 4, 15, 4, '1989-05-21');

INSERT INTO persons (name, team_id, position_id, nationality, number, birthday) VALUES ('Steve Bruce', 1, 5, 1, NULL, '1960-12-31'), ('Brendan Rodgers', 2, 5, 1, NULL, '1973-01-26'), ('Sean Dyche', 3, 5, 1, NULL, '1971-06-28'), ('Graham Potter', 4, 5, 1, NULL, '1975-05-20'), ('Scott Parker', 5, 5, 1, NULL, '1980-10-13'), ('Ole Gunnar Solskjaer', 6, 5, 42, NULL, '1973-02-26'), ('Dean Smith', 7, 5, 1, NULL, '1971-03-19'), ('Slaven Bilic', 8, 5, 54, NULL, '1968-09-11'), ('David Moyes', 9, 5, 23, NULL, '1963-04-25'), ('Frank Lampard', 10, 5, 1, NULL, '1978-06-20'), ('Marcelo Bielsa', 11, 5, 20, NULL, '1955-07-21'), ('Jürgen Klopp', 12, 5, 8, NULL, '1967-06-16'), ('Mikel Arteta', 13, 5, 3, NULL, '1982-03-26'), ('Pep Guardiola', 14, 5, 3, NULL, '1971-01-18'), ('Nuno Espírito Santo', 15, 5, 21, NULL, '1974-01-25'), ('Roy Hodgson', 16, 5, 1, NULL, '1947-08-09'), ('Chris Wilder', 17, 5, 1, NULL, '1967-09-23'), ('José Mourinho', 18, 5, 21, NULL, '1963-01-26'), ('Ralph Hasenhüttl', 19, 5, 37, NULL, '1967-08-09'), ('Carlo Ancelotti', 20, 5, 4, NULL, '1959-06-10');


UPDATE persons SET status = 'injured' WHERE name in ('Steven Bergwijn', 'Kepa', 'Eric Bailly', 'Matt Ritchie', 'Jonjo Shelvey', 'Phillip Bardsley', 'Erik Pieters', 'Hal Robson-Kanu', 'Sam Field', 'Seamus Coleman', 'Joel Matip', 'Virgil van Dijk', 'Thiago', 'Naby Keita');


-- Заполняем таблицу с матчами


INSERT INTO matches (match_date, matchday, competition_id, home_team_id, away_team_id, home_team_score, away_team_score, season, status)
		VALUES('2020-09-12 13:30:00', 1, 18, 3, 6, NULL, NULL, '20/21', 'Postponed'), ('2020-09-12 13:30:00', 1, 18, 14, 7, NULL, NULL, '20/21', 'Postponed'), ('2020-09-12 13:30:00', 1, 18, 5, 13, 0, 3, '20/21', 'Finished'), ('2020-09-12 16:00:00', 1, 18, 16, 19, 1, 0, '20/21', 'Finished'), ('2020-09-12 18:30:00', 1, 18, 12, 11, 4, 3, '20/21', 'Finished'), ('2020-09-12 21:00:00', 1, 18, 9, 1, 0, 2, '20/21', 'Finished'), ('2020-09-13 15:00:00', 1, 18, 8, 2, 0, 3, '20/21', 'Finished'), ('2020-09-13 17:30:00', 1, 18, 18, 20, 0, 1, '20/21', 'Finished'), ('2020-09-14 19:00:00', 1, 18, 17, 15, 0, 2, '20/21', 'Finished'), ('2020-09-14 21:15:00', 1, 18, 4, 10, 1, 3, '20/21', 'Finished'), ('2020-09-19 13:30:00', 2, 18, 20, 8, 5, 2, '20/21', 'Finished'), ('2020-09-19 16:00:00', 2, 18, 11, 5, 4, 3, '20/21', 'Finished'), ('2020-09-19 18:30:00', 2, 18, 6, 16, 1, 3, '20/21', 'Finished'), ('2020-09-19 21:00:00', 2, 18, 13, 9, 2, 1, '20/21', 'Finished'), ('2020-09-20 13:00:00', 2, 18, 19, 18, 2, 5, '20/21', 'Finished'), ('2020-09-20 15:00:00', 2, 18, 1, 4, 0, 3, '20/21', 'Finished'), ('2020-09-20 17:30:00', 2, 18, 10, 12, 0, 2, '20/21', 'Finished'), ('2020-09-20 20:00:00', 2, 18, 2, 3, 4, 2, '20/21', 'Finished'), ('2020-09-21 19:00:00', 2, 18, 7, 17, 1, 0, '20/21', 'Finished'), ('2020-09-21 21:15:00', 2, 18, 15, 14, 1, 3, '20/21', 'Finished'), ('2020-09-26 13:30:00', 3, 18, 4, 6, 2, 3, '20/21', 'Finished'), ('2020-09-26 16:00:00', 3, 18, 16, 20, 1, 2, '20/21', 'Finished'), ('2020-09-26 18:30:00', 3, 18, 8, 10, 3, 3, '20/21', 'Finished'), ('2020-09-26 21:00:00', 3, 18, 3, 19, 0, 1, '20/21', 'Finished'), ('2020-09-27 13:00:00', 3, 18, 17, 11, 0, 1, '20/21', 'Finished'), ('2020-09-27 15:00:00', 3, 18, 18, 1, 1, 1, '20/21', 'Finished'), ('2020-09-27 17:30:00', 3, 18, 14, 2, 2, 5, '20/21', 'Finished'), ('2020-09-27 20:00:00', 3, 18, 9, 15, 4, 0, '20/21', 'Finished'), ('2020-09-28 18:45:00', 3, 18, 5, 7, 0, 3, '20/21', 'Finished'), ('2020-09-28 21:00:00', 3, 18, 12, 13, 3, 1, '20/21', 'Finished'), ('2020-10-03 13:30:00', 4, 18, 10, 16, 4, 0, '20/21', 'Finished'), ('2020-10-03 16:00:00', 4, 18, 20, 4, 4, 2, '20/21', 'Finished'), ('2020-10-03 18:30:00', 4, 18, 11, 14, 1, 1, '20/21', 'Finished'), ('2020-10-03 21:00:00', 4, 18, 1, 3, 3, 1, '20/21', 'Finished'), ('2020-10-04 13:00:00', 4, 18, 2, 9, 0, 3, '20/21', 'Finished'), ('2020-10-04 13:00:00', 4, 18, 19, 8, 2, 0, '20/21', 'Finished'), ('2020-10-04 15:00:00', 4, 18, 13, 17, 2, 1, '20/21', 'Finished'), ('2020-10-04 15:00:00', 4, 18, 15, 5, 1, 0, '20/21', 'Finished'), ('2020-10-04 17:30:00', 4, 18, 6, 18, 1, 6, '20/21', 'Finished'), ('2020-10-04 20:15:00', 4, 18, 7, 12, 7, 2, '20/21', 'Finished'), ('2020-10-17 13:30:00', 5, 18, 20, 12, 2, 2, '20/21', 'Finished'), ('2020-10-17 16:00:00', 5, 18, 10, 19, 3, 3, '20/21', 'Finished'), ('2020-10-17 18:30:00', 5, 18, 14, 13, 1, 0, '20/21', 'Finished'), ('2020-10-17 21:00:00', 5, 18, 1, 6, 1, 4, '20/21', 'Finished'), ('2020-10-18 13:00:00', 5, 18, 17, 5, 1, 1, '20/21', 'Finished'), ('2020-10-18 15:00:00', 5, 18, 16, 4, 1, 1, '20/21', 'Finished'), ('2020-10-18 17:30:00', 5, 18, 18, 9, 3, 3, '20/21', 'Finished'), ('2020-10-18 20:15:00', 5, 18, 2, 7, 0, 1, '20/21', 'Finished'), ('2020-10-19 18:30:00', 5, 18, 8, 3, 0, 0, '20/21', 'Finished'), ('2020-10-19 21:00:00', 5, 18, 11, 15, 0, 1, '20/21', 'Finished'), ('2020-10-23 21:00:00', 6, 18, 7, 11, 0, 3, '20/21', 'Finished'), ('2020-10-24 13:30:00', 6, 18, 9, 14, 1, 1, '20/21', 'Finished'), ('2020-10-24 16:00:00', 6, 18, 5, 16, 1, 2, '20/21', 'Finished'), ('2020-10-24 18:30:00', 6, 18, 6, 10, 0, 0, '20/21', 'Finished'), ('2020-10-24 21:00:00', 6, 18, 12, 17, 2, 1, '20/21', 'Finished'), ('2020-10-25 15:00:00', 6, 18, 19, 20, 2, 0, '20/21', 'Finished'), ('2020-10-25 17:30:00', 6, 18, 15, 1, 1, 1, '20/21', 'Finished'), ('2020-10-25 20:15:00', 6, 18, 13, 2, 0, 1, '20/21', 'Finished'), ('2020-10-26 18:30:00', 6, 18, 4, 8, 1, 1, '20/21', 'Finished'), ('2020-10-26 21:00:00', 6, 18, 3, 18, 0, 1, '20/21', 'Finished'), ('2020-10-30 21:00:00', 7, 18, 15, 16, NULL, NULL, '20/21', 'Not started yet'), ('2020-10-31 13:30:00', 7, 18, 17, 14, NULL, NULL, '20/21', 'Not started yet'), ('2020-10-31 16:00:00', 7, 18, 3, 10, NULL, NULL, '20/21', 'Not started yet'), ('2020-10-31 18:30:00', 7, 18, 12, 9, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-01 13:00:00', 7, 18, 7, 19, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-01 15:00:00', 7, 18, 1, 20, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-01 17:30:00', 7, 18, 6, 13, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-01 20:15:00', 7, 18, 18, 4, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-02 18:30:00', 7, 18, 5, 8, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-02 21:00:00', 7, 18, 11, 2, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 13, 7, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 4, 3, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 10, 17, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 16, 11, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 20, 6, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 2, 15, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 14, 12, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 19, 1, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 8, 18, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-07 16:00:00', 8, 18, 9, 5, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 7, 4, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 3, 16, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 5, 20, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 11, 13, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 12, 2, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 6, 8, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 1, 10, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 17, 9, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 18, 14, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-21 16:00:00', 9, 18, 15, 19, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 13, 15, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 4, 12, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 10, 18, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 16, 1, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 20, 11, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 2, 5, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 14, 3, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 19, 6, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 8, 17, NULL, NULL, '20/21', 'Not started yet'), ('2020-11-28 16:00:00', 10, 18, 9, 7, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 7, 1, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 4, 19, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 3, 20, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 10, 11, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 12, 15, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 14, 5, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 17, 2, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 18, 13, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 8, 16, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-05 16:00:00', 11, 18, 9, 6, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 13, 3, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 16, 18, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 20, 10, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 5, 12, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 11, 9, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 2, 4, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 6, 14, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 1, 8, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 19, 17, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-12 16:00:00', 12, 18, 15, 7, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 13, 19, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 7, 3, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 5, 4, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 11, 1, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 2, 20, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 17, 6, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 9, 16, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-15 20:45:00', 13, 18, 15, 10, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-16 21:00:00', 13, 18, 12, 18, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-16 21:00:00', 13, 18, 14, 8, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 4, 17, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 3, 15, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 10, 9, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 16, 12, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 20, 13, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 6, 11, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 1, 5, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 19, 14, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 18, 2, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-19 16:00:00', 14, 18, 8, 7, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 13, 10, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 7, 16, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 5, 19, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 11, 3, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 2, 6, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 12, 8, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 14, 1, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 17, 20, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 9, 4, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-26 16:00:00', 15, 18, 15, 18, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 4, 13, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 3, 17, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 10, 7, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 16, 2, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 20, 14, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 6, 15, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 1, 12, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 19, 9, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 18, 5, NULL, NULL, '20/21', 'Not started yet'), ('2020-12-28 16:00:00', 16, 18, 8, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 4, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 3, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 10, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 16, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 20, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 6, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 1, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 19, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 18, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-02 16:00:00', 17, 18, 8, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 13, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 7, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 5, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 11, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 2, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 17, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 9, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-12 20:45:00', 18, 18, 15, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-13 21:00:00', 18, 18, 12, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-13 21:00:00', 18, 18, 14, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 13, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 7, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 5, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 11, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 2, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 12, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 14, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 17, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 9, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-16 16:00:00', 19, 18, 15, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-26 20:45:00', 20, 18, 4, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-26 20:45:00', 20, 18, 3, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-26 20:45:00', 20, 18, 20, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-26 21:00:00', 20, 18, 6, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-26 21:00:00', 20, 18, 8, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-27 20:45:00', 20, 18, 10, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-27 20:45:00', 20, 18, 1, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-27 20:45:00', 20, 18, 19, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-27 20:45:00', 20, 18, 18, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-27 21:00:00', 20, 18, 16, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 13, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 4, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 10, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 16, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 20, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 2, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 14, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 19, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 8, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-01-30 16:00:00', 21, 18, 9, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 20:45:00', 22, 18, 7, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 20:45:00', 22, 18, 3, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 20:45:00', 22, 18, 5, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 20:45:00', 22, 18, 11, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 20:45:00', 22, 18, 17, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 20:45:00', 22, 18, 15, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-02 21:00:00', 22, 18, 6, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-03 20:45:00', 22, 18, 1, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-03 20:45:00', 22, 18, 18, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-03 21:00:00', 22, 18, 12, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 7, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 3, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 5, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 11, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 12, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 6, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 1, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 17, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 18, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-06 16:00:00', 23, 18, 15, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 13, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 4, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 10, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 16, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 20, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 2, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 14, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 19, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 8, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-13 16:00:00', 24, 18, 9, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 13, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 7, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 4, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 3, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 5, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 12, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 6, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 19, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 9, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-20 16:00:00', 25, 18, 15, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 10, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 16, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 20, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 11, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 2, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 14, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 1, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 17, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 18, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-02-27 16:00:00', 26, 18, 8, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 7, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 4, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 3, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 10, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 12, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 14, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 17, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 18, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 8, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-06 16:00:00', 27, 18, 9, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 13, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 16, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 20, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 5, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 11, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 2, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 6, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 1, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 19, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-13 16:00:00', 28, 18, 15, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 4, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 3, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 16, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 5, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 12, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 14, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 17, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 18, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 8, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-03-20 16:00:00', 29, 18, 9, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 13, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 7, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 10, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 20, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 11, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 2, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 6, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 1, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 19, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-03 16:00:00', 30, 18, 15, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 4, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 3, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 16, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 5, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 12, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 14, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 17, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 18, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 8, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-10 16:00:00', 31, 18, 9, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 13, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 7, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 10, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 20, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 11, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 2, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 6, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 1, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 19, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-17 16:00:00', 32, 18, 15, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 13, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 7, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 5, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 11, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 2, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 12, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 14, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 17, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 9, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-04-24 16:00:00', 33, 18, 15, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 4, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 3, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 10, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 16, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 20, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 6, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 1, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 19, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 18, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-01 16:00:00', 34, 18, 8, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 13, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 7, 6, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 5, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 11, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 2, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 12, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 14, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 17, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 9, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-08 16:00:00', 35, 18, 15, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-11 20:45:00', 36, 18, 4, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-11 20:45:00', 36, 18, 3, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-11 20:45:00', 36, 18, 20, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-11 21:00:00', 36, 18, 6, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-11 21:00:00', 36, 18, 8, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-12 20:45:00', 36, 18, 10, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-12 20:45:00', 36, 18, 1, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-12 20:45:00', 36, 18, 19, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-12 20:45:00', 36, 18, 18, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-12 21:00:00', 36, 18, 16, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 4, 14, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 3, 12, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 10, 2, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 16, 13, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 20, 15, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 6, 5, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 1, 17, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 19, 11, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 18, 7, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-15 16:00:00', 37, 18, 8, 9, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 13, 4, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 7, 10, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 5, 1, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 11, 8, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 2, 18, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 12, 16, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 14, 20, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 17, 3, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 9, 19, NULL, NULL, '20/21', 'Not started yet'), ('2021-05-23 17:00:00', 38, 18, 15, 6, NULL, NULL, '20/21', 'Not started yet');


-- Заполняем таблицу с возможными событиями

INSERT INTO events (description) VALUES
	('Starting Lineup'),
	('Goal'),
	('Assist'),
	('Own goal'),
	('Yellow Card'),
	('Red Card'),
	('Substitution on'),
	('Substitution off'),
	('On the bench'),
	('Penalty scored'),
	('Penalty missed'),
	('Foul'),
	('Free kick'),
	('Corner kick');

-- Трансферы 

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-09-19', 81, 15, 12, 'Transfer'), ('2018-07-01', 81, 232, 15, 'Transfer'), ('2018-05-21', 81, 15, 232, 'Return from loan'), ('2017-07-25', 81, 232, 15, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, type) VALUES ('2018-07-19', 60, 239, 12, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-08-05', 61, 9, 12, 'Free agent'), ('2013-07-01', 61, 236, 9, 'Free agent');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2016-07-01', 65, 159, 12, 'Free agent'), ('2000-07-01', 65, 165, 159, 'Free agent');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2018-01-01', 63, 19, 12, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-09-18', 72, 146, 12, 'Transfer'), ('2013-07-14', 72, 217, 146, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, type) VALUES ('2018-07-01', 74, 153, 12, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2015-07-01', 77, 14, 12, 'Free agent'), ('2010-08-17', 77, 7, 14, 'Transfer'), ('2008-08-29', 77, 1, 7, 'Transfer'), ('2006-05-08', 77, 7, 1, 'Return from loan'), ('2005-08-31', 77, 1, 7, 'Loan'), ('2004-07-02', 77, 11, 1, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2016-07-22', 73, 1, 12, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2015-07-01', 86, 152, 12, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2016-07-01', 80, 19, 12, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2017-07-01', 83, 239, 12, 'Transfer'), ('2016-07-01', 83, 10, 239, 'Transfer'), ('2016-06-30', 83, 239, 10, 'Return from loan'), ('2015-08-06', 83, 10, 239, 'Loan'), ('2015-06-30', 83, 256, 10, 'Return from loan'), ('2015-02-02', 83, 10, 256, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2012-08-31', 1, 264, 18, 'Transfer'), ('2008-07-01', 1, 272, 264, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2015-07-08', 6, 232, 18, 'Transfer'), ('2015-06-30', 6, 19, 232, 'Return from loan'), ('2014-09-01', 6, 232, 19, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2017-08-31', 14, 259, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2014-07-23', 11, 25, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-08-30', 13, 15, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-09-17', 10, 221, 18, 'Transfer'), ('2020-08-22', 10, 226, 221, 'Return from loan'), ('2019-07-05', 10, 221, 226, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-08-11', 15, 19, 18, 'Transfer'), ('2016-07-11', 15, 146, 19, 'Transfer'), ('2016-06-30', 15, 159, 146, 'Return from loan'), ('2015-08-28', 15, 146, 159, 'Loan'), ('2015-06-30', 15, 158, 146, 'Return from loan'), ('2015-01-07', 15, 146, 158, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, type) VALUES ('2013-08-30', 26, 239, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-07-01', 17, 236, 18, 'Transfer'), ('2020-06-30', 17, 18, 236, 'Return from loan'), ('2019-08-08', 17, 236, 18, 'Loan'), ('2019-07-01', 17, 259, 236, 'Transfer'), ('2019-06-29', 17, 236, 259, 'Return from loan'), ('2018-08-31', 17, 259, 236, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2018-01-31', 24, 259, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-07-02', 16, 264, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2016-08-31', 19, 1, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-09-19', 25, 221, 18, 'Loan'), ('2013-09-01', 25, 18, 221, 'Transfer'), ('2007-07-01', 25, 19, 18, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2013-05-14', 28, 2, 18, 'Return from loan'), ('2013-02-21', 28, 18, 2, 'Loan'), ('2013-02-01', 28, 31, 18, 'Return from loan'), ('2012-08-31', 28, 18, 31, 'Loan'), ('2012-05-01', 28, 32, 18, 'Return from loan'), ('2012-01-01', 28, 18, 32, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2015-08-28', 22, 157, 18, 'Transfer'), ('2013-07-01', 22, 166, 157, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2018-08-08', 146, 229, 10, 'Transfer'), ('2016-06-30', 146, 230, 229, 'Return from loan'), ('2015-07-20', 146, 229, 230, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2017-07-01', 148, 14, 10, 'Free agent');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-09-24', 147, 276, 10, 'Transfer'), ('2019-08-06', 147, 257, 276, 'Transfer'), ('2016-07-01', 147, 275, 257, 'Free agent');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2016-08-31', 156, 256, 10, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2012-08-24', 158, 275, 10, 'Transfer'), ('2010-07-01', 158, 223, 275, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-08-26', 154, 2, 10, 'Transfer'), ('2016-01-03', 154, 39, 2, 'Return from loan'), ('2015-11-19', 154, 2, 39, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2017-06-30', 151, 143, 10, 'Return from loan'), ('2015-07-10', 151, 10, 143, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-08-28', 153, 259, 10, 'Free agent'), ('2012-07-14', 153, 245, 259, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-05-31', 152, 40, 10, 'Return from loan'), ('2018-08-06', 152, 10, 40, 'Loan'), ('2017-05-31', 152, 4, 10, 'Return from loan'), ('2017-01-23', 152, 10, 4, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-05-31', 150, 20, 10, 'Return from loan'), ('2018-08-09', 150, 10, 20, 'Loan'), ('2018-05-31', 150, 23, 10, 'Return from loan'), ('2017-07-21', 150, 10, 23, 'Loan'), ('2014-06-30', 150, 260, 10, 'Return from loan'), ('2014-02-01', 150, 10, 260, 'Loan'), ('2014-01-31', 150, 260, 10, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-09-04', 165, 157, 10, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2018-07-14', 160, 237, 10, 'Transfer'), ('2014-01-15', 160, 254, 237, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2016-07-16', 161, 2, 10, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-07-01', 162, 221, 10, 'Transfer'), ('2019-06-30', 162, 10, 221, 'Return from loan'), ('2018-08-09', 162, 221, 10, 'Loan'), ('2015-08-18', 162, 250, 221, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-05-31', 166, 40, 10, 'Return from loan'), ('2018-07-17', 166, 10, 40, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-06-30', 168, 145, 10, 'Return from loan'), ('2019-01-02', 168, 10, 145, 'Loan'), ('2019-01-02', 168, 145, 10, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2019-05-31', 173, 7, 10, 'Return from loan'), ('2018-08-31', 173, 10, 7, 'Loan'), ('2018-05-31', 173, 25, 10, 'Return from loan'), ('2017-07-04', 173, 10, 25, 'Loan'), ('2017-05-31', 173, 26, 10, 'Return from loan'), ('2016-08-05', 173, 10, 26, 'Loan');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2018-01-31', 174, 13, 10, 'Transfer'), ('2012-07-01', 174, 262, 13, 'Transfer');

INSERT INTO transfers (transfer_date, player_id, team_out_id, team_in_id, TYPE)
		VALUES('2020-07-01', 172, 153, 10, 'Transfer'), ('2016-07-01', 172, 154, 153, 'Transfer');

-- Травмы 

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-01-02', '2020-01-22', 81, 'Calf Injury'), ('2019-09-23', '2019-10-18', 81, 'Foot Injury'), ('2018-12-16', '2019-01-05', 81, 'Thigh Injury'), ('2018-10-28', '2018-11-10', 81, 'Knock'), ('2018-03-14', '2018-04-02', 81, 'Ankle Injury'), ('2016-08-17', '2016-08-26', 81, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-07-27', '2020-09-04', 69, 'Injury'), ('2019-10-22', '2019-10-25', 69, 'Illness'), ('2019-03-18', '2019-03-30', 69, 'Lower Back Injury'), ('2019-03-11', '2019-03-12', 69, 'Muscle Injury'), ('2019-01-13', '2019-02-08', 69, 'Knee Injury'), ('2018-12-12', '2018-12-25', 69, 'Foot Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-04', '2020-10-23', 60, 'Shoulder Injury'), ('2020-09-21', '2020-09-27', 60, 'Injury'), ('2020-03-06', '2020-06-15', 60, 'Muscle Injury'), ('2019-08-10', '2019-10-18', 60, 'Calf Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-06-15', '2020-06-20', 61, 'Knock'), ('2016-05-01', '2016-05-16', 61, 'Calf Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-20', '2020-09-26', 64, 'Knee Injury'), ('2018-12-06', '2019-04-08', 64, 'Broken Leg'), ('2018-08-05', '2018-08-11', 64, 'Knock'), ('2018-04-29', '2018-07-06', 64, 'Ankle Injury'), ('2018-03-24', '2018-04-20', 64, 'Ankle Injury'), ('2018-02-05', '2018-02-13', 64, 'Knee Injury'), ('2016-08-01', '2016-11-27', 64, 'Achilles Tendon Injury'), ('2015-10-14', '2016-06-01', 64, 'Knee Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-18', NULL, 65, 'Muscle Injury'), ('2020-09-13', '2020-10-13', 65, 'Muscle Injury'), ('2020-06-22', '2020-09-04', 65, 'Ankle Injury'), ('2019-10-22', '2020-01-18', 65, 'Knee Injury'), ('2019-09-29', '2019-10-18', 65, 'Knock'), ('2018-12-12', '2019-01-11', 65, 'Shoulder Injury'), ('2018-07-23', '2018-08-19', 65, 'Groin Injury'), ('2018-04-03', '2018-07-13', 65, 'Thigh Injury'), ('2017-12-01', '2017-12-25', 65, 'Muscle Injury'), ('2017-11-18', '2017-11-25', 65, 'Thigh Injury'), ('2017-09-20', '2017-09-22', 65, 'Knock'), ('2017-04-17', '2017-04-23', 65, 'Muscle Injury'), ('2016-12-15', '2017-01-20', 65, 'Ankle Injury'), ('2016-12-05', '2016-12-10', 65, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-06-12', '2020-06-23', 67, 'Knock'), ('2019-11-11', '2019-11-22', 67, 'Ankle Injury'), ('2019-09-15', '2019-09-16', 67, 'Knock'), ('2019-05-08', '2019-05-11', 67, 'Calf Injury'), ('2019-02-25', '2019-02-26', 67, 'Arm Injury'), ('2018-12-03', '2018-12-07', 67, 'Thigh Injury'), ('2018-04-08', '2018-04-09', 67, 'Injury'), ('2018-03-29', '2018-03-30', 67, 'Thigh Injury'), ('2016-10-17', '2016-11-25', 67, 'Achilles Tendon Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-18', NULL, 63, 'Knee Injury'), ('2019-01-20', '2019-01-29', 63, 'Illness'), ('2018-09-23', '2018-09-28', 63, 'Chest Injury'), ('2018-01-12', '2018-01-21', 63, 'Thigh Injury'), ('2017-08-10', '2017-09-09', 63, 'Illness'), ('2017-01-25', '2017-08-08', 63, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-18', NULL, 72, 'Knee Injury'), ('2020-06-11', '2020-07-03', 72, 'Groin Injury'), ('2020-05-23', '2020-06-04', 72, 'Groin Injury'), ('2019-08-17', '2019-08-30', 72, 'Neck Injury'), ('2019-05-12', '2019-05-17', 72, 'Knee Injury'), ('2019-01-28', '2019-02-05', 72, 'Muscle Injury'), ('2018-10-31', '2018-11-30', 72, 'Ankle Injury'), ('2018-09-16', '2018-09-21', 72, 'Toe Injury'), ('2018-03-15', '2018-03-22', 72, 'Foot Injury'), ('2017-11-23', '2018-02-16', 72, 'Thigh Injury'), ('2017-09-21', '2017-09-27', 72, 'Injury'), ('2017-08-02', '2017-08-25', 72, 'Injury'), ('2017-01-08', '2017-02-03', 72, 'Thigh Injury'), ('2016-12-14', '2016-12-17', 72, 'Shin Injury'), ('2016-11-01', '2016-11-04', 72, 'Injury'), ('2016-10-02', '2016-10-05', 72, 'Injury'), ('2016-08-18', '2016-08-25', 72, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-11-28', '2020-01-18', 71, 'Ankle Injury'), ('2019-06-02', '2019-07-10', 71, 'Injury'), ('2019-04-22', '2019-04-30', 71, 'Head Injury'), ('2018-08-08', '2018-08-11', 71, 'Illness'), ('2017-01-27', '2017-01-28', 71, 'Illness');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-21', '2020-10-03', 75, 'Thigh Injury'), ('2020-07-09', '2020-09-11', 75, 'Knee Injury'), ('2020-02-19', '2020-03-10', 75, 'Thigh Injury'), ('2019-12-27', '2019-12-28', 75, 'Injury'), ('2019-03-14', '2019-03-21', 75, 'Ankle Injury'), ('2019-01-31', '2019-02-08', 75, 'Injury'), ('2019-01-04', '2019-01-11', 75, 'Calf Injury'), ('2018-11-12', '2018-11-23', 75, 'Thigh Injury'), ('2018-10-21', '2018-11-10', 75, 'Thigh Injury'), ('2018-08-07', '2018-08-11', 75, 'Injury'), ('2018-07-13', '2018-07-13', 75, 'Injury'), ('2017-12-23', '2018-01-26', 75, 'Thigh Injury'), ('2017-03-02', '2017-07-09', 75, 'Ankle Injury'), ('2017-01-01', '2017-01-14', 75, 'Injury'), ('2016-04-08', '2016-05-14', 75, 'Knee Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-20', NULL, 74, 'Lacking Match Fitness'), ('2020-10-11', '2020-10-19', 74, 'Illness'), ('2020-02-25', '2020-03-06', 74, 'Hip Injury'), ('2019-12-30', '2020-01-25', 74, 'Groin Injury'), ('2019-11-01', '2019-11-01', 74, 'Injury'), ('2019-08-10', '2019-09-24', 74, 'Muscle Injury'), ('2019-05-02', '2019-06-21', 74, 'Groin Injury'), ('2019-03-11', '2019-03-30', 74, 'Ankle Injury'), ('2019-02-25', '2019-02-26', 74, 'Illness'), ('2018-12-22', '2018-12-25', 74, 'Chest Injury'), ('2018-10-17', '2018-11-05', 74, 'Thigh Injury'), ('2018-10-04', '2018-10-06', 74, 'Back Injury'), ('2018-05-13', '2018-07-06', 74, 'Injury'), ('2018-04-27', '2018-04-28', 74, 'Thigh Injury'), ('2018-04-10', '2018-04-11', 74, 'Thigh Injury'), ('2018-03-19', '2018-03-30', 74, 'Back Injury'), ('2018-02-20', '2018-02-21', 74, 'Thigh Injury'), ('2018-01-18', '2018-01-26', 74, 'Thigh Injury'), ('2017-09-29', '2017-10-06', 74, 'Foot Injury'), ('2017-09-25', '2017-09-25', 74, 'Groin Injury'), ('2017-09-09', '2017-09-14', 74, 'Groin Injury'), ('2017-08-18', '2017-08-18', 74, 'Knee Injury'), ('2017-07-20', '2017-07-28', 74, 'Thigh Injury'), ('2017-03-08', '2017-03-10', 74, 'Foot Injury'), ('2017-01-17', '2017-01-20', 74, 'Ankle Injury'), ('2016-12-19', '2016-12-20', 74, 'Thigh Injury'), ('2016-11-24', '2016-11-24', 74, 'Foot Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-21', '2020-09-27', 77, 'Calf Injury'), ('2020-07-09', '2020-07-21', 77, 'Muscle Injury'), ('2020-07-03', '2020-07-07', 77, 'Thigh Injury'), ('2020-06-22', '2020-07-01', 77, 'Thigh Injury'), ('2020-02-19', '2020-03-02', 77, 'Muscle Injury'), ('2020-01-06', '2020-02-14', 77, 'Muscle Injury'), ('2019-03-04', '2019-03-12', 77, 'Thigh Injury'), ('2018-12-22', '2019-01-02', 77, 'Thigh Injury'), ('2018-12-12', '2018-12-15', 77, 'Thigh Injury'), ('2018-10-08', '2018-10-19', 77, 'Thigh Injury'), ('2018-08-05', '2018-08-11', 77, 'Head Injury'), ('2018-01-26', '2018-01-26', 77, 'Thigh Injury'), ('2016-08-07', '2016-08-17', 77, 'Heel Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-12-15', '2019-12-20', 73, 'Knee Injury'), ('2019-12-05', '2019-12-09', 73, 'Thigh Injury'), ('2019-02-04', '2019-02-08', 73, 'Knee Injury'), ('2019-01-13', '2019-01-29', 73, 'Knee Injury'), ('2018-07-16', '2018-07-25', 73, 'Injury'), ('2018-02-25', '2018-03-09', 73, 'Illness'), ('2016-10-12', '2016-10-21', 73, 'Thigh Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-05-02', '2019-05-29', 86, 'Groin Injury'), ('2019-04-22', '2019-04-30', 86, 'Groin Injury'), ('2019-02-25', '2019-03-02', 86, 'Ankle Injury'), ('2019-02-10', '2019-02-18', 86, 'Illness'), ('2018-09-16', '2018-09-17', 86, 'Head Injury'), ('2018-04-11', '2018-04-13', 86, 'Back Injury'), ('2017-05-13', '2017-05-20', 86, 'Muscle Injury'), ('2017-04-27', '2017-04-30', 86, 'Knock'), ('2017-03-11', '2017-03-18', 86, 'Groin Injury'), ('2016-09-15', '2016-09-19', 86, 'Groin Injury'), ('2016-03-19', '2016-04-02', 86, 'Thigh Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-01-24', '2020-02-14', 80, 'Thigh Injury'), ('2019-07-20', '2019-08-08', 80, 'Injury'), ('2018-12-03', '2018-12-07', 80, 'Leg Injury'), ('2018-11-25', '2018-11-27', 80, 'Illness'), ('2018-10-14', '2018-10-23', 80, 'Wrist Injury'), ('2018-05-12', '2018-05-12', 80, 'Injury'), ('2018-04-25', '2018-04-27', 80, 'Injury'), ('2017-11-12', '2017-11-17', 80, 'Thigh Injury'), ('2017-10-10', '2017-11-03', 80, 'Muscle Injury'), ('2017-04-03', '2017-07-28', 80, 'Knee Injury'), ('2016-12-08', '2016-12-10', 80, 'Muscle Injury'), ('2016-09-05', '2016-09-07', 80, 'Knee Injury'), ('2016-08-16', '2016-08-22', 80, 'Shoulder Injury'), ('2016-05-09', '2016-05-14', 80, 'Illness');


INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-11-11', '2019-11-22', 83, 'Ankle Injury'), ('2019-10-06', '2019-10-22', 83, 'Ankle Injury'), ('2019-05-05', '2019-05-11', 83, 'Head Injury'), ('2018-05-27', '2018-06-14', 83, 'Shoulder Injury'), ('2018-04-05', '2018-04-09', 83, 'Groin Injury'), ('2018-01-19', '2018-01-21', 83, 'Illness'), ('2017-12-31', '2018-01-13', 83, 'Knee Injury'), ('2017-09-12', '2017-09-13', 83, 'Illness'), ('2017-05-25', '2017-05-27', 83, 'Injury'), ('2016-12-01', '2016-12-16', 83, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-02-23', '2020-03-06', 1, 'Groin Injury'), ('2019-10-07', '2020-01-21', 1, 'Elbow Injury'), ('2019-04-18', '2019-04-22', 1, 'Muscle Injury'), ('2018-08-31', '2018-10-02', 1, 'Thigh Injury'), ('2018-01-19', '2018-01-30', 1, 'Illness'), ('2017-11-02', '2017-11-17', 1, 'Groin Injury'), ('2017-05-19', '2017-05-20', 1, 'Knee Injury'), ('2017-04-05', '2017-04-08', 1, 'Illness'), ('2017-02-02', '2017-02-03', 1, 'Illness'), ('2016-08-15', '2016-09-08', 1, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2018-02-23', '2018-03-16', 6, 'Thigh Injury'), ('2018-02-12', '2018-02-17', 6, 'Lacking Match Fitness'), ('2017-11-02', '2018-02-06', 6, 'Thigh Injury'), ('2017-02-26', '2017-03-04', 6, 'Muscle Injury'), ('2017-01-23', '2017-01-30', 6, 'Muscle Injury'), ('2016-12-20', '2016-12-27', 6, 'Back Injury'), ('2016-10-17', '2016-12-06', 6, 'Knee Injury'), ('2016-05-03', '2016-05-07', 6, 'Knee Injury');


INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-23', NULL, 14, 'Knock'), ('2020-09-14', '2020-09-19', 14, 'Knock'), ('2019-07-12', '2019-08-09', 14, 'Wrist Injury'), ('2019-03-24', '2019-05-11', 14, 'Thigh Injury'), ('2018-12-09', '2019-01-03', 14, 'Groin Injury'), ('2018-09-27', '2018-10-11', 14, 'Thigh Injury'), ('2018-05-06', '2018-07-25', 14, 'Thigh Injury'), ('2018-01-23', '2018-02-02', 14, 'Ankle Injury'), ('2017-03-22', '2017-03-31', 14, 'Injury'), ('2016-10-27', '2016-11-05', 14, 'Ankle Injury'), ('2016-09-01', '2016-10-18', 14, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-03-02', '2020-06-15', 11, 'Muscle Injury'), ('2019-11-24', '2020-02-14', 11, 'Ankle Injury'), ('2019-06-12', '2019-08-16', 11, 'Groin Injury'), ('2019-01-25', '2019-02-22', 11, 'Groin Injury'), ('2017-10-16', '2017-10-21', 11, 'Illness'), ('2016-11-05', '2016-12-10', 11, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-08-26', '2019-09-13', 13, 'Knee Injury'), ('2019-08-20', '2019-08-24', 13, 'Illness'), ('2019-06-11', '2019-08-07', 13, 'Injury'), ('2018-11-12', '2018-11-24', 13, 'Head Injury'), ('2017-04-23', '2017-07-11', 13, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-07', '2020-09-26', 10, 'Ankle Injury'), ('2019-09-23', '2019-09-28', 10, 'Stomach Disorder'), ('2019-08-24', '2019-08-29', 10, 'Head Injury'), ('2019-05-06', '2019-05-18', 10, 'Foot Injury'), ('2018-12-02', '2018-12-14', 10, 'Injury'), ('2018-11-12', '2018-11-30', 10, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-03-08', '2020-06-15', 5, 'Injury'), ('2019-09-12', '2019-09-17', 5, 'Ankle Injury'), ('2019-05-05', '2019-05-31', 5, 'Thigh Injury'), ('2018-11-07', '2018-12-22', 5, 'Thigh Injury'), ('2017-04-14', '2017-04-15', 5, 'Back Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-07-03', '2020-07-25', 21, 'Thigh Injury'), ('2019-08-01', '2019-08-23', 21, 'Thigh Injury'), ('2019-04-10', '2019-04-16', 21, 'Wrist Injury'), ('2019-01-21', '2019-03-08', 21, 'Thigh Injury'), ('2018-12-24', '2018-12-28', 21, 'Thigh Injury'), ('2018-09-27', '2018-10-28', 21, 'Thigh Injury'), ('2018-09-12', '2018-09-21', 21, 'Thigh Injury'), ('2018-03-12', '2018-03-15', 21, 'Knock'), ('2017-11-05', '2017-11-17', 21, 'Muscle Injury'), ('2016-11-05', '2016-11-18', 21, 'Knee Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-03-08', '2020-06-15', 23, 'Ankle Injury'), ('2019-10-25', '2019-11-23', 23, 'Muscle Injury'), ('2019-02-04', '2019-02-09', 23, 'Ankle Injury'), ('2018-10-21', '2018-11-02', 23, 'Ankle Injury'), ('2018-09-04', '2018-09-14', 23, 'Groin Injury'), ('2018-05-07', '2018-07-13', 23, 'Knee Injury'), ('2017-10-21', '2017-10-28', 23, 'Knee Injury'), ('2017-01-14', '2017-01-27', 23, 'Knee Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-12', NULL, 7, 'Thigh Injury'), ('2019-08-26', '2019-09-13', 7, 'Hip Injury'), ('2019-06-02', '2019-08-09', 7, 'Injury'), ('2019-03-23', '2019-04-19', 7, 'Hip Injury'), ('2019-02-03', '2019-03-04', 7, 'Illness'), ('2018-12-12', '2019-01-19', 7, 'Surgery'), ('2018-10-30', '2018-11-09', 7, 'Thigh Injury'), ('2018-05-09', '2018-05-12', 7, 'Injury'), ('2018-03-10', '2018-03-10', 7, 'Elbow Injury'), ('2016-09-19', '2016-10-01', 7, 'Injury');

INSERT INTO injuries (start_date, end_date, player_id, description) VALUES ('2020-06-26', '2020-07-08', 15, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-05', '2020-10-21', 26, 'Knock'), ('2020-02-03', '2020-02-18', 26, 'Thigh Injury'), ('2019-10-23', '2019-12-25', 26, 'Thigh Injury'), ('2019-03-10', '2019-05-07', 26, 'Thigh Injury'), ('2019-02-03', '2019-02-12', 26, 'Lower Back Injury'), ('2018-12-27', '2019-01-07', 26, 'Illness'), ('2018-11-29', '2018-12-10', 26, 'Thigh Injury'), ('2018-08-19', '2018-09-14', 26, 'Thigh Injury'), ('2018-07-27', '2018-08-17', 26, 'Muscle Injury'), ('2018-01-26', '2018-01-30', 26, 'Buttock Injury'), ('2016-10-30', '2017-11-17', 26, 'Hip Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-02', '2020-10-21', 17, 'Muscle Injury'), ('2020-07-27', '2020-09-16', 17, 'Thigh Injury'), ('2020-03-11', '2020-06-18', 17, 'Thigh Injury'), ('2020-02-03', '2020-02-14', 17, 'Thigh Injury'), ('2019-09-07', '2019-10-21', 17, 'Hip Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-03-11', '2020-06-22', 24, 'Knock'), ('2019-01-05', '2019-01-23', 24, 'Knee Injury'), ('2018-02-02', '2018-02-09', 24, 'Lacking Match Fitness'), ('2017-11-20', '2017-12-08', 24, 'Convalescence'), ('2017-10-21', '2017-10-25', 24, 'Lacking Match Fitness'), ('2017-08-12', '2017-09-07', 24, 'Injury'), ('2017-03-11', '2017-03-13', 24, 'Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-25', '2020-09-26', 16, 'Injury'), ('2020-07-13', '2020-09-04', 16, 'Knock'), ('2020-01-02', '2020-01-21', 16, 'Groin Injury'), ('2019-12-05', '2019-12-21', 16, 'Groin Injury'), ('2019-11-18', '2019-11-25', 16, 'Groin Injury'), ('2019-08-18', '2019-09-13', 16, 'Thigh Injury'), ('2019-02-16', '2019-02-18', 16, 'Ankle Injury'), ('2018-12-17', '2019-01-04', 16, 'Muscle Injury'), ('2018-12-06', '2018-12-11', 16, 'Foot Injury'), ('2018-09-27', '2018-09-28', 16, 'Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-25', '2020-09-28', 19, 'Illness'), ('2020-07-27', '2020-08-27', 19, 'Thigh Injury'), ('2020-01-07', '2020-03-13', 19, 'Knee Injury'), ('2019-04-18', '2019-04-29', 19, 'Groin Injury'), ('2019-01-25', '2019-01-29', 19, 'Groin Injury'), ('2019-01-14', '2019-01-23', 19, 'Groin Injury'), ('2018-12-24', '2018-12-25', 19, 'Knock'), ('2018-08-31', '2018-09-21', 19, 'Thigh Injury'), ('2018-07-30', '2018-08-10', 19, 'Thigh Injury'), ('2017-07-17', '2017-07-29', 19, 'Illness'), ('2016-09-26', '2016-10-01', 19, 'Concussion');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-12-05', '2019-12-14', 18, 'Ankle Injury'), ('2019-04-10', '2019-05-31', 18, 'Groin Injury'), ('2019-03-06', '2019-04-02', 18, 'Hip Injury'), ('2019-02-28', '2019-03-04', 18, 'Hip Injury'), ('2018-03-01', '2018-08-17', 18, 'Ankle Injury'), ('2018-01-05', '2018-02-02', 18, 'Ankle Injury'), ('2017-11-27', '2017-12-01', 18, 'Illness'), ('2017-04-03', '2017-06-30', 18, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-07', '2020-10-17', 25, 'Knee Injury'), ('2020-02-17', '2020-02-24', 25, 'Stomach Disorder'), ('2020-01-23', '2020-02-08', 25, 'Ankle Injury'), ('2020-01-05', '2020-01-17', 25, 'Illness'), ('2019-12-01', '2019-12-09', 25, 'Thigh Injury'), ('2019-10-14', '2019-11-15', 25, 'Calf Injury'), ('2019-09-30', '2019-10-02', 25, 'Rest'), ('2019-03-09', '2019-03-15', 25, 'Ankle Injury'), ('2019-01-04', '2019-01-26', 25, 'Calf Injury'), ('2018-12-13', '2018-12-18', 25, 'Ankle Injury'), ('2018-12-02', '2018-12-08', 25, 'Thigh Injury'), ('2018-10-07', '2018-10-19', 25, 'Muscle Injury'), ('2018-09-30', '2018-10-05', 25, 'Groin Injury'), ('2017-11-29', '2017-12-15', 25, 'Calf Injury'), ('2017-10-01', '2017-11-27', 25, 'Calf Injury'), ('2017-09-29', '2017-10-02', 25, 'Injury'), ('2017-04-24', '2017-05-20', 25, 'Calf Injury'), ('2017-04-14', '2017-04-22', 25, 'Calf Injury'), ('2017-02-27', '2017-02-28', 25, 'Foot Injury'), ('2016-11-23', '2017-02-17', 25, 'Ankle Injury'), ('2016-09-15', '2016-09-20', 25, 'Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-01-02', '2020-06-15', 28, 'Muscle Injury'), ('2019-10-28', '2019-11-05', 28, 'Illness'), ('2019-04-10', '2019-05-30', 28, 'Ankle Injury'), ('2019-01-14', '2019-02-22', 28, 'Ankle Injury'), ('2018-03-12', '2018-03-31', 28, 'Ankle Injury'), ('2018-02-19', '2018-02-22', 28, 'Ankle Injury'), ('2017-12-30', '2018-01-01', 28, 'Illness'), ('2017-10-27', '2017-10-31', 28, 'Muscle Injury'), ('2017-03-13', '2017-04-08', 28, 'Foot Injury'), ('2017-03-02', '2017-03-04', 28, 'Knock'), ('2017-01-25', '2017-01-30', 28, 'Groin Injury'), ('2016-09-19', '2016-11-05', 28, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-28', '2020-10-03', 22, 'Thigh Injury'), ('2020-02-18', '2020-06-15', 22, 'Arm Injury'), ('2019-01-31', '2019-02-01', 22, 'Thigh Injury'), ('2017-07-10', '2017-08-12', 22, 'Arm Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-21', NULL, 146, 'Shoulder Injury'), ('2019-02-20', '2019-02-23', 146, 'Thigh Injury'), ('2017-12-17', '2018-02-03', 146, 'Foot Injury'), ('2017-01-09', '2017-03-11', 146, 'Hip Injury'), ('2016-10-18', '2016-10-29', 146, 'Groin Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-04', '2020-10-14', 147, 'Thigh Injury'), ('2020-09-23', '2020-09-28', 147, 'Overload'), ('2020-08-23', '2020-09-18', 147, 'Injury'), ('2019-10-28', '2019-11-02', 147, 'Calf Injury'), ('2019-07-20', '2019-08-17', 147, 'Broken Hand'), ('2018-07-12', '2018-08-10', 147, 'Finger Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-12-23', '2020-01-20', 156, 'Thigh Injury'), ('2019-04-12', '2019-04-27', 156, 'Buttock Injury'), ('2019-04-01', '2019-04-10', 156, 'Thigh Injury'), ('2018-11-05', '2018-11-10', 156, 'Injury'), ('2018-02-01', '2018-02-19', 156, 'Muscle Injury'), ('2017-04-16', '2017-04-21', 156, 'Injury'), ('2017-01-10', '2017-01-13', 156, 'Muscle Injury'), ('2017-01-03', '2017-01-03', 156, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-08-30', '2020-09-12', 158, 'Thigh Injury'), ('2020-08-02', '2020-08-28', 158, 'Thigh Injury'), ('2019-12-23', '2019-12-25', 158, 'Thigh Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-09', '2020-10-16', 154, 'Foot Injury'), ('2020-07-05', '2020-09-22', 154, 'Foot Injury'), ('2020-03-05', '2020-03-13', 154, 'Thigh Injury'), ('2019-12-02', '2019-12-07', 154, 'Groin Injury'), ('2019-08-12', '2019-08-30', 154, 'Groin Injury'), ('2019-02-11', '2019-02-25', 154, 'Knock'), ('2018-12-09', '2018-12-21', 154, 'Knee Injury'), ('2018-04-29', '2018-07-20', 154, 'Ankle Injury'), ('2017-12-27', '2018-01-05', 154, 'Illness'), ('2017-10-09', '2017-10-15', 154, 'Knock'), ('2016-10-27', '2016-12-01', 154, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-06-26', '2020-07-02', 151, 'Hip Injury'), ('2020-03-01', '2020-03-07', 151, 'Knock'), ('2019-10-13', '2019-11-04', 151, 'Thigh Injury'), ('2019-09-23', '2019-09-27', 151, 'Knee Injury'), ('2019-08-12', '2019-08-16', 151, 'Knock'), ('2019-05-10', '2019-05-11', 151, 'Knock'), ('2018-12-20', '2018-12-29', 151, 'Thigh Injury'), ('2018-09-27', '2018-10-03', 151, 'Illness'), ('2018-03-23', '2018-03-31', 151, 'Injury'), ('2018-02-01', '2018-02-11', 151, 'Thigh Injury'), ('2018-01-21', '2018-01-23', 151, 'Face Injury'), ('2017-03-08', '2017-03-11', 151, 'Groin Injury'), ('2017-01-16', '2017-01-20', 151, 'Achilles Tendon Injury'), ('2016-11-19', '2016-11-18', 151, 'Hip Injury'), ('2016-10-17', '2016-11-13', 151, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-16', '2020-10-19', 153, 'Rest'), ('2020-08-24', '2020-09-22', 153, 'Overload'), ('2020-02-24', '2020-07-11', 153, 'Thigh Injury'), ('2020-01-27', '2020-02-11', 153, 'Groin Injury'), ('2019-10-28', '2019-11-05', 153, 'Injury'), ('2019-04-15', '2019-06-05', 153, 'Knee Injury'), ('2018-10-08', '2018-11-01', 153, 'Muscle Injury'), ('2018-05-11', '2018-05-18', 153, 'Muscle Injury'), ('2018-04-30', '2018-05-07', 153, 'Muscle Injury'), ('2018-01-30', '2018-02-02', 153, 'Thigh Injury'), ('2017-12-08', '2017-12-19', 153, 'Knee Injury'), ('2017-12-01', '2017-12-03', 153, 'Convalescence'), ('2017-10-06', '2017-10-21', 153, 'Thigh Injury'), ('2017-05-20', '2017-05-26', 153, 'Injury'), ('2017-04-04', '2017-04-17', 153, 'Injury'), ('2017-03-27', '2017-03-28', 153, 'Knee Injury'), ('2017-03-22', '2017-03-30', 153, 'Injury'), ('2017-02-14', '2017-02-25', 153, 'Calf Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-03-09', '2020-07-13', 152, 'Muscle Injury'), ('2019-12-08', '2019-12-21', 152, 'Hip Injury'), ('2019-04-28', '2019-04-30', 152, 'Leg Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-09-26', '2019-10-01', 150, 'Illness'), ('2018-08-01', '2018-08-09', 150, 'Knee Injury'), ('2018-04-02', '2018-04-06', 150, 'Knee Injury'), ('2017-12-14', '2017-12-22', 150, 'Thigh Injury'), ('2016-11-04', '2016-12-13', 150, 'Lacking Match Fitness'), ('2016-08-08', '2016-10-31', 150, 'Convalescence'), ('2016-02-08', '2016-07-27', 150, 'Knee Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-06-06', '2020-06-13', 165, 'Muscle Injury'), ('2019-11-11', '2019-11-29', 165, 'Muscle Injury'), ('2019-10-23', '2019-10-28', 165, 'Illness'), ('2019-02-03', '2019-02-07', 165, 'Hip Injury'), ('2018-10-08', '2018-10-19', 165, 'Knee Injury'), ('2017-08-16', '2017-09-04', 165, 'Thigh Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-15', '2020-09-19', 160, 'Thigh Injury'), ('2018-10-21', '2018-10-26', 160, 'Injury'), ('2017-09-03', '2017-09-09', 160, 'Foot Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-10-12', '2020-10-16', 161, 'Muscle Injury'), ('2020-07-05', '2020-07-31', 161, 'Thigh Injury'), ('2020-02-18', '2020-06-15', 161, 'Muscle Injury'), ('2020-01-02', '2020-01-17', 161, 'Thigh Injury'), ('2019-10-15', '2019-11-04', 161, 'Groin Injury'), ('2019-09-23', '2019-10-01', 161, 'Ankle Injury'), ('2019-08-19', '2019-09-21', 161, 'Ankle Injury'), ('2019-08-12', '2019-08-13', 161, 'Knock'), ('2019-05-06', '2019-05-28', 161, 'Knee Injury'), ('2019-04-23', '2019-04-27', 161, 'Chest Injury'), ('2018-03-04', '2018-03-09', 161, 'Illness'), ('2017-10-08', '2017-11-03', 161, 'Thigh Injury'), ('2017-05-08', '2017-05-11', 161, 'Thigh Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-07-02', '2020-07-10', 162, 'Achilles Tendon Injury'), ('2020-03-01', '2020-06-15', 162, 'Achilles Tendon Injury'), ('2019-09-01', '2019-09-13', 162, 'Achilles Tendon Injury'), ('2018-12-09', '2018-12-15', 162, 'Thigh Injury'), ('2018-11-16', '2018-11-23', 162, 'Muscle Injury'), ('2018-09-16', '2018-09-22', 162, 'Thigh Injury'), ('2017-09-14', '2017-11-24', 162, 'Groin Injury'), ('2016-12-19', '2017-01-11', 162, 'Ankle Injury'), ('2016-11-07', '2016-11-11', 162, 'Ankle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2019-11-06', '2019-11-08', 166, 'Ankle Injury'), ('2019-09-18', '2019-09-21', 166, 'Ankle Injury'), ('2019-01-27', '2019-03-29', 166, 'Muscle Injury'), ('2018-11-01', '2018-11-23', 166, 'Ankle Injury'), ('2018-10-28', '2018-10-30', 166, 'Foot Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-08-02', '2020-10-02', 168, 'Thigh Injury'), ('2020-06-29', '2020-06-30', 168, 'Calf Injury'), ('2020-01-02', '2020-06-15', 168, 'Groin Injury'), ('2019-12-27', '2019-12-31', 168, 'Thigh Injury'), ('2019-11-10', '2019-11-22', 168, 'Groin Injury'), ('2019-03-17', '2019-04-20', 168, 'Thigh Injury'), ('2019-02-14', '2019-03-04', 168, 'Muscle Injury'), ('2018-11-30', '2018-12-07', 168, 'Calf Injury'), ('2018-09-30', '2018-10-19', 168, 'Calf Injury'), ('2018-08-27', '2018-09-17', 168, 'Muscle Injury'), ('2018-03-16', '2018-03-17', 168, 'Illness'), ('2018-02-19', '2018-02-21', 168, 'Foot Injury'), ('2018-01-07', '2018-01-18', 168, 'Shin Injury'), ('2017-11-18', '2017-11-24', 168, 'Muscle Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-02-26', '2020-06-15', 173, 'Ankle Injury'), ('2020-02-14', '2020-02-21', 173, 'Ankle Injury'), ('2020-01-22', '2020-01-31', 173, 'Ankle Injury'), ('2019-12-05', '2019-12-06', 173, 'Hip Injury'), ('2019-11-28', '2019-12-03', 173, 'Hip Injury'), ('2019-04-20', '2019-05-10', 173, 'Shoulder Injury'), ('2019-03-17', '2019-03-29', 173, 'Calf Injury'), ('2018-09-29', '2018-10-01', 173, 'Calf Injury'), ('2017-12-31', '2018-01-26', 173, 'Hip Injury'), ('2017-11-20', '2017-11-25', 173, 'Injury'), ('2017-08-06', '2017-08-11', 173, 'Groin Injury');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-01-06', '2020-01-31', 174, 'Groin Injury'), ('2019-12-05', '2020-01-04', 174, 'Ankle Injury'), ('2019-09-18', '2019-10-01', 174, 'Illness'), ('2018-12-31', '2019-01-07', 174, 'Ankle Injury'), ('2018-10-29', '2018-11-07', 174, 'Leg Injury'), ('2018-02-02', '2018-02-04', 174, 'Lacking Match Fitness'), ('2017-12-20', '2018-01-30', 174, 'Thigh Injury'), ('2017-11-17', '2017-11-21', 174, 'Thigh Injury'), ('2017-02-02', '2017-02-03', 174, 'Ankle Injury'), ('2017-01-16', '2017-01-18', 174, 'Ankle Injury'), ('2016-11-28', '2016-12-05', 174, 'Muscle Injury'), ('2016-09-29', '2016-10-20', 174, 'Ankle Injury'), ('2016-09-16', '2016-09-23', 174, 'Foot Injury'), ('2016-08-13', '2016-08-19', 174, 'Lacking Match Fitness');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-02-02', '2020-06-29', 169, 'Ankle Injury'), ('2019-11-18', '2019-11-29', 169, 'Thigh Injury'), ('2019-09-22', '2019-09-24', 169, 'Injury'), ('2019-09-14', '2019-09-20', 169, 'Injury'), ('2019-04-23', '2019-09-13', 169, 'Achilles Tendon Injury'), ('2018-12-27', '2019-01-04', 169, 'Thigh Injury'), ('2018-09-30', '2018-10-10', 169, 'Knock');

INSERT INTO injuries (start_date, end_date, player_id, description)
		VALUES('2020-09-15', '2020-09-19', 172, 'Thigh Injury'), ('2020-03-08', '2020-03-09', 172, 'Injury'), ('2020-02-23', '2020-02-29', 172, 'Muscle Injury'), ('2019-08-26', '2019-08-29', 172, 'Thigh Injury'), ('2019-01-28', '2019-02-08', 172, 'Illness'), ('2018-11-04', '2018-11-10', 172, 'Toe Injury'), ('2018-10-21', '2018-10-24', 172, 'Buttock Injury'), ('2018-09-16', '2018-09-22', 172, 'Groin Injury'), ('2018-04-14', '2018-04-14', 172, 'Thigh Injury'), ('2018-03-19', '2018-03-22', 172, 'Injury'), ('2017-07-26', '2017-08-04', 172, 'Muscle Injury'), ('2017-05-01', '2017-05-05', 172, 'Ankle Injury'), ('2017-03-23', '2017-04-04', 172, 'Thigh Injury'), ('2017-02-01', '2017-02-10', 172, 'Illness'), ('2016-12-01', '2016-12-02', 172, 'Muscle Injury'), ('2016-10-09', '2016-10-12', 172, 'Injury');


-- Статистика по матчам 

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(1, 47, 1, '00:00:00'), (10, 47, 1, '00:00:00'), (6, 47, 1, '00:00:00'), (15, 47, 1, '00:00:00'), (5, 47, 1, '00:00:00'), (22, 47, 1, '00:00:00'), (28, 47, 1, '00:00:00'), (19, 47, 1, '00:00:00'), (23, 47, 1, '00:00:00'), (14, 47, 1, '00:00:00'), (16, 47, 1, '00:00:00'), (3, 47, 9, '00:00:00'), (13, 47, 9, '00:00:00'), (18, 47, 9, '00:00:00'), (25, 47, 9, '00:00:00'), (24, 47, 9, '00:00:00'), (11, 47, 9, '00:00:00'), (29, 47, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(22, 47, 2, '00:01:00'), (28, 47, 3, '00:01:00'), (28, 47, 2, '00:08:00'), (22, 47, 3, '00:08:00'), (28, 47, 2, '00:16:00'), (10, 47, 3, '00:16:00'), (25, 47, 7, '01:12:00'), (23, 47, 8, '01:12:00'), (18, 47, 7, '01:13:00'), (16, 47, 8, '01:13:00'), (24, 47, 7, '01:20:00'), (22, 47, 8, '01:20:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(348, 47, 1, '00:00:00'), (355, 47, 1, '00:00:00'), (352, 47, 1, '00:00:00'), (358, 47, 1, '00:00:00'), (364, 47, 1, '00:00:00'), (365, 47, 1, '00:00:00'), (353, 47, 1, '00:00:00'), (356, 47, 1, '00:00:00'), (361, 47, 1, '00:00:00'), (369, 47, 1, '00:00:00'), (360, 47, 1, '00:00:00'), (349, 47, 9, '00:00:00'), (366, 47, 9, '00:00:00'), (363, 47, 9, '00:00:00'), (367, 47, 9, '00:00:00'), (362, 47, 9, '00:00:00'), (351, 47, 9, '00:00:00'), (357, 47, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(369, 47, 5, '00:20:00'), (353, 47, 5, '01:13:00'), (361, 47, 5, '01:17:00'), (369, 47, 8, '01:17:00'), (366, 47, 7, '01:17:00'), (364, 47, 8, '01:17:00'), (363, 47, 7, '01:17:00'), (352, 47, 2, '01:22:00'), (355, 47, 3, '01:22:00'), (5, 47, 4, '01:25:00'), (356, 47, 5, '01:29:00'), (367, 47, 7, '01:30:00'), (356, 47, 8, '01:30:00'), (363, 47, 2, '01:34:00'), (363, 47, 5, '01:35:00');

UPDATE match_stats SET reason = 'Tripping' WHERE id = 49;
UPDATE match_stats SET reason = 'Roughing' WHERE id = 50 or id = 51;
UPDATE match_stats SET reason = 'Holding' WHERE id = 59;
UPDATE match_stats SET reason = 'Unsportsmanlike conduct)' WHERE id = 63;

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(1, 60, 1, '00:00:00'), (13, 60, 1, '00:00:00'), (6, 60, 1, '00:00:00'), (15, 60, 1, '00:00:00'), (22, 60, 1, '00:00:00'), (28, 60, 1, '00:00:00'), (7, 60, 1, '00:00:00'), (19, 60, 1, '00:00:00'), (24, 60, 1, '00:00:00'), (16, 60, 1, '00:00:00'), (11, 60, 1, '00:00:00'), (3, 60, 9, '00:00:00'), (10, 60, 9, '00:00:00'), (25, 60, 9, '00:00:00'), (26, 60, 9, '00:00:00'), (17, 60, 9, '00:00:00'), (29, 60, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(26, 60, 7, '00:57:00'), (24, 60, 8, '00:57:00'), (22, 60, 2, '01:16:00'), (28, 60, 3, '01:16:00'), (16, 60, 8, '01:19:00'), (17, 60, 7, '01:19:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(235, 60, 1, '00:00:00'), (246, 60, 1, '00:00:00'), (244, 60, 1, '00:00:00'), (239, 60, 1, '00:00:00'), (255, 60, 1, '00:00:00'), (250, 60, 1, '00:00:00'), (256, 60, 1, '00:00:00'), (257, 60, 1, '00:00:00'), (254, 60, 1, '00:00:00'), (249, 60, 1, '00:00:00'), (241, 60, 1, '00:00:00'), (236, 60, 9, '00:00:00'), (253, 60, 9, '00:00:00'), (251, 60, 9, '00:00:00'), (258, 60, 9, '00:00:00'), (259, 60, 9, '00:00:00'), (242, 60, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES (250, 60, 5, '00:02:00','Tripping'), (241, 60, 5, '01:20:00', 'Tripping');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES (258, 60, 7, '01:24:00'), (255, 60, 8, '01:24:00'), (259, 60, 7, '01:29:00'), (257, 60, 8, '01:29:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(1, 39, 1, '00:00:00'), (10, 39, 1, '00:00:00'), (15, 39, 1, '00:00:00'), (5, 39, 1, '00:00:00'), (22, 39, 1, '00:00:00'), (28, 39, 1, '00:00:00'), (26, 39, 1, '00:00:00'), (7, 39, 1, '00:00:00'), (19, 39, 1, '00:00:00'), (14, 39, 1, '00:00:00'), (16, 39, 1, '00:00:00'), (3, 39, 9, '00:00:00'), (13, 39, 9, '00:00:00'), (6, 39, 9, '00:00:00'), (18, 39, 9, '00:00:00'), (21, 39, 9, '00:00:00'), (24, 39, 9, '00:00:00'), (11, 39, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES (26, 39, 5, '00:29:00', 'Roughing');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(16, 39, 2, '00:04:00'), (22, 39, 2, '00:07:00'), (28, 39, 3, '00:07:00'), (28, 39, 2, '00:30:00'), (22, 39, 3, '00:30:00'), (22, 39, 2, '00:37:00'), (14, 39, 3, '00:37:00'), (26, 39, 8, '00:45:00'), (24, 39, 7, '00:45:00'), (14, 39, 2, '00:51:00'), (15, 39, 3, '00:51:00'), (21, 39, 7, '01:09:00'), (16, 39, 8, '01:09:00'), (22, 39, 8, '01:13:00'), (11, 39, 7, '01:13:00'), (28, 39, 10, '01:19:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(260, 39, 1, '00:00:00'), (266, 39, 1, '00:00:00'), (264, 39, 1, '00:00:00'), (276, 39, 1, '00:00:00'), (287, 39, 1, '00:00:00'), (283, 39, 1, '00:00:00'), (285, 39, 1, '00:00:00'), (280, 39, 1, '00:00:00'), (271, 39, 1, '00:00:00'), (273, 39, 1, '00:00:00'), (275, 39, 1, '00:00:00'), (261, 39, 9, '00:00:00'), (265, 39, 9, '00:00:00'), (282, 39, 9, '00:00:00'), (281, 39, 9, '00:00:00'), (279, 39, 9, '00:00:00'), (277, 39, 9, '00:00:00'), (278, 39, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES (287, 39, 6, '00:28:00', 'Roughing'), (266, 39, 5, '01:03:00', 'Roughing'), (271, 39, 5, '01:24:00', 'Tripping');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(280, 39, 10, '00:02:00'), (279, 39, 7, '00:45:00'), (280, 39, 8, '00:45:00'), (278, 39, 7, '00:45:00'), (275, 39, 8, '00:45:00'), (277, 39, 7, '01:07:00'), (285, 39, 8, '01:07:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(1, 26, 1, '00:00:00'), (13, 26, 1, '00:00:00'), (15, 26, 1, '00:00:00'), (5, 26, 1, '00:00:00'), (22, 26, 1, '00:00:00'), (18, 26, 1, '00:00:00'), (28, 26, 1, '00:00:00'), (7, 26, 1, '00:00:00'), (17, 26, 1, '00:00:00'), (24, 26, 1, '00:00:00'), (11, 26, 1, '00:00:00'), (3, 26, 9, '00:00:00'), (10, 26, 9, '00:00:00'), (6, 26, 9, '00:00:00'), (26, 26, 9, '00:00:00'), (23, 26, 9, '00:00:00'), (16, 26, 9, '00:00:00'), (20, 26, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES(18, 26, 5, '01:36:00', 'Unsportsmanlike conduct');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(24, 26, 2, '00:25:00'), (28, 26, 3, '00:25:00'), (23, 26, 7,'00:45:00'), (22, 26, 8, '00:45:00'), (16, 26, 7, '01:17:00'), (17, 26, 8, '01:17:00'), (26, 26, 7, '01:19:00'), (24, 26, 8, '01:19:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(176, 26, 1, '00:00:00'), (179, 26, 1, '00:00:00'), (193, 26, 1, '00:00:00'), (202, 26, 1, '00:00:00'), (185, 26, 1, '00:00:00'), (203, 26, 1, '00:00:00'), (190, 26, 1, '00:00:00'), (194, 26, 1, '00:00:00'), (182, 26, 1, '00:00:00'), (189, 26, 1, '00:00:00'), (195, 26, 1, '00:00:00'), (177, 26, 9, '00:00:00'), (205, 26, 9, '00:00:00'), (184, 26, 9, '00:00:00'), (188, 26, 9, '00:00:00'), (187, 26, 9, '00:00:00'), (201, 26, 9, '00:00:00'), (192, 26, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES(193, 26, 5, '00:44:00', 'Tripping'), (202, 26, 5, '00:53:00', 'Holding'), (184, 26, 5, '01:22:00', 'Roughing'), (190, 26, 5, '01:30:00', 'Roughing');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(184, 26, 7, '01:09:00'), (185, 26, 8, '01:09:00'), (201, 26, 7, '01:14:00'), (194, 26, 8, '01:14:00'), (205, 26, 7, '01:17:00'), (195, 26, 8, '01:17:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(1, 15, 1, '00:00:00'), (13, 15, 1, '00:00:00'), (15, 15, 1, '00:00:00'), (5, 15, 1, '00:00:00'), (22, 15, 1, '00:00:00'), (18, 15, 1, '00:00:00'), (28, 15, 1, '00:00:00'), (7, 15, 1, '00:00:00'), (24, 15, 1, '00:00:00'), (16, 15, 1, '00:00:00'), (11, 15, 1, '00:00:00'), (3, 15, 9, '00:00:00'), (6, 15, 9, '00:00:00'), (26, 15, 9, '00:00:00'), (19, 15, 9, '00:00:00'), (17, 15, 9, '00:00:00'), (23, 15, 9, '00:00:00'), (14, 15, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES(16, 15, 5, '00:45:00', 'Tripping'), (13, 15, 5, '01:19:00', 'Foul'), (17, 15, 5, '01:33:00', 'Foul');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(22, 15, 2, '00:45:00'), (28, 15, 3, '00:45:00'), (22, 15, 2, '00:47:00'), (28, 15, 3, '00:47:00'), (22, 15, 2, '01:04:00'), (28, 15, 3, '01:04:00'), (22, 15, 2, '01:13:00'), (28, 15, 3, '01:13:00'), (28, 15, 2, '01:22:00'), (17, 15, 7, '00:46:00'), (16, 15, 8, '00:46:00'), (26, 15, 7, '01:01:00'), (24, 15, 8, '01:01:00'), (23, 15, 7, '01:24:00'), (28, 15, 8, '01:24:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(480, 15, 1, '00:00:00'), (491, 15, 1, '00:00:00'), (488, 15, 1, '00:00:00'), (487, 15, 1, '00:00:00'), (494, 15, 1, '00:00:00'), (495, 15, 1, '00:00:00'), (503, 15, 1, '00:00:00'), (504, 15, 1, '00:00:00'), (500, 15, 1, '00:00:00'), (497, 15, 1, '00:00:00'), (484, 15, 1, '00:00:00'), (481, 15, 9, '00:00:00'), (485, 15, 9, '00:00:00'), (506, 15, 9, '00:00:00'), (505, 15, 9, '00:00:00'), (496, 15, 9, '00:00:00'), (502, 15, 9, '00:00:00'), (490, 15, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES(494, 15, 5, '00:05:00', 'Tripping'), (504, 15, 5, '00:39:00', 'Foul'), (488, 15, 5, '00:44:00', 'Foul'), (487, 15, 5, '01:08:00', 'Foul');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(503, 15, 2, '00:32:00'), (491, 15, 3, '00:32:00'), (503, 15, 10, '01:30:00'), (496, 15, 7, '00:55:00'), (494, 15, 8, '00:55:00'), (502, 15, 7, '01:08:00'), (497, 15, 8, '01:08:00'), (506, 15, 7, '01:20:00'), (504, 15, 8, '01:20:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(1, 8, 1, '00:00:00'), (13, 8, 1, '00:00:00'), (6, 8, 1, '00:00:00'), (15, 8, 1, '00:00:00'), (22, 8, 1, '00:00:00'), (18, 8, 1, '00:00:00'), (28, 8, 1, '00:00:00'), (7, 8, 1, '00:00:00'), (21, 8, 1, '00:00:00'), (24, 8, 1, '00:00:00'), (11, 8, 1, '00:00:00'), (3, 8, 9, '00:00:00'), (5, 8, 9, '00:00:00'), (26, 8, 9, '00:00:00'), (19, 8, 9, '00:00:00'), (23, 8, 9, '00:00:00'), (14, 8, 9, '00:00:00'), (16, 8, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time, reason)
		VALUES(15, 8, 5, '01:25:00', 'Tripping');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(19, 8, 7, '00:45:00'), (21, 8, 8, '00:45:00'), (23, 8, 7, '01:00:00'), (18, 8, 8, '01:00:00'), (16, 8, 7, '01:16:00'), (13, 8, 8, '01:16:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(507, 8, 1, '00:00:00'), (511, 8, 1, '00:00:00'), (523, 8, 1, '00:00:00'), (535, 8, 1, '00:00:00'), (536, 8, 1, '00:00:00'), (517, 8, 1, '00:00:00'), (512, 8, 1, '00:00:00'), (525, 8, 1, '00:00:00'), (529, 8, 1, '00:00:00'), (524, 8, 1, '00:00:00'), (520, 8, 1, '00:00:00'), (510, 8, 9, '00:00:00'), (519, 8, 9, '00:00:00'), (530, 8, 9, '00:00:00'), (532, 8, 9, '00:00:00'), (526, 8, 9, '00:00:00');

INSERT INTO match_stats (person_id, match_id, event_id, event_time)
		VALUES(536, 8, 2, '00:55:00'), (517, 8, 3, '00:55:00'), (530, 8, 7, '01:08:00'), (524, 8, 8, '01:08:00'), (526, 8, 7, '01:32:00'), (529, 8, 8, '01:32:00');
