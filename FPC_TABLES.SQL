CREATE TABLE APPIANAPP."fpcLoadLineCR" 
(
  "idll" NUMBER(10, 0) NOT NULL 
, "idl" NUMBER(10, 0) 
, "valuell" FLOAT(126) 
, "valueoriginalll" FLOAT(126) 
, "valuemediumll" FLOAT(126) 
, "valueclosell" FLOAT(126) 
, "valuemediumcurrentll" FLOAT(126) 
, "valueclosecurrentll" FLOAT(126) 
, "col1" NUMBER(10, 0) 
, "col2" NUMBER(10, 0) 
, "col3" NUMBER(10, 0) 
, "col4" NUMBER(10, 0) 
, "col5" NUMBER(10, 0) 
, "col6" NUMBER(10, 0) 
, "col7" NUMBER(10, 0) 
, "col8" NUMBER(10, 0) 
, "col9" NUMBER(10, 0) 
, "col10" NUMBER(10, 0) 
, "col11" NUMBER(10, 0) 
, "col12" NUMBER(10, 0) 
, "col13" NUMBER(10, 0) 
, "col14" NUMBER(10, 0) 
, "col15" NUMBER(10, 0) 
, "col16" NUMBER(10, 0) 
, "col17" NUMBER(10, 0) 
, "col18" NUMBER(10, 0) 
, "col19" NUMBER(10, 0) 
, "col20" NUMBER(10, 0) 
, "col21" NUMBER(10, 0) 
, "col22" NUMBER(10, 0) 
, "col23" NUMBER(10, 0) 
, "col24" NUMBER(10, 0) 
, "col25" NUMBER(10, 0) 
, "istemp" NUMBER(1, 0) 
,CONSTRAINT SYS_C0014581 PRIMARY KEY ("idll")
)
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLineCR" FOR "APPIANAPP"."fpcLoadLineCR";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLineCR" TO "FPC_PAAS";


CREATE TABLE "APPIANAPP"."fpcLoadLinePL"(
	"idll" NUMBER(10, 0) NOT NULL,
	"idl" NUMBER(10, 0),
	"valuell" FLOAT(126), 
	"valueoriginalll" FLOAT(126),
	"valuemediumll" FLOAT(126),
	"valueclosell" FLOAT(126),
	"valuemediumcurrentll" FLOAT(126),
	"valueclosecurrentll" FLOAT(126),
	"col1" NUMBER(10, 0),
	"col2" NUMBER(10, 0),
	"col3" NUMBER(10, 0),
	"col4" NUMBER(10, 0),
	"col5" NUMBER(10, 0),
	"col6" NUMBER(10, 0),
	"col7" NUMBER(10, 0),
	"col8" NUMBER(10, 0),
	"col9" NUMBER(10, 0),
	"col10" NUMBER(10, 0),
	"col11" NUMBER(10, 0),
	"col12" NUMBER(10, 0),
	"col13" NUMBER(10, 0),
	"col14" NUMBER(10, 0),
	"col15" NUMBER(10, 0),
	"col16" NUMBER(10, 0),
	"col17" NUMBER(10, 0),
	"col18" NUMBER(10, 0),
	"col19" NUMBER(10, 0),
	"col20" NUMBER(10, 0),
	"col21" NUMBER(10, 0),
	"col22" NUMBER(10, 0),
	"col23" NUMBER(10, 0),
	"col24" NUMBER(10, 0),
	"col25" NUMBER(10, 0),
	"istemp" NUMBER(1, 0),
	CONSTRAINT "pk_fpcLoadLinePL" PRIMARY KEY ("idll")
)
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLinePL" FOR "APPIANAPP"."fpcLoadLinePL";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLinePL" TO "FPC_PAAS";

CREATE TABLE "APPIANAPP"."fpcLoadLineInstitutionals"(
	"idll" NUMBER(10, 0) NOT NULL,
	"idl" NUMBER(10, 0), 
	"valuell" FLOAT(126), 
	"valueoriginalll" FLOAT(126), 
	"valuemediumll" FLOAT(126), 
	"valueclosell" FLOAT(126), 
	"valuemediumcurrentll" FLOAT(126), 
	"valueclosecurrentll" FLOAT(126), 
	"col1" NUMBER(10, 0), 
	"col2" NUMBER(10, 0), 
	"col3" NUMBER(10, 0), 
	"col4" NUMBER(10, 0), 
	"col5" NUMBER(10, 0), 
	"col6" NUMBER(10, 0), 
	"col7" NUMBER(10, 0), 
	"col8" NUMBER(10, 0), 
	"col9" NUMBER(10, 0), 
	"col10" NUMBER(10, 0), 
	"col11" NUMBER(10, 0), 
	"col12" NUMBER(10, 0), 
	"col13" NUMBER(10, 0), 
	"col14" NUMBER(10, 0), 
	"col15" NUMBER(10, 0), 
	"col16" NUMBER(10, 0), 
	"col17" NUMBER(10, 0), 
	"col18" NUMBER(10, 0), 
	"col19" NUMBER(10, 0), 
	"col20" NUMBER(10, 0), 
	"col21" NUMBER(10, 0), 
	"col22" NUMBER(10, 0), 
	"col23" NUMBER(10, 0), 
	"col24" NUMBER(10, 0), 
	"col25" NUMBER(10, 0), 
	"istemp" NUMBER(1, 0),
	CONSTRAINT "pk_fpcLoadLineInstitutionals" PRIMARY KEY ("idll")
)
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLineInstitutionals" FOR "APPIANAPP"."fpcLoadLineInstitutionals";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLineInstitutionals" TO "FPC_PAAS";

CREATE TABLE "APPIANAPP"."fpcLoadLineCapital"(
	"idll" NUMBER(10, 0) NOT NULL ,
	"idl" NUMBER(10, 0),
	"valuell" FLOAT(126),
	"valueoriginalll" FLOAT(126),
	"valuemediumll" FLOAT(126),
	"valueclosell" FLOAT(126),
	"valuemediumcurrentll" FLOAT(126),
	"valueclosecurrentll" FLOAT(126),
	"col1" NUMBER(10, 0),
	"col2" NUMBER(10, 0),
	"col3" NUMBER(10, 0),
	"col4" NUMBER(10, 0),
	"col5" NUMBER(10, 0),
	"col6" NUMBER(10, 0),
	"col7" NUMBER(10, 0),
	"col8" NUMBER(10, 0),
	"col9" NUMBER(10, 0), 
	"col10" NUMBER(10, 0),
	"col11" NUMBER(10, 0),
	"col12" NUMBER(10, 0),
	"col13" NUMBER(10, 0),
	"col14" NUMBER(10, 0),
	"col15" NUMBER(10, 0),
	"col16" NUMBER(10, 0),
	"col17" NUMBER(10, 0),
	"col18" NUMBER(10, 0),
	"col19" NUMBER(10, 0),
	"col20" NUMBER(10, 0),
	"col21" NUMBER(10, 0),
	"col22" NUMBER(10, 0),
	"col23" NUMBER(10, 0),
	"col24" NUMBER(10, 0),
	"col25" NUMBER(10, 0),
	"istemp" NUMBER(1, 0),
	CONSTRAINT "pk_fpcLoadLineCapital" PRIMARY KEY ("idll")
)
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLineCapital" FOR "APPIANAPP"."fpcLoadLineCapital";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLineCapital" TO "FPC_PAAS";

CREATE TABLE "APPIANAPP"."fpcLoadLineModel"(
	"idll" NUMBER(10, 0) NOT NULL,
	"idl" NUMBER(10, 0),
	"valuell" FLOAT(126),
	"valueoriginalll" FLOAT(126),
	"valuemediumll" FLOAT(126), 
	"valueclosell" FLOAT(126),
	"valuemediumcurrentll" FLOAT(126),
	"valueclosecurrentll" FLOAT(126),
	"col1" NUMBER(10, 0),
	"col2" NUMBER(10, 0),
	"col3" NUMBER(10, 0),
	"col4" NUMBER(10, 0),
	"col5" NUMBER(10, 0),
	"col6" NUMBER(10, 0),
	"col7" NUMBER(10, 0),
	"col8" NUMBER(10, 0),
	"col9" NUMBER(10, 0),
	"col10" NUMBER(10, 0),
	"col11" NUMBER(10, 0),
	"col12" NUMBER(10, 0),
	"col13" NUMBER(10, 0),
	"col14" NUMBER(10, 0),
	"col15" NUMBER(10, 0),
	"col16" NUMBER(10, 0),
	"col17" NUMBER(10, 0),
	"col18" NUMBER(10, 0),
	"col19" NUMBER(10, 0),
	"col20" NUMBER(10, 0),
	"col21" NUMBER(10, 0),
	"col22" NUMBER(10, 0),
	"col23" NUMBER(10, 0),
	"col24" NUMBER(10, 0),
	"col25" NUMBER(10, 0),
	"istemp" NUMBER(1, 0),
	CONSTRAINT "pk_fpcLoadLineModel" PRIMARY KEY ("idll")
)
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLineModel" FOR "APPIANAPP"."fpcLoadLineModel";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLineModel" TO "FPC_PAAS";

CREATE TABLE "APPIANAPP"."fpcLoadLineBalance"(
	"idll" NUMBER(10, 0) NOT NULL,
	"idl" NUMBER(10, 0),
	"valuell" FLOAT(126),
	"valueoriginalll" FLOAT(126),
	"valuemediumll" FLOAT(126), 
	"valueclosell" FLOAT(126),
	"valuemediumcurrentll" FLOAT(126),
	"valueclosecurrentll" FLOAT(126),
	"col1" NUMBER(10, 0),
	"col2" NUMBER(10, 0),
	"col3" NUMBER(10, 0),
	"col4" NUMBER(10, 0),
	"col5" NUMBER(10, 0),
	"col6" NUMBER(10, 0),
	"col7" NUMBER(10, 0),
	"col8" NUMBER(10, 0),
	"col9" NUMBER(10, 0),
	"col10" NUMBER(10, 0),
	"col11" NUMBER(10, 0),
	"col12" NUMBER(10, 0),
	"col13" NUMBER(10, 0),
	"col14" NUMBER(10, 0),
	"col15" NUMBER(10, 0),
	"col16" NUMBER(10, 0),
	"col17" NUMBER(10, 0),
	"col18" NUMBER(10, 0),
	"col19" NUMBER(10, 0),
	"col20" NUMBER(10, 0),
	"col21" NUMBER(10, 0),
	"col22" NUMBER(10, 0),
	"col23" NUMBER(10, 0),
	"col24" NUMBER(10, 0),
	"col25" NUMBER(10, 0),
	"istemp" NUMBER(1, 0),
	CONSTRAINT "pk_fpcLoadLineBalance" PRIMARY KEY ("idll")
)
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLineBalance" FOR "APPIANAPP"."fpcLoadLineBalance";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLineBalance" TO "FPC_PAAS";


CREATE TABLE APPIANAPP."fpcDimensionVersionTree" 
(
  "iddvt" NUMBER(10, 0) NOT NULL 
, "codedim" NUMBER(10, 0) 
, "iddv" NUMBER(10, 0) 
, "codedvt" NUMBER(10, 0) 
, "parentcodedvt" NUMBER(10, 0) 
, "nodenamedvt" VARCHAR2(255 CHAR) 
, "nodedepthdvt" NUMBER(10, 0) 
, "isparentdvt" NUMBER(1, 0) 
, "typedvt" VARCHAR2(255 CHAR) 
, "formuladvt" VARCHAR2(255 CHAR) 
, "showorder" NUMBER(10, 0) 
, "currency" VARCHAR2(255 CHAR) 
, "formulaqlik" VARCHAR2(2000 CHAR) 
, "rwainput" NUMBER(1, 0) 
, "orderappian" NUMBER(10, 0) 
, "skiptcalculate" NUMBER(1, 0) 
, "kpicalctype" NUMBER(10, 0) 
) 
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcDimensionVersionTree" FOR "APPIANAPP"."fpcDimensionVersionTree";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcDimensionVersionTree" TO "FPC_PAAS";


CREATE TABLE APPIANAPP."fpcLoadLineCosts" 
(
  "idll" NUMBER(10, 0) NOT NULL 
, "idl" NUMBER(10, 0) 
, "valuell" FLOAT(126) 
, "valueoriginalll" FLOAT(126) 
, "valuemediumll" FLOAT(126) 
, "valueclosell" FLOAT(126) 
, "valuemediumcurrentll" FLOAT(126) 
, "valueclosecurrentll" FLOAT(126) 
, "col1" NUMBER(10, 0) 
, "col2" NUMBER(10, 0) 
, "col3" NUMBER(10, 0) 
, "col4" NUMBER(10, 0) 
, "col5" NUMBER(10, 0) 
, "col6" NUMBER(10, 0) 
, "col7" NUMBER(10, 0) 
, "col8" NUMBER(10, 0) 
, "col9" NUMBER(10, 0) 
, "col10" NUMBER(10, 0) 
, "col11" NUMBER(10, 0) 
, "col12" NUMBER(10, 0) 
, "col13" NUMBER(10, 0) 
, "col14" NUMBER(10, 0) 
, "col15" NUMBER(10, 0) 
, "col16" NUMBER(10, 0) 
, "col17" NUMBER(10, 0) 
, "col18" NUMBER(10, 0) 
, "col19" NUMBER(10, 0) 
, "col20" NUMBER(10, 0) 
, "col21" NUMBER(10, 0) 
, "col22" NUMBER(10, 0) 
, "col23" NUMBER(10, 0) 
, "col24" NUMBER(10, 0) 
, "col25" NUMBER(10, 0) 
, "istemp" NUMBER(1, 0) 
) 
TABLESPACE "APPIANAPP_D";

CREATE OR REPLACE PUBLIC SYNONYM "fpcLoadLineCosts" FOR "APPIANAPP"."fpcLoadLineCosts";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpcLoadLineCosts" TO "FPC_PAAS";


--fpcLoadLineCR FALTA
