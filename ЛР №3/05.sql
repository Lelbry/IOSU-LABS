--5 Показать список дат выполнения заказа (DueDate), к которым относятся несколько продуктов (ProductID),
-- из таблицы Purchasing.PurchaseOrderDetail, используя SELF JOIN.
select distinct  pd1."DueDate"
from "Purchasing"."PurchaseOrderDetail" pd1
join "Purchasing"."PurchaseOrderDetail" pd2 on pd1."DueDate" = pd2."DueDate" and pd1."ProductID" <> pd2."ProductID";