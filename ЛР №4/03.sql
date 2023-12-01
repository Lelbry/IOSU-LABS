--3. Показать товары, для которых существует более 2 классов, в одном стиле (стиль и класс определен)
-- (Таблица Production.Product). Показать поля Name, Style и Class.
SELECT "Name", "Style", "Class"
FROM "Production"."Product" p
WHERE "Style" IS NOT NULL 
AND "Class" IS NOT NULL
AND "Name" is not null 
    and exists (
    SELECT count("Class")
     FROM "Production"."Product" pr
     WHERE "Style" IS NOT NULL 
     AND "Class" IS NOT NULL
     AND p."Style" = pr."Style"
     HAVING COUNT("Class") > 2);