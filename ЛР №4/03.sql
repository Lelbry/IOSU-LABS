--3. Показать товары, для которых существует более 2 классов, в одном стиле (стиль и класс определен)
-- (Таблица Production.Product). Показать поля Name, Style и Class.
select  "Name"
, "Style"
, "Class"
from "Production"."Product"
where "Style" is NOT null
and "Class" is NOT null 
and "Name" in 
	(
	select  "Name"
	from "Production"."Product"
	where "Style" is NOT null
	and "Class" is NOT null
	);
	
--Реализация после правки
SELECT "Name", "Style", "Class"
FROM "Production"."Product" p
WHERE "Style" IS NOT NULL 
AND "Class" IS NOT NULL
AND "Name" IN 
    (SELECT "Name"
     FROM "Production"."Product" pr
     WHERE "Style" IS NOT NULL 
     AND "Class" IS NOT NULL
     AND p."Style" = pr."Style" 
     GROUP BY "Name"  
     HAVING COUNT("Class") > 2)