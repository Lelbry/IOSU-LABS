--6.Показать все поля таблицы Production.ProductReview, у которых ID товара 
--(ProductID) или 798, или 937. Использовать оператор IN.
select *
from "Production"."ProductReview"
where "ProductID" in(798,937);

