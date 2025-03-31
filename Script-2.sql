create table if not exists Employee (
EmployeeID serial primary key,
EmployeeName VARCHAR(100) not NULL,
Department VARCHAR(100) not NULL,
LeadID INTEGER, 
FOREIGN KEY (LeadID) references Employee(EmployeeID)
);