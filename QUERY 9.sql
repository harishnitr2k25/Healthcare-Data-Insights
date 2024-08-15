SELECT 
    CASE 
        WHEN Age BETWEEN 0 AND 3 THEN 'Infants'
        WHEN Age BETWEEN 4 AND 12 THEN 'School-aged Child'
        WHEN Age BETWEEN 13 AND 19 THEN 'Teenagers'
        WHEN Age BETWEEN 20 AND 40 THEN 'Adults'
        WHEN Age BETWEEN 41 AND 60 THEN 'Aged'
        ELSE 'Senior Citizens'
    END AS AgeGroup,
    Gender,
    COUNT(*) AS TotalCount
FROM us_healthcare
GROUP BY 
    AgeGroup, Gender
ORDER BY 
    AgeGroup ASC, Gender ASC;