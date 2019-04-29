CREATE TABLE Jobs
(
  jId NUMBER(3),
  jName VARCHAR(10),
  positonSalary FLOAT,
  senioritySalary FLOAT,
  PRIMARY KEY (jId)
);

CREATE TABLE Area
(
  aId NUMBER(3),
  aName VARCHAR(15),
  PRIMARY KEY (aId)
);

CREATE TABLE City
(
  cId NUMBER(3),
  cName VARCHAR(15),
  size INT,
  aId NUMBER(3),
  PRIMARY KEY (cId),
  FOREIGN KEY (aId) REFERENCES Area(aId)
);

CREATE TABLE Communication
(
  address VARCHAR(25),
  telnr VARCHAR(10),
  mail VARCHAR(25),
  cId NUMBER(3),
  PRIMARY KEY (telnr),
  FOREIGN KEY (cId) REFERENCES City(cId),
  UNIQUE (mail)
);

CREATE TABLE Worker
(
  wName VARCHAR(20),
  hireDate DATE,
  wId NUMBER(10),
  Id NUMBER(9),
  job VARCHAR(15),
  position VARCHAR(10),
  telnr VARCHAR(10),
  jId NUMBER(3),
  PRIMARY KEY (Id),
  FOREIGN KEY (telnr) REFERENCES Communication(telnr),
  FOREIGN KEY (jId) REFERENCES Jobs(jId)
);
