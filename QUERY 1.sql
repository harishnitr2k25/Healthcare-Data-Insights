SELECT COUNT(*) AS totalppl
FROM us_healthcare
WHERE DATEDIFF(Discharge_Date,Date_of_Admission ) < 7;

SELECT 
    CASE 
        WHEN COUNT(*) > (SELECT COUNT(P_No) / 2 FROM us_healthcare) 
        THEN 'Majority stayed for less than 7 days' 
        ELSE 'Majority stayed for 7 days or more' 
    END AS Stay
FROM us_healthcare
WHERE DATEDIFF(Discharge_Date,Date_of_Admission) < 7;