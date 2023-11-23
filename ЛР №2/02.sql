-- Найти суммарную цену (ListPrice) товара сорокового размера и черного
-- цвета из таблицы Production.Product.
select 
sum("ListPrice")
from "Production"."Product" p
where "Size" = '40' and "Color" = 'Black';