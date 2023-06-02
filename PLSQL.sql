set serveroutput on
declare
doc_name varchar(30);

begin
--displays 1 row
select doctor_name into doc_name from DOCTOR where DOCTOR.DOCTOR_ID=01;
dbms_output.put_line(doc_name);

end;
/




--%type
set serveroutput on
declare
p_name PATIENT.PATIENT_NAME%type;
p_age PATIENT.AGE%type;
p_gender PATIENT.GENDER%type;
begin 
select PATIENT.patient_name , age , PATIENT.GENDER into p_name,p_age , p_gender from PATIENT where patient_id=101;
dbms_output.put_line('name : '||p_name||' ; age : '||p_age ||' ; Gender : '||p_gender );
end;
/




--default value and insert

set serveroutput on
declare
p_id PATIENT.PATIENT_ID%type :=134;
p_name PATIENT.PATIENT_NAME%type :='Ananya';
p_email PATIENT.EMAIL%type :='ananya10@gmail.com';
p_phone PATIENT.PHONE_NO%type :='0123569';
p_age PATIENT.AGE%type :=23;
p_gender PATIENT.GENDER%type :='F';
begin
 insert into Patient values (p_id,p_name,p_email,p_phone,p_age,p_gender);
end;
/
--example
select * from Patient where patient_id=134;
delete from Patient where patient_id=134;





--%rowtype
set serveroutput on
declare 
doc_row DOCTOR%rowtype;
begin
select doctor_id,doctor_name,unit into doc_row.doctor_id,doc_row.doctor_name,doc_row.unit from DOCTOR where doctor_id=7;
dbms_output.put_line(doc_row.doctor_id || ' '|| doc_row.DOCTOR_NAME || ' '|| doc_row.UNIT);
end;
/





--cursor


--1
set serveroutput on
declare
p_var PATIENT%Rowtype;
cursor C is select * from PATIENT where age>20;
begin
open C;
fetch C into p_var.PATIENT_ID,p_var.patient_name,p_var.email,p_var.PHONE_NO,p_var.AGE,p_var.GENDER;
while C%FOUND loop
fetch C into p_var.PATIENT_ID,p_var.patient_name,p_var.email,p_var.PHONE_NO,p_var.AGE,p_var.GENDER;
dbms_output.put_line(p_var.patient_id || ' '|| p_var.patient_name );
end loop;
close C;
end;
/





--2: rowcount 

set serveroutput on
declare 
cursor C is select * from medical_history;
var medical_history%Rowtype;
i int :=0;
begin
open C;
fetch C into var.patient_id, var.condition,var.treatment_history;
while C%FOUND
loop
--step by step rows
dbms_output.put_line('row : ' || C%rowcount);
fetch C into var.patient_id, var.condition,var.treatment_history;
end loop;
-- Total row
dbms_output.put_line('Total row : ' || C%rowcount);

close C;
end;
/






--Varray

set serveroutput on
declare
type namelist is Varray(5) of DOCTOR.DOCTOR_NAME%type;
counter int;
names DOCTOR.DOCTOR_NAME%type;
namearray namelist :=namelist();
begin
counter :=1;
for x in 3..6 loop
select doctor_name into names from DOCTOR where doctor_id=x;
namearray.extend();
namearray (counter) :=names;
counter := counter +1;
end loop;
counter :=1;
while counter <=namearray.count
loop
DBMS_OUTPUT.PUT_LINE(namearray(counter)); 
    counter:=counter+1;

end loop;
end;
/







--Varray without extend()

set serveroutput on
declare
type namelist is Varray(5) of DOCTOR.DOCTOR_NAME%type;
counter int;
names DOCTOR.DOCTOR_NAME%type;
namearray namelist := namelist('name1','name2','name3','name4');
begin
counter :=1;
for x in 4..7 loop
select doctor_name into names from DOCTOR where doctor_id=x;
namearray (counter) :=names;
counter := counter +1;
end loop;
counter :=1;
while counter <=namearray.count
loop
DBMS_OUTPUT.PUT_LINE(namearray(counter)); 
    counter:=counter+1;

end loop;
end;
/






--conditional statements

set serveroutput on
DECLARE 
   working_unit DOCTOR.UNIT%type;
BEGIN
   FOR x IN 1..18  
   LOOP
      SELECT unit INTO working_unit FROM doctor WHERE doctor_id=x;
      if working_unit='burn' 
        then
        dbms_output.put_line(' works in burn unit ');
      elsif working_unit='surgery'  
        then
         dbms_output.put_line(' This doctor is a surgeon ');
      else 
         dbms_output.put_line(' other ');
        end if;
   END LOOP;
END;










--procedure

create or replace procedure Find_Doc(pat_name in varchar,doc_name out varchar) as
text varchar(30);
--doc_name DOCTOR.DOCTOR_NAME%type;

begin
select doctor_name into doc_name from DOCTOR where doctor_id = (select doctor_id  from ADMITTED_PATIENTS where patient_id = (select patient_id from Patient where patient_name=pat_name));
text:='procedure result : ';
dbms_output.put_line(text || doc_name);
end;
/
set serveroutput on
declare
pat_name PATIENT.PATIENT_NAME%type := 'Shimu';
doc_name DOCTOR.DOCTOR_NAME%type; 

begin
find_doc(pat_name,doc_name);
end;
/




--using SYS_REFCURSOR 
--given a patient name find the name of the doctor in charge

set serveroutput on
--multiple row output
CREATE OR REPLACE PROCEDURE Find_Doc_many(pat_name IN VARCHAR2, doc_name OUT SYS_REFCURSOR) AS
  text VARCHAR2(30);
BEGIN
  OPEN doc_name FOR
    SELECT doctor_name
    FROM DOCTOR
    WHERE doctor_id = (
      SELECT doctor_id
      FROM ADMITTED_PATIENTS
      WHERE patient_id = (
        SELECT patient_id
        FROM Patient
        WHERE patient_name = pat_name
      )
    );
    
  DBMS_OUTPUT.PUT_LINE('Procedure result:');
  LOOP
    FETCH doc_name INTO text;
    EXIT WHEN doc_name%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(text);
  END LOOP;
  
  CLOSE doc_name;
END;
/
set serveroutput on
DECLARE
  pat_name PATIENT.PATIENT_NAME%TYPE := 'Shimu';
  doc_name SYS_REFCURSOR;
BEGIN
  Find_Doc_many(pat_name, doc_name);
END;



--Given a condition check if any currently admitted patient has history of this condition

set serveroutput on
Create or replace Procedure find_pat (condn in varchar, p_name out varchar,pat OUT SYS_REFCURSOR) AS
begin
OPEN pat for
select patient_name into p_name from PATIENT where patient_id in (select patient_id from ADMITTED_PATIENTS where patient_id in (
select patient_id from MEDICAL_HISTORY where condition=condn));
loop
    fetch pat into p_name ;
    EXIT WHEN pat%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('patient ' || p_name || ' has ' || condn );
  END LOOP;
  
  CLOSE pat;
END;
DECLARE
  pat SYS_REFCURSOR;
  p_name PATIENT.PATIENT_NAME%type;
BEGIN
  find_pat('Stroke',p_name,pat);
END;
/


-- if any patient is admitted for more than 10 days print the patient's name
set serveroutput on
create OR replace procedure Days(d OUT SYS_REFCURSOR) AS
  p_name PATIENT.PATIENT_NAME%type;
begin
  open d for select patient_name into p_name from PATIENT where patient_id in (select patient_id from ADMITTED_PATIENTS where
  release_date-admit_date>=10);
  loop
    fetch d into p_name ;
    EXIT WHEN d%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('patient ' || p_name || ' has severe condition' );
  END LOOP;
  
  CLOSE d;
END;
DECLARE
  d SYS_REFCURSOR;
BEGIN
  Days(d);
END;
/






--function

create or replace function find_pat_name(var1 in int) return varchar AS
value patient.patient_name%type;
begin
  select patient_name into value from patient where patient_id=var1; 
   return value;
end;
/
set serveroutput on
declare 
value varchar(20);
begin
value:=find_pat_name(121);
dbms_output.put_line ('The Functional value : ' || value);
end;
/




--drop function or procedure
drop procedure Find_Doc;
drop function find_pat_name;
drop PROCEDURE Find_Doc_many;



