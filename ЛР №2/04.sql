--Выбрать те линейки товаров (ProductLine) из таблицы Production.Product, где максимальная цена больше 3000 (из выборки исключить пустые поля).
select 
"ProductLine"
from "Production"."Product" p 
where "ProductLine" is not null
group by "ProductLine"
having MAX("ListPrice") > 3000;
