CREATE TABLE IF NOT EXISTS Members (
  Member_ID int(8) NOT NULL,
  Member_Name varchar(30) NOT NULL,
  Email varchar(50) NOT NULL,
  Speciality varchar(50) NOT NULL,
  Phone_Number int(10) NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Members (Member_ID, Member_Name, Email, Speciality, Phone_Number) VALUES
('7192857', 'Sean Paul', 'seanpaul@cycyling.com', 'Climbing', '0873456555'),
('7167445', 'John Cena', 'JohnCena@cycyling.com','Sprint', '0872574365'),
('7101938', 'Ray Misterio', 'RayMisterio@cycyling.com','TT', '0875457890'),
('7119385', 'Barry Seans', 'BarrySeans@cycyling.com','Sprint', '0873546644'),
('7101834', 'Conor Jupe', 'ConorJupe@cycyling.com','Climb', '0874788764'),
('7138647', 'Liam Manning', 'LiamManning@cycyling.com','Punch', '0875867594');


CREATE TABLE IF NOT EXISTS Coach (
  Coaches_ID int(6) NOT NULL,
  Coaches_Name varchar(30) NOT NULL,
  Email varchar(50) NOT NULL,
  Position varchar(50) NOT NULL,
  Phone_Number int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Coach (Coaches_ID, Coaches_Name, Email, Position, Phone_Number) VALUES
('173423', 'John Smith', 'johnsmith@cycylingcoaching.com', 'Endurance Coach', '0877654321'),
('177233', 'Shane Wall', 'ShaneWall@cycylingcoaching.com','Sprint Coach', '0877123456'),
('172344', 'Caolan Foley', 'CaolanFoley@cycylingcoaching.com','Hill Coach', '0875363686'),
('178654', 'Stephen Roche', 'StephenRoche@cycylingcoaching.com','Sprint Coach', '0871236549'),
('179874', 'Sean Kinsella', 'SeanKinsella@cycylingcoaching.com','Endurance Coach', '0879574263'),
('171233', 'Patrick Fenning', 'PatrickFenning@cycylingcoaching.com','Hill Coach', '0871947556');

CREATE TABLE Races (
  RaceID INT(6) NOT NULL,
  RaceName varchar(30) NOT NULL,
  DistanceKM int(50) NOT NULL,
  Terrain varchar(50) NOT NULL,
  RaceOrganisers varchar(30) NOT NULL
);

 INSERT INTO Races (RaceID, RaceName, DistanceKM, Terrain, RaceOrganisers) VALUES
 ('87654', 'EastSideRR', '120', 'Climbing', 'EastSideCC'),
 ('34553', 'OverTheHill', '145', 'Sprint', 'KidareCC'),
 ('34654', 'FlatOut', '180', 'TT', 'LeinsterCC'),
 ('54543', 'Rás', '200', 'Sprint', 'NorthWestCC'),
 ('34565', 'Combe_Connors', '130', 'Climb', 'DublinCC'),
 ('66544', 'SheepsLeg', '80', 'Punch', 'WestRoadCC');
 

 
 CREATE TABLE IF NOT EXISTS Training (
  id int NOT NULL AUTO_INCREMENT,
  Date date NOT NULL,
  Location varchar(30) NOT NULL,
  Training_Distance int(50) NOT NULL,
  Terrain varchar(50) NOT NULL,
  Coaches_ID int(6) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO Training (Date, Location, Training_Distance, Terrain, Coaches_ID) VALUES
 ('2019-04-18', 'Kildare', '90', 'Hilly', '173423'),
 ('2019-04-27', 'Dublin', '130', 'Flat', '177233'),
 ('2019-05-01', 'Kildare', '110', 'Rolly', '172344'),
 ('2019-05-08', 'Dublin', '80', 'Mountainous', '178654'),
 ('2019-05-16', 'Dublin', '105', 'Hilly', '179874'),
 ('2019-05-27', 'Kildare', '140', 'Flat', '171233');
 


 
  CREATE TABLE IF NOT EXISTS Equipment (
  Name varchar(50) NOT NULL,
  OnLoan boolean NOT NULL,
  Value int(7) NOT NULL,
  How_Old_Years int(2) NOT NULL,
  Equipment_ID int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO Equipment (Name, onLoan, Value, How_Old_Years, Equipment_ID) VALUES
 ('Race_Wheels', '1', '800', '1', '432343'),
 ('Lightweight_Wheels', '1', '500', '3', '433443'),
 ('Turbo_Trainer', '0', '250', '0', '128593'),
 ('Skinsuit', '1', '420', '4', '448258'),
 ('Race_Shoes', '1', '300', '2', '456534'),
 ('Jersey', '1', '50', '4', '468234'),
 ('Tyres', '1', '130', '2', '439902');
 
CREATE TABLE IF NOT EXISTS Registration (
  id int NOT NULL AUTO_INCREMENT,
  Member_Name varchar(50) NOT NULL,
  Previous_Member boolean NOT NULL,
  Registration_Fee int(7) NOT NULL,
  Members_Age int(4) NOT NULL,
  Members_ID int(7) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO Registration (Member_Name, Previous_Member, Registration_Fee, Members_Age, Members_ID) VALUES
 ('Sean_Micheals', '1', '80', '22', '7192857'),
 ('AJ_Tracey', '1', '120', '34', '7167445'),
 ('Chris_Jericho', '0', '120', '28', '7101938'),
 ('Randy_Orton', '1', '30', '14', '7119385'),
 ('David_Finlay', '0', '120', '42', '7101834'),
 ('Jeff_Hardy', '0', '80', '19', '7138647');


 
 
 ALTER TABLE Coach
 ADD primary key (Coaches_ID);
 
 
 ALTER TABLE Members
 ADD primary key (Member_ID);
 
 
 ALTER TABLE Races
 ADD primary key (RaceID);
 
 
 
 ALTER TABLE Equipment
 ADD primary key (Equipment_ID);

 
ALTER TABLE registration ADD FOREIGN KEY (Member_Name) REFERENCES Members(Member_Name);

ALTER TABLE registration ADD FOREIGN KEY (Members_ID) REFERENCES Members(Member_ID);

ALTER TABLE training ADD FOREIGN KEY (Coaches_ID) REFERENCES coach(Coaches_ID);

ALTER TABLE races ADD FOREIGN KEY (Terrain) REFERENCES Members(Speciality);

 
 CREATE VIEW Equipment_Loanded AS
 SELECT Equipment_ID,Name
 FROM equipment
 WHERE onLoan = 1;
 
CREATE VIEW Previous_Member AS
 SELECT Member_Name
 FROM registration
 WHERE Previous_Member = 1;
 
 CREATE TRIGGER completedTraining
 AFTER INSERT ON training
 FOR EACH ROW UPDATE date 
 SET date = NULL; 

CONSTRAINT email_checker CHECK (email LIKE '%______@_____%');

CONSTRAINT phone_Number_checker CHECK (phone LIKE '08________');





