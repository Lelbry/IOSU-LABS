--Вывести EmployeeID, ShipDate и сумму по SubTotal для всевозможных EmployeeID с одинаковой ShipDate,
-- предусмотреть вывод общей суммы TotalDue за ShipDate из таблицы Purchasing.PurchaseOrderHeader.
-- (Использовать CUBE).
select  
"EmployeeID"
, "ShipDate"
, sum("SubTotal") as TotalSubTotal
, sum("TotalDue") as StandardPrice
from "Purchasing"."PurchaseOrderHeader"
group by cube  ("EmployeeID", "ShipDate");