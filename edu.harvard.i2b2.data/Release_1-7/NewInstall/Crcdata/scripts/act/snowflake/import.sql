/*********************************************************
*         SNOWFLAKE SCRIPT TO LOAD ACT CONCEPTS
*         MD SABER HOSSAIN	7/14/2023
/*        University of Missouri-Columbia			
**********************************************************/

--- CREATE FILE FORMAT
CREATE OR REPLACE FILE FORMAT concepts_import_format
TYPE = CSV
FIELD_DELIMITER = '\t'
EMPTY_FIELD_AS_NULL = true
TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SS'
NULL_IF = ()
COMPRESSION=NONE
FIELD_OPTIONALLY_ENCLOSED_BY='"'
SKIP_HEADER=1;

--- CREATE STAGE AREA
CREATE OR REPLACE STAGE import_concepts FILE_FORMAT = concepts_import_format;

-- PUT LOCAL FILES INTO SNOWFLAKE STAGE
PUT file:///home/i2b2-data/edu.harvard.i2b2.data/Release_1-7/NewInstall/Crcdata/scripts/act/snowflake/*.csv @import_concepts AUTO_COMPRESS=FALSE SOURCE_COMPRESSION=NONE OVERWRITE=TRUE;


--- COPY DATA TABLES FROM THE STAGE
TRUNCATE CONCEPT_DIMENSION;
TRUNCATE QT_BREAKDOWN_PATH;

COPY INTO CONCEPT_DIMENSION FROM @import_concepts/CONCEPT_DIMENSION.csv;
COPY INTO QT_BREAKDOWN_PATH FROM @import_concepts/QT_BREAKDOWN_PATH.csv;

