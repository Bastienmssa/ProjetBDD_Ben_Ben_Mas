CREATE TABLE Humain (
    Id_Humain INT PRIMARY KEY,
    Nom VARCHAR(100),
    Poste VARCHAR(100),
    Anciennete INT
);

CREATE TABLE Robot (
    Id_Robot INT PRIMARY KEY,
    Modele VARCHAR(100),
    Nom VARCHAR(100),
    Etat VARCHAR(50)
);

CREATE TABLE Rapport (
    Id_Rapport INT PRIMARY KEY,
    Type_Loi VARCHAR(100),
    Id_Action INT,
    FOREIGN KEY (Id_Action) REFERENCES Action(Id_Action)
);

CREATE TABLE Action (
    Id_Action INT PRIMARY KEY,
    Description VARCHAR(255),
    Heure TIME,
    Date_debut DATE,
    Date_fin DATE,
    Id_Rapport INT,
    FOREIGN KEY (Id_Rapport) REFERENCES Rapport(Id_Rapport)
);

CREATE TABLE Ordonne (
    Id_Robot INT,
    Id_Humain INT,
    PRIMARY KEY (Id_Robot, Id_Humain),
    FOREIGN KEY (Id_Robot) REFERENCES Robot(Id_Robot),
    FOREIGN KEY (Id_Humain) REFERENCES Humain(Id_Humain)
);

CREATE TABLE Impliquer (
    Id_Robot INT,
    Id_Action INT,
    Id_Humain INT,
    PRIMARY KEY (Id_Robot, Id_Action, Id_Humain),
    FOREIGN KEY (Id_Robot) REFERENCES Robot(Id_Robot),
    FOREIGN KEY (Id_Action) REFERENCES Action(Id_Action),
    FOREIGN KEY (Id_Humain) REFERENCES Humain(Id_Humain)
);


-- Insertion de données corrigées dans la table Humain
INSERT INTO Humain (Id_Humain, Nom, Poste, Anciennete) VALUES
(1, "Alice", "Ingénieur Informatique", 5),
(2, "Bob", "Ouvrier", 3),
(3, "Charlie", "Robopsychologue", 8),
(4, "Diana", "Ingénieur Informatique", 2),
(5, "Eve", "Mainteneur et Service", 10),
(6, "Frank", "Mainteneur et Service", 6),
(7, "Grace", "Ouvrier", 4),
(8, "Henry", "Robopsychologue", 7),
(9, "Isabelle", "Chef de mission", 9),
(10, "Jack", "Ouvrier", 3),
(11, "Kate", "Robopsychologue", 8),
(12, "Liam", "Roboticien", 2),
(13, "Maria", "Mainteneur et Service", 4),
(14, "Noah", "Robopsychologue", 6),
(15, "Olivia", "Ouvrier", 5),
(16, "Paul", "Ingénieur Informatique", 10),
(17, "Quinn", "Chef de mission", 7),
(18, "Rose", "Ouvrier", 6),
(19, "Sam", "Mainteneur et Service", 3),
(20, "Tina", "Roboticien", 4),
(21, "Uma", "Mainteneur et Service", 8),
(22, "Victor", "Ouvrier", 5),
(23, "Wendy", "Mainteneur et Service", 9),
(24, "Xavier", "Ingénieur Informatique", 4),
(25, "Yasmine", "Roboticien", 6),
(26, "Zach", "Robopsychologue", 7),
(27, "Clara", "Roboticien", 5),
(28, "Daniel", "Ouvrier", 10),
(29, "Eloise", "Robopsychologue", 3),
(30, "Felix", "Roboticien", 4);

INSERT INTO Robot (Id_Robot, Modele, Nom, Etat) VALUES
(1, "A100", "HelperBot", "Actif"),
(2, "B200", "MaintenanceBot", "Inactif"),
(3, "C300", "SurveyBot", "Actif"),
(4, "D400", "SecurityBot", "Actif"),
(5, "E500", "AssistantBot", "En maintenance"),
(6, "F600", "TransportBot", "Actif"),
(7, "G700", "AnalyseBot", "Inactif"),
(8, "H800", "ExplorationBot", "Actif"),
(9, "I900", "CleanBot", "En maintenance"),
(10, "J1000", "FoodBot", "Actif"),
(11, "K1100", "MedBot", "Actif"),
(12, "L1200", "TechBot", "Inactif"),
(13, "M1300", "RescueBot", "En maintenance"),
(14, "N1400", "BuildBot", "Actif"),
(15, "O1500", "GuardBot", "Actif"),
(16, "P1600", "SensorBot", "Actif"),
(17, "Q1700", "PowerBot", "Actif"),
(18, "R1800", "AirBot", "Inactif"),
(19, "S1900", "WaterBot", "En maintenance"),
(20, "T2000", "FireBot", "Actif"),
(21, "U2100", "RepairBot", "Actif"),
(22, "V2200", "MapBot", "Actif"),
(23, "W2300", "DroneBot", "Actif"),
(24, "X2400", "SearchBot", "Inactif"),
(25, "Y2500", "CleanBot", "En maintenance"),
(26, "Z2600", "PatrolBot", "Actif"),
(27, "AA2700", "SupportBot", "Actif"),
(28, "AB2800", "BuildBot", "Actif"),
(29, "AC2900", "AssistBot", "En maintenance"),
(30, "AD3000", "SurveyBot", "Actif"),
(31, "AE3100", "GhostBot", "Disparu"),
(32, "AF3200", "LostBot", "Disparu"),
(33, "AG3300", "ShadowBot", "Disparu"),
(34, "AH3400", "WanderBot", "Disparu"),
(35, "AI3500", "StealthBot", "Disparu"),
(36, "AJ3600", "DriftBot", "Disparu"),
(37, "AK3700", "EscapeBot", "Disparu"),
(38, "AL3800", "NullBot", "Disparu"),
(39, "AM3900", "VanisherBot", "Disparu"),
(40, "AN4000", "SilentBot", "Disparu");

INSERT INTO Rapport (Id_Rapport, Type_Loi, Id_Action) VALUES
(1, "Première Loi", NULL),
(2, "Première Loi", NULL),
(3, "Première Loi", NULL),
(4, "Première Loi", NULL),
(5, "Première Loi", NULL),
(6, "Première Loi", NULL),
(7, "Première Loi", NULL),
(8, "Première Loi", NULL),
(9, "Première Loi", NULL),
(10, "Première Loi", NULL),
(11, "Première Loi", NULL),
(12, "Première Loi", NULL),
(13, "Première Loi", NULL),
(14, "Première Loi", NULL),
(15, "Première Loi", NULL),
(16, "Deuxième Loi", NULL),
(17, "Deuxième Loi", NULL),
(18, "Deuxième Loi", NULL),
(19, "Deuxième Loi", NULL),
(20, "Deuxième Loi", NULL),
(21, "Deuxième Loi", NULL),
(22, "Deuxième Loi", NULL),
(23, "Deuxième Loi", NULL),
(24, "Deuxième Loi", NULL),
(25, "Deuxième Loi", NULL),
(26, "Troisième Loi", NULL),
(27, "Troisième Loi", NULL),
(28, "Troisième Loi", NULL),
(29, "Troisième Loi", NULL),
(30, "Troisième Loi", NULL);


INSERT INTO Action (Id_Action, Description, Heure, Date_debut, Date_fin, Id_Rapport)
VALUES
(1, "Réparation générateur", "10:30:00", "2024-01-15", "2024-01-16", 1),
(2, "Réparation générateur", "12:00:00", "2024-01-15", "2024-01-16", 2),
(3, "Réparation générateur", "14:00:00", "2024-01-15", "2024-01-16", 3),
(4, "Réparation générateur", "09:00:00", "2024-01-15", "2024-01-16", 4),
(5, "Réparation générateur", "15:30:00", "2024-01-15", "2024-01-16", 5),
(6, "Réparation générateur", "13:00:00", "2024-01-15", "2024-01-16", 6),
(7, "Réparation générateur", "11:45:00", "2024-01-15", "2024-01-16", 7),
(8, "Réparation générateur", "16:20:00", "2024-01-15", "2024-01-16", 8),
(9, "Réparation générateur", "08:30:00", "2024-01-15", "2024-01-16", 9),
(10, "Réparation générateur", "17:00:00", "2024-01-15", "2024-01-16", 10),
(11, "Réparation générateur", "12:30:00", "2024-01-15", "2024-01-16", 11),
(12, "Réparation générateur", "18:00:00", "2024-01-15", "2024-01-16", 12),
(13, "Sauvetage humain", "19:45:00", "2024-01-14", "2024-01-14", 13),
(14, "Sauvetage humain", "09:15:00", "2024-01-14", "2024-01-14", 14),
(15, "Sauvetage humain", "14:45:00", "2024-01-14", "2024-01-14", 15),
(16, "Sauvetage humain", "10:00:00", "2024-01-14", "2024-01-14", 16),
(17, "Sauvetage humain", "20:30:00", "2024-01-14", "2024-01-14", 17),
(18, "Sauvetage humain", "08:00:00", "2024-01-14", "2024-01-14", 18),
(19, "Sauvetage humain", "16:30:00", "2024-01-14", "2024-01-14", 19),
(20, "Exploration site minier", "15:00:00", "2024-01-14", "2024-01-14", 20),
(21, "Exploration site minier", "10:30:00", "2024-01-14", "2024-01-14", 21),
(22, "Exploration site minier", "18:15:00", "2024-01-14", "2024-01-14", 22),
(23, "Exploration site minier", "07:45:00", "2024-01-14", "2024-01-14", 23),
(24, "Exploration site minier", "19:30:00", "2024-01-14", "2024-01-14", 24),
(25, "Configuration réseau", "11:00:00", "2024-01-15", "2024-01-16", 25),
(26, "Configuration réseau", "09:30:00", "2024-01-15", "2024-01-16", 26),
(27, "Configuration réseau", "20:15:00", "2024-01-15", "2024-01-16", 27),
(28, "Configuration réseau", "08:45:00", "2024-01-15", "2024-01-16", 28),
(29, "Configuration réseau", "17:15:00", "2024-01-15", "2024-01-16", 29),
(30, "Configuration réseau", "15:45:00", "2024-01-15", "2024-01-16", 30);


UPDATE Rapport
SET Id_Action = Id_Rapport;

INSERT INTO Ordonne (Id_Robot, Id_Humain)
VALUES
(1, 3), (3, 7), (5, 10), (7, 15), (9, 2),
(11, 18), (13, 4), (15, 9), (17, 22), (19, 1),
(21, 5), (21, 21), (22, 12), (22, 22), (23, 14),
(23, 23), (24, 19), (24, 24), (25, 7), (25, 25),
(26, 11), (26, 26), (27, 8), (27, 27), (28, 17),
(28, 28), (29, 21), (29, 29), (30, 20), (30, 30);


INSERT INTO Impliquer (Id_Robot, Id_Action, Id_Humain)
VALUES 
(1, 1, 1), (1, 2, 3), (2, 3, 2), (2, 4, 2), (3, 5, 4),
(4, 6, 5), (5, 7, 6), (6, 8, 7), (7, 9, 1), (8, 10, 3),
(9, 11, 4), (10, 12, 2), (11, 13, 6), (12, 14, 5), (13, 15, 1),
(14, 16, 7), (15, 17, 5), (16, 18, 3), (17, 19, 2), (18, 20, 4),
(19, 21, 1), (20, 22, 5), (21, 23, 7), (22, 24, 3), (23, 25, 2),
(24, 26, 6), (25, 27, 4), (26, 28, 1), (27, 29, 3), (28, 30, 7),
(29, 10, 5), (30, 11, 2), (1, 12, 6), (2, 14, 7), (3, 18, 1),
(5, 20, 2), (8, 22, 4), (10, 24, 3), (12, 25, 6), (15, 27, 7);





-- Commande utile !
 
SELECT User FROM mysql.user; -- Voir les utilisateurs de toutes les bases de données
SHOW FULL TABLES IN coloniespatiale WHERE TABLE_TYPE = 'VIEW';  -- Voir les vues de notre base de données
SHOW GRANTS FOR 'user'@'%'; -- Affiche les droits 


-- Gestion des droits administateur
CREATE USER 'administrateur'@'%' IDENTIFIED BY 'AdministationMotdePasse'; -- Création du USER

GRANT ALL PRIVILEGES ON coloniespatiale.* TO 'administrateur'@'%'; -- On attibut aux administateurs tous les privilèges
FLUSH PRIVILEGES;



-- Gestion des droits analyste
CREATE USER 'analyste'@'%' IDENTIFIED BY 'AnalysteMotdePasse'; -- Création du USER

-- On créé des vues pour analyser:
-- Le nombre d incicent concernant une loi (Analyse Data)
CREATE VIEW Vue_Analyse_Actions AS
SELECT Type_Loi, COUNT(*)  -- Compte le nombre de loi
FROM Action
JOIN Rapport ON Action.Id_Rapport = Rapport.Id_Rapport
GROUP BY Type_Loi;

-- Le nombre de robot dans chaque etat
CREATE VIEW Vue_Etat_Robots AS
SELECT 
    Etat, 
    COUNT(*) AS Nombre_Robots
FROM Robot
GROUP BY Etat;

-- Liste de robot n ayant pas été imliqué dans des actions
CREATE VIEW Vue_Robots_Sans_Action AS
SELECT Robot.Id_Robot, Robot.Nom, Robot.Etat
FROM Robot
WHERE Robot.Id_Robot NOT IN (
    SELECT DISTINCT Id_Robot FROM Impliquer
);



-- On applique les privilèges sur la vue crée
GRANT SELECT ON coloniespatiale.Vue_Analyse_Actions TO 'analyste'@'%'; 


-- On supprime tous les autres privilèges
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'analyste'@'%';



-- Gestion des privilèges technicien
CREATE USER 'technicien'@'%' IDENTIFIED BY 'TechnicienMotdePasse';

-- On donne accès à la table robot et le technicien peut modifier l état du robot
GRANT SELECT, UPDATE (Etat) ON coloniespatiale.Robot TO 'technicien'@'%';

-- On supprime tous les autres privilèges
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'technicien'@'%';



-- Gestion des privilèges superviseur éthiques
CREATE USER 'superviseur_ethique'@'%' IDENTIFIED BY 'Ethique';

GRANT SELECT ON coloniespatiale.Action TO 'superviseur_ethique'@'%'; -- Accès à la table action
GRANT SELECT ON coloniespatiale.Rapport TO 'superviseur_ethique'@'%'; -- Accès à la table rapport

-- On supprime tous les autres privilèges
REVOKE INSERT, UPDATE, DELETE ON coloniespatiale.Action FROM 'superviseur_ethique'@'%';
REVOKE INSERT, UPDATE, DELETE ON coloniespatiale.Rapport FROM 'superviseur_ethique'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'superviseur_ethique'@'%';




-- Nombre d humain impliqués dans un rapport d incidence
SELECT Humain.Id_Humain, Humain.Nom, COUNT(*) AS Nombre_incidents
FROM Impliquer
JOIN Humain ON Impliquer.Id_Humain = Humain.Id_Humain
JOIN Rapport ON Impliquer.Id_Action = Rapport.Id_Action
GROUP BY Humain.Id_Humain, Humain.Nom
ORDER BY Nombre_incidents DESC;


-- Nombre de robots impliqués dans un rapport d incidence
SELECT Robot.Id_Robot, Robot.Nom, COUNT(*) AS Nombre_Incidents
FROM Impliquer
JOIN Robot ON Impliquer.Id_Robot = Robot.Id_Robot
JOIN Rapport ON Impliquer.Id_Action = Rapport.Id_Action
GROUP BY Robot.Id_Robot, Robot.Nom
ORDER BY Nombre_Incidents DESC;

-- Nombre d action ayant menéees le plus à un rapport d incidence
SELECT Action.Description, COUNT(*) AS Nombre_Rapports
FROM Action
JOIN Rapport ON Action.Id_Action = Rapport.Id_Action
GROUP BY Action.Description
ORDER BY Nombre_Rapports DESC;

-- Nombre de robots disparus
SELECT Nom AS Robot_Disparu
FROM Robot 
WHERE Etat = "Disparu";


-- Temps moyen d une action
SELECT 
    CONCAT(
        FLOOR(AVG(DATEDIFF(Action.Date_fin, Action.Date_debut)) / 365), ' Année(s), ',
        FLOOR(MOD(AVG(DATEDIFF(Action.Date_fin, Action.Date_debut)), 365)), ' Jour(s), ',
        FLOOR(AVG(TIME_TO_SEC(TIMEDIFF(Action.Date_fin, Action.Date_debut))) / 3600), ' Heure(s), ',
        FLOOR(MOD(AVG(TIME_TO_SEC(TIMEDIFF(Action.Date_fin, Action.Date_debut))), 3600) / 60), ' Minute(s), ',
        FLOOR(MOD(AVG(TIME_TO_SEC(TIMEDIFF(Action.Date_fin, Action.Date_debut))), 60)), ' Seconde(s)'
    ) AS Temps_Moyen
FROM Action;


-- Proportion des lois non respectées
SELECT Rapport.Type_Loi, COUNT(*) AS Nombre_Rapports, 
       ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM Rapport), 2) AS Proportion_Pourcentage
FROM Rapport
GROUP BY Rapport.Type_Loi
ORDER BY Nombre_Rapports DESC;



CREATE INDEX idx_impliquer_id_humain ON Impliquer (Id_Humain);
CREATE INDEX idx_impliquer_id_action ON Impliquer (Id_Action);
CREATE INDEX idx_impliquer_id_robot ON Impliquer (Id_Robot);