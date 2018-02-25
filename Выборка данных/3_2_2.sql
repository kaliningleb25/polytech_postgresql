-- Вывести все диагнозы, количество больных и палат, занимаемых этими больными.

SELECT diagnosis.name as Диагноз, count(wards.id) as Количество_палат, count(people.id) as Человек_в_палате
FROM people, wards, diagnosis
WHERE people.ward_id = wards.id AND people.diagnosis_id = diagnosis.id
GROUP BY diagnosis.name, wards.name;