CREATE DATABASE insuranceDomain;

USE insuranceDomain;

------ 1. create branches table ----------
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    manager_name VARCHAR(100),
    phone VARCHAR(20)
);


INSERT INTO Branches 
(branch_id, branch_name, city, state, manager_name, phone)
VALUES
(1, 'Main Branch', 'Mumbai', 'Maharashtra', 'Rajesh Sharma', '9876543210'),
(2, 'Andheri Branch', 'Mumbai', 'Maharashtra', 'Priya Patil', '9876543211'),
(3, 'Pune Central', 'Pune', 'Maharashtra', 'Amit Kulkarni', '9876543212'),
(4, 'Kothrud Branch', 'Pune', 'Maharashtra', 'Sneha Joshi', '9876543213'),
(5, 'Nashik Branch', 'Nashik', 'Maharashtra', 'Rohit Deshmukh', '9876543214'),
(6, 'Nagpur Branch', 'Nagpur', 'Maharashtra', 'Neha More', '9876543215'),
(7, 'Thane Branch', 'Thane', 'Maharashtra', 'Sanjay Pawar', '9876543216'),
(8, 'Vashi Branch', 'Navi Mumbai', 'Maharashtra', 'Pooja Shinde', '9876543217'),
(9, 'Bangalore Central', 'Bangalore', 'Karnataka', 'Vikram Rao', '9876543218'),
(10, 'Whitefield Branch', 'Bangalore', 'Karnataka', 'Anjali Nair', '9876543219'),
(11, 'Chennai Central', 'Chennai', 'Tamil Nadu', 'Arun Kumar', '9876543220'),
(12, 'Coimbatore Branch', 'Coimbatore', 'Tamil Nadu', 'Divya Iyer', '9876543221'),
(13, 'Hyderabad Central', 'Hyderabad', 'Telangana', 'Kiran Reddy', '9876543222'),
(14, 'Secunderabad Branch', 'Secunderabad', 'Telangana', 'Meena Rao', '9876543223'),
(15, 'Delhi Central', 'New Delhi', 'Delhi', 'Rahul Verma', '9876543224'),
(16, 'Noida Branch', 'Noida', 'Uttar Pradesh', 'Kavita Singh', '9876543225'),
(17, 'Lucknow Branch', 'Lucknow', 'Uttar Pradesh', 'Manish Gupta', '9876543226'),
(18, 'Ahmedabad Branch', 'Ahmedabad', 'Gujarat', 'Nitin Shah', '9876543227'),
(19, 'Surat Branch', 'Surat', 'Gujarat', 'Riya Mehta', '9876543228'),
(20, 'Jaipur Branch', 'Jaipur', 'Rajasthan', 'Deepak Jain', '9876543229'),
(21, 'Kolkata Central', 'Kolkata', 'West Bengal', 'Sourav Das', '9876543230'),
(22, 'Bhopal Branch', 'Bhopal', 'Madhya Pradesh', 'Anita Verma', '9876543231'),
(23, 'Indore Branch', 'Indore', 'Madhya Pradesh', 'Akash Tiwari', '9876543232'),
(24, 'Kochi Branch', 'Kochi', 'Kerala', 'Suresh Menon', '9876543233'),
(25, 'Chandigarh Branch', 'Chandigarh', 'Chandigarh', 'Simran Kaur', '9876543234');

SELECT * FROM Branches;


------- 2. create agent table ------------
CREATE TABLE Agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(100) NOT NULL,
    branch_id INT NOT NULL,
    joining_date DATE,
    experience_years INT,
    commission_rate DECIMAL(5,2),
    status VARCHAR(20),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

INSERT INTO Agents
(agent_id, agent_name, branch_id, joining_date, experience_years, commission_rate, status)
VALUES
(1, 'Aarav Mehta', 1, '2021-06-15', 5, 2.50, 'Active'),
(2, 'Snehal Patil', 2, '2022-03-10', 4, 2.75, 'Active'),
(3, 'Rohan Kulkarni', 3, '2020-08-20', 6, 3.00, 'Active'),
(4, 'Pallavi Joshi', 4, '2023-01-12', 3, 2.25, 'Active'),
(5, 'Vishal Deshmukh', 5, '2019-11-05', 7, 3.25, 'Active'),
(6, 'Isha More', 6, '2022-07-18', 4, 2.50, 'Active'),
(7, 'Kunal Pawar', 7, '2021-02-25', 5, 2.80, 'Active'),
(8, 'Shruti Shinde', 8, '2023-06-01', 3, 2.20, 'Active'),
(9, 'Rahul Rao', 9, '2018-09-14', 8, 3.50, 'Active'),
(10, 'Ananya Nair', 10, '2021-12-20', 5, 2.90, 'Active'),
(11, 'Arjun Kumar', 11, '2020-04-16', 6, 3.10, 'Active'),
(12, 'Divya Iyer', 12, '2023-02-08', 3, 2.40, 'Active'),
(13, 'Karthik Reddy', 13, '2019-07-22', 7, 3.30, 'Active'),
(14, 'Meena Rao', 14, '2022-10-11', 4, 2.65, 'Active'),
(15, 'Ravi Verma', 15, '2018-05-30', 8, 3.60, 'Active'),
(16, 'Kavya Singh', 16, '2021-09-17', 5, 2.85, 'Active'),
(17, 'Manish Gupta', 17, '2020-12-03', 6, 3.00, 'Active'),
(18, 'Nitin Shah', 18, '2019-03-19', 7, 3.40, 'Active'),
(19, 'Riya Mehta', 19, '2022-01-24', 4, 2.70, 'Active'),
(20, 'Deepak Jain', 20, '2017-08-09', 9, 3.75, 'Active'),
(21, 'Sourav Das', 21, '2021-04-12', 5, 2.95, 'Active'),
(22, 'Anita Verma', 22, '2023-03-15', 3, 2.30, 'Active'),
(23, 'Akash Tiwari', 23, '2020-06-28', 6, 3.15, 'Active'),
(24, 'Suresh Menon', 24, '2018-11-16', 8, 3.55, 'Active'),
(25, 'Simran Kaur', 25, '2022-05-05', 4, 2.60, 'Active');

SELECT * FROM Agents;


------- 3. create table employees -------
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    branch_id INT NOT NULL,
    designation VARCHAR(60),
    joining_date DATE,
    salary DECIMAL(12,2),
    status VARCHAR(20),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

INSERT INTO Employees
(employee_id, employee_name, branch_id, designation, joining_date, salary, status)
VALUES
(1, 'Aditya Sharma', 1, 'Branch Executive', '2021-04-12', 42000.00, 'Active'),
(2, 'Neha Patil', 2, 'Customer Executive', '2022-07-18', 38000.00, 'Active'),
(3, 'Rohan Kulkarni', 3, 'Senior Executive', '2020-02-15', 52000.00, 'Active'),
(4, 'Pooja Joshi', 4, 'Account Executive', '2023-01-20', 36000.00, 'Active'),
(5, 'Vivek Deshmukh', 5, 'Branch Officer', '2019-08-10', 58000.00, 'Active'),
(6, 'Kiran More', 6, 'Customer Executive', '2022-05-25', 39000.00, 'Active'),
(7, 'Sahil Pawar', 7, 'Operations Executive', '2021-11-14', 45000.00, 'Active'),
(8, 'Riya Shinde', 8, 'Account Executive', '2023-03-08', 37000.00, 'Active'),
(9, 'Vikram Rao', 9, 'Senior Manager', '2018-06-19', 72000.00, 'Active'),
(10, 'Anjali Nair', 10, 'Branch Executive', '2021-09-12', 44000.00, 'Active'),
(11, 'Arun Kumar', 11, 'Operations Officer', '2020-10-05', 55000.00, 'Active'),
(12, 'Divya Iyer', 12, 'Customer Executive', '2023-02-17', 35000.00, 'Active'),
(13, 'Karthik Reddy', 13, 'Branch Officer', '2019-04-22', 61000.00, 'Active'),
(14, 'Meena Rao', 14, 'Account Executive', '2022-08-30', 40000.00, 'Active'),
(15, 'Rahul Verma', 15, 'Senior Manager', '2017-12-11', 75000.00, 'Active'),
(16, 'Kavita Singh', 16, 'Customer Executive', '2021-06-24', 41000.00, 'Active'),
(17, 'Manish Gupta', 17, 'Operations Executive', '2020-03-16', 48000.00, 'Active'),
(18, 'Nitin Shah', 18, 'Branch Officer', '2019-09-05', 60000.00, 'Active'),
(19, 'Riya Mehta', 19, 'Account Executive', '2022-02-14', 39000.00, 'Active'),
(20, 'Deepak Jain', 20, 'Senior Manager', '2017-05-18', 78000.00, 'Active'),
(21, 'Sourav Das', 21, 'Branch Executive', '2021-08-09', 43000.00, 'Active'),
(22, 'Anita Verma', 22, 'Customer Executive', '2023-04-21', 36000.00, 'Active'),
(23, 'Akash Tiwari', 23, 'Operations Officer', '2020-07-13', 54000.00, 'Active'),
(24, 'Suresh Menon', 24, 'Branch Officer', '2018-11-27', 63000.00, 'Active'),
(25, 'Simran Kaur', 25, 'Account Executive', '2022-06-06', 40000.00, 'Active');

SELECT * FROM Employees;


------- 4. create customers table -----------
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    marital_status VARCHAR(20),
    occupation VARCHAR(80),
    annual_income float,
    city VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO Customers
(customer_id, customer_name, gender, date_of_birth, marital_status, occupation, annual_income, city, state)
VALUES
(1, 'Amit Patil', 'Male', '1995-04-12', 'Married', 'Software Engineer', 850000, 'Pune', 'Maharashtra'),
(2, 'Sneha Sharma', 'Female', '1998-08-25', 'Single', 'Data Analyst', 720000, 'Mumbai', 'Maharashtra'),
(3, 'Rahul Deshmukh', 'Male', '1990-01-18', 'Married', 'Business Owner', 1250000, 'Nashik', 'Maharashtra'),
(4, 'Priya Kulkarni', 'Female', '1997-06-30', 'Single', 'Teacher', 550000, 'Pune', 'Maharashtra'),
(5, 'Vikas More', 'Male', '1988-11-09', 'Married', 'Bank Manager', 1100000, 'Nagpur', 'Maharashtra'),
(6, 'Neha Joshi', 'Female', '1996-03-15', 'Single', 'HR Executive', 650000, 'Thane', 'Maharashtra'),
(7, 'Sanjay Pawar', 'Male', '1985-07-22', 'Married', 'Sales Manager', 950000, 'Navi Mumbai', 'Maharashtra'),
(8, 'Pooja Shinde', 'Female', '1999-12-05', 'Single', 'Graphic Designer', 480000, 'Pune', 'Maharashtra'),
(9, 'Arjun Rao', 'Male', '1992-09-14', 'Married', 'Civil Engineer', 780000, 'Bangalore', 'Karnataka'),
(10, 'Anjali Nair', 'Female', '1995-02-28', 'Single', 'Accountant', 620000, 'Bangalore', 'Karnataka'),
(11, 'Karthik Kumar', 'Male', '1987-05-19', 'Married', 'IT Manager', 1350000, 'Chennai', 'Tamil Nadu'),
(12, 'Divya Iyer', 'Female', '1998-10-11', 'Single', 'Software Developer', 900000, 'Chennai', 'Tamil Nadu'),
(13, 'Rohit Reddy', 'Male', '1991-03-07', 'Married', 'Entrepreneur', 1500000, 'Hyderabad', 'Telangana'),
(14, 'Meena Rao', 'Female', '1994-07-16', 'Single', 'Marketing Executive', 680000, 'Hyderabad', 'Telangana'),
(15, 'Vivek Verma', 'Male', '1989-12-21', 'Married', 'Doctor', 1800000, 'New Delhi', 'Delhi'),
(16, 'Kavita Singh', 'Female', '1996-05-03', 'Single', 'Consultant', 950000, 'Noida', 'Uttar Pradesh'),
(17, 'Manish Gupta', 'Male', '1993-08-17', 'Married', 'Financial Advisor', 1050000, 'Lucknow', 'Uttar Pradesh'),
(18, 'Riya Shah', 'Female', '1997-01-26', 'Single', 'Business Analyst', 820000, 'Ahmedabad', 'Gujarat'),
(19, 'Nitin Mehta', 'Male', '1986-06-13', 'Married', 'Chartered Accountant', 1450000, 'Surat', 'Gujarat'),
(20, 'Simran Jain', 'Female', '1999-09-29', 'Single', 'Content Writer', 450000, 'Jaipur', 'Rajasthan'),
(21, 'Sourav Das', 'Male', '1990-04-08', 'Married', 'Professor', 900000, 'Kolkata', 'West Bengal'),
(22, 'Anita Verma', 'Female', '1995-11-20', 'Single', 'Nurse', 580000, 'Bhopal', 'Madhya Pradesh'),
(23, 'Akash Tiwari', 'Male', '1992-02-10', 'Married', 'Mechanical Engineer', 760000, 'Indore', 'Madhya Pradesh'),
(24, 'Suresh Menon', 'Male', '1984-08-06', 'Married', 'Business Owner', 1300000, 'Kochi', 'Kerala'),
(25, 'Simran Kaur', 'Female', '1998-03-23', 'Single', 'UI/UX Designer', 700000, 'Chandigarh', 'Chandigarh');

SELECT * FROM Customers;


---------- 5. create customer_addresses table --------------
CREATE TABLE Customer_Addresses (
    address_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    address_type VARCHAR(20),
    address_line VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customer_Addresses
(address_id, customer_id, address_type, address_line, city, state, pincode)
VALUES
(1, 1, 'Permanent', '12 Shree Ganesh Society, Kothrud', 'Pune', 'Maharashtra', '411038'),
(2, 2, 'Permanent', '45 Green Park Apartments, Andheri', 'Mumbai', 'Maharashtra', '400053'),
(3, 3, 'Permanent', '18 College Road, Gangapur Road', 'Nashik', 'Maharashtra', '422005'),
(4, 4, 'Current', '27 Karve Nagar, Near Bus Stand', 'Pune', 'Maharashtra', '411052'),
(5, 5, 'Permanent', '63 Civil Lines, Central Area', 'Nagpur', 'Maharashtra', '440001'),
(6, 6, 'Current', '21 Ghodbunder Road, Manpada', 'Thane', 'Maharashtra', '400607'),
(7, 7, 'Permanent', '34 Sector 17, Vashi', 'Navi Mumbai', 'Maharashtra', '400703'),
(8, 8, 'Current', '56 Baner Road, Near Balewadi', 'Pune', 'Maharashtra', '411045'),
(9, 9, 'Permanent', '78 Whitefield Main Road, Hoodi', 'Bangalore', 'Karnataka', '560048'),
(10, 10, 'Current', '29 Indiranagar 12th Main Road', 'Bangalore', 'Karnataka', '560038'),
(11, 11, 'Permanent', '15 Anna Nagar West, 2nd Street', 'Chennai', 'Tamil Nadu', '600101'),
(12, 12, 'Current', '42 RS Puram, Near Cross Cut Road', 'Coimbatore', 'Tamil Nadu', '641002'),
(13, 13, 'Permanent', '88 Banjara Hills Road No. 12', 'Hyderabad', 'Telangana', '500034'),
(14, 14, 'Current', '31 Secunderabad Market Road', 'Secunderabad', 'Telangana', '500003'),
(15, 15, 'Permanent', '24 Connaught Place, Central Delhi', 'New Delhi', 'Delhi', '110001'),
(16, 16, 'Current', '67 Sector 18, Near Metro Station', 'Noida', 'Uttar Pradesh', '201301'),
(17, 17, 'Permanent', '39 Gomti Nagar Extension', 'Lucknow', 'Uttar Pradesh', '226010'),
(18, 18, 'Current', '52 Satellite Road, Near Vastrapur', 'Ahmedabad', 'Gujarat', '380015'),
(19, 19, 'Permanent', '73 Adajan Road, Near LP Savani Road', 'Surat', 'Gujarat', '395009'),
(20, 20, 'Current', '16 Malviya Nagar, Near Main Market', 'Jaipur', 'Rajasthan', '302017'),
(21, 21, 'Permanent', '44 Salt Lake Sector V', 'Kolkata', 'West Bengal', '700091'),
(22, 22, 'Current', '28 Arera Colony, Near Shahpura', 'Bhopal', 'Madhya Pradesh', '462016'),
(23, 23, 'Permanent', '61 Vijay Nagar, Near Scheme No. 54', 'Indore', 'Madhya Pradesh', '452010'),
(24, 24, 'Permanent', '35 MG Road, Near Marine Drive', 'Kochi', 'Kerala', '682016'),
(25, 25, 'Current', '19 Sector 22, Near Market Area', 'Chandigarh', 'Chandigarh', '160022');

SELECT * FROM Customer_Addresses;


-------- 6. create customer_contacts table --------------
CREATE TABLE Customer_Contacts (
    contact_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    mobile VARCHAR(20),
    email VARCHAR(120),
    preferred_contact VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customer_Contacts
(contact_id, customer_id, mobile, email, preferred_contact)
VALUES
(1, 1, '9876500001', 'amit.patil@gmail.com', 'Mobile'),
(2, 2, '9876500002', 'sneha.sharma@gmail.com', 'Email'),
(3, 3, '9876500003', 'rahul.deshmukh@gmail.com', 'Mobile'),
(4, 4, '9876500004', 'priya.kulkarni@gmail.com', 'Email'),
(5, 5, '9876500005', 'vikas.more@gmail.com', 'Mobile'),
(6, 6, '9876500006', 'neha.joshi@gmail.com', 'Email'),
(7, 7, '9876500007', 'sanjay.pawar@gmail.com', 'Mobile'),
(8, 8, '9876500008', 'pooja.shinde@gmail.com', 'Email'),
(9, 9, '9876500009', 'arjun.rao@gmail.com', 'Mobile'),
(10, 10, '9876500010', 'anjali.nair@gmail.com', 'Email'),
(11, 11, '9876500011', 'karthik.kumar@gmail.com', 'Mobile'),
(12, 12, '9876500012', 'divya.iyer@gmail.com', 'Email'),
(13, 13, '9876500013', 'rohit.reddy@gmail.com', 'Mobile'),
(14, 14, '9876500014', 'meena.rao@gmail.com', 'Email'),
(15, 15, '9876500015', 'vivek.verma@gmail.com', 'Mobile'),
(16, 16, '9876500016', 'kavita.singh@gmail.com', 'Email'),
(17, 17, '9876500017', 'manish.gupta@gmail.com', 'Mobile'),
(18, 18, '9876500018', 'riya.shah@gmail.com', 'Email'),
(19, 19, '9876500019', 'nitin.mehta@gmail.com', 'Mobile'),
(20, 20, '9876500020', 'simran.jain@gmail.com', 'Email'),
(21, 21, '9876500021', 'sourav.das@gmail.com', 'Mobile'),
(22, 22, '9876500022', 'anita.verma@gmail.com', 'Email'),
(23, 23, '9876500023', 'akash.tiwari@gmail.com', 'Mobile'),
(24, 24, '9876500024', 'suresh.menon@gmail.com', 'Email'),
(25, 25, '9876500025', 'simran.kaur@gmail.com', 'Mobile');

SELECT * FROM Customer_Contacts;


------- 7. create nominees table ---------- 
CREATE TABLE Nominees (
    nominee_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    nominee_name VARCHAR(100),
    relationship VARCHAR(30),
    date_of_birth DATE,
    share_percent DECIMAL(5,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Nominees
(nominee_id, customer_id, nominee_name, relationship, date_of_birth, share_percent)
VALUES
(1, 1, 'Kavita Patil', 'Wife', '1997-06-15', 100.00),
(2, 2, 'Rajesh Sharma', 'Father', '1970-03-22', 100.00),
(3, 3, 'Sneha Deshmukh', 'Wife', '1992-09-10', 100.00),
(4, 4, 'Mahesh Kulkarni', 'Father', '1968-12-05', 100.00),
(5, 5, 'Anita More', 'Wife', '1990-04-18', 100.00),
(6, 6, 'Suresh Joshi', 'Father', '1965-08-27', 100.00),
(7, 7, 'Pallavi Pawar', 'Wife', '1987-11-14', 100.00),
(8, 8, 'Sunita Shinde', 'Mother', '1972-05-09', 100.00),
(9, 9, 'Priya Rao', 'Wife', '1994-02-16', 100.00),
(10, 10, 'Mohan Nair', 'Father', '1969-07-21', 100.00),
(11, 11, 'Lakshmi Kumar', 'Wife', '1990-10-12', 100.00),
(12, 12, 'Ramesh Iyer', 'Father', '1967-01-25', 100.00),
(13, 13, 'Anusha Reddy', 'Wife', '1993-06-08', 100.00),
(14, 14, 'Ravi Rao', 'Father', '1966-11-30', 100.00),
(15, 15, 'Meena Verma', 'Wife', '1991-03-17', 100.00),
(16, 16, 'Ajay Singh', 'Father', '1968-09-04', 100.00),
(17, 17, 'Pooja Gupta', 'Wife', '1994-12-19', 100.00),
(18, 18, 'Mahesh Shah', 'Father', '1965-04-26', 100.00),
(19, 19, 'Rina Mehta', 'Wife', '1989-08-13', 100.00),
(20, 20, 'Rajiv Jain', 'Father', '1971-02-07', 100.00),
(21, 21, 'Madhuri Das', 'Wife', '1992-05-24', 100.00),
(22, 22, 'Vijay Verma', 'Father', '1964-10-15', 100.00),
(23, 23, 'Neha Tiwari', 'Wife', '1995-01-11', 100.00),
(24, 24, 'Radha Menon', 'Wife', '1988-07-29', 100.00),
(25, 25, 'Harpreet Kaur', 'Mother', '1970-06-18', 100.00);

SELECT * FROM Nominees;


------- 8. create insurance_products table 
CREATE TABLE Insurance_Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    minimum_sum_assured DECIMAL(14,2),
    maximum_sum_assured DECIMAL(14,2),
    minimum_term_years INT,
    maximum_term_years INT,
    base_premium_rate DECIMAL(6,3)
);

INSERT INTO Insurance_Products
(product_id, product_name, product_category, minimum_sum_assured,
 maximum_sum_assured, minimum_term_years, maximum_term_years, base_premium_rate)
VALUES
(1, 'Life Secure Plan', 'Life Insurance', 500000.00, 5000000.00, 10, 30, 2.500),
(2, 'Family Protection Plan', 'Life Insurance', 750000.00, 7500000.00, 10, 25, 2.750),
(3, 'Term Life Basic', 'Term Insurance', 1000000.00, 10000000.00, 5, 30, 1.850),
(4, 'Term Life Plus', 'Term Insurance', 1500000.00, 15000000.00, 10, 35, 2.100),
(5, 'Child Future Plan', 'Child Insurance', 300000.00, 3000000.00, 10, 25, 2.350),
(6, 'Child Education Plan', 'Child Insurance', 500000.00, 5000000.00, 10, 20, 2.450),
(7, 'Retirement Secure Plan', 'Retirement', 500000.00, 10000000.00, 10, 30, 2.900),
(8, 'Golden Pension Plan', 'Pension', 1000000.00, 15000000.00, 15, 35, 3.100),
(9, 'Health Shield Plan', 'Health Insurance', 200000.00, 2500000.00, 1, 10, 1.950),
(10, 'Family Health Plus', 'Health Insurance', 300000.00, 5000000.00, 1, 15, 2.200),
(11, 'Senior Citizen Care', 'Health Insurance', 200000.00, 2000000.00, 1, 10, 3.250),
(12, 'Accident Protection Plan', 'Accident Insurance', 500000.00, 5000000.00, 1, 10, 1.500),
(13, 'Personal Accident Plus', 'Accident Insurance', 1000000.00, 10000000.00, 1, 15, 1.750),
(14, 'Savings Life Plan', 'Savings Insurance', 500000.00, 7500000.00, 10, 25, 3.050),
(15, 'Guaranteed Income Plan', 'Savings Insurance', 750000.00, 10000000.00, 10, 30, 3.350),
(16, 'Wealth Builder Plan', 'Investment Insurance', 1000000.00, 20000000.00, 10, 30, 3.500),
(17, 'Smart Investment Plan', 'Investment Insurance', 500000.00, 10000000.00, 5, 25, 3.250),
(18, 'Women Secure Plan', 'Special Insurance', 500000.00, 7500000.00, 10, 25, 2.600),
(19, 'Women Health Protection', 'Health Insurance', 300000.00, 5000000.00, 1, 15, 2.400),
(20, 'Corporate Life Cover', 'Group Insurance', 1000000.00, 25000000.00, 5, 30, 2.150),
(21, 'Employee Protection Plan', 'Group Insurance', 500000.00, 10000000.00, 1, 20, 1.900),
(22, 'Travel Protection Plan', 'Travel Insurance', 100000.00, 2000000.00, 1, 5, 1.250),
(23, 'International Travel Cover', 'Travel Insurance', 250000.00, 5000000.00, 1, 5, 1.450),
(24, 'Micro Life Insurance', 'Micro Insurance', 100000.00, 1000000.00, 5, 15, 1.350),
(25, 'Premium Life Advantage', 'Life Insurance', 1000000.00, 25000000.00, 15, 40, 3.750);

SELECT * FROM Insurance_Products;


------ 9. create policy table --------
CREATE TABLE Policy_Types (
    policy_type_id INT PRIMARY KEY,
    policy_type_name VARCHAR(60),
    description VARCHAR(255)
);

INSERT INTO Policy_Types
(policy_type_id, policy_type_name, description)
VALUES
(1, 'Term Insurance', 'Provides life coverage for a fixed policy term.'),
(2, 'Whole Life Insurance', 'Provides life coverage for the insured throughout their lifetime.'),
(3, 'Endowment Plan', 'Combines life insurance protection with long-term savings.'),
(4, 'Money Back Plan', 'Provides periodic survival benefits along with life insurance coverage.'),
(5, 'Child Insurance', 'Designed to secure financial needs for a child future education and expenses.'),
(6, 'Retirement Plan', 'Helps customers build savings for financial security after retirement.'),
(7, 'Pension Plan', 'Provides regular income during the post-retirement period.'),
(8, 'Health Insurance', 'Provides financial protection against eligible medical and hospitalization expenses.'),
(9, 'Family Health Plan', 'Provides health coverage for multiple members of a family.'),
(10, 'Senior Citizen Plan', 'Provides health and financial protection designed for senior citizens.'),
(11, 'Personal Accident', 'Provides financial protection against accidental death or disability.'),
(12, 'Critical Illness', 'Provides financial benefits upon diagnosis of specified critical illnesses.'),
(13, 'Savings Plan', 'Provides insurance protection along with disciplined long-term savings.'),
(14, 'Guaranteed Income Plan', 'Provides guaranteed income benefits according to policy terms.'),
(15, 'Investment Plan', 'Combines insurance protection with investment opportunities.'),
(16, 'ULIP', 'Provides life insurance coverage along with market-linked investment options.'),
(17, 'Women Protection Plan', 'Provides financial protection and benefits designed for women.'),
(18, 'Group Insurance', 'Provides insurance coverage to members of an eligible group or organization.'),
(19, 'Employee Insurance', 'Provides insurance benefits to employees through an organization.'),
(20, 'Travel Insurance', 'Provides financial protection against eligible travel-related risks.'),
(21, 'International Travel', 'Provides insurance coverage for eligible risks during international travel.'),
(22, 'Micro Insurance', 'Provides affordable insurance coverage with relatively smaller premiums and benefits.'),
(23, 'Credit Life Insurance', 'Helps protect outstanding eligible loans in case of death of the insured.'),
(24, 'Mortgage Protection', 'Provides protection against eligible outstanding home loan liabilities.'),
(25, 'Life Advantage Plan', 'Provides life protection with long-term savings and financial benefits.');

SELECT * FROM Policy_Types;


------- 10. create policies table -----------
CREATE TABLE Policies (
    policy_id INT PRIMARY KEY,
    policy_number VARCHAR(30) UNIQUE NOT NULL,
    customer_id INT NOT NULL,
    agent_id INT NOT NULL,
    product_id INT NOT NULL,
    policy_type_id INT NOT NULL,
    branch_id INT NOT NULL,
    issue_date DATE,
    start_date DATE,
    maturity_date DATE,
    sum_assured DECIMAL(14,2),
    premium_amount DECIMAL(12,2),
    premium_frequency VARCHAR(20),
    policy_term_years INT,
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id),
    FOREIGN KEY (product_id) REFERENCES Insurance_Products(product_id),
    FOREIGN KEY (policy_type_id) REFERENCES Policy_Types(policy_type_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

INSERT INTO Policies
(
    policy_id,
    policy_number,
    customer_id,
    agent_id,
    product_id,
    policy_type_id,
    branch_id,
    issue_date,
    start_date,
    maturity_date,
    sum_assured,
    premium_amount,
    premium_frequency,
    policy_term_years,
    status
)
VALUES
(1, 'POL100001', 1, 1, 1, 1, 1, '2021-07-01', '2021-07-01', '2041-07-01', 2000000.00, 50000.00, 'Yearly', 20, 'Active'),
(2, 'POL100002', 2, 2, 3, 1, 2, '2022-04-15', '2022-04-15', '2042-04-15', 5000000.00, 65000.00, 'Yearly', 20, 'Active'),
(3, 'POL100003', 3, 3, 4, 1, 3, '2020-09-10', '2020-09-10', '2040-09-10', 7500000.00, 85000.00, 'Yearly', 20, 'Active'),
(4, 'POL100004', 4, 4, 5, 5, 4, '2023-02-01', '2023-02-01', '2043-02-01', 1500000.00, 40000.00, 'Yearly', 20, 'Active'),
(5, 'POL100005', 5, 5, 7, 6, 5, '2019-12-10', '2019-12-10', '2039-12-10', 3000000.00, 70000.00, 'Yearly', 20, 'Active'),
(6, 'POL100006', 6, 6, 9, 8, 6, '2022-08-05', '2022-08-05', '2027-08-05', 1000000.00, 30000.00, 'Yearly', 5, 'Active'),
(7, 'POL100007', 7, 7, 11, 10, 7, '2021-03-15', '2021-03-15', '2026-03-15', 800000.00, 28000.00, 'Yearly', 5, 'Matured'),
(8, 'POL100008', 8, 8, 6, 5, 8, '2023-07-10', '2023-07-10', '2043-07-10', 2000000.00, 45000.00, 'Yearly', 20, 'Active'),
(9, 'POL100009', 9, 9, 2, 2, 9, '2019-10-20', '2019-10-20', '2044-10-20', 5000000.00, 95000.00, 'Yearly', 25, 'Active'),
(10, 'POL100010', 10, 10, 10, 9, 10, '2022-01-15', '2022-01-15', '2032-01-15', 2000000.00, 52000.00, 'Yearly', 10, 'Active'),
(11, 'POL100011', 11, 11, 12, 11, 11, '2020-05-10', '2020-05-10', '2030-05-10', 3000000.00, 60000.00, 'Yearly', 10, 'Active'),
(12, 'POL100012', 12, 12, 14, 13, 12, '2023-03-20', '2023-03-20', '2043-03-20', 2500000.00, 55000.00, 'Yearly', 20, 'Active'),
(13, 'POL100013', 13, 13, 16, 15, 13, '2019-08-15', '2019-08-15', '2039-08-15', 5000000.00, 100000.00, 'Yearly', 20, 'Active'),
(14, 'POL100014', 14, 14, 19, 9, 14, '2022-11-01', '2022-11-01', '2032-11-01', 1500000.00, 42000.00, 'Yearly', 10, 'Active'),
(15, 'POL100015', 15, 15, 8, 7, 15, '2018-06-15', '2018-06-15', '2033-06-15', 4000000.00, 90000.00, 'Yearly', 15, 'Active'),
(16, 'POL100016', 16, 16, 17, 15, 16, '2021-10-10', '2021-10-10', '2041-10-10', 3000000.00, 72000.00, 'Yearly', 20, 'Active'),
(17, 'POL100017', 17, 17, 15, 14, 17, '2020-12-20', '2020-12-20', '2040-12-20', 3500000.00, 78000.00, 'Yearly', 20, 'Active'),
(18, 'POL100018', 18, 18, 18, 17, 18, '2019-04-25', '2019-04-25', '2039-04-25', 2500000.00, 58000.00, 'Yearly', 20, 'Active'),
(19, 'POL100019', 19, 19, 20, 18, 19, '2022-03-10', '2022-03-10', '2032-03-10', 5000000.00, 85000.00, 'Yearly', 10, 'Active'),
(20, 'POL100020', 20, 20, 22, 20, 20, '2023-05-15', '2023-05-15', '2028-05-15', 1000000.00, 25000.00, 'Yearly', 5, 'Active'),
(21, 'POL100021', 21, 21, 21, 19, 21, '2021-05-20', '2021-05-20', '2031-05-20', 3000000.00, 55000.00, 'Yearly', 10, 'Active'),
(22, 'POL100022', 22, 22, 24, 22, 22, '2023-04-10', '2023-04-10', '2033-04-10', 500000.00, 15000.00, 'Yearly', 10, 'Active'),
(23, 'POL100023', 23, 23, 13, 11, 23, '2020-08-01', '2020-08-01', '2030-08-01', 2500000.00, 48000.00, 'Yearly', 10, 'Active'),
(24, 'POL100024', 24, 24, 23, 21, 24, '2018-12-15', '2018-12-15', '2023-12-15', 2000000.00, 40000.00, 'Yearly', 5, 'Matured'),
(25, 'POL100025', 25, 25, 25, 25, 25, '2022-06-20', '2022-06-20', '2042-06-20', 7500000.00, 110000.00, 'Yearly', 20, 'Active');

SELECT * FROM Policies;



--------- 11. create policy_holders table ----------
CREATE TABLE Policy_Holders (
    policy_holder_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    customer_id INT NOT NULL,
    holder_type VARCHAR(20),
    ownership_percent DECIMAL(5,2),
    effective_date DATE,
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Policy_Holders
(
    policy_holder_id,
    policy_id,
    customer_id,
    holder_type,
    ownership_percent,
    effective_date
)
VALUES
(1, 1, 1, 'Primary', 100.00, '2021-07-01'),
(2, 2, 2, 'Primary', 100.00, '2022-04-15'),
(3, 3, 3, 'Primary', 100.00, '2020-09-10'),
(4, 4, 4, 'Primary', 100.00, '2023-02-01'),
(5, 5, 5, 'Primary', 100.00, '2019-12-10'),
(6, 6, 6, 'Primary', 100.00, '2022-08-05'),
(7, 7, 7, 'Primary', 100.00, '2021-03-15'),
(8, 8, 8, 'Primary', 100.00, '2023-07-10'),
(9, 9, 9, 'Primary', 100.00, '2019-10-20'),
(10, 10, 10, 'Primary', 100.00, '2022-01-15'),
(11, 11, 11, 'Primary', 100.00, '2020-05-10'),
(12, 12, 12, 'Primary', 100.00, '2023-03-20'),
(13, 13, 13, 'Primary', 100.00, '2019-08-15'),
(14, 14, 14, 'Primary', 100.00, '2022-11-01'),
(15, 15, 15, 'Primary', 100.00, '2018-06-15'),
(16, 16, 16, 'Primary', 100.00, '2021-10-10'),
(17, 17, 17, 'Primary', 100.00, '2020-12-20'),
(18, 18, 18, 'Primary', 100.00, '2019-04-25'),
(19, 19, 19, 'Primary', 100.00, '2022-03-10'),
(20, 20, 20, 'Primary', 100.00, '2023-05-15'),
(21, 21, 21, 'Primary', 100.00, '2021-05-20'),
(22, 22, 22, 'Primary', 100.00, '2023-04-10'),
(23, 23, 23, 'Primary', 100.00, '2020-08-01'),
(24, 24, 24, 'Primary', 100.00, '2018-12-15'),
(25, 25, 25, 'Primary', 100.00, '2022-06-20');

SELECT * FROM Policy_Holders;


-------- 12. create policy_nominees table ---------
CREATE TABLE Policy_Nominees (
    policy_nominee_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    nominee_id INT NOT NULL,
    nominee_share_percent DECIMAL(5,2),
    nomination_date DATE,
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (nominee_id) REFERENCES Nominees(nominee_id)
);

INSERT INTO Policy_Nominees
(
    policy_nominee_id,
    policy_id,
    nominee_id,
    nominee_share_percent,
    nomination_date
)
VALUES
(1, 1, 1, 100.00, '2021-07-01'),
(2, 2, 2, 100.00, '2022-04-15'),
(3, 3, 3, 100.00, '2020-09-10'),
(4, 4, 4, 100.00, '2023-02-01'),
(5, 5, 5, 100.00, '2019-12-10'),
(6, 6, 6, 100.00, '2022-08-05'),
(7, 7, 7, 100.00, '2021-03-15'),
(8, 8, 8, 100.00, '2023-07-10'),
(9, 9, 9, 100.00, '2019-10-20'),
(10, 10, 10, 100.00, '2022-01-15'),
(11, 11, 11, 100.00, '2020-05-10'),
(12, 12, 12, 100.00, '2023-03-20'),
(13, 13, 13, 100.00, '2019-08-15'),
(14, 14, 14, 100.00, '2022-11-01'),
(15, 15, 15, 100.00, '2018-06-15'),
(16, 16, 16, 100.00, '2021-10-10'),
(17, 17, 17, 100.00, '2020-12-20'),
(18, 18, 18, 100.00, '2019-04-25'),
(19, 19, 19, 100.00, '2022-03-10'),
(20, 20, 20, 100.00, '2023-05-15'),
(21, 21, 21, 100.00, '2021-05-20'),
(22, 22, 22, 100.00, '2023-04-10'),
(23, 23, 23, 100.00, '2020-08-01'),
(24, 24, 24, 100.00, '2018-12-15'),
(25, 25, 25, 100.00, '2022-06-20');

SELECT * FROM Policy_Nominees;


-------- 13. create payment_methods table ---------
CREATE TABLE Payment_Methods (
    payment_method_id INT PRIMARY KEY,
    method_name VARCHAR(40),
    channel VARCHAR(40),
    status VARCHAR(20)
);

INSERT INTO Payment_Methods
(payment_method_id, method_name, channel, status)
VALUES
(1, 'Cash', 'Branch', 'Active'),
(2, 'Cheque', 'Branch', 'Active'),
(3, 'Demand Draft', 'Branch', 'Active'),
(4, 'Debit Card', 'Online', 'Active'),
(5, 'Credit Card', 'Online', 'Active'),
(6, 'Net Banking', 'Online', 'Active'),
(7, 'UPI', 'Mobile', 'Active'),
(8, 'UPI AutoPay', 'Mobile', 'Active'),
(9, 'NEFT', 'Bank Transfer', 'Active'),
(10, 'RTGS', 'Bank Transfer', 'Active'),
(11, 'IMPS', 'Bank Transfer', 'Active'),
(12, 'Standing Instruction', 'Bank', 'Active'),
(13, 'ECS', 'Bank', 'Active'),
(14, 'NACH', 'Bank', 'Active'),
(15, 'Auto Debit', 'Bank', 'Active'),
(16, 'Internet Banking', 'Online', 'Active'),
(17, 'Mobile Banking', 'Mobile', 'Active'),
(18, 'Wallet', 'Mobile', 'Active'),
(19, 'Payment Gateway', 'Online', 'Active'),
(20, 'QR Payment', 'Mobile', 'Active'),
(21, 'POS Machine', 'Branch', 'Active'),
(22, 'Bank Transfer', 'Bank Transfer', 'Active'),
(23, 'Online Transfer', 'Online', 'Active'),
(24, 'Recurring Debit', 'Bank', 'Active'),
(25, 'Money Order', 'Branch', 'Inactive');

SELECT * FROM Payment_Methods;



-------- 14. create premiun_plans ----------
CREATE TABLE Premium_Plans (
    premium_plan_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    due_frequency VARCHAR(20),
    premium_due_amount DECIMAL(12,2),
    grace_period_days INT,
    next_due_date DATE,
    plan_status VARCHAR(20),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id)
);

INSERT INTO Premium_Plans
(
    premium_plan_id,
    policy_id,
    due_frequency,
    premium_due_amount,
    grace_period_days,
    next_due_date,
    plan_status
)
VALUES
(1, 1, 'Yearly', 50000.00, 30, '2026-07-01', 'Active'),
(2, 2, 'Yearly', 65000.00, 30, '2026-04-15', 'Active'),
(3, 3, 'Yearly', 85000.00, 30, '2026-09-10', 'Active'),
(4, 4, 'Yearly', 40000.00, 30, '2026-02-01', 'Active'),
(5, 5, 'Yearly', 70000.00, 30, '2026-12-10', 'Active'),
(6, 6, 'Yearly', 30000.00, 30, '2026-08-05', 'Active'),
(7, 7, 'Yearly', 28000.00, 30, '2026-03-15', 'Completed'),
(8, 8, 'Yearly', 45000.00, 30, '2026-07-10', 'Active'),
(9, 9, 'Yearly', 95000.00, 30, '2026-10-20', 'Active'),
(10, 10, 'Yearly', 52000.00, 30, '2026-01-15', 'Active'),
(11, 11, 'Yearly', 60000.00, 30, '2026-05-10', 'Active'),
(12, 12, 'Yearly', 55000.00, 30, '2026-03-20', 'Active'),
(13, 13, 'Yearly', 100000.00, 30, '2026-08-15', 'Active'),
(14, 14, 'Yearly', 42000.00, 30, '2026-11-01', 'Active'),
(15, 15, 'Yearly', 90000.00, 30, '2026-06-15', 'Active'),
(16, 16, 'Yearly', 72000.00, 30, '2026-10-10', 'Active'),
(17, 17, 'Yearly', 78000.00, 30, '2026-12-20', 'Active'),
(18, 18, 'Yearly', 58000.00, 30, '2026-04-25', 'Active'),
(19, 19, 'Yearly', 85000.00, 30, '2026-03-10', 'Active'),
(20, 20, 'Yearly', 25000.00, 30, '2026-05-15', 'Active'),
(21, 21, 'Yearly', 55000.00, 30, '2026-05-20', 'Active'),
(22, 22, 'Yearly', 15000.00, 30, '2026-04-10', 'Active'),
(23, 23, 'Yearly', 48000.00, 30, '2026-08-01', 'Active'),
(24, 24, 'Yearly', 40000.00, 30, '2026-12-15', 'Completed'),
(25, 25, 'Yearly', 110000.00, 30, '2026-06-20', 'Active');

SELECT * FROM Premium_Plans;


------ 15. create premium_payments table
CREATE TABLE Premium_Payments (
    payment_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    payment_method_id INT NOT NULL,
    due_date DATE,
    payment_date DATE,
    amount_paid DECIMAL(12,2),
    payment_status VARCHAR(20),
    transaction_reference VARCHAR(40),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (payment_method_id) REFERENCES Payment_Methods(payment_method_id)
);

INSERT INTO Premium_Payments
(
    payment_id,
    policy_id,
    payment_method_id,
    due_date,
    payment_date,
    amount_paid,
    payment_status,
    transaction_reference
)
VALUES
(1, 1, 7, '2026-07-01', '2026-06-28', 50000.00, 'Paid', 'TXN202600001'),
(2, 2, 6, '2026-04-15', '2026-04-14', 65000.00, 'Paid', 'TXN202600002'),
(3, 3, 9, '2026-09-10', '2026-09-08', 85000.00, 'Paid', 'TXN202600003'),
(4, 4, 4, '2026-02-01', '2026-02-03', 40000.00, 'Paid', 'TXN202600004'),
(5, 5, 7, '2026-12-10', NULL, 0.00, 'Pending', 'TXN202600005'),
(6, 6, 5, '2026-08-05', '2026-08-04', 30000.00, 'Paid', 'TXN202600006'),
(7, 7, 2, '2026-03-15', '2026-03-14', 28000.00, 'Paid', 'TXN202600007'),
(8, 8, 8, '2026-07-10', '2026-07-09', 45000.00, 'Paid', 'TXN202600008'),
(9, 9, 10, '2026-10-20', NULL, 0.00, 'Pending', 'TXN202600009'),
(10, 10, 6, '2026-01-15', '2026-01-15', 52000.00, 'Paid', 'TXN202600010'),
(11, 11, 11, '2026-05-10', '2026-05-12', 60000.00, 'Paid', 'TXN202600011'),
(12, 12, 7, '2026-03-20', '2026-03-18', 55000.00, 'Paid', 'TXN202600012'),
(13, 13, 9, '2026-08-15', '2026-08-13', 100000.00, 'Paid', 'TXN202600013'),
(14, 14, 4, '2026-11-01', NULL, 0.00, 'Pending', 'TXN202600014'),
(15, 15, 12, '2026-06-15', '2026-06-14', 90000.00, 'Paid', 'TXN202600015'),
(16, 16, 8, '2026-10-10', NULL, 0.00, 'Pending', 'TXN202600016'),
(17, 17, 13, '2026-12-20', NULL, 0.00, 'Pending', 'TXN202600017'),
(18, 18, 7, '2026-04-25', '2026-04-24', 58000.00, 'Paid', 'TXN202600018'),
(19, 19, 14, '2026-03-10', '2026-03-09', 85000.00, 'Paid', 'TXN202600019'),
(20, 20, 15, '2026-05-15', '2026-05-16', 25000.00, 'Paid', 'TXN202600020'),
(21, 21, 6, '2026-05-20', '2026-05-19', 55000.00, 'Paid', 'TXN202600021'),
(22, 22, 7, '2026-04-10', '2026-04-09', 15000.00, 'Paid', 'TXN202600022'),
(23, 23, 9, '2026-08-01', '2026-07-30', 48000.00, 'Paid', 'TXN202600023'),
(24, 24, 2, '2026-12-15', '2026-12-14', 40000.00, 'Paid', 'TXN202600024'),
(25, 25, 19, '2026-06-20', '2026-06-18', 110000.00, 'Paid', 'TXN202600025');

SELECT * FROM Premium_Payments;


------ 16. create policy_renewals table ---------
CREATE TABLE Policy_Renewals (
    renewal_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    renewal_date DATE,
    previous_expiry_date DATE,
    new_expiry_date DATE,
    renewal_premium DECIMAL(12,2),
    renewal_status VARCHAR(20),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id)
);

INSERT INTO Policy_Renewals
(
    renewal_id,
    policy_id,
    renewal_date,
    previous_expiry_date,
    new_expiry_date,
    renewal_premium,
    renewal_status
)
VALUES
(1, 1, '2026-06-25', '2026-07-01', '2027-07-01', 50000.00, 'Renewed'),
(2, 2, '2026-04-10', '2026-04-15', '2027-04-15', 65000.00, 'Renewed'),
(3, 3, '2026-09-05', '2026-09-10', '2027-09-10', 85000.00, 'Renewed'),
(4, 4, '2026-01-28', '2026-02-01', '2027-02-01', 40000.00, 'Renewed'),
(5, 5, '2026-12-05', '2026-12-10', '2027-12-10', 70000.00, 'Pending'),
(6, 6, '2026-08-01', '2026-08-05', '2027-08-05', 30000.00, 'Renewed'),
(7, 7, '2026-03-10', '2026-03-15', '2027-03-15', 28000.00, 'Renewed'),
(8, 8, '2026-07-05', '2026-07-10', '2027-07-10', 45000.00, 'Renewed'),
(9, 9, '2026-10-15', '2026-10-20', '2027-10-20', 95000.00, 'Pending'),
(10, 10, '2026-01-10', '2026-01-15', '2027-01-15', 52000.00, 'Renewed'),
(11, 11, '2026-05-05', '2026-05-10', '2027-05-10', 60000.00, 'Renewed'),
(12, 12, '2026-03-15', '2026-03-20', '2027-03-20', 55000.00, 'Renewed'),
(13, 13, '2026-08-10', '2026-08-15', '2027-08-15', 100000.00, 'Renewed'),
(14, 14, '2026-10-27', '2026-11-01', '2027-11-01', 42000.00, 'Pending'),
(15, 15, '2026-06-10', '2026-06-15', '2027-06-15', 90000.00, 'Renewed'),
(16, 16, '2026-10-05', '2026-10-10', '2027-10-10', 72000.00, 'Pending'),
(17, 17, '2026-12-15', '2026-12-20', '2027-12-20', 78000.00, 'Pending'),
(18, 18, '2026-04-20', '2026-04-25', '2027-04-25', 58000.00, 'Renewed'),
(19, 19, '2026-03-05', '2026-03-10', '2027-03-10', 85000.00, 'Renewed'),
(20, 20, '2026-05-10', '2026-05-15', '2027-05-15', 25000.00, 'Renewed'),
(21, 21, '2026-05-15', '2026-05-20', '2027-05-20', 55000.00, 'Renewed'),
(22, 22, '2026-04-05', '2026-04-10', '2027-04-10', 15000.00, 'Renewed'),
(23, 23, '2026-07-27', '2026-08-01', '2027-08-01', 48000.00, 'Renewed'),
(24, 24, '2023-12-10', '2023-12-15', '2024-12-15', 40000.00, 'Expired'),
(25, 25, '2026-06-15', '2026-06-20', '2027-06-20', 110000.00, 'Renewed');

SELECT * FROM Policy_Renewals;


------ 17. create claim_types table --------
CREATE TABLE Claim_Types (
    claim_type_id INT PRIMARY KEY,
    claim_type_name VARCHAR(60),
    description VARCHAR(200)
);

INSERT INTO Claim_Types
(claim_type_id, claim_type_name, description)
VALUES
(1, 'Death Claim', 'Claim submitted in case of death of the insured person.'),
(2, 'Accidental Death', 'Claim arising from accidental death of the insured person.'),
(3, 'Critical Illness', 'Claim related to diagnosis of a covered critical illness.'),
(4, 'Hospitalization', 'Claim for eligible hospitalization and medical expenses.'),
(5, 'Medical Expense', 'Claim for eligible medical treatment and healthcare expenses.'),
(6, 'Disability Claim', 'Claim arising from permanent or temporary disability.'),
(7, 'Partial Disability', 'Claim related to eligible partial disability of the insured.'),
(8, 'Total Disability', 'Claim related to eligible total disability of the insured.'),
(9, 'Maturity Claim', 'Claim submitted when the policy reaches its maturity date.'),
(10, 'Survival Benefit', 'Claim for benefits payable during the policy term.'),
(11, 'Accident Injury', 'Claim for eligible injuries caused by an accident.'),
(12, 'Surgery Claim', 'Claim related to covered surgical procedures.'),
(13, 'Emergency Treatment', 'Claim for eligible emergency medical treatment.'),
(14, 'Day Care Treatment', 'Claim for eligible day care medical procedures.'),
(15, 'Ambulance Expense', 'Claim for eligible ambulance transportation expenses.'),
(16, 'Organ Transplant', 'Claim related to eligible organ transplant treatment.'),
(17, 'Burn Injury', 'Claim related to eligible burn injuries caused by an accident.'),
(18, 'Fracture Claim', 'Claim for eligible bone fracture injuries.'),
(19, 'Income Benefit', 'Claim for eligible income replacement benefits.'),
(20, 'Hospital Cash', 'Claim for fixed cash benefits during eligible hospitalization.'),
(21, 'Travel Medical', 'Claim for eligible medical expenses during covered travel.'),
(22, 'Travel Accident', 'Claim related to an accident occurring during covered travel.'),
(23, 'Property Damage', 'Claim for eligible damage covered under the applicable policy.'),
(24, 'Loan Protection', 'Claim related to eligible outstanding loan protection benefits.'),
(25, 'Other Claim', 'Claim category for eligible claims not covered by other types.');

SELECT * FROM Claim_Types;


------- 18. create claims table -----------
CREATE TABLE Claims (
    claim_id INT PRIMARY KEY,
    claim_number VARCHAR(30) UNIQUE NOT NULL,
    policy_id INT NOT NULL,
    claim_type_id INT NOT NULL,
    nominee_id INT,
    claim_date DATE,
    claimed_amount DECIMAL(14,2),
    claim_status VARCHAR(30),
    intimation_channel VARCHAR(30),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (claim_type_id) REFERENCES Claim_Types(claim_type_id),
    FOREIGN KEY (nominee_id) REFERENCES Nominees(nominee_id)
);

INSERT INTO Claims
(
    claim_id,
    claim_number,
    policy_id,
    claim_type_id,
    nominee_id,
    claim_date,
    claimed_amount,
    claim_status,
    intimation_channel
)
VALUES
(1, 'CLM20260001', 1, 1, 1, '2026-01-15', 2000000.00, 'Approved', 'Online'),
(2, 'CLM20260002', 2, 3, 2, '2026-02-10', 500000.00, 'Under Review', 'Branch'),
(3, 'CLM20260003', 3, 4, 3, '2026-03-05', 125000.00, 'Approved', 'Mobile'),
(4, 'CLM20260004', 4, 5, 4, '2026-03-18', 85000.00, 'Approved', 'Online'),
(5, 'CLM20260005', 5, 6, 5, '2026-04-12', 750000.00, 'Under Review', 'Branch'),
(6, 'CLM20260006', 6, 4, 6, '2026-04-25', 95000.00, 'Approved', 'Mobile'),
(7, 'CLM20260007', 7, 9, 7, '2026-03-15', 800000.00, 'Settled', 'Branch'),
(8, 'CLM20260008', 8, 10, 8, '2026-05-08', 200000.00, 'Approved', 'Online'),
(9, 'CLM20260009', 9, 1, 9, '2026-05-20', 5000000.00, 'Under Review', 'Branch'),
(10, 'CLM20260010', 10, 4, 10, '2026-06-02', 175000.00, 'Approved', 'Mobile'),
(11, 'CLM20260011', 11, 3, 11, '2026-06-15', 300000.00, 'Rejected', 'Online'),
(12, 'CLM20260012', 12, 5, 12, '2026-06-28', 120000.00, 'Approved', 'Branch'),
(13, 'CLM20260013', 13, 2, 13, '2026-07-05', 3000000.00, 'Under Review', 'Online'),
(14, 'CLM20260014', 14, 4, 14, '2026-07-12', 145000.00, 'Approved', 'Mobile'),
(15, 'CLM20260015', 15, 9, 15, '2026-07-18', 4000000.00, 'Settled', 'Branch'),
(16, 'CLM20260016', 16, 6, 16, '2026-07-22', 600000.00, 'Under Review', 'Online'),
(17, 'CLM20260017', 17, 10, 17, '2026-07-30', 250000.00, 'Approved', 'Mobile'),
(18, 'CLM20260018', 18, 7, 18, '2026-08-02', 350000.00, 'Under Review', 'Branch'),
(19, 'CLM20260019', 19, 8, 19, '2026-08-05', 750000.00, 'Approved', 'Online'),
(20, 'CLM20260020', 20, 21, 20, '2026-08-08', 180000.00, 'Approved', 'Mobile'),
(21, 'CLM20260021', 21, 19, 21, '2026-08-10', 500000.00, 'Under Review', 'Online'),
(22, 'CLM20260022', 22, 4, 22, '2026-08-12', 75000.00, 'Approved', 'Branch'),
(23, 'CLM20260023', 23, 11, 23, '2026-08-15', 300000.00, 'Rejected', 'Mobile'),
(24, 'CLM20260024', 24, 9, 24, '2023-11-20', 2000000.00, 'Settled', 'Branch'),
(25, 'CLM20260025', 25, 1, 25, '2026-08-18', 7500000.00, 'Under Review', 'Online');

SELECT * FROM Claims;


------ 19. create claim_documents table ----------
CREATE TABLE Claim_Documents (
    document_id INT PRIMARY KEY,
    claim_id INT NOT NULL,
    document_type VARCHAR(80),
    submitted_date DATE,
    verification_status VARCHAR(30),
    verified_by INT,
    FOREIGN KEY (claim_id) REFERENCES Claims(claim_id),
    FOREIGN KEY (verified_by) REFERENCES Employees(employee_id)
);

INSERT INTO Claim_Documents
(
    document_id,
    claim_id,
    document_type,
    submitted_date,
    verification_status,
    verified_by
)
VALUES
(1, 1, 'Death Certificate', '2026-01-18', 'Verified', 1),
(2, 2, 'Medical Report', '2026-02-12', 'Under Review', 2),
(3, 3, 'Hospital Bill', '2026-03-07', 'Verified', 3),
(4, 4, 'Medical Bills', '2026-03-20', 'Verified', 4),
(5, 5, 'Disability Certificate', '2026-04-15', 'Under Review', 5),
(6, 6, 'Hospital Discharge Summary', '2026-04-28', 'Verified', 6),
(7, 7, 'Maturity Documents', '2026-03-18', 'Verified', 7),
(8, 8, 'Survival Benefit Form', '2026-05-10', 'Verified', 8),
(9, 9, 'Death Certificate', '2026-05-23', 'Under Review', 9),
(10, 10, 'Hospital Bill', '2026-06-05', 'Verified', 10),
(11, 11, 'Medical Report', '2026-06-18', 'Rejected', 11),
(12, 12, 'Medical Bills', '2026-07-01', 'Verified', 12),
(13, 13, 'Accident Report', '2026-07-08', 'Under Review', 13),
(14, 14, 'Hospital Discharge Summary', '2026-07-15', 'Verified', 14),
(15, 15, 'Maturity Documents', '2026-07-20', 'Verified', 15),
(16, 16, 'Disability Certificate', '2026-07-25', 'Under Review', 16),
(17, 17, 'Survival Benefit Form', '2026-08-02', 'Verified', 17),
(18, 18, 'Disability Certificate', '2026-08-04', 'Under Review', 18),
(19, 19, 'Disability Certificate', '2026-08-07', 'Verified', 19),
(20, 20, 'Travel Medical Report', '2026-08-10', 'Verified', 20),
(21, 21, 'Income Proof', '2026-08-12', 'Under Review', 21),
(22, 22, 'Hospital Bill', '2026-08-14', 'Verified', 22),
(23, 23, 'Accident Report', '2026-08-17', 'Rejected', 23),
(24, 24, 'Maturity Documents', '2023-11-22', 'Verified', 24),
(25, 25, 'Death Certificate', '2026-08-20', 'Under Review', 25);

SELECT * FROM Claim_Documents;


------- 20. create claim_assessments table -----------
CREATE TABLE Claim_Assessments (
    assessment_id INT PRIMARY KEY,
    claim_id INT NOT NULL,
    assessor_employee_id INT NOT NULL,
    assessment_date DATE,
    approved_amount DECIMAL(14,2),
    assessment_result VARCHAR(30),
    remarks VARCHAR(255),
    FOREIGN KEY (claim_id) REFERENCES Claims(claim_id),
    FOREIGN KEY (assessor_employee_id) REFERENCES Employees(employee_id)
);

INSERT INTO Claim_Assessments
(
    assessment_id,
    claim_id,
    assessor_employee_id,
    assessment_date,
    approved_amount,
    assessment_result,
    remarks
)
VALUES
(1, 1, 1, '2026-01-20', 2000000.00, 'Approved', 'Claim documents verified and amount approved.'),
(2, 2, 2, '2026-02-15', 0.00, 'Under Review', 'Additional medical documents required.'),
(3, 3, 3, '2026-03-10', 120000.00, 'Approved', 'Hospital expenses verified successfully.'),
(4, 4, 4, '2026-03-22', 80000.00, 'Approved', 'Eligible medical expenses approved.'),
(5, 5, 5, '2026-04-18', 0.00, 'Under Review', 'Disability assessment is pending.'),
(6, 6, 6, '2026-05-01', 90000.00, 'Approved', 'Hospital bills verified and approved.'),
(7, 7, 7, '2026-03-20', 800000.00, 'Approved', 'Maturity claim verified successfully.'),
(8, 8, 8, '2026-05-12', 200000.00, 'Approved', 'Survival benefit approved as per policy terms.'),
(9, 9, 9, '2026-05-25', 0.00, 'Under Review', 'Death claim verification is in progress.'),
(10, 10, 10, '2026-06-08', 170000.00, 'Approved', 'Eligible hospitalization expenses approved.'),
(11, 11, 11, '2026-06-20', 0.00, 'Rejected', 'Claim does not meet policy coverage conditions.'),
(12, 12, 12, '2026-07-03', 115000.00, 'Approved', 'Medical expenses verified and approved.'),
(13, 13, 13, '2026-07-10', 0.00, 'Under Review', 'Accident documents require further verification.'),
(14, 14, 14, '2026-07-18', 140000.00, 'Approved', 'Hospitalization documents found satisfactory.'),
(15, 15, 15, '2026-07-22', 4000000.00, 'Approved', 'Maturity amount approved according to policy terms.'),
(16, 16, 16, '2026-07-27', 0.00, 'Under Review', 'Additional disability documents required.'),
(17, 17, 17, '2026-08-04', 240000.00, 'Approved', 'Survival benefit approved after verification.'),
(18, 18, 18, '2026-08-06', 0.00, 'Under Review', 'Partial disability assessment is pending.'),
(19, 19, 19, '2026-08-09', 700000.00, 'Approved', 'Disability claim approved after assessment.'),
(20, 20, 20, '2026-08-12', 175000.00, 'Approved', 'Travel medical expenses verified.'),
(21, 21, 21, '2026-08-14', 0.00, 'Under Review', 'Income documents are being reviewed.'),
(22, 22, 22, '2026-08-16', 70000.00, 'Approved', 'Hospitalization expenses approved.'),
(23, 23, 23, '2026-08-19', 0.00, 'Rejected', 'Submitted accident documents were insufficient.'),
(24, 24, 24, '2023-11-25', 2000000.00, 'Approved', 'Maturity claim successfully assessed.'),
(25, 25, 25, '2026-08-21', 0.00, 'Under Review', 'Death claim requires additional verification.');

SELECT * FROM Claim_Assessments;


------- 21. create claim_payments table -------------
CREATE TABLE Claim_Payments (
    claim_payment_id INT PRIMARY KEY,
    claim_id INT NOT NULL,
    payment_date DATE,
    payment_amount DECIMAL(14,2),
    payment_method_id INT NOT NULL,
    payment_status VARCHAR(30),
    transaction_reference VARCHAR(40),
    FOREIGN KEY (claim_id) REFERENCES Claims(claim_id),
    FOREIGN KEY (payment_method_id) REFERENCES Payment_Methods(payment_method_id)
);

INSERT INTO Claim_Payments
(
    claim_payment_id,
    claim_id,
    payment_date,
    payment_amount,
    payment_method_id,
    payment_status,
    transaction_reference
)
VALUES
(1, 1, '2026-01-25', 2000000.00, 9, 'Paid', 'CLMPAY20260001'),
(2, 2, NULL, 0.00, 6, 'Pending', 'CLMPAY20260002'),
(3, 3, '2026-03-15', 120000.00, 7, 'Paid', 'CLMPAY20260003'),
(4, 4, '2026-03-27', 80000.00, 11, 'Paid', 'CLMPAY20260004'),
(5, 5, NULL, 0.00, 6, 'Pending', 'CLMPAY20260005'),
(6, 6, '2026-05-05', 90000.00, 7, 'Paid', 'CLMPAY20260006'),
(7, 7, '2026-03-25', 800000.00, 2, 'Paid', 'CLMPAY20260007'),
(8, 8, '2026-05-17', 200000.00, 8, 'Paid', 'CLMPAY20260008'),
(9, 9, NULL, 0.00, 9, 'Pending', 'CLMPAY20260009'),
(10, 10, '2026-06-12', 170000.00, 6, 'Paid', 'CLMPAY20260010'),
(11, 11, NULL, 0.00, 7, 'Rejected', 'CLMPAY20260011'),
(12, 12, '2026-07-08', 115000.00, 9, 'Paid', 'CLMPAY20260012'),
(13, 13, NULL, 0.00, 6, 'Pending', 'CLMPAY20260013'),
(14, 14, '2026-07-22', 140000.00, 7, 'Paid', 'CLMPAY20260014'),
(15, 15, '2026-07-27', 4000000.00, 10, 'Paid', 'CLMPAY20260015'),
(16, 16, NULL, 0.00, 6, 'Pending', 'CLMPAY20260016'),
(17, 17, '2026-08-08', 240000.00, 8, 'Paid', 'CLMPAY20260017'),
(18, 18, NULL, 0.00, 7, 'Pending', 'CLMPAY20260018'),
(19, 19, '2026-08-13', 700000.00, 11, 'Paid', 'CLMPAY20260019'),
(20, 20, '2026-08-15', 175000.00, 19, 'Paid', 'CLMPAY20260020'),
(21, 21, NULL, 0.00, 6, 'Pending', 'CLMPAY20260021'),
(22, 22, '2026-08-18', 70000.00, 7, 'Paid', 'CLMPAY20260022'),
(23, 23, NULL, 0.00, 9, 'Rejected', 'CLMPAY20260023'),
(24, 24, '2023-11-30', 2000000.00, 2, 'Paid', 'CLMPAY20260024'),
(25, 25, NULL, 0.00, 9, 'Pending', 'CLMPAY20260025');

SELECT * FROM Claim_Payments;


------- 22. create medical_examinations table -----------
CREATE TABLE Medical_Examinations (
    examination_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    policy_id INT NOT NULL,
    examination_date DATE,
    medical_center VARCHAR(120),
    bmi DECIMAL(5,2),
    smoker_status VARCHAR(20),
    medical_risk VARCHAR(30),
    result VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id)
);

INSERT INTO Medical_Examinations
(
    examination_id,
    customer_id,
    policy_id,
    examination_date,
    medical_center,
    bmi,
    smoker_status,
    medical_risk,
    result
)
VALUES
(1, 1, 1, '2021-06-20', 'Apollo Medical Center Pune', 23.40, 'Non-Smoker', 'Low', 'Passed'),
(2, 2, 2, '2022-03-25', 'Fortis Hospital Mumbai', 24.10, 'Non-Smoker', 'Low', 'Passed'),
(3, 3, 3, '2020-08-30', 'Wockhardt Hospital Nashik', 27.80, 'Smoker', 'Medium', 'Passed'),
(4, 4, 4, '2023-01-18', 'Ruby Hall Clinic Pune', 22.60, 'Non-Smoker', 'Low', 'Passed'),
(5, 5, 5, '2019-11-25', 'Orange City Hospital Nagpur', 29.40, 'Smoker', 'High', 'Conditional'),
(6, 6, 6, '2022-07-25', 'Jupiter Hospital Thane', 25.20, 'Non-Smoker', 'Low', 'Passed'),
(7, 7, 7, '2021-02-28', 'Apollo Hospital Navi Mumbai', 30.10, 'Smoker', 'High', 'Conditional'),
(8, 8, 8, '2023-06-15', 'Sahyadri Hospital Pune', 21.80, 'Non-Smoker', 'Low', 'Passed'),
(9, 9, 9, '2019-09-25', 'Manipal Hospital Bangalore', 26.50, 'Non-Smoker', 'Medium', 'Passed'),
(10, 10, 10, '2021-12-28', 'Narayana Health Bangalore', 23.90, 'Non-Smoker', 'Low', 'Passed'),
(11, 11, 11, '2020-04-25', 'Apollo Hospital Chennai', 28.20, 'Smoker', 'Medium', 'Conditional'),
(12, 12, 12, '2023-02-15', 'KMCH Coimbatore', 22.30, 'Non-Smoker', 'Low', 'Passed'),
(13, 13, 13, '2019-07-30', 'Yashoda Hospital Hyderabad', 31.20, 'Smoker', 'High', 'Conditional'),
(14, 14, 14, '2022-10-20', 'Care Hospital Hyderabad', 24.70, 'Non-Smoker', 'Low', 'Passed'),
(15, 15, 15, '2018-06-05', 'Max Hospital New Delhi', 27.10, 'Non-Smoker', 'Medium', 'Passed'),
(16, 16, 16, '2021-09-25', 'Fortis Hospital Noida', 25.80, 'Non-Smoker', 'Medium', 'Passed'),
(17, 17, 17, '2020-12-10', 'Medanta Hospital Lucknow', 29.70, 'Smoker', 'High', 'Conditional'),
(18, 18, 18, '2019-03-30', 'Zydus Hospital Ahmedabad', 23.50, 'Non-Smoker', 'Low', 'Passed'),
(19, 19, 19, '2022-02-28', 'Kokilaben Hospital Surat', 26.90, 'Smoker', 'Medium', 'Passed'),
(20, 20, 20, '2023-05-25', 'Fortis Hospital Jaipur', 24.20, 'Non-Smoker', 'Low', 'Passed'),
(21, 21, 21, '2021-04-28', 'AMRI Hospital Kolkata', 28.60, 'Smoker', 'Medium', 'Conditional'),
(22, 22, 22, '2023-03-25', 'Bansal Hospital Bhopal', 22.90, 'Non-Smoker', 'Low', 'Passed'),
(23, 23, 23, '2020-07-25', 'Bombay Hospital Indore', 27.50, 'Non-Smoker', 'Medium', 'Passed'),
(24, 24, 24, '2018-11-30', 'Aster Medcity Kochi', 30.40, 'Smoker', 'High', 'Conditional'),
(25, 25, 25, '2022-05-25', 'Fortis Hospital Chandigarh', 23.70, 'Non-Smoker', 'Low', 'Passed');

SELECT * FROM Medical_Examinations;


--------- 23. create underwriting table ----------- 
CREATE TABLE Underwriting (
    underwriting_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    underwriter_employee_id INT NOT NULL,
    assessment_date DATE,
    risk_score INT,
    risk_category VARCHAR(30),
    decision VARCHAR(30),
    loading_percent DECIMAL(6,2),
    remarks VARCHAR(255),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (underwriter_employee_id) REFERENCES Employees(employee_id)
);

INSERT INTO Underwriting 
(
    underwriting_id,
    policy_id,
    underwriter_employee_id,
    assessment_date,
    risk_score,
    risk_category,
    decision,
    loading_percent,
    remarks
)
VALUES
(1, 1, 1, '2021-06-25', 18, 'Low', 'Approved', 0.00, 'Standard risk profile.'),
(2, 2, 2, '2022-04-05', 22, 'Low', 'Approved', 0.00, 'Application meets underwriting guidelines.'),
(3, 3, 3, '2020-09-02', 48, 'Medium', 'Approved', 10.00, 'Moderate health risk observed.'),
(4, 4, 4, '2023-01-25', 15, 'Low', 'Approved', 0.00, 'Healthy applicant with low risk.'),
(5, 5, 5, '2019-12-01', 72, 'High', 'Approved', 25.00, 'Higher risk due to medical history.'),
(6, 6, 6, '2022-07-30', 28, 'Low', 'Approved', 0.00, 'Risk within acceptable range.'),
(7, 7, 7, '2021-03-05', 68, 'High', 'Approved', 20.00, 'Additional loading applied due to risk factors.'),
(8, 8, 8, '2023-06-25', 12, 'Low', 'Approved', 0.00, 'Excellent health profile.'),
(9, 9, 9, '2019-10-05', 42, 'Medium', 'Approved', 8.00, 'Moderate risk requiring additional monitoring.'),
(10, 10, 10, '2022-01-05', 20, 'Low', 'Approved', 0.00, 'Standard underwriting assessment.'),
(11, 11, 11, '2020-05-01', 55, 'Medium', 'Approved', 15.00, 'Medical risk identified and loading applied.'),
(12, 12, 12, '2023-03-05', 16, 'Low', 'Approved', 0.00, 'Application approved under standard terms.'),
(13, 13, 13, '2019-08-05', 78, 'High', 'Approved', 30.00, 'High-risk profile with additional premium loading.'),
(14, 14, 14, '2022-10-25', 24, 'Low', 'Approved', 0.00, 'Low-risk applicant.'),
(15, 15, 15, '2018-06-10', 39, 'Medium', 'Approved', 5.00, 'Moderate risk with minor loading.'),
(16, 16, 16, '2021-10-01', 35, 'Medium', 'Approved', 5.00, 'Risk acceptable with additional loading.'),
(17, 17, 17, '2020-12-15', 70, 'High', 'Approved', 25.00, 'High medical risk identified.'),
(18, 18, 18, '2019-04-10', 14, 'Low', 'Approved', 0.00, 'Healthy applicant and standard risk.'),
(19, 19, 19, '2022-02-15', 46, 'Medium', 'Approved', 10.00, 'Moderate risk due to lifestyle factors.'),
(20, 20, 20, '2023-05-30', 19, 'Low', 'Approved', 0.00, 'No significant underwriting concerns.'),
(21, 21, 21, '2021-05-05', 52, 'Medium', 'Approved', 12.00, 'Additional risk assessment completed.'),
(22, 22, 22, '2023-03-30', 11, 'Low', 'Approved', 0.00, 'Very low-risk application.'),
(23, 23, 23, '2020-07-30', 44, 'Medium', 'Approved', 8.00, 'Moderate risk accepted with loading.'),
(24, 24, 24, '2018-12-05', 75, 'High', 'Approved', 28.00, 'High-risk profile; loading applied.'),
(25, 25, 25, '2022-06-01', 21, 'Low', 'Approved', 0.00, 'Application approved under standard terms.');

SELECT * FROM Underwriting;


------ 24. create beneficiaries table ----------
CREATE TABLE Beneficiaries (
    beneficiary_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    beneficiary_name VARCHAR(100),
    relationship VARCHAR(30),
    date_of_birth DATE,
    share_percent DECIMAL(5,2),
    contact_number VARCHAR(20),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id)
);

INSERT INTO Beneficiaries
(
    beneficiary_id,
    policy_id,
    beneficiary_name,
    relationship,
    date_of_birth,
    share_percent,
    contact_number
)
VALUES
(1, 1, 'Anita Sharma', 'Spouse', '1992-05-14', 100.00, '9876501001'),
(2, 2, 'Rahul Patil', 'Son', '2001-08-22', 100.00, '9876501002'),
(3, 3, 'Meena Kulkarni', 'Spouse', '1990-11-10', 100.00, '9876501003'),
(4, 4, 'Amit Deshmukh', 'Son', '1998-03-18', 100.00, '9876501004'),
(5, 5, 'Pooja Joshi', 'Spouse', '1991-07-25', 100.00, '9876501005'),
(6, 6, 'Rohan Mehta', 'Son', '2003-01-12', 100.00, '9876501006'),
(7, 7, 'Sunita Verma', 'Spouse', '1988-09-30', 100.00, '9876501007'),
(8, 8, 'Karan Shah', 'Son', '2000-06-15', 100.00, '9876501008'),
(9, 9, 'Neha Gupta', 'Daughter', '1999-12-05', 100.00, '9876501009'),
(10, 10, 'Vijay Rao', 'Spouse', '1987-04-20', 100.00, '9876501010'),
(11, 11, 'Priya Nair', 'Daughter', '2002-10-11', 100.00, '9876501011'),
(12, 12, 'Suresh Iyer', 'Spouse', '1985-02-28', 100.00, '9876501012'),
(13, 13, 'Kavita Singh', 'Spouse', '1993-06-19', 100.00, '9876501013'),
(14, 14, 'Arjun Kapoor', 'Son', '2001-09-07', 100.00, '9876501014'),
(15, 15, 'Nisha Malhotra', 'Daughter', '1997-05-23', 100.00, '9876501015'),
(16, 16, 'Manish Yadav', 'Spouse', '1989-12-16', 100.00, '9876501016'),
(17, 17, 'Ritu Mishra', 'Spouse', '1991-03-09', 100.00, '9876501017'),
(18, 18, 'Vikas Bansal', 'Son', '2004-07-14', 100.00, '9876501018'),
(19, 19, 'Shweta Agarwal', 'Daughter', '2000-11-26', 100.00, '9876501019'),
(20, 20, 'Deepak Chavan', 'Spouse', '1986-08-18', 100.00, '9876501020'),
(21, 21, 'Sneha Pawar', 'Daughter', '2003-04-05', 100.00, '9876501021'),
(22, 22, 'Nitin Jadhav', 'Spouse', '1984-10-27', 100.00, '9876501022'),
(23, 23, 'Asha Reddy', 'Mother', '1965-01-15', 100.00, '9876501023'),
(24, 24, 'Mahesh Kamat', 'Spouse', '1982-06-30', 100.00, '9876501024'),
(25, 25, 'Ishita Desai', 'Daughter', '2005-02-17', 100.00, '9876501025');

SELECT * FROM Beneficiaries;



------ 25. create policy_status_history table ------------- 
CREATE TABLE Policy_Status_History (
    history_id INT PRIMARY KEY,
    policy_id INT NOT NULL,
    old_status VARCHAR(30),
    new_status VARCHAR(30),
    changed_date DATE,
    changed_by INT NOT NULL,
    change_reason VARCHAR(150),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (changed_by) REFERENCES Employees(employee_id)
);

INSERT INTO Policy_Status_History
(
    history_id,
    policy_id,
    old_status,
    new_status,
    changed_date,
    changed_by,
    change_reason
)
VALUES
(1, 1, 'Pending', 'Active', '2021-07-01', 1, 'Policy issued after successful verification'),
(2, 2, 'Pending', 'Active', '2022-04-15', 2, 'Policy activated after premium payment'),
(3, 3, 'Pending', 'Active', '2020-09-10', 3, 'Underwriting completed successfully'),
(4, 4, 'Pending', 'Active', '2023-02-01', 4, 'Policy approved and activated'),
(5, 5, 'Pending', 'Active', '2019-12-10', 5, 'Policy issued after medical assessment'),
(6, 6, 'Pending', 'Active', '2022-08-05', 6, 'Initial premium received'),
(7, 7, 'Active', 'Matured', '2026-03-15', 7, 'Policy reached maturity date'),
(8, 8, 'Pending', 'Active', '2023-07-10', 8, 'Policy activated after approval'),
(9, 9, 'Pending', 'Active', '2019-10-20', 9, 'Policy issued successfully'),
(10, 10, 'Pending', 'Active', '2022-01-15', 10, 'Premium payment received'),
(11, 11, 'Pending', 'Active', '2020-05-10', 11, 'Underwriting approval completed'),
(12, 12, 'Pending', 'Active', '2023-03-20', 12, 'Policy activated successfully'),
(13, 13, 'Pending', 'Active', '2019-08-15', 13, 'Medical assessment completed'),
(14, 14, 'Pending', 'Active', '2022-11-01', 14, 'Policy approved by underwriting'),
(15, 15, 'Pending', 'Active', '2018-06-15', 15, 'Policy issued after successful verification'),
(16, 16, 'Pending', 'Active', '2021-10-10', 16, 'Policy activated after premium payment'),
(17, 17, 'Pending', 'Active', '2020-12-20', 17, 'Underwriting process completed'),
(18, 18, 'Pending', 'Active', '2019-04-25', 18, 'Policy approved and activated'),
(19, 19, 'Pending', 'Active', '2022-03-10', 19, 'Initial premium received'),
(20, 20, 'Pending', 'Active', '2023-05-15', 20, 'Policy issued successfully'),
(21, 21, 'Pending', 'Active', '2021-05-20', 21, 'Policy activated after approval'),
(22, 22, 'Pending', 'Active', '2023-04-10', 22, 'Premium payment received'),
(23, 23, 'Pending', 'Active', '2020-08-01', 23, 'Policy approved by underwriting'),
(24, 24, 'Active', 'Matured', '2023-12-15', 24, 'Policy reached maturity date'),
(25, 25, 'Pending', 'Active', '2022-06-20', 25, 'Policy activated after verification');

SELECT * FROM Policy_Status_History;


                --JOINS--

--1) “Show me all policies along with the customer who owns them.”
SELECT
    p.policy_number,
    c.customer_name,
    p.sum_assured,
    p.premium_amount,
    p.status
FROM Policies p
INNER JOIN Customers c
    ON p.customer_id = c.customer_id;


--2) “Who is the customer, and which agent sold their policy?”
SELECT
    p.policy_number,
    c.customer_name,
    a.agent_name,
    p.premium_amount,
    p.status
FROM Policies p
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Agents a
    ON p.agent_id = a.agent_id;


--3) “Which branch issued each policy?”
SELECT
    p.policy_number,
    c.customer_name,
    b.branch_name,
    b.city,
    p.issue_date
FROM Policies p
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Branches b
    ON p.branch_id = b.branch_id;


--4) “Which insurance product does each customer have?”
SELECT
    p.policy_number,
    c.customer_name,
    ip.product_name,
    ip.product_category,
    p.sum_assured,
    p.premium_amount
FROM Policies p
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Insurance_Products ip
    ON p.product_id = ip.product_id;


--5) “Show policy number, customer and type of policy.”
SELECT
    p.policy_number,
    c.customer_name,
    pt.policy_type_name,
    pt.description
FROM Policies p
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Policy_Types pt
    ON p.policy_type_id = pt.policy_type_id;


--6) “Show all customers, including customers who don't have a policy.”
SELECT
    c.customer_id,
    c.customer_name,
    p.policy_number,
    p.status
FROM Customers c
LEFT JOIN Policies p
    ON c.customer_id = p.customer_id;


    -- “Find customers who haven't purchased any policy yet"
    SELECT
        c.customer_id,
        c.customer_name
    FROM Customers c
    LEFT JOIN Policies p
        ON c.customer_id = p.customer_id
    WHERE p.policy_id IS NULL;


--7) “Show the premium due for every policy.”
SELECT
    p.policy_number,
    c.customer_name,
    pp.due_frequency,
    pp.premium_due_amount,
    pp.next_due_date,
    pp.plan_status
FROM Policies p
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Premium_Plans pp
    ON p.policy_id = pp.policy_id;


--8) “Which customers have paid their premiums?”
SELECT
    p.policy_number,
    c.customer_name,
    pp.payment_date,
    pp.amount_paid,
    pp.payment_status,
    pp.transaction_reference
FROM Premium_Payments pp
INNER JOIN Policies p
    ON pp.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id;


--9) “How did customers pay their premiums?”
SELECT
    p.policy_number,
    c.customer_name,
    pp.amount_paid,
    pm.method_name,
    pm.channel,
    pp.payment_date
FROM Premium_Payments pp
INNER JOIN Policies p
    ON pp.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Payment_Methods pm
    ON pp.payment_method_id = pm.payment_method_id;


--10) “Show all claims along with the customer and policy.”
SELECT
    cl.claim_number,
    c.customer_name,
    p.policy_number,
    cl.claim_date,
    cl.claimed_amount,
    cl.claim_status
FROM Claims cl
INNER JOIN Policies p
    ON cl.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id;


--11) What type of claim has been submitted?”
SELECT
    cl.claim_number,
    c.customer_name,
    ct.claim_type_name,
    cl.claimed_amount,
    cl.claim_status
FROM Claims cl
INNER JOIN Policies p
    ON cl.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Claim_Types ct
    ON cl.claim_type_id = ct.claim_type_id;


--12) “Who submitted/is associated with the claim as nominee?”
SELECT
    cl.claim_number,
    c.customer_name,
    n.nominee_name,
    n.relationship,
    cl.claimed_amount,
    cl.claim_status
FROM Claims cl
INNER JOIN Policies p
    ON cl.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
LEFT JOIN Nominees n
    ON cl.nominee_id = n.nominee_id;


--13) “Who verified the documents for each claim?”
SELECT
    cl.claim_number,
    c.customer_name,
    cd.document_type,
    cd.verification_status,
    e.employee_name AS verified_by
FROM Claim_Documents cd
INNER JOIN Claims cl
    ON cd.claim_id = cl.claim_id
INNER JOIN Policies p
    ON cl.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Employees e
    ON cd.verified_by = e.employee_id;


--14) "Which employee assessed the claim and how much was approved?”
SELECT
    cl.claim_number,
    c.customer_name,
    cl.claimed_amount,
    ca.approved_amount,
    e.employee_name AS assessor,
    ca.assessment_result,
    ca.remarks
FROM Claim_Assessments ca
INNER JOIN Claims cl
    ON ca.claim_id = cl.claim_id
INNER JOIN Policies p
    ON cl.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Employees e
    ON ca.assessor_employee_id = e.employee_id;


--15) “How much was actually paid against each claim?”
SELECT
    cl.claim_number,
    c.customer_name,
    cl.claimed_amount,
    cp.payment_amount,
    cp.payment_date,
    cp.payment_status
FROM Claim_Payments cp
INNER JOIN Claims cl
    ON cp.claim_id = cl.claim_id
INNER JOIN Policies p
    ON cl.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id;


--16) “Which employee underwrote each customer's policy?”
SELECT
    p.policy_number,
    c.customer_name,
    e.employee_name AS underwriter,
    u.risk_score,
    u.risk_category,
    u.decision,
    u.loading_percent
FROM Underwriting u
INNER JOIN Policies p
    ON u.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Employees e
    ON u.underwriter_employee_id = e.employee_id;


--17) “Show the medical examination details for every insured customer.”
SELECT
    c.customer_name,
    p.policy_number,
    me.examination_date,
    me.medical_center,
    me.bmi,
    me.smoker_status,
    me.medical_risk,
    me.result
FROM Medical_Examinations me
INNER JOIN Customers c
    ON me.customer_id = c.customer_id
INNER JOIN Policies p
    ON me.policy_id = p.policy_id;
    

--18) “Who will receive the policy benefits?”
SELECT
    p.policy_number,
    c.customer_name AS policyholder,
    b.beneficiary_name,
    b.relationship,
    b.share_percent
FROM Beneficiaries b
INNER JOIN Policies p
    ON b.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id;


--19) “Who changed the policy status and why?”
SELECT
    p.policy_number,
    c.customer_name,
    psh.old_status,
    psh.new_status,
    psh.changed_date,
    e.employee_name,
    psh.change_reason
FROM Policy_Status_History psh
INNER JOIN Policies p
    ON psh.policy_id = p.policy_id
INNER JOIN Customers c
    ON p.customer_id = c.customer_id
INNER JOIN Employees e
    ON psh.changed_by = e.employee_id;


--20) “Give me a complete policy report showing customer, branch, agent, product, premium, and policy status.”
SELECT
    p.policy_number,
    c.customer_name,
    b.branch_name,
    b.city,
    a.agent_name,
    ip.product_name,
    pt.policy_type_name,
    p.sum_assured,
    p.premium_amount,
    p.premium_frequency,
    p.status
FROM Policies p

INNER JOIN Customers c
    ON p.customer_id = c.customer_id

INNER JOIN Branches b
    ON p.branch_id = b.branch_id

INNER JOIN Agents a
    ON p.agent_id = a.agent_id

INNER JOIN Insurance_Products ip
    ON p.product_id = ip.product_id

INNER JOIN Policy_Types pt
    ON p.policy_type_id = pt.policy_type_id;


--Complete Claim Analysis
SELECT
    cl.claim_number,
    c.customer_name,
    p.policy_number,
    ct.claim_type_name,
    cl.claimed_amount,
    ca.approved_amount,
    cp.payment_amount,
    cl.claim_status,
    ca.assessment_result,
    cp.payment_status
FROM Claims cl

INNER JOIN Policies p
    ON cl.policy_id = p.policy_id

INNER JOIN Customers c
    ON p.customer_id = c.customer_id

INNER JOIN Claim_Types ct
    ON cl.claim_type_id = ct.claim_type_id

LEFT JOIN Claim_Assessments ca
    ON cl.claim_id = ca.claim_id

LEFT JOIN Claim_Payments cp
    ON cl.claim_id = cp.claim_id;