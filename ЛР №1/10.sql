--10.Показать поля TaxType, TaxRate и Name из таблицы Sales.SalesTaxRate.
-- Все значения поля TaxType, равные 2, заменить на NULL. Названия полей оставить без изменений.
select 
	"Sales"."SalesTaxRate"."TaxType" 
	, "Sales"."SalesTaxRate"."TaxRate" 
	, "Sales"."SalesTaxRate"."Name"
	, nullif("Sales"."SalesTaxRate"."TaxType", 2)
from "Sales"."SalesTaxRate";
