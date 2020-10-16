-- Практическое задание по теме “Транзакции, переменные, представления”
-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;

INSERT INTO sample.users
SELECT
	*
FROM
	shop.users
WHERE
	id = 1;

DELETE FROM shop.users
WHERE id = 1;

COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW pr_cat (product_name, catalog_name) AS
	SELECT 
		p.name,
		c.name
	FROM
		products as p
	JOIN
		catalogs as c
	ON p.catalog_id = c.id;

-- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2018-08-04', '2018-08-16' и '2018-08-17'. Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

INSERT INTO orders (user_id, created_at) VALUES
	(1, '2018-08-01'),
	(1, '2019-09-30'),
	(2, '2017-05-20'),
	(2, '2018-08-04'),
	(2, '2018-10-10'),
	(3, '2018-08-16'),
	(4, '2019-09-19'),
	(5, '2018-08-17');

SET @start_date := '2018-08-01';

SELECT
	@var := @start_date + INTERVAL num DAY AS `Date`,
	CASE WHEN @var in(
		SELECT
			created_at FROM orders) THEN
		1
	ELSE
		0
	END AS `In orders table?`
FROM (
	SELECT
		a + 10 * b AS num
	FROM (
		SELECT
			0 AS a
		UNION
		SELECT
			1
		UNION
		SELECT
			2
		UNION
		SELECT
			3
		UNION
		SELECT
			4
		UNION
		SELECT
			5
		UNION
		SELECT
			6
		UNION
		SELECT
			7
		UNION
		SELECT
			8
		UNION
		SELECT
			9) AS a
		JOIN (
			SELECT
				0 AS b
		UNION
		SELECT
			1
		UNION
		SELECT
			2
		UNION
		SELECT
			3) AS b
	ORDER BY
		num
	LIMIT 31) AS numbers;

-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.


PREPARE del FROM 'DELETE FROM orders ORDER BY created_at ASC LIMIT ?';
-- определяем сколько строк нужно удалить, чтобы осталось только 5 записей
SET @nr := (SELECT COUNT(*) FROM orders) - 5;
EXECUTE del USING @nr;

-- Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)
-- 1.Создайте двух пользователей которые имеют доступ к базе данных shop. Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.

CREATE USER shop_read;
CREATE USER shop;

GRANT SELECT ON shop.* TO shop_read;
GRANT ALL ON shop.* TO shop;
GRANT GRANT OPTION ON shop.* TO shop;


-- 2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.

DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	password CHAR(50)
);

INSERT INTO accounts (name, password) VALUES
	('Andrew P.', 'dkfjlqp342432r3rwef'),
	('Max S.', 'fgmko2#][r31r'),
	('Tim W.', 'ofsid2po343fds'),
	('Elena N.', '314fkljdlkdsf');

CREATE OR REPLACE VIEW username AS SELECT id, name FROM accounts;

CREATE USER user_read;

GRANT SELECT ON shop.username TO user_read;

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello () 
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
  RETURN CASE
  	WHEN CURRENT_TIME() BETWEEN ('00:00:00') AND ('06:00:00') THEN 'Доброй ночи'
  	WHEN CURRENT_TIME() BETWEEN ('06:00:01') AND ('12:00:00') THEN 'Доброе утро'
  	WHEN CURRENT_TIME() BETWEEN ('12:00:01') AND ('18:00:00') THEN 'Добрый день'
  	ELSE 'Добрый вечер'
  END;
END//

DELIMITER ;

SELECT hello() as 'Приветствие';

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

DROP TRIGGER IF EXISTS check_name_description_insert//
CREATE TRIGGER check_name_description_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF (NEW.name is NULL) AND (NEW.description is NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'At least one of the fields "name", "description" should be filled';
	END IF;
END//

DROP TRIGGER IF EXISTS check_name_description_update//
CREATE TRIGGER check_name_description_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	IF (NEW.name is NULL) AND (NEW.description is NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'At least one of the fields "name", "description" should be filled';
	END IF;
END//

DELIMITER ;

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.

DELIMITER //

DROP FUNCTION IF EXISTS FIBONACCI//
CREATE FUNCTION FIBONACCI (i INT) 
RETURNS BIGINT UNSIGNED DETERMINISTIC
BEGIN
	DECLARE fi BIGINT UNSIGNED;
	SET @f0 = 0;
	SET @f1 = 1;
	IF i = 0 THEN RETURN @f0;
	END IF;
	IF i = 1 THEN RETURN @f1;
	END IF;
	WHILE i > 1 DO
		SET fi = @f0 + @f1;
		SET @f0 = @f1;
		SET @f1 = fi;
		SET i = i - 1;
	END WHILE;
	RETURN fi;
END//

DELIMITER ;

SELECT FIBONACCI(10) as 'F';