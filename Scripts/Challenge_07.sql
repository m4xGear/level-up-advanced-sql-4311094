select 
employee.firstName
, employee.lastName
, strftime('%m',sales.solddate) as MonthOfSale
, sum(sales.salesAmount) as SalesAmount 
from employee inner join sales 
on employee.employeeId = sales.employeeId 
where sales.soldDate >= '2021-01-01'
and sales.soldDate < '2022-01-01'
GROUP by employee.firstName
, employee.lastName
, strftime('%m',sales.solddate)
order by employee.lastName


select 
employee.firstName
, employee.lastName
, sum(case when strftime('%m',sales.soldDate) = '01'
       then ifnull(sales.salesAmount,0) end) as JanSales
, sum(case when strftime('%m',sales.soldDate) = '02'
       then sales.salesAmount end) as FebSales
, sum(case when strftime('%m',sales.soldDate) = '03'
       then sales.salesAmount end) as MarSales
, sum(case when strftime('%m',sales.soldDate) = '04'
       then sales.salesAmount end) as AprSales
, sum(case when strftime('%m',sales.soldDate) = '05'
       then sales.salesAmount end) as MaySales
, sum(case when strftime('%m',sales.soldDate) = '06'
       then sales.salesAmount end) as JumSales
, sum(case when strftime('%m',sales.soldDate) = '07'
       then sales.salesAmount end) as JulSales
, sum(case when strftime('%m',sales.soldDate) = '08'
       then sales.salesAmount end) as AugSales
, sum(case when strftime('%m',sales.soldDate) = '09'
       then sales.salesAmount end) as SepSales
, sum(case when strftime('%m',sales.soldDate) = '10'
       then sales.salesAmount end) as OctSales
, sum(case when strftime('%m',sales.soldDate) = '11'
       then sales.salesAmount end) as NovSales
, sum(case when strftime('%m',sales.soldDate) = '12'
       then sales.salesAmount end) as DecSales
from employee inner join sales 
on employee.employeeId = sales.employeeId
where sales.soldDate >= '2021-01-01'
and sales.soldDate < '2022-01-01'
group by employee.firstName, employee.lastName
order by employee.lastName

