select distinct Hospital from us_healthcare ;
select count(distinct Hospital) from us_healthcare ;
SELECT 
    Hospital, 
    COUNT(*) AS NumberOfPatients
FROM 
    us_healthcare
GROUP BY 
    Hospital;

SELECT DISTINCT Hospital 
FROM us_healthcare
GROUP BY Hospital
HAVING COUNT(*) > 35;