--8 Показать список ProductID, которые содержатся и в таблице Production.Product, и в таблице Production.ProductInventory.
select  "ProductID"
from "Production"."Product" p
intersect
select "ProductID"
from "Production"."ProductInventory";