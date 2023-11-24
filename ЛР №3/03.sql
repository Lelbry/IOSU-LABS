--3 Показать список ID людей (поле BusinessEntityId), в котором указано,является человек вендором или нет,
-- из таблиц Purchasing.Vendor, Person.BusinessEntity, используя RIGHT OUTER JOIN.
SELECT p."BusinessEntityID"
FROM "Person"."BusinessEntity" p
RIGHT OUTER JOIN "Purchasing"."Vendor" v ON p."BusinessEntityID" = v."BusinessEntityID";