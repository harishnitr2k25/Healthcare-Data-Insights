/*THE BELOW QUERY GIVES THE COUNT OF PATIENTS EMERGENCY ADMITTED */


	WITH AvgStay AS (
    SELECT 
        AVG(DATEDIFF(Discharge_Date, Date_of_Admission)) AS AvgStayDays
    FROM 
        us_healthcare
)
SELECT 
    COUNT(*) AS NumberOfPatients
FROM 
    us_healthcare
WHERE 
    Admission_Type = 'emergency'
    AND DATEDIFF(Discharge_Date, Date_of_Admission) < (SELECT AvgStayDays FROM AvgStay);
    
    
    /*THE BELOW QUERY GIVES THE DETAILS OF EACH PATIENT EMERGENCY ADMITTED */
    SELECT 
    P_No, 
    Patient_Name, 
    Gender, 
    Age, 
    Admission_Type, 
    DATEDIFF(Discharge_Date, Date_of_Admission) AS StayDays
FROM 
    us_healthcare
WHERE 
    Admission_Type = 'emergency'
    AND DATEDIFF(Discharge_Date, Date_of_Admission) < (SELECT AvgStayDays FROM AvgStay);
    
    
    
    