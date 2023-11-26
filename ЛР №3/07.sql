--7 Показать комбинированный список таблиц Person.EmailAddress, Person.BusinessEntityAddress
-- по полям BusinessEntityID, rowguid, ModifiedDate, используя UNION.
select  "BusinessEntityID"
, "rowguid"
, "ModifiedDate"
from "Person"."EmailAddress"
union
select "BusinessEntityID"
, "rowguid"
, "ModifiedDate"
from "Person"."BusinessEntityAddress";