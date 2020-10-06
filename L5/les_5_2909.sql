DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

/*Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.*/

UPDATE
	users
SET
	created_at = NOW(),
	updated_at = NOW();

/*Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

DROP TABLE IF EXISTS users_old;

CREATE TABLE users_old (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Имя покупателя',
	birthday_at DATE COMMENT 'Дата рождения',
	created_at VARCHAR(255),
	updated_at VARCHAR(255))
COMMENT = 'Покупатели старая версия';

INSERT INTO users_old (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 8:10', '21.10.2017 9:00'),
  ('Наталья', '1984-11-12', '23.12.2018 19:20', '25.09.2019 3:15'),
  ('Александр', '1985-05-20', '25.08.2020 10:00', '31.08.2020 11:00'),
  ('Сергей', '1988-02-14', '02.01.2019 8:13', '23.01.2020 13:56'),
  ('Иван', '1998-01-12', '10.01.2020 14:25', '15.09.2020 5:09'),
  ('Мария', '1992-08-29', '30.10.2018 0:24', '23.01.2020 1:20');


UPDATE
	users_old
SET
	created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
	updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');

ALTER TABLE users_old MODIFY created_at DATETIME;

ALTER TABLE users_old MODIFY updated_at DATETIME;

/*В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.*/

INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES
  (1, 1, 130),
  (2, 1, 200),
  (1, 3, 20),
  (1, 5, 700),
  (2, 3, 200),
  (1, 6, 0),
  (1, 4, 1),
  (2, 4, 0),
  (2, 5, 2000);

SELECT
	*
FROM
	storehouses_products
ORDER BY
	IF(value > 0, 0, 1),
		value;

/*(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)*/

SELECT
	id,
	name,
	MONTHNAME(birthday_at) as month,
	birthday_at
FROM
	users
WHERE
	MONTHNAME(birthday_at)
	IN('may', 'august');

/*(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.*/

SELECT
	*
FROM
	catalogs
WHERE
	id IN(5, 1, 2)
ORDER BY
	CASE id
		WHEN 5 THEN 1
		WHEN 1 THEN 2
		WHEN 2 THEN 3
	END, id;

-- Практическое задание теме «Агрегация данных»

/*Подсчитайте средний возраст пользователей в таблице users.*/

SELECT
	ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS average_age -- Средний возраст всех пользователей с округлением до целого числа
FROM
	users;

/*Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/

INSERT INTO users (name, birthday_at) VALUES
  ('Леонид', '1995-10-02'),
  ('Елена', '2004-11-12'),
  ('Семен', '1985-09-29'),
  ('Александра', '1999-01-31');

SELECT
	DAYNAME(STR_TO_DATE(CONCAT(DATE_FORMAT(birthday_at, '%d.%m'), '.2020'), '%d.%m.%Y')) as weekday,
	COUNT(*) as birthdays
FROM
	users
GROUP BY
	weekday
ORDER BY
	CASE
		WHEN weekday = 'Monday' THEN 0
		WHEN weekday = 'Tuesday' THEN 1
		WHEN weekday = 'Wednesday' THEN 2
		WHEN weekday = 'Thursday' THEN 3
		WHEN weekday = 'Friday' THEN 4
		WHEN weekday = 'Saturday' THEN 5
		WHEN weekday = 'Sunday' THEN 6
	END;

/*(по желанию) Подсчитайте произведение чисел в столбце таблицы.*/

SELECT
	ROUND(EXP(SUM(LOG(product_id))),2)
FROM
	storehouses_products;

-- При произведении больших чисел возникает ошибка округления
	
