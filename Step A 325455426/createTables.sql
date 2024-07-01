
CREATE TABLE Solider
(
  ID INT NOT NULL,
  Rank VARCHAR(20) NOT NULL,
  Joined_Date DATE NOT NULL,
  Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE mission
(
  MIssion_Date DATE NOT NULL,
  Status VARCHAR(20) NOT NULL,
  mission_id INT NOT NULL,
  PRIMARY KEY (mission_id)
);

CREATE TABLE Parking_garage
(
  Max_Capacity INT NOT NULL,
  maintenance_id INT NOT NULL,
  status VARCHAR(20) NOT NULL,
  PRIMARY KEY (maintenance_id)
);

CREATE TABLE Technical_Engeneer
(
  specialization VARCHAR(20) NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Solider(ID)
);

CREATE TABLE Pilot
(
  Type VARCHAR(20) NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Solider(ID)
);

CREATE TABLE Aircraft
(
  Prodaction_Date DATE NOT NULL,
  serialID INT NOT NULL,
  Kind VARCHAR(20) NOT NULL,
  maintenance_id INT,
  PRIMARY KEY (serialID),
  FOREIGN KEY (maintenance_id) REFERENCES Parking_garage(maintenance_id)
);

