CREATE TABLE ciudadanos_pasatiempos(
  id NUMBER(7) PRIMARY KEY,
  ciudadano_id NUMBER(7),
  pasatiempo_id NUMBER(7),
  horas_semana NUMBER(3),
  FOREIGN KEY (ciudadano_id) REFERENCES ciudadanos,
  FOREIGN KEY (pasatiempo_id) REFERENCES pasatiempos
);

ALTER TABLE ciudadanos_pasatiempos ADD (
  CONSTRAINT ciudadanos_pasatiempos_pk PRIMARY KEY (id));

CREATE SEQUENCE ciudadanos_pasatiempos_seq START WITH 1;

CREATE OR REPLACE TRIGGER ciudadanos_pasatiempos_pk 
BEFORE INSERT ON ciudadanos_pasatiempos 
FOR EACH ROW

BEGIN
  SELECT ciudadanos_pasatiempos_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- down

ALTER TABLE ciudadanos_pasatiempos
DROP CONSTRAINT constraint_name;