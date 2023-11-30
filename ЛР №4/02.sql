--2.Определить количество сотрудников и штат, в котором проживает минимальное число сотрудников (Представление Sales.vSalesPerson)
select  "StateProvinceName", COUNT("BusinessEntityID") AS "NumberEmployees"
from "Sales"."vSalesPerson"
group by "StateProvinceName"
having COUNT("BusinessEntityID") =
	(
    select  "EmployersTotalCount"
    from (
    --Подсчитаем количество содтрудинков и занесём данные в новый столбец "EmployersTotalCount"
        select COUNT("BusinessEntityID") AS "EmployersTotalCount"
        from "Sales"."vSalesPerson"
    -- группируя Штаты и кол-во сотрудников и выбирая первую строку из результатов с помощью LIMIT 1
        group by "StateProvinceName"
        order by COUNT("BusinessEntityID")
        limit 1
    ) as SubQuery
);