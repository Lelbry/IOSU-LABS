--5.Из таблицы Sales.CreditCard показать ID кредитной карты (CreditCardID),
-- тип и номер кредитной карты (CardType и CardNumber). 
--Показать только те карты, в названии которых (CardType) содержится Card.
select "CreditCardID", "CardType", "CardNumber"
from "Sales"."CreditCard"
WHERE "CardType" LIKE '%Card%';