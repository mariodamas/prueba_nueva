DROP TABLE IF EXISTS UserProducto;
DROP TABLE IF EXISTS UserEquipo;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Producto;
DROP TABLE IF EXISTS Equipo;

CREATE TABLE User ( 
 user_id  INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(10) UNIQUE NOT NULL,
 nombre VARCHAR(50) NOT NULL,
 apellidos VARCHAR(50) NOT NULL,
 direccion VARCHAR(250)
 );
 
 CREATE TABLE Producto (
 producto_id INT AUTO_INCREMENT PRIMARY KEY, 
 nombre_producto VARCHAR(255) NOT NULL,
 tipo_producto VARCHAR(10) NOT NULL,
 año_producto VARCHAR(5) NOT NULL,
 imagen_url VARCHAR(500) NOT NULL,
 equipo_id VARCHAR(3) NOT NULL REFERENCES equipos,
 favorito BOOLEAN DEFAULT FALSE
 );
 
 CREATE TABLE Equipo (
 equipo_id VARCHAR(3) PRIMARY KEY,
 nombre_equipo VARCHAR(50) NOT NULL,
 nombre_liga VARCHAR(20) NOT NULL
 );
 
 CREATE TABLE UserEquipo (
  user_id  INT NOT NULL REFERENCES user,
  equipo_id VARCHAR(3) NOT NULL REFERENCES equipo
  );
  
  CREATE TABLE UserProducto (
   user_id INT NOT NULL REFERENCES user,
   producto_id INT NOT NULL REFERENCES producto,
   cantidad INT CHECK ( cantidad > 0 AND cantidad < 1000 ),
   PRIMARY KEY(user_id,producto_id)
   );

INSERT INTO User(username,nombre,apellidos) VALUES('mariodamas','Mario', 'Damas');
   
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LEC', 'Lecce', 'Serie A');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('RMA', 'Real Madrid', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('JAP', 'Japan', 'Otros');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SEN', 'Senegal', 'Otros');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ALG', 'Algeria', 'Otros');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ARS', 'Arsenal', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('NAP', 'Napoli', 'Serie A');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MIL', 'Milan', 'Serie A');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CHE', 'Chelsea', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BAR', 'Barcelona', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MCI', 'Manchester City', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('TOT', 'Tottenham', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('PSG', 'Paris Saint Germain', 'Ligue 1');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LYO', 'Lyon', 'Ligue 1');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BAY', 'Bayern Munich', 'Bundesliga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('DOR', 'Borussia Dortmund', 'Bundesliga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('INT', 'Inter Milan', 'Serie A');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('JUV', 'Juventus', 'Serie A');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ROM', 'AS Roma', 'Serie A');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('VAL', 'Valencia', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SEV', 'Sevilla', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ATM', 'Atletico Madrid', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BET', 'Real Betis', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('RAY', 'Rayo Vallecano', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MAR', 'Marseille', 'Ligue 1');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MON', 'Monaco', 'Ligue 1');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('STU', 'Stuttgart', 'Bundesliga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LEV', 'Leverkusen', 'Bundesliga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('WOL', 'Wolfsburg', 'Bundesliga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ESP', 'Espanyol', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CEL', 'Celta Vigo', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('GRA', 'Granada', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ATH', 'Athletic Bilbao', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('VIL', 'Villarreal', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ALA', 'Alaves', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('GET', 'Getafe', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ELC', 'Elche', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('OSA', 'Osasuna', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('HUE', 'Huesca', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CAD', 'Cadiz', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('EIB', 'Eibar', 'La Liga');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ALB', 'Albacete', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LUG', 'Lugo', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MAL', 'Malaga', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LEG', 'Leganes', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('DEP', 'Deportivo', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('NUM', 'Numancia', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('RAC', 'Racing Santander', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ZAR', 'Zaragoza', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('TFE', 'Tenerife', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LPA', 'Las Palmas', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ALM', 'Almeria', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('OVI', 'Real Oviedo', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SPO', 'Sporting Gijon', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('PON', 'Ponferradina', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('FUE', 'Fuenlabrada', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SAB', 'Sabadell', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CAR', 'Cartagena', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('GIR', 'Girona', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('EXT', 'Extremadura', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('COR', 'Cordoba', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LOR', 'Lorca', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MIR', 'Mirandes', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('AND', 'Andorra', 'Segunda Division');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BLA', 'Blackburn', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('DER', 'Derby County', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('NOT', 'Nottingham Forest', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LEI', 'Leicester', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('EVE', 'Everton', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('WES', 'West Ham', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('NEW', 'Newcastle', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SOU', 'Southampton', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('WLV', 'Wolverhampton', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('AST', 'Aston Villa', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('FUL', 'Fulham', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BUR', 'Burnley', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BHA', 'Brighton', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SHE', 'Sheffield United', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('WBA', 'West Bromwich Albion', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('STO', 'Stoke City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MUN', 'Manchester United', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LEE', 'Leeds United', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('NOR', 'Norwich City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BIR', 'Birmingham City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('REA', 'Reading', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('QPR', 'Queens Park Rangers', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('MLL', 'Millwall', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SUN', 'Sunderland', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('POR', 'Portsmouth', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('HUD', 'Huddersfield', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BRN', 'Barnsley', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BRI', 'Bristol City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CDF', 'Cardiff City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('PRE', 'Preston North End', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('COV', 'Coventry City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CHA', 'Charlton Athletic', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('IPS', 'Ipswich Town', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ROT', 'Rotherham United', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('WIG', 'Wigan Athletic', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SWA', 'Swansea City', 'Championship');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('DON', 'Doncaster Rovers', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('PNE', 'Peterborough United', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SHR', 'Shrewsbury Town', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('OXF', 'Oxford United', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('PLY', 'Plymouth Argyle', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BRW', 'Brentford', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('LUT', 'Luton Town', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BOU', 'Bournemouth', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('CRY', 'Crystal Palace', 'Premier League');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BRT', 'Burton Albion', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('NWP', 'Newport County', 'League Two');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('SWI', 'Swindon Town', 'League Two');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('FOR', 'Forest Green Rovers', 'League Two');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('COL', 'Colchester United', 'League Two');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('HAR', 'Harrogate Town', 'League Two');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('WIM', 'AFC Wimbledon', 'League Two');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ROV', 'Bristol Rovers', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('BOL', 'Bolton Wanderers', 'League One');
INSERT INTO Equipo (equipo_id, nombre_equipo, nombre_liga) VALUES ('ACC', 'Accrington Stanley', 'League Two');

INSERT INTO PRODUCTO(nombre_producto,tipo_producto,año_producto,imagen_url,equipo_id) VALUES ('Real Madrid','Hoodie','24-25','https://img.zhidian-inc.cn/cheap-soccerjerseys/facbcfa1/small.jpg','RMA');
INSERT INTO userproducto(user_id,producto_id,cantidad) VALUES (1,1,3);
 
