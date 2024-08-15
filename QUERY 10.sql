 SELECT 
    CASE 
        WHEN Billing_Amount BETWEEN 1 AND 10000 THEN 'Low'
        WHEN Billing_Amount BETWEEN 10001 AND 40000 THEN 'Middling'
         ELSE 'High'
	END AS BillingCategory,
    COUNT(*) AS TotalCount
FROM 
    us_healthcare
GROUP BY 
    BillingCategory
ORDER BY 
    BillingCategory ASC;  