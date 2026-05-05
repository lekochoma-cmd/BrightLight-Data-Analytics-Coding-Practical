--- Q1 Display all columns for all transactions
SELECT*FROM `workspace`.`default`.`retail_sales_dataset`LIMIT 1000;


---Display only the transaction ID, Date ,customer ID
SELECT 'Transaction ID',
       'Date',
       'Customer ID'
FROM `workspace`.`default`.`retail_sales_dataset`;

---Q3. Display all the distinct product categories in the dataset.
SELECT DISTINCT 'Product Category'
FROM `workspace`.`default`.`retail_sales_dataset` ;

---Q4 Display all the distinct gender values in the dataset.
SELECT DISTINCT Gender
FROM `workspace`.`default`.`retail_sales_dataset`;

---Q5 Display all transactions where the Age is greater than 40. 
SELECT AGE
FROM `workspace`.`default`.`retail_sales_dataset`
WHERE AGE >40;

---Q6 Display all transactions where the Price per Unit is between 100 and 500.
SELECT Price per Unit
FROM `workspace`.`default`.`retail_sales_dataset`
WHERE Price per Unit >100<500;

---Q7. Display all transactions where the Product Category is either 'Beauty' or Electronics.
SELECT Product Category
FROM `workspace`.`default`.`retail_sales_dataset`
WHERE IS= BEAUTY OR ELECTRONICS;

---Q8. Display all transactions where the Product Category is not 'Clothing'
SELECT Product Category
FROM  `workspace`.`default`.`retail_sales_dataset`
WHERE Product Category IS NOT CLOTHING;

---Q9. Display all transactions where the Quantity is greater than or equal to 3.
SELECT Quantity
FROM  `workspace`.`default`.`retail_sales_dataset`
WHERE Quantity >= 3;

---Q10. Count the total number of transactions.
SELECT 
      COUNT(*) Transaction ID AS TOTAL_NUMBER_OF_TRANSACTIOUNS
FROM`workspace`.`default`.`retail_sales_dataset`;

---Q11. Find the average Age of customers.
SELECT  Age,
       AVG(*) AS AVERAGE_AGE
FROM`workspace`.`default`.`retail_sales_dataset`;

---Q12. Find the total quantity of products sold.
SELECT Quantity,
COUNT(DISTINCT Quantity) AS TOTAL_NUMBER_OF_QUANTITY
FROM`workspace`.`default`.`retail_sales_dataset`;

---Q13. Find the maximum Total Amount spent in a single transaction.
SELECT 
       MAX(*)AS Total_Amount
FROM `workspace`.`default`.`retail_sales_dataset`;

---Q14. Find the minimum Price per Unit in the dataset.
SELECT MIN(Price per Unit) AS MINIMUM_PRICE_PER_UNIT
FROM `workspace`.`default`.`retail_sales_dataset`;

---Q15. Find the number of transactions per Product Category.
SELECT Product Category,
       COUNT(DISTINCT Product Category) AS  TRANSACTION_PER_PRODUCT
FROM `workspace`.`default`.`retail_sales_dataset`
GROUP BY Product Category;

---Q16. Find the total revenue (Total Amount) per gender.
SELECT Total Amount,
       Gender
FROM `workspace`.`default`.`retail_sales_dataset`
GROUP BY Gender,
         Total Amount;

---Q17. Find the average Price per Unit per product category.
SELECT Price per Unit,
      Product Category,
      AVG(DISTINCT Price per Unit ) AS AVERAGE_PER_PRODUCT_CATEGORY
FROM `workspace`.`default`.`retail_sales_dataset`
GROUP BY AVERAGE_PER_PRODUCT_CATEGORY;

---Q18. Find the total revenue per product category where total revenue is greater than 10,000.
SELECT SUM(Total Amount) AS TOTAL_REVENUE
FROM `workspace`.`default`.`retail_sales_dataset`
GROUP BY Product Category
WHERE IS >=10000;

---Q19. Find the average quantity per product category where the average is more than 2.
SELECT AVG(Quantity) AS AVERAGE_PER_PRODUCT_CATEGORY
FROM `workspace`.`default`.`retail_sales_dataset`
GROUP BY Product Category,
         Quantity,
WHERE IS > 2;

---Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000, otherwise 'Low'
SELECT Transaction ID,
       Total Amount,   
    CASE  
            WHEN(Spending_Level)>1000 THEN 'HIGH'
            ELSE 'LOW'
            END AS Spending_level
FROM `workspace`.`default`.`retail_sales_dataset`;

---Q21. Display a new column called Age_Group that labels customers as:

SELECT CUSTOMER ID, 
       AGE,
      CASE 
            WHEN (AGE_GROUP)< 30 THEN 'YOUNG'
            WHEN (AGE_GROUP)BETWEEN 30 AND 59 THEN 'ADULT'
            WHEN (AGE_GROUP)>60 THEN 'SENIOR'
            END AS AGE_GROUP
FROM `workspace`.`default`.`retail_sales_dataset`;
