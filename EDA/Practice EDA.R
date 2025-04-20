library(dplyr)

sales_data <- data.frame(
  OrderID = c(101, 102, 103, 104, 105, 106, 107, 108, 109, 110),
  ProductID = c("P1", "P2", "P3", "P1", "P4", "P2", "P5", "P3", "P4", "P1"),
  ProductName = c("Laptop", "T-Shirt", "Book", "Laptop", "Headphones", "T-Shirt", "Smartphone", "Book", "Headphones", "Laptop"),
  Category = c("Electronics", "Clothing", "Books", "Electronics", "Electronics", "Clothing", "Electronics", "Books", "Electronics", "Electronics"),
  Region = c("North", "South", "East", "West", "North", "East", "South", "West", "East", "North"),
  SalesAmount = c(1200, 25, 30, 1300, 150, 28, 800, 32, 160, 1250),
  Quantity = c(1, 2, 3, 1, 1, 2, 1, 4, 2, 1)
)

sales_data

# Filter by Category and Region: 
#Use dplyr's filter() to select only the rows 
# where the Category is "Electronics" and the Region is "North"
result <- sales_data %>% filter(Category=="Electronics" & Region=="North")
result

#  Select Specific Columns:
# Use dplyr's select() to choose 
# the OrderID, ProductName, SalesAmount columns from the filtered data.
result2 = sales_data %>% select(OrderID, ProductName, SalesAmount)
result2

# Calculate Total Sales for Each Product: 
# Use pipes (%>%), group_by(), and summarize() to calculate 
# the total SalesAmount for each ProductName in the original sales_data data frame.   
result3 = sales_data %>% group_by(ProductName) %>% summarise(Total_Sales = sum(SalesAmount))
result3

# Filter and Sort High Sales: 
# Use pipes to filter the original data frame for sales greater than $500, 
#select the ProductName, SalesAmount and sort the result in descending order by SalesAmount.
result4 = sales_data %>% filter(SalesAmount>500) %>% 
          select(ProductName, SalesAmount) %>% 
          arrange(desc(SalesAmount))
result4

knitr::stitch_rhtml('17.r')
