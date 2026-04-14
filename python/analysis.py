# E-commerce Sales Analysis
# Author: Your Name
# Tools: Python (Pandas)
# Objective: Analyze sales trends and generate insights

import pandas as pd

# Load data
df = pd.read_csv('../data/orders_sample.csv')

# Clean
df = df.drop(columns=['Unnamed: 22'], errors='ignore')

# Convert date
df['Date'] = pd.to_datetime(df['Date'], errors='coerce')

# Total revenue
print("Total Revenue:", df['Amount'].sum())

# Top categories
print("\nTop Categories:")
print(df.groupby('Category')['Amount'].sum().sort_values(ascending=False).head())

# Top states
print("\nTop States:")
print(df.groupby('ship-state')['Amount'].sum().sort_values(ascending=False).head())