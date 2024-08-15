SELECT 
    Blood_Type, 
    COUNT(*) AS NumberOfPatients
FROM 
    us_healthcare
GROUP BY 
    Blood_Type
ORDER BY 
    NumberOfPatients DESC;