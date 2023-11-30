--1.Показать самый легкий товар (вес определен и больше нуля) 
--(Таблица Production.Product). Показать поля [Name], [Weight].
select  "Name"
	, "Weight"
from "Production"."Product"
where  "Weight" =
(
	select min("Weight")
	from "Production"."Product"
	where "Weight" > 0
);