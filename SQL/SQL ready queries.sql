Задания на написание запросов к БД:								
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а								
2. Удалить всех пользователей, у которых skill меньше 100000								
3. Вывести все данные из таблицы user в порядке убывания по полю skill 								
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10								
5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000								
6. Выбрать user_name всех пользователей уровня admin используя подзапрос								
7. Выбрать user_name всех пользователей уровня admin используя join								




create table [user] (
[id] int,
[user_name] varchar(255),
[level_id] int,
[skill] int);

create table [level] (
[id] int,
[level_name] varchar(255));


INSERT INTO [user] ([id], [user_name], [level_id], [skill]) 
VALUES (1, 'Anton', 1, 900000),
(2, 'Denis',3, 4000),
(3, 'Petr', 2, 50000),
(4, 'Andrey', 4, 20),
(5, 'Olga', 1, 600000),
(6, 'Anna', 1, 1600000)



INSERT INTO [level] ([id], [level_name]) 
VALUES (1, 'admin'),
(2, 'power_user'),
(3, 'user'),
(4, 'guest')











1) select * from [user] where level_id=1 and skill<799000 and user_name like '%a%'

2) DELETE FROM [user] WHERE  skill<100000

3) select * from [user] order by skill desc

4) INSERT INTO [user] (id, user_name, level_id, skill)
VALUES (7 ,'Oleg', 4, 10);

5) UPDATE [user]
SET skill = 2000000
WHERE level_id <2

6)select * from [user] where level_id in (select id from [level] where level_name = 'admin')

7)select * from [user] u
join [level] l on u.level_id = l.id
where l.level_name = 'admin'
