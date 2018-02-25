-- выборка с подзапросами
-- Вывести число больных, лежащих в палате с заданным наименованием.

SELECT count(people.id)
FROM people, wards
WHERE wards.name = 'cardiology' AND people.ward_id = wards.id;