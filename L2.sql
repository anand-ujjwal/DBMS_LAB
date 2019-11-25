L2. Arogya 1.0 and Arogya 2.0
a. Validate and ask the improvements in ER diagram of from Arogya 1.0 to
Arogya 2.0
b. Table creation using DDLs with all possible constraint.
c. Careful selection of Data types and ask for justifications
d. How many total queries he has mailed -----
e. List of patients that a doctor has given consolation on a particular DATE.
f. Who is the popular doctor?
g. Has attempted trigger to avoid more than 20 appointments for doctors?


==========AROGYA1==============

CREATE TABLE PATIENT
(
AadhaarNo NUMERIC(10) NOT NULL,
DoB DATE NOT NULL,
Height NUMERIC(3) NOT NULL,
Weight NUMERIC(3) NOT NULL,
Address VARCHAR(50) NOT NULL,
PRIMARY KEY (AadhaarNo)
);
CREATE TABLE DEPARTMENT
(
DNumber NUMERIC(2) NOT NULL,
DName VARCHAR(25) NOT NULL,
PRIMARY KEY (DNumber)
);
CREATE TABLE DOCTOR
(
Name VARCHAR(30) NOT NULL,
DocID NUMERIC(4) NOT NULL,
AadhaarNo NUMERIC(10) NOT NULL,
Designation VARCHAR(10) NOT NULL,
Specialization VARCHAR(15) NOT NULL,
DNumber NUMERIC(2) NOT NULL,
PRIMARY KEY (DocID),
FOREIGN KEY (DNumber) REFERENCES Department(DNumber),
UNIQUE (AadhaarNo)
);
CREATE TABLE CONSULTS
(
Date DATE NOT NULL,
AadhaarNo NUMERIC(10) NOT NULL,
DocID NUMERIC(4) NOT NULL,
PRIMARY KEY (AadhaarNo, DocID),
FOREIGN KEY (AadhaarNo) REFERENCES PATIENT(AadhaarNo),
FOREIGN KEY (DocID) REFERENCES DOCTOR(DocID)
);

--------------------------------------------

INSERT INTO PATIENT VALUES ( 6532986530, ‘1962-12-30’, 170, 92, 'Vidyagiri, Dharwad,
Karnataka');
INSERT INTO DOCTOR VALUES ( ‘Nagaraj’, 1212, 7772986660, ’Asst Prof’, ’Spine’, 2,);
INSERT INTO DEPARTMENT VALUES ( 2, ‘Ortho’);