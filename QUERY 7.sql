SELECT 
    DISTINCT Medications, 
    COUNT(*) AS UsageCount
FROM 
    us_healthcare
GROUP BY 
    Medications
ORDER BY 
    UsageCount DESC;    
