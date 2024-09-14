# Customer Sentiment And Trend Analysis For Flipkart
## Project Objective
In this project, data analysis reveals customer sentiment towards various products and examines how product range influences customer behavior and satisfaction.

## Complete Analysis Report
To see project's full analysis report [Click here](https://github.com/PrateekSharma8368/customer-sentiment-and-trend-analysis-for-flipkart/blob/main/complete%20report%20of%20customer%20sentiment%20and%20trends%20analysis%20for%20flipkart/complete%20report%20of%20customer%20sentiment%20and%20trends%20analysis%20for%20flipkart.pdf)

## Key Objectives
* Analyze customer sentiment (positive, negative, neutral) across different products.
* Identify trends in customer ratings and their relationship with product prices.
* Provide actionable insights into how product attributes affect customer behavior.

## Data Source
The data used in this project was sourced from Kaggle's open data for Flipkart product reviews.
[click here to view/download Raw data used](https://github.com/PrateekSharma8368/customer-sentiment-and-trend-analysis-for-flipkart/blob/main/sentiment_and_trends_data/raw_review_sentiment_dataset/raw_review_sentiment_dataset.csv)

## Tools Used
* GoogleSheets for data organization, preparation and cleaning.
* R programming language for data analysis and creaing visuals.
* Tableau for creating dashboard.

## Data preparation and cleaning
* **Data Collection:** Organized dataset and loaded into Google Sheets for review.
* **Handling Missing Values:** Removed rows with missing or unspecified review data.
* **Duplicate Removal:** Removed 34,319 duplicates, leaving 170,279 rows for analysis.
* **Sentiment Conversion:** Converted sentiments into numerical values (Positive = 1, Neutral = 0, Negative = -1).
* **Data Validation:** Final checks ensured consistent data formatting.

## Data Analysis
[Click here to see complete data anlysis R code](https://github.com/PrateekSharma8368/customer-sentiment-and-trend-analysis-for-flipkart/blob/main/data%20analysis%20R%20code/complete%20data%20analysis%20R%20code%20(1).R)
Data analysis was conducted in RStudio using libraries such as **ggplot2**, **dplyr**, **tidyr**, and **tm**. The analysis focused on uncovering relationships between product prices, customer ratings, and sentiment. The following key insights were derived:

* **Correlation Analysis:**

  * **Product Price vs. Rating:** A weak positive correlation (0.074) was observed, indicating that price and rating are not significantly related.
  * **Rating vs. Sentiment:** A strong positive correlation (0.803) was identified, showing that higher ratings align with more positive customer sentiments.
  * **Product Price vs. Sentiment:** A minimal correlation (0.049) was found, suggesting that price has little influence on customer sentiment.
    
* **Visual Explorations:**
[Click here to see dashboard](https://github.com/PrateekSharma8368/customer-sentiment-and-trend-analysis-for-flipkart/blob/main/data%20visuals%20dashboard/Dashboard%201%20(1).png)
  * **Histogram of Product Prices:** Most products were priced below ₹10,000, with fewer high-priced items, reflecting Flipkart's focus on affordable offerings.
  * **Bar Plot of Ratings:** The majority of products received high ratings, with a notable concentration of 5-star reviews. However, there was still a significant portion of 1-star to 3-star reviews, indicating room for improvement.
  * **Pie Chart of Sentiments:** Positive sentiment dominated the reviews, but negative and neutral sentiments were also present, providing insight into areas that may need attention.
  * **Scatter Plot of Price vs. Rating:** A slight positive trend was observed, with higher-priced products generally receiving better ratings.
  * **Box Plot of Price by Sentiment:** The price distribution was similar across sentiment categories, though negative sentiments were associated with a wider price range.

* **Word Cloud for Review Analysis:**
  * The word cloud revealed that positive terms like "good," "excellent," and "recommended" appeared frequently in customer reviews, while negative words like "bad" and "poor" highlighted areas of dissatisfaction.

This analysis provided comprehensive insights into how product pricing, ratings, and customer sentiment interact, offering Flipkart valuable direction for improving customer experience and product offerings.

## Key Takeaways
1. **Positive Sentiment:** Most reviews reflect customer satisfaction.
2. **Affordable Pricing:** Flipkart’s offerings cater to budget-conscious consumers, with higher-priced items still well-received.
3. **Improvement Areas:** Focus needed on low-rated products and high-priced items with negative feedback.

## Top 3 Recommendations
1. **Improve Product Quality for High-Priced Items:** Focus on enhancing quality control to reduce dissatisfaction.
2. **Address Low-Rated Products:** Improve customer service and product quality for low-rated items.
3. **Leverage Positive Reviews:** Use customer testimonials in marketing campaigns to highlight satisfaction and trustworthiness.
