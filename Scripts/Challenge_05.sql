select 
employee.firstName
, employee.lastName
, count(sales.salesId) as NumberOfSales
from employee inner join sales
on sales.employeeId = employee.employeeId
where strftime('%Y',sales.soldDate) = '2023'
group by employee.firstName
, employee.lastName
HAVING count(sales.salesId) > 5
order by 3 desc