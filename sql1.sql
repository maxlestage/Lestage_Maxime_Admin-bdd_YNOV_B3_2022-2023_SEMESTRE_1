--  CREATION DES TABLESPACE :
-- Je n'ai pas réussi à mettre en place l'encryption pour crypter les données du CLIENT
--DROP TABLESPACE TBS_GARAGE_EVAL INCLUDING CONTENTS AND DATAFILES;
CREATE TABLESPACE TBS_GARAGE_EVAL DATAFILE 'table_garage_eval.dbf' SIZE 20M AUTOEXTEND ON NEXT 20M MAXSIZE 100M;

--DROP TABLESPACE TBS_CLIENTS_EVAL INCLUDING CONTENTS AND DATAFILES;
CREATE TABLESPACE TBS_CLIENTS_EVAL DATAFILE 'table_clients_eval.dbf' SIZE 20M AUTOEXTEND ON NEXT 20M MAXSIZE 100M;

--DROP TABLESPACE TBS_ROLES_EVAL INCLUDING CONTENTS AND DATAFILES;
CREATE TABLESPACE TBS_ROLES_EVAL DATAFILE 'table_role_eval.dbf' SIZE 20M AUTOEXTEND ON NEXT 20M MAXSIZE 100M;

COMMIT;

-- Création des tables  et génération des FK directement:
CREATE TABLE A_CLIENTS (
    CLIENT_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    CLIENT_DEPOT DATE NOT NULL,
    CLIENT_RECUP DATE,
    CLIENT_PAYMENT_OK NUMBER DEFAULT 0 NOT NULL,
    CLIENT_CAR_BRAND_NAME VARCHAR(255) NOT NULL,
    CLIENT_CAR_ENGINE VARCHAR(255) NOT NULL,
    CLIENT_CAR_COULEUR VARCHAR(255) NOT NULL,
    CLIENT_CAR_IMMATRICULATION VARCHAR(255) NOT NULL
) TABLESPACE TBS_CLIENTS_EVAL;

CREATE TABLE A_GARAGE (
    GARAGE_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    GARAGE_CLIENT_ID INT NOT NULL,
    FOREIGN KEY (GARAGE_CLIENT_ID) REFERENCES A_CLIENTS(CLIENT_ID),
    GARAGE_FACTURE_CLIENT NUMBER DEFAULT 0 NOT NULL,
    GARAGE_WORK_START DATE NOT NULL,
    GARAGE_WORK_STOP DATE,
    GARAGE_PAYMENT_PRICE NUMBER DEFAULT 0 NOT NULL,
    GARAGE_PAYMENT_OK NUMBER DEFAULT 0 NOT NULL,
    GARAGE_CAR_IMMATRICULATION VARCHAR(255) NOT NULL
)TABLESPACE TBS_GARAGE_EVAL;

CREATE TABLE A_PAID_STATUS (
    PAID_STATUS_ID INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    PAID_STATUS_CLIENT_ID NUMBER DEFAULT 0 NOT NULL,
    FOREIGN KEY (PAID_STATUS_CLIENT_ID) REFERENCES A_CLIENTS(CLIENT_ID),
    PAID_STATUS_PRICE NUMBER DEFAULT 0 NOT NULL,
    PAID_STATUS_CLIENT_PAYMENT_OK NUMBER DEFAULT 0 NOT NULL
) TABLESPACE TBS_GARAGE_EVAL;

COMMIT;

-- CONFIGURER UNE SGA (MAX 400 MO ET QUE LA TARGET PAS LA MAX_SIZE).
ALTER SYSTEM SET SGA_TARGET=400M SCOPE=SPFILE;

-- CONFIGURER UNE PGA À 50Mo /USER
ALTER SYSTEM SET PGA_AGGREGATE_TARGET=50M;

COMMIT;

-- UNDO TABLESPACE
CREATE UNDO TABLESPACE UNDO_TBS DATAFILE 'UNDO_TBS.dbf' SIZE 50M;

COMMIT;

-- Tablespace temporaire
CREATE TEMPORARY TABLESPACE NAME TEMPFILE 'TEMPORARY_TBS.dbf' SIZE 10M;

COMMIT;

--  CRÉATION DE PRIVILÈGES :

GRANT SELECT, INSERT, UPDATE, DELETE ON A_CLIENTS, A_GARAGE, A_PAID_STATUS TO ADMIN;

GRANT SELECT, INSERT, UPDATE, DELETE ON A_CLIENTS, A_GARAGE, A_PAID_STATUS TO SECRETARY;

GRANT SELECT, INSERT, UPDATE, A_CLIENTS, A_GARAGE TO EMPLOYEE;

GRANT SELECT ON A_GARAGE, A_PAID_STATUS TO CLIENT;

COMMIT;

-- CRÉATION DE RÔLES :

CREATE ROLE ADMIN_ROLE;

GRANT ADMIN TO ADMIN_ROLE;

CREATE ROLE SECRETARY_ROLE;

GRANT SECRETARY TO SECRETARY_ROLE;

CREATE ROLE EMPLOYEE_ROLE;

GRANT EMPLOYEE TO EMPLOYEE_ROLE;

CREATE ROLE CLIENT_ROLE;

GRANT CLIENT TO CLIENT_ROLE;

COMMIT;

-- CRÉATION DE PROFILS :

CREATE PROFILE ADMIN_PROFILE;

GRANT ADMIN_ROLE TO ADMIN_PROFILE;

CREATE PROFILE SECRETARY_PROFILE;

GRANT SECRETARY_ROLE TO SECRETARY_PROFILE;

CREATE PROFILE EMPLOYEE_PROFILE;

GRANT EMPLOYEE_ROLE TO EMPLOYEE_PROFILE;

CREATE PROFILE CLIENT_PROFILE;

GRANT CLIENT_ROLE TO CLIENT_PROFILE;

COMMIT;

-- ATTRIBUTION DES PROFILS AUX UTILISATEURS :

ALTER USER PATRON SET PROFILE = ADMIN_PROFILE;

ALTER USER SECRETARY SET PROFILE = SECRETARY_PROFILE;

ALTER USER MECHANICIENS SET PROFILE = EMPLOYEE_PROFILE;

ALTER USER CLIENTS SET PROFILE = CLIENT_PROFILE;

COMMIT;