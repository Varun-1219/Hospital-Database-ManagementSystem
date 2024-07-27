
-- writing sql queries -- 

-- write a query in sql to find the details of nurse who is yet to be registered.
SELECT * FROM nurse 
WHERE registered = 'f';

-- write a query to find the name of the nurse who are the head of their department.
SELECT * FROM nurse WHERE position = 'Head Nurse';

-- Write a query in SQL to obtain the name of the physicians who are the head of each department
SELECT p.name AS EmployeeName  , d.name AS DepartmentName FROM physician p 
JOIN department d 
ON p.employeeid = d.head;

-- Write a query in SQL to count the number of patients who taken appointment with at least one physician
SELECT COUNT(DISTINCT patient) AS Patient_Count FROM appointment;

-- Write a query in SQL to find the floor and block where the room number 212 belongs to
SELECT blockfloor , blockcode, roomnumber 
FROM room 
WHERE roomnumber = 212;

-- Write a query in SQL to count the number available rooms.
SELECT COUNT(unavailable) AS NUMBER_OF_AVAILABLE_ROOMS
FROM room
WHERE unavailable ='f';

-- Write a query in SQL to count the number of unavailable rooms.
SELECT COUNT(unavailable) AS NUMBER_OF_UNAVAILABLE_ROOMS
FROM room
WHERE unavailable ='t';

-- Write a query in SQL to obtain the name of the physician and the departments they are affiliated with
SELECT employeeid, p.name AS Physician_name , d.name AS Department_name FROM 
physician p 
INNER JOIN affiliated_with a
 ON p.employeeid = a.physician
INNER JOIN department d
ON a.department = d.department_id
WHERE primaryaffiliation = 't';

-- Write a query in SQL to obtain the name of the physicians who are trained for a special treatement.
SELECT employeeid , name  
FROM physician 
WHERE employeeid IN (
SELECT DISTINCT physician FROM trained_in);

-- Write a query in SQL to obtain the name of the physicians with department who are yet to be affiliated
SELECT p.name,d.name FROM physician p
INNER JOIN affiliated_with a
ON p.employeeid = a.physician
INNER JOIN department d
ON a.department = d.department_id
WHERE primaryaffiliation='f';

-- Write a query in SQL to obtain the name of the physicians who are not a specialized physician
SELECT  name AS not_specialized_physicians
FROM physician
WHERE employeeid NOT IN (SELECT DISTINCT physician
                        FROM trained_in);


-- Write a query in SQL to obtain the name of the patients with their physicians by whom they got their preliminary treatement
SELECT p.name AS patient_name,ph.name AS phy_who_did_pri_treatment
FROM patient p
INNER JOIN physician ph
ON ph.employeeid = p.pcp;

-- Write a query in SQL to find the name of the patients and the number of physicians they have taken appointment
SELECT p.name AS patient_name,COUNT(DISTINCT physician) AS no_of_phy_tkn_apmnt_frm
FROM patient p
INNER JOIN appointment a
ON p.ssn = a.patient
GROUP BY p.name;
                    
-- Write a query in SQL to count number of unique patients who got an appointment for examination room C.    
SELECT examinationroom,COUNT(DISTINCT patient)
FROM appointment
GROUP BY examinationroom
HAVING examinationroom='C';



