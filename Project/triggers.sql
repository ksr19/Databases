DELIMITER //

DROP TRIGGER IF EXISTS add_imgname_on_insert//
CREATE TRIGGER add_imgname_on_insert BEFORE INSERT ON persons
FOR EACH ROW
BEGIN
	SET NEW.img_name = LOWER(CONCAT(REPLACE(NEW.name, ' ','_'),'.png'));
END//

DELIMITER ;


DELIMITER //

DROP TRIGGER IF EXISTS injury_status_on_insert//
CREATE TRIGGER injury_status_on_insert AFTER INSERT ON injuries
FOR EACH ROW
BEGIN
	IF NEW.end_date is NULL THEN UPDATE persons SET status = 'injured' WHERE id = NEW.player_id;
	END IF;
END//

DELIMITER ;

DELIMITER //

DROP FUNCTION IF EXISTS played_minutes//
CREATE FUNCTION played_minutes (p_id BIGINT, m_id BIGINT)
RETURNS SMALLINT DETERMINISTIC
BEGIN
	DECLARE start_time TIME DEFAULT '00:00:00';
	DECLARE full_time TIME DEFAULT '00:00:00';
	DECLARE pm INT DEFAULT 0;
	DECLARE status INT;
	IF (SELECT COUNT(*) FROM match_stats WHERE match_id = m_id AND person_id = p_id) THEN 
		SELECT event_time INTO start_time FROM match_stats WHERE (match_id = m_id AND person_id = p_id AND event_id = 7) ORDER BY event_time ASC LIMIT 1;
		IF (SELECT COUNT(*) FROM match_stats WHERE (match_id = m_id AND person_id = p_id) AND (event_id = 1 OR event_id = 7)) THEN 
			SET full_time = '01:30:00';
		END IF;
		SELECT event_time INTO full_time FROM match_stats WHERE (match_id = m_id AND person_id = p_id AND event_id = 8) LIMIT 1;
	ELSE RETURN 0;
	END IF;
	SET pm = HOUR(SUBTIME(full_time, start_time)) * 60 + MINUTE(SUBTIME(full_time, start_time));
	IF pm > 90 THEN 
		RETURN 90;
	ELSE
		RETURN pm;
	END IF;
END//

DELIMITER ;


