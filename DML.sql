--Doctor insert
--insert delete update 
insert into Doctor values('01','Dr Md. Mukitul Huda','burn','mukitulhuda@gmail.com','0123556');
insert into Doctor values('02','Dr Mrinal Sarker','surgery','mrinalsarker@gmail.com','0168768');
insert into Doctor values('03','Dr Liakat Hossain','ICU','liakathossain@gmail.com','0186876');
insert into Doctor values('04','Dr Jibon nesa','emergency medicine','jibonnesa@gmail.com','0168769');
insert into Doctor values('05','Dr Farruk Ahmed','NICU','farrukahmed@gmail.com','0187578');
select * from Doctor;
delete from doctor where doctor_id='05';
select * from Doctor;
update Doctor set doctor_name='Abc' where doctor_id='02';
select * from doctor;
--delete all rows
delete from Doctor;
select * from Doctor;


--insertion
insert into Doctor values('01','Dr Md. Mukitul Huda','burn','mukitulhuda@gmail.com','0123556');
insert into Doctor values('02','Dr Mrinal Sarker','surgery','mrinalsarker@gmail.com','0168768');
insert into Doctor values('03','Dr Liakat Hossain','emergency medicine','liakathossain@gmail.com','0186876');
insert into Doctor values('04','Dr Jibon nesa','emergency medicine','jibonnesa@gmail.com','0168769');
insert into Doctor values('05','Dr Farruk Ahmed','neurology','farrukahmed@gmail.com','0187578');
insert into Doctor values('06','Dr Evana Nasrin','neurology','evananasrin@gmail.com','019868');
insert into Doctor values('07','Dr Nabila Paul','nephrology','nabilapaul@gmail.com','979868');
insert into Doctor values('08','Dr Md. Mukitul Huda','cardiology','mukitul@gmail.com','012355689');
insert into Doctor values('09','Dr Nafisa Tasnim','orthopedics','tasnim@gmail.com','013724567234');
insert into Doctor values('10','Dr Abir Hossain','cardiology','abir@gmail.com','018687676');
insert into Doctor values('11','Dr Rhea','psychiatry','rhea@gmail.com','016876976');
insert into Doctor values('12','Dr Niasa Ahmed','pediatrics','niasaahmed@gmail.com','01875788687');
insert into Doctor values('13','Dr Nasrin','oncology','nasrin@gmail.com','0198688768');
insert into Doctor values('14','Dr Paul','orthopedics','paul@gmail.com','015979868');
insert into Doctor values('15','Dr Emon','burn','emon@gmail.com','01238987556');
insert into Doctor values('16','Dr Mridha','burn','mridha@gmail.com','0168766578');
insert into Doctor values('17','Dr Mukitul Huda','surgery','mukitulhuda1@gmail.com','012387556');
insert into Doctor values('18','Dr Mrinal','surgery','mrinal@gmail.com','016875468');
select * from Doctor;


--Patient insert
insert into Patient values ('101','Shimu','shimu@gmail.com','019865787661','23','F');
insert into Patient values ('102','Sina','sina@gmail.com','019865787681','2','M');
insert into Patient values ('103','Turjo','turjo@gmail.com','019865978761','23','M');
insert into Patient values ('104','Sujoy Kundu','sujoy@gmail.com','01986579061','29','M');
insert into Patient values ('105','Jesi','jesi@gmail.com','019865789061','13','F');
insert into Patient values ('106','Disha',null,'019889789061','10','F');
insert into Patient values ('107','Jesi',null,'01986578978','3','F');
insert into Patient values ('108','Imran','imran@gmail.com','0198899061','13','M');
insert into Patient values ('109','Naimur Rahman','naimurrahman@gmail.com','01986578761','23','M');
insert into Patient values ('110','Borhan Ul Alif','borhan@gmail.com','01989078762','24','M');
insert into Patient values ('111','Farhatun Shama','farhatunshama@gmail.com','01988663','20','F');
insert into Patient values ('112','Rafia Shahrin','rafiashahrin@gmail.com','019877674','19','F');
insert into Patient values ('113','Asadullah Galib','asadullahgalib@gmail.com','01998785','25','M');
insert into Patient values ('114','Habibur',null,'01998778986','25','M');
insert into Patient (patient_id,patient_name,phone_no,age,gender) values ('115','Sornaly','0199878907','20','F');
insert into Patient values ('116','Talha','talha@gmail.com','01909898788','2','M');
insert into Patient values ('117','Mashhura Mashfi','mashhuramashfi@gmail.com','019875569','15','F');
insert into Patient values ('118','Proma','proma@gmail.com','019875095610','15','F');
insert into Patient values ('119','Sabnaj Akhter','sabnajakter@gmail.com','019887611','23','F');
insert into Patient values ('120','Nibir','nibir@gmail.com','019887612','23','M');
insert into Patient values ('121','Ashfaq Mahmud','ashfaqmahmud@gmail.com','019870813','25','M');
insert into Patient values ('122','Afiat Khan','afiatkhan@gmail.com','019878614','20','M');
insert into Patient values ('123','Ankon','ankon@gmail.com','019878715','19','M');
insert into Patient values ('124','Lamisa Deya','lamisadeya@gmail.com','019875616','15','F');
insert into Patient values ('125','Arpita Kundu','arpitakundu@gmail.com','019357945217','12','F');
insert into Patient values ('126','Faria Mimi','faria@gmail.com','019357945218','13','F');
insert into Patient values ('127','Sumona','sumona@gmail.com','01935796717','12','F');
insert into Patient values ('128','Roxsana','roxsana@gmail.com','019357945219','21','F');
insert into Patient values ('129','Nabila','nabila@gmail.com','019357945220','43','F');
insert into Patient values ('130','Nabila','nabila_N@gmail.com','019357945221','21','F');

--does not satisfy primary key constraint/ integrity constraint
--insert into Patient values ('129','sujoy','sujoy@gmail.com','019357220','43','M');
--insert into Patient values ('131','Nabila','nabila@gmail.com','019357945220','43','F');

insert into Patient values ('131','Shaoni','shaoni@gmail.com','019357941310','21','F');
insert into Patient values ('132','Tara','tanha@gmail.com','0193578621','23','F');
insert into Patient values ('133','Sara','sara@gmail.com','0193579671','21','F');
select * from patient;

--delete and update
delete from Patient where patient_id=133;
--the line below will display no rows selected
select * from patient where patient_id=133;
select * from patient where patient_id='106';
update Patient set email='abc@gmail.com' where patient_id='106';
select * from Patient where patient_id='106';
select * from Patient where patient_name='Tara';
update Patient set patient_name='Tanha' where patient_name='Tara';
select * from Patient where patient_name='Tanha';


--medical_history
insert into medical_history (patient_id, condition,treatment_history) values ('101','fractured bone','Surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('102','Asthma','Medicine:inhaler');
insert into medical_history (patient_id, condition,treatment_history) values ('103','Stroke','Neuro-Surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('103','Heart block','Bypass surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('102','Allergy',null);
insert into medical_history (patient_id, condition,treatment_history) values ('104','Kidney damages','Dialysis');
insert into medical_history (patient_id, condition,treatment_history) values ('105','Asthma','Steroid Medicines');
insert into medical_history (patient_id, condition,treatment_history) values ('106','Stroke','Surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('107','Heart Attack','Bypass surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('110','Broken bone','Surgery');
insert into medical_history (patient_id, condition) values ('113','Respiratory Difficulties');
insert into medical_history (patient_id, condition) values ('123','sleeping Difficulties');
insert into medical_history (patient_id, condition,treatment_history) values ('114','Broken bone','Surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('124','Heart attack','Bypass surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('115','First degree burn','Medicines');
insert into medical_history (patient_id, condition,treatment_history) values ('116','Cholera','Vaccines');
insert into medical_history (patient_id, condition,treatment_history) values ('119','Covid','Medicines');
insert into medical_history (patient_id, condition,treatment_history) values ('119','Asthma','Medicines');
insert into medical_history (patient_id, condition,treatment_history) values ('121','Heart attack','Bypass surgery');
insert into medical_history (patient_id, condition,treatment_history) values ('125','Burn','Medicines');
insert into medical_history (patient_id, condition,treatment_history) values ('126','joints pain','Medicine');
insert into medical_history (patient_id, condition,treatment_history) values ('130','fractured bone','medicine');

select *  from medical_history;
select * from medical_history order by patient_id;



--Admitted_Patients

insert into Admitted_Patients values ('01','101','burn','third degree burn',(DATE '2021-03-22'),(DATE '2021-03-28'));
insert into Admitted_Patients values ('07','102','nephrology','dialysis',(DATE '2021-03-23'),(DATE '2021-03-23'));
insert into Admitted_Patients values ('15','103','burn','first degree burn',(DATE '2021-03-24'),(DATE '2021-04-01'));
insert into Admitted_Patients values ('07','104','nephrology','kidney failure',(DATE '2021-03-22'),(DATE '2021-03-27'));
insert into Admitted_Patients values ('01','106','burn','first degree burn ',(DATE '2021-03-21'),(DATE '2021-03-28'));
insert into Admitted_Patients values ('06','107','ICU','stroke',(DATE '2021-03-22'),(DATE '2021-03-28'));
insert into Admitted_Patients values ('15','108','burn','third  degree burn',(DATE '2021-03-22'),null);
insert into Admitted_Patients values ('06','110','ICU','stroke',(DATE '2021-03-26'),(DATE '2021-03-31'));
insert into Admitted_Patients values ('04','112','emergency medicine','Respiratory Difficulties',(DATE '2021-03-20'),null);
insert into Admitted_Patients values ('03','114','emergency medicine','pain',(DATE '2021-03-21'),(DATE '2021-03-27'));
insert into Admitted_Patients values ('05','115','ICU','stroke',(DATE '2021-03-22'),null);
insert into Admitted_Patients values ('12','116','children','fever',(DATE '2021-03-28'),(DATE '2021-03-28'));
insert into Admitted_Patients values ('08','128','ICU','coronary blockage',(DATE '2021-03-29'),(DATE '2021-03-31'));
insert into Admitted_Patients values ('12','125','children','fever',(DATE '2021-03-22'),(DATE '2021-04-24'));
insert into Admitted_Patients values ('02','122','CCU','fractured knee',(DATE '2021-03-22'),null);
insert into Admitted_Patients values ('18','123','NICU','fractured skull',(DATE '2021-03-22'),null);
insert into Admitted_Patients values ('17','124','NICU','knee injury',(DATE '2021-03-22'),null);
insert into Admitted_Patients values ('15','105','burn','third  degree burn',(DATE '2021-03-01'),(DATE '2021-03-22'));
insert into Admitted_Patients values ('12','117','children','fever',(DATE '2021-03-28'),(DATE '2021-04-28'));





select * from Admitted_Patients;
Update Admitted_Patients set condition='Asthma' where patient_id='122';
Update Admitted_Patients set release_date=(DATE '2023-03-22') where patient_id='125';
select * from admitted_patients;


--Appointment
insert into Appointment values ('01','101',(DATE '2023-04-01'),'10:00 am');
insert into Appointment values ('01','102',(DATE '2023-04-01'),'8:00 am');
insert into Appointment values ('02','103',(DATE '2023-04-02'),'10:00 am');
insert into Appointment values ('03','103',(DATE '2023-04-03'),'9:00 am');
insert into Appointment values ('04','108',(DATE '2023-04-03'),'10:00 am');
insert into Appointment values ('04','110',(DATE '2023-04-01'),'8:00 am');
insert into Appointment values ('04','111',(DATE '2023-04-02'),'10:00 am');
insert into Appointment values ('05','113',(DATE '2023-04-03'),'9:00 am');
insert into Appointment values ('06','114',(DATE '2023-04-05'),'10:00 am');
insert into Appointment values ('07','117',(DATE '2023-04-06'),'8:00 am');
insert into Appointment values ('07','118',(DATE '2023-04-01'),'10:00 am');
insert into Appointment values ('08','120',(DATE '2023-04-02'),'9:00 am');
insert into Appointment values ('09','121',(DATE '2023-04-03'),'10:00 am');
insert into Appointment values ('10','121',(DATE '2023-04-04'),'8:00 am');
insert into Appointment values ('11','123',(DATE '2023-04-06'),'10:00 am');
insert into Appointment values ('12','126',(DATE '2023-04-02'),'9:00 am');
insert into Appointment values ('13','127',(DATE '2023-04-05'),'10:00 am');
insert into Appointment values ('14','127',(DATE '2023-04-03'),'8:00 am');
insert into Appointment values ('15','128',(DATE '2023-04-01'),'10:00 am');
insert into Appointment values ('16','130',(DATE '2023-04-02'),'9:00 am');
insert into Appointment values ('15','109',(DATE '2023-04-01'),'10:00 am');
insert into Appointment values ('13','125',(DATE '2023-04-01'),'8:00 am');
insert into Appointment values ('17','129',(DATE '2023-04-02'),'10:00 am');
insert into Appointment values ('18','116',(DATE '2023-04-02'),'9:00 am');
select * from Appointment;


--select query
select * from Doctor where unit='surgery';
select * from Doctor where unit<>'surgery';
select * from Patient where gender='M';
select * from Patient where age<25;
select * from Patient where age<25 AND age>13;
select * from Patient where age<10 or age>21;
select patient_id from medical_history where condition='asthma';
select patient_id from Admitted_Patients where ward='ICU';
select patient_id from Admitted_Patients where ward='ICU' AND doctor_id='08';
select * from Appointment where doctor_id='01';


--string,union,intersect,except
select * from Doctor where unit like 'ne%logy';
select * from Doctor where unit like 'ne___logy';
select * from Doctor where unit like '%logy';
select * from Doctor where unit like '%o%';
select * from Doctor where unit like '%o%' union select * from Doctor where unit like '%logy';
select * from Doctor where unit like '%o%' intersect select * from Doctor where unit like '%logy';
select * from Doctor where unit like '%o%' except select * from Doctor where unit like '%logy';


--nested query
select doctor_name from Doctor where doctor_id=(select doctor_id from Appointment where patient_id=101);
--use 'in' for more than 1 row
select doctor_name from Doctor where doctor_id in (select doctor_id from Appointment where patient_id=103);
select doctor_name from Doctor where doctor_id in (select doctor_id from Appointment where patient_id=121);

select doctor_name from Doctor where doctor_id = (select doctor_id from Appointment where patient_id=121 and Appointment_date=(DATE '2023-04-03'));


--if an admitted patient has history of asthma then display the name of his/her current doctor
 select doctor_name from Doctor where doctor_id in (select doctor_id from Admitted_Patients where patient_id in (select patient_id from medical_history where condition='Asthma'));


--medical history of patients who have appointments with a specific doctor
select * from medical_history where patient_id in (select patient_id from Appointment where doctor_id in (select doctor_id from Doctor where doctor_name='Dr Jibon nesa'));

--nested query in update
update Patient set email='roxsana1@gmail.com' where patient_id in (select patient_id from Admitted_Patients where doctor_id in (select doctor_id from Doctor where doctor_name='Dr Md. Mukitul Huda')) and patient_name='Roxsana';


select * from Patient where patient_id in (select patient_id from Admitted_Patients where doctor_id in (select doctor_id from Doctor where doctor_name='Dr Md. Mukitul Huda')) and patient_name='Roxsana';





--with clause
 with max_age(age) as (select max(age) from Patient)
 select * from Patient, max_age where max_age.age=Patient.age;
with min_age(m_age) as (select min(age) from Patient)
 select * from Patient, min_age where min_age.m_age=Patient.age;




--Aggregate function
select count(*) from Doctor;
select count(*) as number_of_doctor from Doctor;
select count (distinct doctor_name) as Distinct_doc_name from Doctor;
select count(age) as ages_of_patient from Patient;
select count (distinct age) as Distinct_patient_age from Patient;
select avg(age) as avg_age from Patient;
select sum(age) as sum_age from Patient;
select max(age) as max_age from Patient;
select min(age) as min_age from Patient;
select avg(age) from patient where age>5;


--Group by and Having

select condition, count(patient_id) from medical_history group by condition;
select ward,count(patient_id) from Admitted_Patients group by ward;
select unit,count(*) from Doctor group by unit having unit like '____';
select age,count(age) from patient group by age having age>20;

--set membership
select * from medical_history where condition='Asthma' OR condition='Stroke';
select * from Patient where age>10 and patient_id in (select patient_id from medical_history where condition ='Heart attack');
select * from Patient where patient_id not in (select patient_id from Admitted_Patients);




--some/all / exists
select * from Patient where patient.age> some(select age from Patient where age>=13);
select * from Patient where patient.age>= all(select age from Patient where age>=2);
select * from Patient where patient.age> all(select age from Patient where age<40);
--max age 43 so no rows selected
select * from Patient where patient.age> some(select age from Patient where age>=43);
select * from Patient where patient.age> all(select age from Patient where age>=13);
select patient_id from Patient where age>10 and exists (select patient_id from Appointment where doctor_id=100);
select * from Patient where age>10 and exists (select patient_id from appointment where doctor_id=01);
select patient_id from Patient where exists (select patient_id from medical_history);


--Join operation

--natural join(attr not specified)
select * from Patient natural join medical_history;
select * from medical_history natural join Patient; 
select * from Patient natural join medical_history where age>20;
select * from Patient natural join Admitted_Patients;

--join or inner join
select * from Doctor join Appointment using(doctor_id);
select * from Doctor join Appointment using(doctor_id) where unit='surgery';
select * from Patient join Admitted_Patients using(patient_id);
--alternative syntax
select * from Patient join Admitted_Patients on Patient.patient_id=Admitted_Patients.patient_id;
select * from Patient join Admitted_Patients using(patient_id) where age>20;

--left outer join
select * from Patient left outer join Admitted_Patients using (patient_id);
select * from Admitted_Patients left outer join Patient using (patient_id);


--right outer join
select * from Patient right outer join Admitted_Patients using (patient_id);
select * from Admitted_Patients right outer join Patient using (patient_id);


--View

create view DocName as select doctor_id,doctor_name from Doctor;
create view treated_under as select * from Admitted_Patients where doctor_id=(select doctor_id from Doctor where doctor_name='Dr Nabila Paul');
create view  custom as select * from DocName where doctor_name like '%a%';
drop view custom;
drop view DocName;
drop view treated_under;


























--end