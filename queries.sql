select * from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` limit 20;

select COUNTIF(Customer_ID IS NULL) AS null_Customer_ID,
  COUNTIF(Age IS NULL) AS null_Age,
  COUNTIF(Gender IS NULL) AS null_Gender,
  COUNTIF(City IS NULL) AS null_City,
  COUNTIF(Income_Level IS NULL) AS null_Income_Level,
  COUNTIF(Purchase_Mode IS NULL) AS null_Purchase_Mode,
  COUNTIF(Brand_Purchased IS NULL) AS null_Brand_Purchased,
  COUNTIF(Price_Range IS NULL) AS null_Price_Range,
  COUNTIF(Payment_Mode IS NULL) AS null_Payment_Mode,
  COUNTIF(Purchase_Frequency IS NULL) AS null_Purchase_Frequency,
  COUNTIF(Satisfaction_Rating IS NULL) AS null_Satisfaction_Rating from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`;


SELECT
  COUNT(distinct Customer_ID) AS unique_customers,
  COUNT(DISTINCT Gender) AS unique_genders,
  COUNT(DISTINCT City) AS unique_cities,
  COUNT(DISTINCT Income_Level) AS unique_income_levels,
  COUNT(DISTINCT Purchase_Mode) AS unique_purchase_modes,
  COUNT(DISTINCT Brand_Purchased) AS unique_brands,
  COUNT(DISTINCT Price_Range) AS unique_price_ranges,
  COUNT(DISTINCT Payment_Mode) AS unique_payment_modes
FROM
  `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data`;


SELECT Gender,COUNT(gender) as Gender_Count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by Gender;

SELECT City,COUNT(City) as City_Count from `laptop-sales-analysis-india.laptop_sales_dataset.laptop_sales_data` group by City order by city_count desc;
