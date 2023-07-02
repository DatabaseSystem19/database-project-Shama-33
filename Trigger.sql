--trigger

--Insertion into Patient when an new patient is admitted

SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER trigger_patient
BEFORE INSERT on Admitted_Patients
for each row
enable
begin
INSERT into Patient values (:new.patient_id,'not entered','','000000','0','N');
end;
/
insert into Admitted_Patients values ('01','135','burn','asthma',(Date '2023-04-15'),'');
select * from Admitted_Patients where patient_id=135;
select * from Patient where patient_id=135;
delete from Admitted_Patients where patient_id=135;
--delete from medical_history where patient_id=135;
delete from Patient where patient_id=135;

drop Trigger trigger_patient;





SET SERVEROUTPUT ON

CREATE OR REPLACE TRIGGER trigger_history
AFTER INSERT on Admitted_Patients
FOR EACH ROW
ENABLE
DECLARE
  v_patient_id Admitted_Patients.patient_id%TYPE;
BEGIN
  v_patient_id := :new.patient_id;
  INSERT INTO medical_history 
  VALUES (v_patient_id, :new.condition, 'ongoing');
END;
/

insert into patient values ('136', 'abc', '', '01635099', '50', 'M');
insert into Admitted_Patients values ('01', '136', 'burn', 'asthma', (Date '2023-04-15'), '');
select * from Admitted_Patients where patient_id = '136';
select * from medical_history where patient_id = '136';
delete from Admitted_Patients where patient_id = '136';
delete from medical_history where patient_id = '136';
delete from patient where patient_id = '136';



drop Trigger trigger_history;


show errors;