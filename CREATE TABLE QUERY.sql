use healthcare;
CREATE TABLE us_healthcare (
    P_No INT NOT NULL,
    Patient_Name VARCHAR(255) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(255) NOT NULL,
    Blood_type VARCHAR(255) NOT NULL,
    Medical_Condition VARCHAR(255) NOT NULL,
    Date_of_Admission DATE NOT NULL,
    Doctor VARCHAR(255) NOT NULL,
    Hospital VARCHAR(255) NOT NULL,
    Insurance_Provider VARCHAR(255) NOT NULL,
    Billing_Amount FLOAT NOT NULL,
    Room_Number INT NOT NULL,
    Admission_type VARCHAR(255) NOT NULL,
    Discharge_Date DATE NOT NULL,
    Medications VARCHAR(255) NOT NULL,
    Test_Results VARCHAR(255) NOT NULL
);

/*After creating the table in mysql workbench. 
The data have been exported in the existing table with the help of CSV file and further operations have been performed. */


show databases;
show tables;
select * from us_healthcare ;
select count(*) from us_healthcare;
