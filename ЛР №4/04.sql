--4. Показать товары, цена которых равна минимальной (больше нуля) цене товара
-- того же цвета (цвет определен) (Таблица Production.Product).
-- Показать поля [Name], ListPrice и Color.
select  
    "Name", 
    "ListPrice",
    "Color"
from 
    "Production"."Product" p1
where 
    "ListPrice" = 
    (
        select  
            MIN("ListPrice")
        from 
            "Production"."Product" p2
        where  
            p1."Color" = p2."Color" 
            and p2."ListPrice" > 0
    );
    