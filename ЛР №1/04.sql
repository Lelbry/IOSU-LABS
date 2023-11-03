--4.Показать идентификационный номер адреса (AddressID), первый адрес (AddressLine1),
-- названия городов (City) из таблицы Person.Address, у которых имеется вторая строка
-- адреса (AddressLine2).
select "AddressID", "AddressLine1", "City"
from "Person"."Address"
WHERE "AddressLine2" IS NOT NULL;