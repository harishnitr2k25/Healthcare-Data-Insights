SELECT count(distinct Doctor) FROM us_healthcare ;      
SELECT max(distinct Doctor) FROM us_healthcare ;
SELECT 
    Doctor, 
    COUNT(*) AS Treated
FROM 
    us_healthcare
GROUP BY 
    Doctor
ORDER BY 
    Treated DESC
LIMIT 1;