CREATE TABLE Jobs
(
  jId number(3),
  jName varchar(10),
  positonSalary float,
  senioritySalary float,
  PRIMARY KEY (jId)
);

CREATE TABLE Area
(
  aId number(3),
  aName varchar(15),
  PRIMARY KEY (aId)
);

CREATE TABLE City
(
  cId number(3),
  cName varchar(15),
  size int,
  aId number(3),
  PRIMARY KEY (cId),
  FOREIGN KEY (aId) REFERENCES Area(aId)
);

CREATE TABLE Communication
(
  address varchar(25),
  telnr varchar(10),
  mail varchar(25),
  cId number(3),
  PRIMARY KEY (telnr),
  FOREIGN KEY (cId) REFERENCES City(cId),
  UNIQUE (mail)
);

CREATE TABLE Worker
(
  wName varchar(20),
  hireDate date,
  wId number(10),
  Id number(9),
  job varchar(15),
  position varchar(10),
  telnr number(9),
  jId number(3),
  PRIMARY KEY (Id),
  FOREIGN KEY (telnr) REFERENCES Communication(telnr),
  FOREIGN KEY (jId) REFERENCES Jobs(jId)
);
