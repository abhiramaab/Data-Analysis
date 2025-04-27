# Sales Data Analysis Project
# Basic to Intermediate Level Analysis

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the data
sales_data = pd.read_csv('sales_data.csv')

# Basic Exploration
print(sales_data.head())
print(sales_data.info())

# Total Revenue Calculation
sales_data['Revenue'] = sales_data['Quantity Ordered'] * sales_data['Price Each']
total_revenue = sales_data['Revenue'].sum()
print(f"Total Revenue: ${total_revenue:.2f}")

# Top-Selling Products
top_products = sales_data.groupby('Product')['Quantity Ordered'].sum().sort_values(ascending=False)
print("Top Selling Products:")
print(top_products)

# Sales by City
sales_data['City'] = sales_data['Purchase Address'].apply(lambda x: x.split(',')[0])
city_sales = sales_data.groupby('City')['Revenue'].sum().sort_values(ascending=False)
print("Sales by City:")
print(city_sales)

# Visualization 1: Top Products
plt.figure(figsize=(10,6))
sns.barplot(x=top_products.values, y=top_products.index, palette='viridis')
plt.title('Top Selling Products')
plt.xlabel('Units Sold')
plt.ylabel('Product')
plt.tight_layout()
plt.savefig('top_products.png')
plt.show()

# Visualization 2: Revenue by City
plt.figure(figsize=(10,6))
sns.barplot(x=city_sales.values, y=city_sales.index, palette='plasma')
plt.title('Revenue by City')
plt.xlabel('Revenue ($)')
plt.ylabel('City')
plt.tight_layout()
plt.savefig('revenue_by_city.png')
plt.show()
