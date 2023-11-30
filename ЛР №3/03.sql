--3 Показать список ID людей (поле BusinessEntityId), в котором указано,является человек вендором или нет,
-- из таблиц Purchasing.Vendor, Person.BusinessEntity, используя RIGHT OUTER JOIN.
select  distinct p."BusinessEntityID"
from "Person"."BusinessEntity" p
right outer join "Purchasing"."Vendor" v on p."BusinessEntityID" = v."BusinessEntityID";