select 
"ProductLine"
from "Production"."Product" p 
where "ListPrice" > 3000 and "ProductLine" is not null; 
