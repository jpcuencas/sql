CREATE TABLE download (
  downloadId int(11) NOT NULL IDENTITY (1, 1),
  sessionId varchar(45) NOT NULL,
  provincePdf text,
  networkPdf text,
  speciality text,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (downloadId),
  KEY sessionId (sessionId),
  CONSTRAINT download_ibfk_1 FOREIGN KEY (sessionId) REFERENCES session (sessionId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE favorite (
  insuredId varchar(45) NOT NULL,
  providerCode text,
  speciality text,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (insuredId,timestamp)
);

CREATE TABLE provider_detail (
  providerDetailId varchar(45) NOT NULL,
  searchId int(11) NOT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  providerCode text,
  share CHECK( share IN('S','N') ) DEFAULT NULL,
  shareMethod text,
  howToArrive CHECK( howToArrive IN('S','N') ) DEFAULT NULL,
  howToArriveMethod text,
  PRIMARY KEY (providerDetailId),
  KEY searchId (searchId),
  CONSTRAINT provider_detail_ibfk_1 FOREIGN KEY (searchId) REFERENCES search (searchId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE provider_detail_appointments (
  providerDetailAppointmentsId int(11) NOT NULL IDENTITY (1, 1),
  providerDetailId varchar(45) NOT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  providerCode text,
  speciality text,
  success CHECK( success IN('S','N') ) DEFAULT NULL,
  doctor text,
  appointmentDate datetime DEFAULT NULL,
  chooseDoctor CHECK( chooseDoctor IN('S','N') ) DEFAULT NULL,
  chooseDate CHECK( chooseDate IN('S','N') ) DEFAULT NULL,
  PRIMARY KEY (providerDetailAppointmentsId),
  KEY providerDetailId (providerDetailId),
  CONSTRAINT provider_detail_appointments_ibfk_1 FOREIGN KEY (providerDetailId) 
  REFERENCES provider_detail (providerDetailId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE provider_detail_calls (
  providerDetailCallsId int(11) NOT NULL IDENTITY (1, 1),
  providerDetailId varchar(45) NOT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  providerCode text,
  speciality text,
  PRIMARY KEY (providerDetailCallsId),
  KEY providerDetailId (providerDetailId),
  CONSTRAINT provider_detail_calls_ibfk_1 FOREIGN KEY (providerDetailId) 
  REFERENCES provider_detail (providerDetailId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE result_detail (
  searchDetailId int(11) NOT NULL IDENTITY (1, 1),
  searchId int(11) NOT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  orderType CHECK( orderType IN('R','D','A') ) DEFAULT NULL,
  providerCode text,
  numberOrder int(11) DEFAULT NULL,
  PRIMARY KEY (searchDetailId),
  KEY searchId (searchId),
  CONSTRAINT result_detail_ibfk_1 FOREIGN KEY (searchId) REFERENCES search (searchId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE search (
  searchId int(11) NOT NULL IDENTITY (1, 1),
  sessionId varchar(45) NOT NULL,
  originalPage CHECK( originalPage IN('HOME','LISTADO') ) DEFAULT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  province text,
  city text,
  postalCode text,
  service text,
  serviceType text,
  provider text,
  providerType text,
  providerTypeSearch text,
  PRIMARY KEY (searchId),
  KEY sessionId (sessionId),
  CONSTRAINT search_ibfk_1 FOREIGN KEY (sessionId) REFERENCES session (sessionId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE session (
  sessionId varchar(45) NOT NULL,
  gender varchar(45) DEFAULT NULL,
  productsGrouper text,
  network text,
  managementArea text,
  client text,
  product text,
  beneficiaryPolicy text,
  antique text,
  homeData text,
  province text,
  city text,
  postalCode int(11) DEFAULT NULL,
  login CHECK( login IN('S','N') ) DEFAULT NULL,
  deviceType text,
  browser text,
  emergencyPhone CHECK( login IN('S','N') ) DEFAULT NULL,
  userId varchar(45) DEFAULT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  birthdate text,
  PRIMARY KEY (sessionId)
);

CREATE TABLE total_results (
  searchId int(11) NOT NULL,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  totalResults int(11) DEFAULT NULL,
  PRIMARY KEY (searchId),
  CONSTRAINT total_results_ibfk_1 FOREIGN KEY (searchId) REFERENCES search (searchId) 
  ON DELETE CASCADE ON UPDATE CASCADE
);
