CREATE TABLE IF NOT EXISTS `Members` (
  `Member_ID` int(7) NOT NULL,
  `Member_Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Speciality` varchar(50) NOT NULL,
  `Phone_Number` int(10) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Members` (`Member_ID`, `Member_Name`, `Email`, `Speciality`, `Phone_Number`) VALUES
(`7123456`, `Sean Paul`, `seanpaul@cycyling.com`, `Climber`, `0873456555`),
(`7124443`, `John Cena`, `JohnCena@cycyling.com`,`Sprinter`, `0872574365`),
(`7134543`, `Ray Misterio`, `RayMisterio@cycyling.com`,`TT`, `0875457890`),
(`7198788`, `Barry Seans`, `BarrySeans@cycyling.com`,`SSprinter`, `087346644`),
(`7153969`, `Conor Jupe`, `ConorJupe@cycyling.com`,`Climber`, `0874788764`),
(`7120685`, `Liam Manning`, `LiamManning@cycyling.com`,`Puncher`, `08705867594`);

CREATE TABLE IF NOT EXISTS `Coach` (
  `Coaches_ID` int(6) NOT NULL,
  `Coaches_Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Phone_Number` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Coach` (`Coaches_ID`, `Coaches_Name`, `Email`, `Position`, `Phone_Number`) VALUES
(`173423`, `John Smith`, `johnsmith@cycylingcoaching.com`, `Endurance Coach`, `0877654321`),
(`177233`, `Shane Wall`, `ShaneWall@cycylingcoaching.com`,`Sprint Coach`, `0877123456`),
(`172344`, `Caolan Foley`, `CaolanFoley@cycylingcoaching.com`,`Hill Coach`, `0875363686`),
(`178654`, `Stephen Roche`, `StephenRoche@cycylingcoaching.com`,`Sprint Coach`, `0871236549`),
(`179874`, `Sean Kinsella`, `SeanKinsella@cycylingcoaching.com`,`Endurance Coach`, `0879574263`),
(`171233`, `Patrick Fenning`, `PatrickFenning@cycylingcoaching.com`,`Hill Coach`, `0871947556`);

CREATE TABLE IF NOT EXISTS `Races` (
  `Race_ID` int(6) NOT NULL,
  `Race_Name` varchar(30) NOT NULL,
  `Distance_KM` int(50) NOT NULL,
  `Terrain` varchar(50) NOT NULL,
  `Race_Organisers` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO `Races` (`Race_ID`, `Ra_Name`, `Distance_KM`, `Terrain`, `Race_Organisers`) VALUES
 (`87654`, `EastSideRR`, `120`, `Hilly`, `EastSideCC`),
 (`34553`, `OverTheHill`, `145`, `Hilly`, `KidareCC`),
 (`34654`, `FlatOut`, `180`, `Flat`, `LeinsterCC`),
 (`54543`, `Rás`, `200`, `Rolling`, `NorthWestCC`),
 (`34565`, `Combe_Connors`, `130`, `Flat`, `DublinCC`),
 (`66544`, `SheepsLeg`, `80`, `Mountainous`, `WestRoadCC`);
 
 CREATE TABLE IF NOT EXISTS `Training` (
  `Date` date NOT NULL,
  `Location` varchar(30) NOT NULL,
  `Training_Distance` int(50) NOT NULL,
  `Terrain` varchar(50) NOT NULL,
  `Coaches_ID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO `Training` (`Date`, `Location`, `Training_Distance`, `Terrain`, `Coaches_ID`) VALUES
 (`11/04/2019`, `Kildare`, `90`, `Hilly`, `17383764`),
 (`18/04/2019`, `Dublin`, `130`, `Flat`, `172948`),
 (`25/04/2019`, `Kildare`, `110`, `Rolly`, `173980`),
 (`01/05/2019`, `Dublin`, `80`, `Mountainous`, `170387`),
 (`08/05/2019`, `Dublin`, `105`, `Hilly`, `172009`),
 (`16/05/2019`, `Kildare`, `140`, `Flat`, `172388`);
 
  CREATE TABLE IF NOT EXISTS `Equipment` (
  `Name` varchar(50) NOT NULL,
  `OnLoan` boolean NOT NULL,
  `Value` int(7) NOT NULL,
  `How_Old_Years` int(2) NOT NULL,
  `Equipment_ID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO `Equipment` (`Name`, `onLoan`, `Value`, `How_Old`, `Equipment_ID`) VALUES
 (`Race_Wheels`, `True`, `800`, `1`, `432343`),
 (`Lightweight_Wheels`, `True`, `500`, `3`, `433443`),
 (`Turbo_Trainer`, `False`, `250`, `0`, `128593`),
 (`Skinsuit`, `False`, `420`, `4`, `448258`),
 (`Race_Shoes`, `False`, `300`, `2`, `456534`),
 (`Jersey`, `True`, `50`, `0`, `4`, `468234`),
 (`Tyres`, `False`, `130`, `2`, `439902`);
 
   CREATE TABLE IF NOT EXISTS `Registration` (
  `Member_Name` varchar(50) NOT NULL,
  `Previous_Member` boolean NOT NULL,
  `Registration_Fee` int(7) NOT NULL,
  `Members_Age` int(4) NOT NULL,
  `Members_ID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Registration` (`Member_Name`, `Previous_Member`, `Reistration_Fee`, `Members_Age`, `Members_ID`) VALUES 
 (`Sean_Micheals`, `True`, `80`, `22`, `7192857`), 
 (`AJ_Tracey`, `True`, `120`, `34`, `7167445`), 
 (`Chris_Jericho`, `False`, `120`, `28`, `7101938`), 
 (`Randy_Orton`, `True`, `30`, `14`, `7119385`), 
 (`David_Finlay`, `False`, `120`, `42`, `7101834`), 
 (`Jeff_Hardy`, `False`, `80`, `19`, `7138647`); 


 
 
 ALTER TABLE `Coach`
 ADD primary key (`Coaches_ID`);
 
 
 ALTER TABLE `Members`
 ADD primary key (`Member_ID`);
 
 
 ALTER TABLE `Races`
 ADD primary key (`Race_ID`);
 
 
 ALTER TABLE `Training`
 ADD primary key (`Coaches_Id`);
 
 
 ALTER TABLE `Equipment`
 ADD primary key (`Equipment_ID`);
 
 
 ALTER TABLE `Registration`
	ADD primary key (`Member_ID`);
 
 
 ALTER TABLE `Members`
 ADD CONSTRAINT `Members_Con` foreign key (`Members_ID`) references `Registrations` (`Members_ID`),
 ADD CONSTRAINT `Members_Con1` foreign key (`Members_Name`) references `Registrations` (`Members_Name`);
 
 ALTER TABLE `Coach`
 ADD CONSTRAINT `Coach_Con` foreign key (`Coches_ID`) references `Training` (`Coches_ID`);
 
 
 CREATE VIEW Equip_On_Loan AS 
 SELECT `Name`
 FROM `Equipment`
 WHERE `On_Loan` = true;
 

 
 
 
 
 
 
 
 
 















