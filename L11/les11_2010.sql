-- Практическое задание по теме “Оптимизация запросов”
-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время и дата создания записи',
  table_name VARCHAR(255) COMMENT 'Название таблицы, куда добавлена запись',
  key_id BIGINT UNSIGNED COMMENT 'Идентификатор первичного ключа',
  name VARCHAR(255) COMMENT 'Содержимое поля name'
) ENGINE=ARCHIVE;


-- Создаем триггеры для заполнения таблицы logs

DELIMITER //

DROP TRIGGER IF EXISTS logs_update_on_insert_users//
CREATE TRIGGER logs_update_on_insert_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (NEW.created_at, 'users', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS logs_update_on_insert_catalogs//
CREATE TRIGGER logs_update_on_insert_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (table_name, key_id, name) VALUES ('catalogs', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS logs_update_on_insert_products//
CREATE TRIGGER logs_update_on_insert_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs VALUES (NEW.created_at, 'products', NEW.id, NEW.name);
END//

DELIMITER ;


-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
-- Не очень понял, что нужно было сделать в задании. Создал файлы insert1.sql - insert10.sql на заполнение таблицы users, в каждом добавляется по 100000 записей.
-- Соответственно, все изменения таблицы users отразились в таблице logs.


-- Практическое задание по теме “NoSQL”
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

-- На мой взгляд, можно воспользоваться типом данных хеш.
-- Можно создать хеш ip_visits и добавить в него в качестве пар ключ-значение пары ip - количество посещений, например следующим образом: 
-- HMSET ip_visits 192.168.0.100 0 192.168.0.101 0 192.168.0.102 0
-- Затем при посещении увеличивать значение соответствующего ip с помощью команды: HINCRBY ip_visits 192.168.0.100 1
-- ,где 1 - количество посещений с указанного адреса.
-- С помощью команды HGETALL можно будет посмотреть итоговую статистику посещения с разных ip-адресов.
-- Либо можно будет воспользоваться командой HGET для получения количества посещений с конкретного адреса.
-- Другой способ: воспользоваться отсортированным множествами:
-- ZADD ip_visits 0 192.168.0.100 0 192.168.0.101 0 192.168.0.102
-- Затем можно увеличивать рейтинг соответствующего адреса с помощью команды ZINCRBY ip_visits 1 192.168.0.100
-- Итоговое распределение можно посмотреть с помощью ZRANGE ip_visits 0 -1 WITHSCORES


-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.

-- Можно организовать хранение в хеше, где в качестве пары ключ-значение будут выступать пары имя - электронный адрес пользователся:
-- HMSET users user1 user1@mail.ru user2 user2@mail.ru user3 user3@mail.ru
-- Тогда найти электронный адрес заданного пользователя можно будет с помощью команды HGET users user1
-- Насколько я понимаю поиск ключа по значению в Redis отсутствует, поэтому для поиска имени пользователя по его электронному адресу можно воспользоваться одним из следующих подходов:
-- 1) Вывести все пары ключ-значение с помощью команды HGETALL users и затем производить поиск по этому списку данных исходя из того, что ключи находятся на нечетных позициях, а значения на четных. То есть получить этот список и с помощью языка программирования провести поиск по четным элементам. Соответствующее имя пользователя будет перед найденным элементом. Например, если мы ищем user2@mail.ru, то этот адрес будет в списке на позиции 4, а имя пользователя на предыдущей позиции - 3.
-- 2) Создать дополнительный хеш, где ключами будут электронные адреса, а значениями имена пользователей. Затем провести поиск по нему при помощи той же самой команды HGET.



-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

-- Сначала нужно указать, что будем работать с БД shop: use shop
-- Затем можно добавлять записи в БД:
-- db.shop.insert({name: 'Intel Core i3-8100', description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 7890.00, catalog: 'Процессоры', created_at: new Date(), updated_at: new Date()})
-- db.shop.insert({name: 'Intel Core i5-7400', description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 12700.00, catalog: 'Процессоры', created_at: new Date(), updated_at: new Date()})
-- db.shop.insert({name: 'AMD FX-8320E', description: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', price: 4780.00, catalog: 'Процессоры', created_at: new Date(), updated_at: new Date()})
-- db.shop.insert({name: 'AMD FX-8320', description: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', price: 7120.00, catalog: 'Процессоры', created_at: new Date(), updated_at: new Date()})
-- db.shop.insert({name: 'ASUS ROG MAXIMUS X HERO', description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', price: 19310.00, catalog: 'Материнские платы', created_at: new Date(), updated_at: new Date()})
-- db.shop.insert({name: 'Gigabyte H310M S2H', description: 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', price: 4790.00, catalog: 'Материнские платы', created_at: new Date(), updated_at: new Date()})
-- db.shop.insert({name: 'MSI B250M GAMING PRO', description: 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', price: 5060.00, catalog: 'Материнские платы', created_at: new Date(), updated_at: new Date()}) 

-- При необходимости для полей created_at и updated_at можно указать необходимые даты в скобках после ключевого слова Date().