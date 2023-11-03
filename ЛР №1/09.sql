--9.Из таблицы Sales.SalesTerritory показать поля TerritoryID, Name и CountryRegionCode.
-- Отсортировать строки в алфавитном порядке в соответствии с полем Name.
select  "TerritoryID", "Name", "CountryRegionCode"
from "Sales"."SalesTerritory"
order by "Name";