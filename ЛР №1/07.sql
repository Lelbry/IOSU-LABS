--7.Из таблицы Person.Person показать имя, отчество, фамилию и суффикс
-- (FirstName, MiddleName, LastName и Suffix). Все неизвестные отчества 
-- заменить на '---', а все неизвестные суффиксы – на 'NO'. Названия полей оставить без изменений.
select  
"FirstName", coalesce ("MiddleName", '---') as "MiddleName", 
"LastName", coalesce ("Suffix", 'NO') as "Suffix"
from "Person"."Person";
