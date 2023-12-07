--6 Показать товары из таблицы Production.Product, имеющие такой же вес
--как у товара с названием «LL Road Frame - Black, 62», используя self JOIN.
select distinct  p1.*
from "Production"."Product" p1
join "Production"."Product" p2 on p1."Weight" = p2."Weight"
where  p2."Name" = 'LL Road Frame - Black, 62';