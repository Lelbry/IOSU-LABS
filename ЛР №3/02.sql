--2 Показать список продуктов (поле Name), в котором указано, есть ли у продукта
--рейтинг или нет, из таблиц Production.Product, Production.ProductRewiew, используя LEFT OUTER JOIN.
select  p."Name"
, coalesce (cast(pr."ProductID" as VARCHAR (50)), 'Нет рейтинга') as Рейтинг_продукта
       from "Production"."Product" p
       
left outer join "Production"."ProductReview" pr ON p."ProductID" = pr."ProductID";