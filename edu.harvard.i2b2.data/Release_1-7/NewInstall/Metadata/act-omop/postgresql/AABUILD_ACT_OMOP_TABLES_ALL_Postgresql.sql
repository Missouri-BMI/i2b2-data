
DROP TABLE IF EXISTS EMPTY_VIEW;
CREATE TABLE EMPTY_VIEW
   (
    ENCOUNTER_NUM INT ,
	PATIENT_NUM INT ,
	CONCEPT_CD VARCHAR(50) ,
	PROVIDER_ID VARCHAR(50) ,
	START_DATE DATE ,
	END_DATE timestamp,
	MODIFIER_CD VARCHAR(100) ,
	INSTANCE_NUM INT ,
	VALTYPE_CD VARCHAR(50),
	LOCATION_CD VARCHAR(50),
	TVAL_CHAR VARCHAR(255),
	NVAL_NUM INT ,
	VALUEFLAG_CD VARCHAR(50),
	UNITS_CD VARCHAR(50),
	CONFIDENCE_NUM FLOAT,
	SOURCESYSTEM_CD VARCHAR(50),
	UPDATE_DATE timestamp,
	DOWNLOAD_DATE timestamp,
	IMPORT_DATE timestamp,
	OBSERVATION_BLOB   text,
	UPLOAD_ID INT,
	QUANTITY_NUM INT ,
    SOURCE_CONCEPT_ID INT,
    SOURCE_VALUE VARCHAR(50),
    DOMAIN_ID VARCHAR(20)
   );


DROP TABLE IF EXISTS ACT_DEM_V41_OMOP;

CREATE TABLE ACT_DEM_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


DROP TABLE IF EXISTS ACT_VISIT_DETAILS_V41_OMOP;

CREATE TABLE ACT_VISIT_DETAILS_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


DROP TABLE IF EXISTS ACT_ICD10_ICD9_DX_V41_OMOP;

CREATE TABLE ACT_ICD10_ICD9_DX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_ICD10CM_DX_V41_OMOP;


CREATE TABLE ACT_ICD10CM_DX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50),
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)


   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_ICD10PCS_PX_V41_OMOP;

CREATE TABLE ACT_ICD10PCS_PX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_ICD9CM_DX_V41_OMOP;

CREATE TABLE ACT_ICD9CM_DX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_ICD9CM_PX_V41_OMOP;

CREATE TABLE ACT_ICD9CM_PX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_CPT4_PX_V41_OMOP;

CREATE TABLE ACT_CPT4_PX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_HCPCS_PX_V41_OMOP;

CREATE TABLE ACT_HCPCS_PX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300 ),
   	OMOP_NS_CONCEPT_ID           VARCHAR(50), 
    OMOP_S_CONCEPT_ID           VARCHAR(50), 
	I2B2_ACT_BASECODE           VARCHAR(50)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_MED_ALPHA_V41_OMOP;

CREATE TABLE ACT_MED_ALPHA_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_MED_VA_V41_OMOP;

CREATE TABLE ACT_MED_VA_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
   	OMOP_NS_CONCEPT_ID           VARCHAR(50), 
    OMOP_S_CONCEPT_ID           VARCHAR(50), 
	I2B2_ACT_BASECODE           VARCHAR(50),
		TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_LOINC_LAB_V41_OMOP;

CREATE TABLE ACT_LOINC_LAB_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_LOINC_LAB_PROV_V41_OMOP;

CREATE TABLE ACT_LOINC_LAB_PROV_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300 )
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_SDOH_V41_OMOP;

CREATE TABLE ACT_SDOH_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;

DROP TABLE IF EXISTS ACT_VITAL_SIGNS_V41_OMOP;

CREATE TABLE ACT_VITAL_SIGNS_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID           VARCHAR(50), 
    OMOP_S_CONCEPT_ID           VARCHAR(50), 
	I2B2_ACT_BASECODE           VARCHAR(50),
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


DROP TABLE IF EXISTS ACT_COVID_V41_OMOP;

CREATE TABLE ACT_COVID_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
   	OMOP_NS_CONCEPT_ID           VARCHAR(50), 
    OMOP_S_CONCEPT_ID           VARCHAR(50), 
	I2B2_ACT_BASECODE           VARCHAR(50),
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


-- NEW ONTOLOGIES
DROP TABLE IF EXISTS ACT_VAX_V41_OMOP;

CREATE TABLE ACT_VAX_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


DROP TABLE IF EXISTS ACT_RESEARCH_V41_OMOP;

CREATE TABLE ACT_RESEARCH_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


DROP TABLE IF EXISTS ACT_ZIPCODE_V41_OMOP;

CREATE TABLE ACT_ZIPCODE_V41_OMOP 
   (	
   C_HLEVEL         INT NOT NULL, 
	C_FULLNAME           VARCHAR(700) NOT NULL, 
	C_NAME           VARCHAR(2000) NOT NULL, 
	C_SYNONYM_CD         CHAR(1) NOT NULL, 
	C_VISUALATTRIBUTES         CHAR(3) NOT NULL, 
	C_TOTALNUM         INT, 
	C_BASECODE           VARCHAR(50), 
	C_METADATAXML           TEXT  NULL, 
	C_FACTTABLECOLUMN           VARCHAR(100), 
	C_TABLENAME           VARCHAR(50) NOT NULL, 
	C_COLUMNNAME           VARCHAR(50) NOT NULL, 
	C_COLUMNDATATYPE           VARCHAR(50) NOT NULL, 
	C_OPERATOR           VARCHAR(10) NOT NULL, 
	C_DIMCODE           VARCHAR(700) NOT NULL, 
	C_COMMENT           TEXT  NULL, 
	C_TOOLTIP           VARCHAR(900), 
	M_APPLIED_PATH           VARCHAR(700) NOT NULL, 
	UPDATE_DATE         DATE, 
	DOWNLOAD_DATE         DATE, 
	IMPORT_DATE         DATE, 
	SOURCESYSTEM_CD           VARCHAR(50), 
	VALUETYPE_CD           VARCHAR(50), 
	M_EXCLUSION_CD           VARCHAR(25), 
	C_PATH           VARCHAR(700), 
	C_SYMBOL           VARCHAR(50), 
	OMOP_NS_CONCEPT_ID VARCHAR(50), 
	OMOP_S_CONCEPT_ID VARCHAR(50), 
	I2B2_ACT_BASECODE VARCHAR(50), 
	TRANSLATION_RULE VARCHAR(300)
   ) ;
--COMMIT;


