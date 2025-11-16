
# Car Sales Analysis Case Study

## 📌 Overview

This case study explores a comprehensive analysis of a car sales dataset. The goal was to clean the data, categorize vehicle performance, and uncover insights that help identify best-performing models, pricing trends, and profit behaviors.

---

## 🔍 What Was Done

### **1. Data Cleaning & Preparation**

* Cleaned the `saledate` column by parsing messy timestamp formats.
* Extracted **day name**, **month**, **year**, and **time** components from the sale date.
* Handled nulls in date fields using fallback timestamp values.
* Standardized car model names by identifying true alphanumeric models and labeling invalid entries as **"Unknown"**.
* Grouped mileage into categories (e.g., Low, Medium, High).

### **2. Feature Engineering**

* Calculated **profit** and **profit_margin** for each car.
* Categorized cars into **performance tiers**:

  * **High Margin**
  * **Medium Margin**
  * **Low Margin**
* Created year categories such as:

  * **Eighties**
  * **Nineties**
  * **Two-Thousands**
  * **Twenty-Tens**
  * **Twenty-Twenties**

### **3. Car Performance Ranking**

* Ranked models by total revenue.
* Identified which models generated the most profit.
* Created aggregated summary tables for margin categories.

---

## 📊 Key Insights

### **1. Margin Category Results**

| Margin Category | Total Revenue |
| --------------- | ------------- |
| High Margin     | 230,000       |
| Medium Margin   | 328,600       |
| Low Margin      | 7,605,453,687 |

🔎 **Insight:** Low-margin cars dominated total revenue, suggesting high volume but small profit per sale. High-margin cars are fewer but more profitable individually.

### **2. Best Performing Models**

* The dataset shows the **best-performing car model** based on revenue and frequency of sale.
* Certain models consistently deliver higher profit margins.

### **3. Time-Based Patterns**

* Sales distribution varies across weekdays and months.
* Useful for planning peak sales periods and marketing campaigns.

### **4. Mileage Impact**

* Cars with lower mileage generally attract higher pricing.
* High-mileage cars appear more frequently in low-margin categories.

---

## 🛠 Tools Used

* **SQL (Snowflake)** – data cleaning, transformation, feature engineering, calculations
* **Excel** – initial data exploration and pivot analysis
* **Canva / Miro** – planning and presentation

---

