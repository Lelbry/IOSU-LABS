  --Найти количество человек с именем David из таблицы Person.Person
  SELECT 
   count(p."FirstName") as KolichestvoImenDavid
  FROM "Person"."Person" p  
  WHERE p."FirstName" LIKE 'David';
  
  