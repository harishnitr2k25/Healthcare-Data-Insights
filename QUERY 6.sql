SELECT 
    Medical_Condition, 
    AVG(DATEDIFF(Discharge_Date,Date_of_Admission)) AS AvgStayDays
FROM 
    us_healthcare
GROUP BY 
    Medical_Condition
order by 
	AvgStayDays desc;