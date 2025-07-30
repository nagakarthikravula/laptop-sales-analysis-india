# laptop-sales-analysis-india
Project 1: Laptop Sales Analysis in India.

**Objective**
To analyse laptop sales data in India to derive insights on customer demographics, brand performance, purchase behaviour, and satisfaction levels, and to identify business opportunities for strategic decision-making.

# Tools used in this project
-> Google Cloud Storage
-> Bigquery
-> Looker
-> This project was implemented on GCP under a free trial account.
Due to quota limits, the actual project is now deleted,
but screenshots and full code are documented below.

# Step-1:(Data Collection and Storing)
-> Collected the laptop-sales-india dataset from kaggle and stored it in Google Bucket(laptop-sales-analysis-india)
-> Loaded the dataset into the bigquery

# Step-2:(Data Cleaning and Data Exploration)
-> Explored the data
-> Got the data distributions for every field with sql queries
-> The data doesn't contain any Null values and Duplicates

# Step-3:(Answering Stakeholer Questions)
Performed SQL analysis to derive actionable insights for stakeholders, including:

1. **Purchase Count by Age Group**
2. **Gender-wise Purchase Distribution**
3. **Purchase Mode Preference (Online vs Offline)**
4. **Top Cities by Purchase Count**
5. **Payment Mode Preferences**
6. **Income Level vs Purchase Count**
7. **Average Satisfaction Rating by Brand Purchased**
8. **Price vs Satisfaction Correlation**
9. **Purchase Frequency Analysis**
10. **Top Brands Purchased Overall**
11. **Brand Purchase Count within Price Ranges**
12. **City-wise Student Purchase Analysis**

Queries are available in **qnaqueries.sql** 

# Step-4:(Data Visualization Using looker)
-> Created a "Interactive dashboard" using looker
Include:
    -> Bar plots,Pie charts,Scatter plots
    -> Filters for **Age Selection** and **Satisfaction Ratings**
Ensured:
    -> Consistent Color palette
    -> Structured Layout For Storytelling
-> Link to Dashboard
## 🖼️ Dashboard Preview

[(Dashboard)](https://lookerstudio.google.com/u/0/reporting/46c0fefe-0ee4-40eb-9f82-a71ff22bd5f0/page/QWPQF)


  
# **Key Insights** 

1. **Age Group Analysis**  
   Customers aged **36-42 years** have the highest purchase count compared to other age groups,
   indicating strong purchasing power in mid-career professionals.

2. **Gender Distribution**  
   Across all age groups, **male customers consistently account for over 57%** of purchases on
   average, showing a slight male dominance in laptop buying decisions.

3. **Purchase Mode Preference**  
   **Online purchase mode is predominantly used** by customers across all segments, highlighting
    the importance of maintaining strong online sales channels.

4. **Top Cities by Purchase Count**  
   The top three cities with highest purchase counts are **Chennai, Hyderabad, and Ahmedabad**,
   making them key markets for sales and promotions.

5. **Payment Mode by Student Age Group**  
   In the **18-24 age group**, where most customers are students, **EMI is the most used payment mode**,
   followed by **Debit Card**, suggesting that flexible payment options are crucial for student buyers.

6. **City-Wise Student Purchases**  
   In cities like **Delhi, Bangalore, and Mumbai**, most students (18-24 age group) have purchased laptops,
   indicating urban student populations as important target segments.

7. **Brand Satisfaction Analysis**  
   **ASUS has the highest average satisfaction rating**, followed by **MSI**, reflecting strong customer
    satisfaction and potential for brand loyalty campaigns.

8. **Price Range Analysis**  
   The most purchased laptops are priced between **₹30K to ₹50K**, indicating strong demand in this mid-price segment.

9. **Brand Purchase Count within 30K-50K Range**  
   Within the **₹30K-₹50K price range**, **MSI is the most purchased brand**, followed by **Dell**, showing their
   popularity in mid-range laptops.

10. **Purchase Frequency**  
    Most customers fall under the **rare purchase frequency category**, suggesting opportunities to increase
    repeat purchases through loyalty or upgrade programs.

11. **Low Purchase Age Group**  
    The **24-30 age group has the lowest purchase count**, indicating a potential market gap or lower laptop
    replacement needs within this segment.

12. **Overall Brand Popularity**  
    Across all ages, the top three most purchased brands are **Lenovo, ASUS, and MSI**, highlighting these as market leaders.


 **Conclusion**

This basic project strengthened my skills in **Google Cloud tools (BigQuery, Cloud Storage), data analysis, and dashboard storytelling**
