-- 8.Показать поля ProductID, Name из таблицы Production.
-- Product с применением функции COALESCE(). Показать поле Measurement, так,
-- чтобы, если значение в поле Class известно, то показать его, а иначе,
-- показать значение в поле Weight. Если и в поле Weight значение неизвестно,
-- то вывести значение 'UNKNOWN'.
select  "ProductID", "Name", 
    coalesce ("Class", coalesce ("Weight"::VARCHAR, 'UNKNOWN')) AS "Measurement"
from "Production"."Product";
