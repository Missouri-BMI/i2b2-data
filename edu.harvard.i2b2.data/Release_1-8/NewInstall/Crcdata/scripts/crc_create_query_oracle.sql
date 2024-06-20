--==============================================================
-- Database Script to create CRC query tables                   
--                                                            
-- This script will create tables, indexes and sequences. 	    
-- User should have permission to create VARRAY type            										                       
--==============================================================

--===========================================================================
-- Table: QT_QUERY_MASTER 											          
--============================================================================
CREATE TABLE QT_QUERY_MASTER (
	QUERY_MASTER_ID		NUMBER(5,0) PRIMARY KEY,
	NAME				VARCHAR2(250) NOT NULL,
	USER_ID				VARCHAR2(50) NOT NULL,
	GROUP_ID			VARCHAR2(50) NOT NULL,
	MASTER_TYPE_CD		VARCHAR2(2000),
	PLUGIN_ID			NUMBER(10,0),
	CREATE_DATE			DATE NOT NULL,
	DELETE_DATE			DATE,
	DELETE_FLAG			VARCHAR2(3),
	GENERATED_SQL		CLOB,
	REQUEST_XML			CLOB,
	I2B2_REQUEST_XML	CLOB,
	PM_XML				CLOB
)
;
CREATE INDEX QT_IDX_QM_UGID ON QT_QUERY_MASTER(USER_ID,GROUP_ID,MASTER_TYPE_CD)
;


--============================================================================
-- Table: QT_QUERY_RESULT_TYPE										          
--============================================================================
CREATE TABLE QT_QUERY_RESULT_TYPE (
	RESULT_TYPE_ID				NUMBER(3,0) PRIMARY KEY,
	NAME						VARCHAR2(100),
	DESCRIPTION					VARCHAR2(200),
	DISPLAY_TYPE_ID				VARCHAR2(500),
	VISUAL_ATTRIBUTE_TYPE_ID	VARCHAR2(3),
	USER_ROLE_CD 				VARCHAR2(255),
	CLASSNAME					VARCHAR2(200)
)
;


--============================================================================
-- Table: QT_QUERY_STATUS_TYPE										          
--============================================================================
CREATE TABLE QT_QUERY_STATUS_TYPE (
	STATUS_TYPE_ID	NUMBER(3,0) PRIMARY KEY,
	NAME			VARCHAR2(100),
	DESCRIPTION		VARCHAR2(200)
)
;


--============================================================================
-- Table: QT_QUERY_INSTANCE 										          
--============================================================================
CREATE TABLE QT_QUERY_INSTANCE (
	QUERY_INSTANCE_ID	NUMBER(5,0) PRIMARY KEY,
	QUERY_MASTER_ID		NUMBER(5,0),
	USER_ID				VARCHAR2(50) NOT NULL,
	GROUP_ID			VARCHAR2(50) NOT NULL,
	BATCH_MODE			VARCHAR2(50),
	START_DATE			DATE NOT NULL,
	END_DATE			DATE,
	DELETE_FLAG			VARCHAR2(3),
	STATUS_TYPE_ID		NUMBER(5,0),
	MESSAGE				CLOB,
	CONSTRAINT QT_FK_QI_MID FOREIGN KEY (QUERY_MASTER_ID)
		REFERENCES QT_QUERY_MASTER (QUERY_MASTER_ID),
	CONSTRAINT QT_FK_QI_STID FOREIGN KEY (STATUS_TYPE_ID)
		REFERENCES QT_QUERY_STATUS_TYPE (STATUS_TYPE_ID)
)
;
CREATE INDEX QT_IDX_QI_UGID ON QT_QUERY_INSTANCE(USER_ID,GROUP_ID)
;
CREATE INDEX QT_IDX_QI_MSTARTID ON QT_QUERY_INSTANCE(QUERY_MASTER_ID,START_DATE)
;


--=============================================================================
-- Table: QT_QUERY_RESULT_INSTANCE   								        
--============================================================================
CREATE TABLE QT_QUERY_RESULT_INSTANCE (
	RESULT_INSTANCE_ID	NUMBER(5,0) PRIMARY KEY,
	QUERY_INSTANCE_ID	NUMBER(5,0),
	RESULT_TYPE_ID		NUMBER(3,0) NOT NULL,
	SET_SIZE			NUMBER(10,0),
	START_DATE			DATE NOT NULL,
	END_DATE			DATE,
	DELETE_FLAG			VARCHAR2(3),
	STATUS_TYPE_ID		NUMBER(3,0) NOT NULL,
	MESSAGE				CLOB,
	DESCRIPTION			VARCHAR2(200),
	REAL_SET_SIZE		NUMBER(10,0),
	OBFUSC_METHOD		VARCHAR2(500),
	CONSTRAINT QT_FK_QRI_RID FOREIGN KEY (QUERY_INSTANCE_ID)
		REFERENCES QT_QUERY_INSTANCE (QUERY_INSTANCE_ID),
	CONSTRAINT QT_FK_QRI_RTID FOREIGN KEY (RESULT_TYPE_ID)
		REFERENCES QT_QUERY_RESULT_TYPE (RESULT_TYPE_ID),
	CONSTRAINT QT_FK_QRI_STID FOREIGN KEY (STATUS_TYPE_ID)
		REFERENCES QT_QUERY_STATUS_TYPE (STATUS_TYPE_ID)
)
;


--============================================================================
-- Table: QT_PATIENT_SET_COLLECTION									         
--============================================================================
CREATE TABLE QT_PATIENT_SET_COLLECTION ( 
	PATIENT_SET_COLL_ID		NUMBER(10,0) PRIMARY KEY,
	RESULT_INSTANCE_ID		NUMBER(5,0),
	SET_INDEX				NUMBER(10,0),
	PATIENT_NUM				NUMBER(38,0),
	CONSTRAINT QT_FK_PSC_RI FOREIGN KEY (RESULT_INSTANCE_ID)
		REFERENCES QT_QUERY_RESULT_INSTANCE (RESULT_INSTANCE_ID)
)
;

CREATE INDEX QT_IDX_QPSC_RIID ON QT_PATIENT_SET_COLLECTION(RESULT_INSTANCE_ID)
;


--============================================================================
-- Table: QT_PATIENT_ENC_COLLECTION									         
--============================================================================
CREATE TABLE QT_PATIENT_ENC_COLLECTION (
	PATIENT_ENC_COLL_ID		NUMBER(10,0) PRIMARY KEY,
	RESULT_INSTANCE_ID		NUMBER(5,0),
	SET_INDEX				NUMBER(10,0),
	PATIENT_NUM				NUMBER(38,0),
	ENCOUNTER_NUM			NUMBER(38,0),
	CONSTRAINT QT_FK_PESC_RI FOREIGN KEY (RESULT_INSTANCE_ID)
		REFERENCES QT_QUERY_RESULT_INSTANCE(RESULT_INSTANCE_ID)
)
;


--============================================================================
-- Table: QT_XML_RESULT												          
--============================================================================
CREATE TABLE QT_XML_RESULT (
	XML_RESULT_ID		NUMBER(5,0) PRIMARY KEY,
	RESULT_INSTANCE_ID	NUMBER(5,0),
	XML_VALUE			CLOB,
	CONSTRAINT QT_FK_XMLR_RIID FOREIGN KEY (RESULT_INSTANCE_ID)
		REFERENCES QT_QUERY_RESULT_INSTANCE (RESULT_INSTANCE_ID)
)
;


--============================================================================
-- Table: QT_ANALYSIS_PLUGIN												          
--============================================================================
CREATE TABLE QT_ANALYSIS_PLUGIN (
	PLUGIN_ID			NUMBER(10,0) NOT NULL,
	PLUGIN_NAME			VARCHAR2(2000),
	DESCRIPTION			VARCHAR2(2000),
	VERSION_CD			VARCHAR2(50),			--support for version
	PARAMETER_INFO		CLOB,					-- plugin parameter stored as xml
	PARAMETER_INFO_XSD	CLOB,
	COMMAND_LINE		CLOB,
	WORKING_FOLDER		CLOB,
	COMMANDOPTION_CD	CLOB,
	PLUGIN_ICON			CLOB,
	STATUS_CD			VARCHAR2(50),			-- active,deleted,..
	USER_ID				VARCHAR2(50),
	GROUP_ID			VARCHAR2(50),
	CREATE_DATE			DATE,
	UPDATE_DATE			DATE,
	CONSTRAINT ANALYSIS_PLUGIN_PK PRIMARY KEY(PLUGIN_ID)
)
;
CREATE INDEX QT_APNAMEVERGRP_IDX ON QT_ANALYSIS_PLUGIN(PLUGIN_NAME,VERSION_CD,GROUP_ID)
;


--============================================================================
-- Table: QT_ANALYSIS_PLUGIN_RESULT_TYPE											          
--============================================================================
CREATE TABLE QT_ANALYSIS_PLUGIN_RESULT_TYPE (
	PLUGIN_ID		NUMBER(10,0),
	RESULT_TYPE_ID	NUMBER(10,0),
	CONSTRAINT ANALYSIS_PLUGIN_RESULT_PK PRIMARY KEY(PLUGIN_ID,RESULT_TYPE_ID)
)
;


--============================================================================
-- Table: QT_PDO_QUERY_MASTER											          
--============================================================================
CREATE TABLE QT_PDO_QUERY_MASTER (
	QUERY_MASTER_ID		NUMBER(5,0) PRIMARY KEY,
	USER_ID				VARCHAR2(50) NOT NULL,
	GROUP_ID			VARCHAR2(50) NOT NULL,
	CREATE_DATE			DATE NOT NULL,
	REQUEST_XML			CLOB,
	I2B2_REQUEST_XML	CLOB
)
;
CREATE INDEX QT_IDX_PQM_UGID ON QT_PDO_QUERY_MASTER(USER_ID,GROUP_ID)
;


--============================================================================
-- Table: QT_PRIVILEGE											          
--============================================================================
CREATE TABLE QT_PRIVILEGE (
	PROTECTION_LABEL_CD		VARCHAR2(1500) PRIMARY KEY,
	DATAPROT_CD				VARCHAR2(1000),
	HIVEMGMT_CD				VARCHAR2(1000),
	PLUGIN_ID				NUMBER(10,0)
)
;


--============================================================================
-- Table: QT_BREAKDOWN_PATH											          
--============================================================================
CREATE TABLE QT_BREAKDOWN_PATH ( 
	NAME			VARCHAR2(100),
	VALUE			CLOB,
	CREATE_DATE		DATE,
	UPDATE_DATE		DATE,
	USER_ID			VARCHAR2(50)
)
;


--============================================================================
-- CREATE GLOBALS
--============================================================================
create  GLOBAL TEMPORARY TABLE TEMP_PDO_INPUTLIST    ( 
char_param1 varchar2(100)
 ) ON COMMIT PRESERVE ROWS
;

-- DX
CREATE GLOBAL TEMPORARY TABLE DX  (
	ENCOUNTER_NUM	NUMBER(38,0),
	INSTANCE_NUM	NUMBER(38,0),
	PATIENT_NUM		NUMBER(38,0),
	CONCEPT_CD 		varchar2(50), 
	START_DATE 		DATE,
	PROVIDER_ID 	varchar2(50), 
	temporal_start_date date, 
	temporal_end_date DATE	
 ) on COMMIT PRESERVE ROWS
;

-- QUERY_GLOBAL_TEMP
CREATE GLOBAL TEMPORARY TABLE QUERY_GLOBAL_TEMP   ( 
	ENCOUNTER_NUM	NUMBER(38,0),
	PATIENT_NUM		NUMBER(38,0),
	INSTANCE_NUM	NUMBER(18,0) ,
	CONCEPT_CD      VARCHAR2(50),
	START_DATE	    DATE,
	PROVIDER_ID     VARCHAR2(50),
	PANEL_COUNT		NUMBER(5,0),
	FACT_COUNT		NUMBER(22,0),
	FACT_PANELS		NUMBER(5,0)
 ) on COMMIT PRESERVE ROWS
;

-- GLOBAL_TEMP_PARAM_TABLE
 CREATE GLOBAL TEMPORARY TABLE GLOBAL_TEMP_PARAM_TABLE   (
	SET_INDEX	INT,
	CHAR_PARAM1	VARCHAR2(500),
	CHAR_PARAM2	VARCHAR2(500),
	NUM_PARAM1	INT,
	NUM_PARAM2	INT
) ON COMMIT PRESERVE ROWS
;

-- GLOBAL_TEMP_FACT_PARAM_TABLE
CREATE GLOBAL TEMPORARY TABLE GLOBAL_TEMP_FACT_PARAM_TABLE   (
	SET_INDEX	INT,
	CHAR_PARAM1	VARCHAR2(500),
	CHAR_PARAM2	VARCHAR2(500),
	NUM_PARAM1	INT,
	NUM_PARAM2	INT
) ON COMMIT PRESERVE ROWS
;

-- MASTER_QUERY_GLOBAL_TEMP
CREATE GLOBAL TEMPORARY TABLE MASTER_QUERY_GLOBAL_TEMP    ( 
	ENCOUNTER_NUM	NUMBER(38,0),
	PATIENT_NUM		NUMBER(38,0),
	INSTANCE_NUM	NUMBER(18,0) ,
	CONCEPT_CD      VARCHAR2(50),
	START_DATE	    DATE,
	PROVIDER_ID     VARCHAR2(50),
	MASTER_ID		VARCHAR2(50),
	LEVEL_NO		NUMBER(5,0),
	TEMPORAL_START_DATE DATE,
	TEMPORAL_END_DATE DATE
 ) ON COMMIT PRESERVE ROWS
;


--------------------------------------------------------
--SEQUENCE CREATION
--------------------------------------------------------

--QUERY MASTER SEQUENCE
CREATE SEQUENCE QT_SQ_QM_QMID START WITH 1
;

--QUERY RESULT 
CREATE SEQUENCE QT_SQ_QR_QRID START WITH 1
;

CREATE SEQUENCE QT_SQ_QS_QSID START WITH 1
;

--QUERY INSTANCE SEQUENCE
CREATE SEQUENCE QT_SQ_QI_QIID START WITH 1
;

--QUERY RESULT INSTANCE ID
CREATE SEQUENCE QT_SQ_QRI_QRIID START WITH 1
;

--QUERY PATIENT SET RESULT COLLECTION ID
CREATE SEQUENCE QT_SQ_QPR_PCID START WITH 1
;

--QUERY PATIENT ENCOUNTER SET RESULT COLLECTION ID
CREATE SEQUENCE QT_SQ_QPER_PECID START WITH 1
;

--QUERY XML RESULT INSTANCE ID
CREATE SEQUENCE QT_SQ_QXR_XRID START WITH 1
;

--QUERY PDO MASTER SEQUENCE
CREATE SEQUENCE QT_SQ_PQM_QMID START WITH 1
;



--------------------------------------------------------
--INIT WITH SEED DATA
--------------------------------------------------------
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(1,'QUEUED',' WAITING IN QUEUE TO START PROCESS')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(2,'PROCESSING','PROCESSING')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(3,'FINISHED','FINISHED')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(4,'ERROR','ERROR')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(5,'INCOMPLETE','INCOMPLETE')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(6,'COMPLETED','COMPLETED')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(7,'MEDIUM_QUEUE','MEDIUM QUEUE')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(8,'LARGE_QUEUE','LARGE QUEUE')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(9,'CANCELLED','CANCELLED')
;
insert into QT_QUERY_STATUS_TYPE(STATUS_TYPE_ID,NAME,DESCRIPTION) values(10,'TIMEDOUT','TIMEDOUT')
;



insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(1,'PATIENTSET','Patient set','LIST','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientSetGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(2,'PATIENT_ENCOUNTER_SET','Encounter set','LIST','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultEncounterSetGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(3,'XML','Generic query result','CATNUM','LH',null)
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(4,'PATIENT_COUNT_XML','Number of patients','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientCountGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(5,'PATIENT_GENDER_COUNT_XML','Gender patient breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(6,'PATIENT_VITALSTATUS_COUNT_XML','Vital Status patient breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(7,'PATIENT_RACE_COUNT_XML','Race patient breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(8,'PATIENT_AGE_COUNT_XML','Age patient breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(9,'PATIENTSET','Timeline','LIST','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientSetGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(10,'PATIENT_LOS_XML','DATA_LDS','Length of stay breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientSQLCountGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(11,'PATIENT_TOP20MEDS_XML','DATA_LDS','Top 20 medications breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientSQLCountGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(12,'PATIENT_TOP20DIAG_XML','DATA_LDS','Top 20 diagnoses breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientSQLCountGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(13,'PATIENT_INOUT_XML','DATA_LDS','Inpatient and outpatient breakdown','CATNUM','LA','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientSQLCountGenerator')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(114,'PATIENT_DEMOGRAPHIC_REQUEST','DATA_LDS','Request Demographics Data','CATNUM','LR','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientRequest')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(115,'PATIENT_MEDICATION_REQUEST','DATA_LDS','Request Medication Data','CATNUM','LR','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientRequest')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(116,'PATIENT_PROCEDURE_REQUEST','DATA_LDS','Request Procedure Data','CATNUM','LR','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientRequest')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(117,'PATIENT_DIAGNOSIS_REQUEST','DATA_LDS','Request Diagnosis Data','CATNUM','LR','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientRequest')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(118,'PATIENT_LAB_REQUEST','DATA_LDS','Request Lab Data','CATNUM','LR','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientRequest')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(119,'PATIENT_DEMOGRAPHIC_CSV','MANAGER','Export Demographics Data','CATNUM','LX','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientDownload')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(120,'PATIENT_MEDICATION_CSV','MANAGER','Export Medication Data','CATNUM','LX','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientDownload')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(121,'PATIENT_PROCEDURE_CSV','MANAGER','Export Procedure Data','CATNUM','LX','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientDownload')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(122,'PATIENT_DIAGNOSIS_CSV','MANAGER','Export Diagnosis Data','CATNUM','LX','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientDownload')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(123,'PATIENT_LAB_CSV','MANAGER','Export Lab Data','CATNUM','LX','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientDownload')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(124,'PATIENT_MAPPING_CSV','MANAGER','Export Patient Mapping','CATNUM','LX','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientDownload')
;
insert into QT_QUERY_RESULT_TYPE(RESULT_TYPE_ID,NAME,USER_ROLE_CD,DESCRIPTION,DISPLAY_TYPE_ID,VISUAL_ATTRIBUTE_TYPE_ID,CLASSNAME) values(126,'PATIENT_MAPPING_REQUEST','DATA_LDS','Request Patient Mapping','CATNUM','LR','edu.harvard.i2b2.crc.dao.setfinder.QueryResultPatientRequest')
;

insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('PDO_WITHOUT_BLOB','DATA_LDS','USER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('PDO_WITH_BLOB','DATA_DEID','USER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('SETFINDER_QRY_WITH_DATAOBFSC','DATA_OBFSC','USER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('SETFINDER_QRY_WITHOUT_DATAOBFSC','DATA_AGG','USER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('UPLOAD','DATA_OBFSC','MANAGER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('SETFINDER_QRY_WITHOUT_LGTEXT','DATA_LDS','USER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('SETFINDER_QRY_WITH_LGTEXT','DATA_DEID','USER')
;
insert into QT_PRIVILEGE(PROTECTION_LABEL_CD, DATAPROT_CD, HIVEMGMT_CD) values ('SETFINDER_QRY_PROTECTED','DATA_PROT','USER')
;



--------------------------------------------------------
-- ARRAY TYPE FOR PDO QUERY
--------------------------------------------------------
CREATE OR REPLACE TYPE QT_PDO_QRY_INT_ARRAY AS varray(100000) of  NUMBER(20)
; 

CREATE OR REPLACE TYPE QT_PDO_QRY_STRING_ARRAY AS varray(100000) of  VARCHAR2(150)
;




















