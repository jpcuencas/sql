use ASISA_DatamartProveedores;

IF OBJECT_ID('EST_PROVIDER_DETAIL_CALLS') IS NOT NULL DROP TABLE dbo.EST_PROVIDER_DETAIL_CALLS;
IF OBJECT_ID('EST_PROVIDER_DETAIL_APPOINTMENTS') IS NOT NULL DROP TABLE dbo.EST_PROVIDER_DETAIL_APPOINTMENTS;

IF OBJECT_ID('EST_PROVIDER_DETAIL') IS NOT NULL DROP TABLE dbo.EST_PROVIDER_DETAIL;
IF OBJECT_ID('EST_TOTAL_RESULTS') IS NOT NULL DROP TABLE dbo.EST_TOTAL_RESULTS;
IF OBJECT_ID('EST_RESULT_DETAIL') IS NOT NULL DROP TABLE dbo.EST_RESULT_DETAIL;

IF OBJECT_ID('EST_SEARCH') IS NOT NULL DROP TABLE dbo.EST_SEARCH;
IF OBJECT_ID('EST_DOWNLOAD') IS NOT NULL DROP TABLE dbo.EST_DOWNLOAD;
IF OBJECT_ID('EST_SESSION') IS NOT NULL DROP TABLE dbo.EST_SESSION;
IF OBJECT_ID('EST_FAVORITE') IS NOT NULL DROP TABLE dbo.EST_FAVORITE;


CREATE TABLE EST_FAVORITE (
  insuredId             varchar(45) NOT NULL,
  providerCode          text,
  speciality            text,
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (insuredId,timestamp)
);

CREATE TABLE EST_SESSION (
  sessionId             varchar(45) NOT NULL,
  gender                varchar(45) DEFAULT NULL,
  productsGrouper       text,
  network               text,
  managementArea        text,
  client                text,
  product               text,
  beneficiaryPolicy     text,
  antique               text,
  homeData              text,
  province              text,
  city                  text,
  postalCode            int DEFAULT NULL,
  login                 char(1) DEFAULT NULL CHECK( login IN('S','N') ),
  deviceType            text,
  browser               text,
  emergencyPhone        char(1) DEFAULT NULL  CHECK( emergencyPhone IN('S','N') ),
  userId                varchar(45) DEFAULT NULL,
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  birthdate             text,
  PRIMARY KEY (sessionId)
);

CREATE TABLE EST_DOWNLOAD (
  downloadId            int NOT NULL,
  sessionId             varchar(45) NOT NULL,
  provincePdf           text,
  networkPdf            text,
  speciality            text,
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (downloadId),
  CONSTRAINT download_ibfk_1 FOREIGN KEY (sessionId) REFERENCES est_session (sessionId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EST_SEARCH (
  searchId              int NOT NULL,
  sessionId             varchar(45) NOT NULL,
  originalPage          varchar(10) DEFAULT NULL CHECK( originalPage IN('HOME','LISTADO') ),
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  province              text,
  city                  text,
  postalCode            text,
  service               text,
  serviceType           text,
  provider              text,
  providerType          text,
  providerTypeSearch    text,
  PRIMARY KEY (searchId),
  CONSTRAINT search_ibfk_1 FOREIGN KEY (sessionId) REFERENCES est_session (sessionId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EST_RESULT_DETAIL (
  searchDetailId        int NOT NULL,
  searchId              int NOT NULL,
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  orderType             char(1) CHECK( orderType IN('R','D','A') ) DEFAULT NULL,
  providerCode          text,
  numberOrder           int DEFAULT NULL,
  PRIMARY KEY (searchDetailId),
  CONSTRAINT result_detail_ibfk_1 FOREIGN KEY (searchId) REFERENCES est_search (searchId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EST_TOTAL_RESULTS (
  searchId              int NOT NULL,
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  totalResults          int DEFAULT NULL,
  PRIMARY KEY (searchId),
  CONSTRAINT total_results_ibfk_1 FOREIGN KEY (searchId) REFERENCES est_search (searchId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EST_PROVIDER_DETAIL (
  providerDetailId      varchar(45) NOT NULL,
  searchId              int NOT NULL,
  timestamp             datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  providerCode          text,
  share                 char(1) CHECK( share IN('S','N') ) DEFAULT NULL,
  shareMethod           text,
  howToArrive           char(1) CHECK( howToArrive IN('S','N') ) DEFAULT NULL,
  howToArriveMethod     text,
  PRIMARY KEY (providerDetailId),
  CONSTRAINT provider_detail_ibfk_1 FOREIGN KEY (searchId) REFERENCES est_search (searchId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EST_PROVIDER_DETAIL_APPOINTMENTS (
  providerDetailAppointmentsId  int NOT NULL,
  providerDetailId              varchar(45) NOT NULL,
  timestamp                     datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  providerCode                  text,
  speciality                    text,
  success                       char(1) CHECK( success IN('S','N') ) DEFAULT NULL,
  doctor                        text,
  appointmentDate               datetime DEFAULT NULL,
  chooseDoctor                  char(1) CHECK( chooseDoctor IN('S','N') ) DEFAULT NULL,
  chooseDate                    char(1) CHECK( chooseDate IN('S','N') ) DEFAULT NULL,
  PRIMARY KEY (providerDetailAppointmentsId),
  CONSTRAINT provider_detail_appointments_ibfk_1 FOREIGN KEY (providerDetailId) 
  REFERENCES est_provider_detail (providerDetailId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EST_PROVIDER_DETAIL_CALLS (
  providerDetailCallsId         int NOT NULL,
  providerDetailId              varchar(45) NOT NULL,
  timestamp                     datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  providerCode                  text,
  speciality                    text,
  PRIMARY KEY (providerDetailCallsId),
  CONSTRAINT provider_detail_calls_ibfk_1 FOREIGN KEY (providerDetailId) 
  REFERENCES est_provider_detail (providerDetailId) ON DELETE CASCADE ON UPDATE CASCADE
);
GO