create table if not exists Department (
DepartmentID serial primary key,
DepartmentName VARCHAR (100)
);

create table if not exists Lead (
LeadID serial primary key,
LeadName VARCHAR(100) not null
DepartmentID INTEGER references Department(DepartmentID)
Employer VARCHAR(100)
);


create table if not exists Employee (
EmployeeID serial primary key,
EmployeeName VARCHAR(100) not null
DepartmentID INTEGER references Department(DepartmentID)
LeadID INTEGER references Lead(LeadID)
);

create table if not exists EmployeeLead (
EmployeeID INTEGER references Employee(EmployeeID)
LeadID INTEGER references Lead(LeadID)
);