--4 Показать список продуктов (ProductID), которые имеют несколько дат выполнения заказа (DueDate),
-- из Purchasing.PurchaseOrderDetail, используя SELF JOIN.
select  pd1."ProductID", pd1."DueDate"
from "Purchasing"."PurchaseOrderDetail" pd1
join "Purchasing"."PurchaseOrderDetail" pd2 on pd1."ProductID" = pd2."ProductID"
	--проверяем чтобы значения столбца DueDate не были одинаковыми
   and pd1."DueDate" <> pd2."DueDate"
order by pd1."ProductID";