select 
strftime('%Y',sales.soldDate) as Year_
, count(sales.salesId) as AnnualSales
, round(sum(sales.salesAmount),2) as AnnualSalesAmount
from sales 
group by strftime('%Y',sales.soldDate)