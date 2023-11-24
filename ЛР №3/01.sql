--1. Показать процент комиссии (ComissionPct) и поля FirstName, LastName из таблиц PersonPerson, Sales.SalesPerson.
select  p."FirstName"
, p."LastName"
, sp."CommissionPct" 
from "Person"."Person" p
--объединения строк (join on) из разных таблиц, сработает в случае строки будут объединены только в том случае, если значение 
--столбца BusinessEntityID в таблице Person.Person равно значению столбца BusinessEntityID в таблице Sales.SalesPerson
join "Sales"."SalesPerson" sp on p."BusinessEntityID" = sp."BusinessEntityID";