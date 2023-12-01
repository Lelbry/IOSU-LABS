--2 Показать список продуктов (поле Name), в котором указано, есть ли у продукта
--рейтинг или нет, из таблиц Production.Product, Production.ProductRewiew, используя LEFT OUTER JOIN.
select  p."Name"
, coalesce (pr."ProductID", 'Нет рейтинга') as Рейтинг_продукта
, coalesce (pr."ProductID" is not null, 'Есть рейтинг') as Рейтинг_продукта
		/*case 
           when pr."ProductID" is not null then 'Есть рейтинг' 
           else 'Нет рейтинга' 
       end as Рейтинг_продукта*/ 
       from "Production"."Product" p
       
left outer join "Production"."ProductReview" pr ON p."ProductID" = pr."ProductID";