-- 5. Показать товары, цена которых больше средней цены в любом стиле
-- (Таблица Production.Product). Показать поля [Name], ListPrice и Style.
select 
    "Name", 
    "ListPrice",
    "Style"
from 
    "Production"."Product" p1
where 
    "ListPrice" > (
        select  
            AVG("ListPrice")
        from 
            "Production"."Product" p2
        where  
            p1."Style" = p2."Style"
    );
   
--Внесены корректировки после правки
select 
    "Name", 
    "ListPrice",
    "Style"
from 
    "Production"."Product" p1
where "ListPrice" > 
   (
   		select distinct  
            --AVG(nullif("ListPrice",0))
            AVG(CASE WHEN "ListPrice" <> 0 THEN "ListPrice" ELSE NULL END)
        from 
            "Production"."Product" p2
        where  
            p1."Style" = p2."Style"
   )
