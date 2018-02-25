-- соединение таблиц (join)
-- Вывести все палаты и количество больных лежащих в них.

SELECT wards.name, count(people.id)
FROM people, wards
WHERE people.ward_id = wards.id
GROUP BY wards.name;
