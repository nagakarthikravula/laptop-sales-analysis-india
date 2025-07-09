select age as Age,Count(*) as Purchase_Count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by age order by age;

SELECT City,COUNT(City) as City_Count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by City order by city_count desc;

SELECT
  Gender,
  COUNT(*) AS purchase_count
FROM
  `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`
GROUP BY
  Gender;


select Income_level,count(*) as purchase_count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by Income_Level order by Income_Level;

select City,count(*) as purchase_count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by City order by City;


select Brand_Purchased,Price_Range,count(*) as purchase_count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by Brand_Purchased,Price_Range order by purchase_count desc;


select Brand_Purchased,count(*) as purchase_count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by Brand_Purchased order by purchase_count desc;



select Price_Range,count(*) as purchase_count 
from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` 
group by Price_Range order by case 
 when LOWER(Price_Range) = 'below 30k' then 1
  when LOWER(Price_Range) = '30k-50k' then 2
   when LOWER(Price_Range) = '50k-80k' then 3
    when LOWER(Price_Range) = '80k-1.2l' then 4
     when LOWER(Price_Range) = 'above 1.2l' then 5
     else 99
end;

select Payment_mode,count(*) as Payment_mode_count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`
group by Payment_Mode order by Payment_Mode_count desc;


select Purchase_Frequency,count(*) as Payment_mode_count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`
group by Purchase_Frequency order by Purchase_Frequency desc;

select Brand_Purchased,round(avg(Satisfaction_Rating),2) as avg_satisfaction_brand from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`
group by Brand_Purchased order by avg_satisfaction_brand desc;



with midpoint_table as
(
  select 
  case
    when lower(price_range) = "below 30k" then 15000
    when lower(price_range) = "above 1.2l" then 120000
    when lower(price_range) = "80k-1.2l" then 100000
    else (cast(SUBSTR(price_range,1,2) as int64)*1000+cast(SUBSTR(price_range,5,2) as int64)*1000) /2
    end as price_midpoint
    ,satisfaction_rating
  from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`
)
select price_midpoint,avg(Satisfaction_rating) as price_avg_satisfaction_rating from midpoint_table group by price_midpoint order by price_midpoint;


select * from  `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`
where Satisfaction_Rating>=3 and Purchase_Frequency = "Rare"
order by Satisfaction_Rating desc; 




