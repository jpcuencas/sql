CREATE TABLE "APPIANAPP"."fpc_api_whitelist"(
	"code"	VARCHAR	(2) NOT NULL,	
	"val"	VARCHAR	(255) NOT NULL,	
	"usumod"	VARCHAR(30) NOT NULL,	
	"fecmod"	TIMESTAMP NOT NULL,
	CONSTRAINT "pk_fpc_api_whitelist" PRIMARY KEY ("code","val")
)
TABLESPACE "APPIANAPP_D";
-----------------------------------------------------------------------------------------------------

/*Carga inicial para CODE='FS' Financial Statement*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('FS','PL','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('FS','BALANCE','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('FS','MRG','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('FS','CAPITAL','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('FS','COLREV','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('FS','INST','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='DC' Data Category*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('DC','RST','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('DC','ME','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('DC','FOR','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('DC','SP','Initial Load',sysdate);
COMMIT;

INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('DC','BUD','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLinePL','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLineBalance','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLineCapital','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLineCosts','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLineModel','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLineCR','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcLoadLineInstitutionals','Initial Load',sysdate);
COMMIT;

/*Carga inicial para CODE='TB' Tablas de BBDD*/
INSERT INTO "fpc_api_whitelist" ("code","val","usumod","fecmod")
VALUES('TB','fpcDimensionVersionTree','Initial Load',sysdate);
COMMIT;

--Create synonimous
CREATE OR REPLACE PUBLIC SYNONYM "fpc_api_whitelist" FOR "APPIANAPP"."fpc_api_whitelist";
GRANT SELECT, INSERT, UPDATE, DELETE ON "APPIANAPP"."fpc_api_whitelist" TO "FPC_PAAS";
