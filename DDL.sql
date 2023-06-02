show user
select table_name from user_tables;

drop table Admitted_Patients;
drop table Appointment;
drop table medical_history;
drop table Patient;
drop table Doctor;
show linesize;
show pagesize;
set linesize 500;
set pagesize 500;

--DemoTables for showing on delete cascade

create table Doctor
  (
  name varchar(10) not null,
  id number primary key check (id>=0),
  unit varchar(20) not null,
  Constraint UnitIn check
  (unit in ('burn','surgery')
  )
  );
desc Doctor;
alter table Doctor add experience varchar(10);
alter table Doctor add age varchar(10);
desc Doctor;
alter table Doctor modify age number;
desc Doctor;
alter table Doctor modify age number check (age>=20 and age<=80);
desc Doctor;
alter table Doctor rename column id to doc_id;
desc Doctor;
alter table Doctor rename column doc_id to id;
desc Doctor;
alter table Doctor rename to DemoDoctor;
desc DemoDoctor;
alter table DemoDoctor rename to Doctor;
desc Doctor;
alter table Doctor drop column experience;
desc Doctor;
insert into Doctor values ('abc','1','burn','20');
select * from Doctor;
--does not satisfy constraint
--insert into Doctor values (null,'1','burn','20');
--insert into Doctor (id,unit,age) values ('2','burn','20');
--insert into Doctor values ('abc','3','burn','10');
--insert into Doctor values ('abc','3','Neurology','10');
--select * from Doctor;

create table admitted_patients
  (doctor_id number PRIMARY KEY,
   patient_name varchar(20),
   foreign key (doctor_id) references Doctor (id)
   on delete cascade);
desc admitted_patients;

insert into admitted_patients values ('1','abc');
select * from admitted_patients;
delete from Doctor where id=1;
select * from Doctor;
select * from admitted_patients;
drop table admitted_patients;
drop table Doctor;


--Doctor
create table Doctor
(
     doctor_id int,
     doctor_name varchar(30) not null,
     unit varchar(30) not null,
     email varchar(30) unique not null,
     phone_no varchar(15) unique not null,
     primary key (doctor_id),
     Constraint UnitIn check
     (unit in ('burn','surgery','ICU','emergency medicine','NICU','neurology','nephrology',
     'cardiology','orthopedics','psychiatry','pediatrics','oncology','CCU')
     )
);

desc Doctor;


--Patient
create table Patient
(
patient_id int primary key,
patient_name varchar(30) not null,
email varchar(30) unique,
phone_no varchar(15) unique not null,
age number check(age>=0),
gender varchar(2) not null
);
desc patient;

--alter table
alter table patient add gender1 varchar(2);
desc patient;
alter table patient modify gender1 number;
desc patient;
alter table patient rename column gender1 to gender2;
desc patient;
alter table patient drop column gender2;
desc patient;


--medical_history
Create table medical_history
(
patient_id int not null ,
condition varchar(50) not null,
treatment_history varchar (50),
foreign key (patient_id) references Patient
);
desc medical_history;


--Admitted_Patients
Create table Admitted_Patients
(
doctor_id int not null,
patient_id int ,
ward varchar(30) not null,
condition varchar(50) not null,
admit_date Date not null,
release_date Date,
primary key(patient_id),
foreign key (doctor_id) references Doctor,
foreign key (patient_id) references Patient (patient_id),
CONSTRAINT duration CHECK
(
release_date>=admit_date
),
CONSTRAINT wardin CHECK
(
ward in ('burn','ICU','emergency medicine','NICU','nephrology',
     'orthopedics','psychiatry','children','CCU')
)
);
desc Admitted_Patients;


--Appointment
Create table Appointment
(doctor_id int not null,
patient_id int not null,
Appointment_date Date not null,
Appointment_time varchar(20) not null,
primary key(doctor_id,patient_id),
foreign key (doctor_id) references Doctor,
foreign key (patient_id) references Patient
);
desc Appointment;








