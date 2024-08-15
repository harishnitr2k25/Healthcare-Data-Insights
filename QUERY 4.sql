SELECT max(distinct Insurance_Provider) FROM us_healthcare ;
SELECT 
    Insurance_Provider, 
    COUNT(*) AS Insproviders
FROM 
    us_healthcare
GROUP BY 
      Insurance_Provider
HAVING COUNT(*) > 10000 ;