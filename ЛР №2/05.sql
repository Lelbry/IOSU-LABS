select  
"EmployeeID"
, "ShipDate"
, sum("SubTotal") as TotalSubTotal
, sum("TotalDue") as StandardPrice
from "Purchasing"."PurchaseOrderHeader"
group by cube  ("EmployeeID", "ShipDate");