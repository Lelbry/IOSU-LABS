--3.	Показать поля ProductID, LocationID, Shelf, 
--Quantity из таблицы Production.ProductInventory, при условии, 
--что количество товара (Quantity) больше 400.
SELECT "ProductID", "LocationID", "Shelf", "Quantity"
FROM "Production"."ProductInventory"
WHERE "Quantity" > 400;