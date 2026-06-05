

#  E-Commerce Customer Behavior Analytics

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)




# E-Commerce Customer Behavior Analysis

Exploratory to Prescriptive Analysis of E-Commerce Customer Behavior
Using SQL, Python, Power BI, and Excel, this project analyzes 10,000 customer transaction records to uncover purchasing patterns, customer satisfaction drivers, retention behavior, and business performance insights. The analysis progresses from Exploratory Data Analysis (EDA) to Diagnostic, Predictive, and Prescriptive Analytics, supported by statistical testing and actionable business recommendations

## Data Set Description

The dataset contains 10,000 records and 16 columns representing 
e-commerce customer behavior, including demographics, purchase 
habits, satisfaction levels, and delivery details.

| Column Name                  | Data Type | Description                              |
|------------------------------|-----------|------------------------------------------|
| Customer ID                  | Integer   | Unique identifier for each customer      |
| Age                          | Integer   | Age of the customer                      |
| Gender                       | String    | Gender of the customer                   |
| Location                     | String    | Customer's geographic location           |
| Product Category             | String    | Category of purchased product            |
| Purchase Amount ($)          | Float     | Total amount spent per transaction       |
| Time Spent on Website (min)  | Integer   | Minutes spent browsing the website       |
| Device Type                  | String    | Device used for shopping                 |
| Payment Method               | String    | Payment method used                      |
| Discount Availed             | Boolean   | Whether a discount was used (True/False) |
| Number of Items Purchased    | Integer   | Total items bought in a transaction      |
| Return Customer              | Boolean   | Whether customer is returning (True/False)|
| Review Score (1-5)           | Integer   | Customer rating from 1 to 5              |
| Delivery Time (days)         | Integer   | Days taken for delivery                  |
| Subscription Status          | String    | Customer subscription plan type          |
| Customer Satisfaction        | String    | Overall satisfaction level               |

##  Project Objectives

### Level 1: Basic Insights
- Analyze customer age distribution using Mean, Median, and Mode.
- Measure purchase amount variability using Variance, Standard Deviation, and Z-Score analysis.
- Identify the top three product categories based on purchase frequency.
- Determine the number of return customers.
- Evaluate overall customer satisfaction through average review scores.
- Compare average delivery times between Free and Premium subscribers.
- Measure subscription adoption among customers.
- Analyze device usage patterns across Mobile, Desktop, and Tablet platforms.
- Compare average purchase amounts between customers who used discounts and those who did not.
- Identify the most frequently used payment method.

### Level 2: Intermediate Insights
- Evaluate customer review scores for users of the most popular payment method.
- Analyze the relationship between website engagement time and purchase amount.
- Measure the proportion of satisfied customers who also become return customers.
- Examine the relationship between the number of items purchased and customer satisfaction.
- Identify the location with the second-highest average purchase amount.

### Level 3: Critical Thinking & Business Insights
- Identify the key factors that influence customer retention and repeat purchases.
- Assess the impact of payment methods on customer satisfaction and return rates.
- Evaluate how geographic location affects purchase behavior and delivery performance.
- Generate data-driven business recommendations based on major analytical findings.
- Translate analytical results into actionable strategies for improving customer experience, retention, and revenue growth.

##  Project Objectives

### Level 1: Basic Insights
- Analyze customer age distribution using Mean, Median, and Mode.
- Measure purchase amount variability using Variance, Standard Deviation, and Z-Score analysis.
- Identify the top three product categories based on purchase frequency.
- Determine the number of return customers.
- Evaluate overall customer satisfaction through average review scores.
- Compare average delivery times between Free and Premium subscribers.
- Measure subscription adoption among customers.
- Analyze device usage patterns across Mobile, Desktop, and Tablet platforms.
- Compare average purchase amounts between customers who used discounts and those who did not.
- Identify the most frequently used payment method.

### Level 2: Intermediate Insights
- Evaluate customer review scores for users of the most popular payment method.
- Analyze the relationship between website engagement time and purchase amount.
- Measure the proportion of satisfied customers who also become return customers.
- Examine the relationship between the number of items purchased and customer satisfaction.
- Identify the location with the second-highest average purchase amount.

### Level 3: Critical Thinking & Business Insights
- Identify the key factors that influence customer retention and repeat purchases.
- Assess the impact of payment methods on customer satisfaction and return rates.
- Evaluate how geographic location affects purchase behavior and delivery performance.
- Generate data-driven business recommendations based on major analytical findings.
- Translate analytical results into actionable strategies for improving customer experience, retention, and revenue growth.
##  Analysis Framework

### 1. Data Cleaning & Preparation

- Converted raw data into CSV format for seamless integration with the PostgreSQL database.
- Standardized column names to ensure SQL compatibility and consistency.
- Validated data types, formats, and field integrity.
- Identified and handled missing values, duplicates, and inconsistencies.
- Applied data governance and data quality rules to maintain reliability and accuracy.
- Prepared and transformed the dataset for statistical analysis, visualization, and dashboard development.

### 2. Exploratory Data Analysis (EDA)

- Analyzed customer demographics and purchasing patterns.
- Evaluated quantity sold and sales distribution across transactions.
- Assessed product category performance and customer preferences.
- Measured customer satisfaction trends and review ratings.
- Examined device usage and payment method preferences.
- Conducted location-based analysis to identify regional differences in customer behavior and sales performance.

### 3. Statistical Analysis 

- Applied Descriptive Statistics to summarize key customer and sales metrics.
- Conducted T-Tests and Mann–Whitney U Tests to compare group differences.
- Performed Chi-Square Tests to evaluate relationships between categorical variables.
- Used One-Way ANOVA and Kruskal–Wallis Tests to compare multiple groups.
- Applied Z-Score Analysis to identify unusual customer behavior and potential outliers.
- Conducted Correlation Analysis to measure relationships between numerical variables.
- Built Machine Learning models to identify factors influencing customer retention and purchasing behavior.
- Performed Feature Importance Analysis to determine the most impactful variables.

### 4. Predictive Analytics
- Return Customer Prediction
- Feature Importance Analysis
- Decision Tree  Analysis


### 5. Prescriptive Analytics

- Developed customer retention strategies to increase repeat purchases and reduce churn.
- Identified revenue growth opportunities through customer behavior analysis.
- Recommended initiatives to enhance customer satisfaction and overall experience.
- Proposed discount and pricing strategies to improve conversion and profitability.
- Evaluated payment methods and digital platforms to optimize the purchasing journey.
- Developed location and delivery strategies to improve operational efficiency and service quality.


## Key Insights

### Customer Behavior

- The average customer age is **43.79 years**, indicating a financially mature and established customer base with stable income and deliberate purchasing behavior.
- **Mobile** is the leading device with **3,374 customers (33.74%)**, though usage is relatively balanced across Mobile, Desktop, and Tablet, showing no extreme platform dominance.
- No single subscription tier dominates the platform, suggesting that engagement, retention, and customer support strategies should be evenly distributed across all segments to support progression from Trial to Premium.
- Customers who used discounts spent an average of **$505.26** (Median: **$507.40**), while non-discount users spent **$502.51** (Median: **$504.78**), showing a very small difference (~$2.75), indicating limited impact of discounts on overall spending behavior.
- The average customer review score is **3.0 out of 5**, indicating moderate satisfaction, with **Rating 4** being the most frequently given score (**2,079 customers**).



### Customer Retention

- **4,996 customers (50%)** are classified as return buyers, indicating a stable loyalty base where one in every two customers makes repeat purchases.
- Discounts are the strongest retention driver — both Logistic Regression and Decision Tree models show that customers who use discounts are significantly more likely to return, making it the most actionable lever for improving retention.
- Time spent on the website is a strong indicator of loyalty — customers with higher engagement duration (12.05% feature importance) are more likely to become repeat buyers, reflecting genuine purchase intent beyond impulse behavior.
- Purchase amount is the most important real-world predictor of retention — the Random Forest model ranked it highest (15.41%), indicating that high-spending customers are more likely to return due to higher product engagement and investment in the platform.


### Payment & Platform Insights

- **Bank Transfer** ranks #1 in both customer usage (**2,067 users / 20.7%**) and revenue (**$1.05M**), making it the most dominant and reliable payment channel that should be prioritized for optimization and stability.
- **PayPal** ranks lowest in both customer usage (**1,915 users / 19.2%**) and revenue (**$0.95M**), yet still contributes nearly $1M in sales, indicating it should be retained while also being targeted for growth and adoption.
- Subscription distribution is highly balanced, with only a **0.92 percentage point difference** between the highest (Premium: 33.69%) and lowest (Trial: 32.77%) segments, showing no dominant subscription tier.
- Device usage is also nearly perfectly distributed, with only a **0.96 percentage point gap** between the highest (Mobile: 33.74%) and lowest (Tablet: 32.78%), confirming a uniform cross-platform customer base.


### Geographic Insights

- **Rajshahi** shows relatively higher delivery times, which is associated with a higher return rate, indicating potential logistics and customer satisfaction issues in this region.
- **Mymensingh** experiences slower delivery performance despite relatively high spending levels, suggesting inefficiencies in delivery operations rather than customer demand.
- A negative correlation (**r ≈ -0.353**) indicates that higher customer spending is slightly associated with faster delivery times.
- Higher return rates are concentrated in regions with slower delivery performance, highlighting delivery speed as a key driver of customer retention and satisfaction.



## Dashboard

The Power BI dashboard provides interactive insights into:

- Executive Dashboard
- Customer Analysis
- Purchase Amount Stats
- DIscount usage Analysis
- Location Analysis

## 💡 Business Recommendations

### 1. Post-Purchase Retention Strategy
Customer engagement drops significantly after the first purchase, indicating a gap in converting first-time buyers into repeat customers, despite consistent service performance across segments.

**Expected Impact:** Improve repeat purchase rate, increase customer lifetime value (CLV), and reduce churn through structured lifecycle engagement.

- Implement personalized product recommendations based on past purchases and browsing behavior.
- Introduce time-limited incentives for second purchases (e.g., discounts, reward points, or free shipping).
- Use behavior-based triggers (e.g., no repeat purchase within 30 days) to activate automated win-back campaigns.

---

### 2. VIP Customer Segmentation Strategy
Approximately **2,000 customers (~20%)** are both highly satisfied (Rating 4–5) and repeat buyers, representing the most valuable customer segment.

**Expected Outcome:** Estimated 5–10% increase in repeat purchases and improved customer lifetime value within 3 months.

- Create a VIP loyalty program for high-value customers.
- Offer exclusive benefits such as priority support, early access to products, and personalized recommendations.
- Strengthen brand loyalty and encourage long-term engagement.

---

### 3. Customer Recovery Strategy
A portion of returning customers with low satisfaction scores (1–3) indicates unresolved experience gaps that may lead to future churn.

- Implement proactive feedback collection through post-purchase surveys.
- Provide personalized follow-ups for dissatisfied returning customers.
- Offer service recovery incentives (refunds, discounts, or replacements) to rebuild trust and improve retention.


##  For Reading the Full Strategic Report

 Download the full PowerPoint presentation here:  
[📥 View Strategic Report (PowerPoint)](your-file-link-here)

##  Tools & Libraries Used

###  Database
- PostgreSQL – Data storage, querying, and management

###  Programming Language
- Python – Data analysis, statistical testing, and machine learning

###  Python Libraries
- Pandas – Data manipulation and analysis
- NumPy – Numerical computations
- Matplotlib – Data visualization
- Seaborn – Statistical visualization
- SciPy – Statistical testing (t-test, ANOVA, Chi-square, etc.)
- Scikit-learn – Machine learning models and evaluation

###  BI Tool
- Power BI – Interactive dashboards and business reporting

###  Other Tools
- Excel – Data cleaning, validation, and quick analysis
- Jupyter Notebook – Code development and experimentation

> This project follows an end-to-end data analytics workflow from raw data extraction to business decision-making using SQL, Python, and BI tools.


## 📁 Project Structure

```plaintext
E-Commerce-Customer-Behavior-Analysis/

├── dataset_and_problem_statement/
│   ├── ecommerce_customer_behavior_dataset.csv
│   ├── metadata.txt
│   ├── business_questions.md
│
├── sql/
│   ├── database_normalization.sql
│   ├── data_cleaning.sql
│
├── python/
│   ├── analysis.ipynb
│
├── powerbi/
│   ├── dashboard.pbix
│
├── reports/
│   ├── strategic_report.pptx
│   ├── charts_and_insights.pptx
│
├── design/
│   ├── dashboard_wireframes_figma_link.txt
│
└── README.md
```  


## 👤 Author


**Yamin Wasi**  
Data Analyst | SQL • Excel • Power BI • Statistics | Driving Business Decisions with Data-Driven Insights



  GitHub      : [WasiAnAnalyst](https://github.com/WasiAnAnalyst)

 LinkedIn     : [Wasi Yamin](https://www.linkedin.com/in/wasi-yamin-50432a373) 

 Upwork       : [View Profile](https://www.upwork.com/freelancers/~0127d93d0656bdf1c3?mp_source=share)  

 X (Twitter)  : [@analystwasi](https://x.com/analystwasi)


## Feedback & Future Improvements

I am always open to feedback, suggestions, and improvements for this project.

If you notice any issues or have ideas to enhance the analysis, feel free to share your thoughts.






