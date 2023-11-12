select 
sum("ListPrice")
from "Production"."Product" p
where "Size" = '40' and "Color" = 'Black';