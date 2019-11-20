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
(`173423`, `John Smith`, `johnsmith@cycyling.com`, `Endurance Coach`, `0877654321`),
(`177233`, `Shane Wall`, `ShaneWall@cycyling.com`,`Sprint Coach`, `0877123456`),
(`172344`, `Caolan Foley`, `CaolanFoley@cycyling.com`,`Hill Coach`, `0875363686`),
(`178654`, `Stephen Roche`, `StephenRoche@cycyling.com`,`Sprint Coach`, `0871236549`),
(`179874`, `Sean Kinsella`, `SeanKinsella@cycyling.com`,`Endurance Coach`, `0879574263`),
(`171233`, `Patrick Fenning`, `PatrickFenning@cycyling.com`,`Hill Coach`, `0871947556`);





CREATE TABLE IF NOT EXISTS `Races` (
  `Race_ID` int(6) NOT NULL,
  `Race_Name` varchar(30) NOT NULL,
  `Distance_Km` int(50) NOT NULL,
  `Terrain` varchar(50) NOT NULL,
  `Race_Organisers` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO `Races` (`Race_ID`, `Ra_Name`, `Distance_Km`, `Terrain`, `Race_Organisers`) VALUES
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
  `Coaches_Attending` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 INSERT INTO `Training` (`Date`, `Location`, `Training_Distance`, `Terrain`, `Coaches_Attending`) VALUES
 (`11/04/2019`, `Kildare`, `90`, `Hilly`, `Patrick_Fenning`),
 (`18/04/2019`, `Dublin`, `130`, `Flat`, `John_Cena`),
 (`25/04/2019`, `Kildare`, `110`, `Rolly`, `Patrick_Fenning`),
 (`01/05/2019`, `Dublin`, `80`, `Mountainous`, `Caolan_Foley`),
 (`08/05/2019`, `Dublin`, `105`, `Hilly`, `Caolan_Foley`),
 (`16/05/2019`, `Kildare`, `140`, `Flat`, `John_Smith`);
 
 
 
 
 
 
 
 
 
 
 
 
 
 















