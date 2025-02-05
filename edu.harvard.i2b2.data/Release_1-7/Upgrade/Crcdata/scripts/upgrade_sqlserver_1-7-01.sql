--==============================================================
-- Database Script to upgrade CRC from 1.7.01 to 1.7.02                  
--==============================================================


ALTER TABLE ENCOUNTER_MAPPING
DROP CONSTRAINT ENCOUNTER_MAPPING_PK
;

DROP INDEX ENCOUNTER_MAPPING.EM_IDX_ENCPATH
;

DROP INDEX ENCOUNTER_MAPPING.EM_IDX_UPLOADID
;

DROP INDEX ENCOUNTER_MAPPING.EM_ENCNUM_IDX
;

alter table ENCOUNTER_MAPPING alter column  PATIENT_IDE VARCHAR(200) NOT NULL
;

alter table ENCOUNTER_MAPPING alter column  PATIENT_IDE_SOURCE VARCHAR(50) NOT NULL
;

ALTER TABLE ENCOUNTER_MAPPING
ADD CONSTRAINT ENCOUNTER_MAPPING_PK PRIMARY KEY nonclustered (ENCOUNTER_IDE, ENCOUNTER_IDE_SOURCE, PROJECT_ID, PATIENT_IDE, PATIENT_IDE_SOURCE)
;

CREATE  INDEX EM_IDX_ENCPATH ON ENCOUNTER_MAPPING(ENCOUNTER_IDE, ENCOUNTER_IDE_SOURCE, PATIENT_IDE, PATIENT_IDE_SOURCE, ENCOUNTER_NUM)
;
CREATE  INDEX EM_IDX_UPLOADID ON ENCOUNTER_MAPPING(UPLOAD_ID)
;
CREATE INDEX EM_ENCNUM_IDX ON ENCOUNTER_MAPPING(ENCOUNTER_NUM)
