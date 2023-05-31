/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inschrijvingen` (
  `id_leerling` int NOT NULL,
  `vak` varchar(16) NOT NULL,
  PRIMARY KEY (`id_leerling`,`vak`),
  KEY `vak` (`vak`),
  CONSTRAINT `inschrijvingen_ibfk_1` FOREIGN KEY (`id_leerling`) REFERENCES `leerlingen` (`id_leerling`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `inschrijvingen_ibfk_2` FOREIGN KEY (`vak`) REFERENCES `vakken` (`vak`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `inschrijvingen` (`id_leerling`, `vak`) VALUES (1,'Engels'),(2,'Engels'),(3,'Engels'),(4,'Engels'),(3,'geschiedenis'),(4,'geschiedenis'),(2,'natuurkunde'),(5,'natuurkunde'),(1,'Nederlands'),(2,'Nederlands'),(5,'Nederlands'),(1,'wiskunde'),(3,'wiskunde'),(4,'wiskunde'),(5,'wiskunde');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leerlingen` (
  `id_leerling` int NOT NULL AUTO_INCREMENT,
  `naam` text NOT NULL,
  `klas` varchar(4) NOT NULL,
  PRIMARY KEY (`id_leerling`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `leerlingen` (`id_leerling`, `naam`, `klas`) VALUES (1,'Alice Pieters\r\n','H5A'),(2,'Bob Bouwma\r\n','H5A'),(3,'Cindy Young','H5B'),(4,'Dirk Nauta\r\n','H5A'),(5,'Eve Ning\r\n\r\n','H5B');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vakken` (
  `docentnaam` text NOT NULL,
  `vak` varchar(16) NOT NULL,
  `docentcode` varchar(3) NOT NULL,
  `lokaal` varchar(5) NOT NULL,
  PRIMARY KEY (`vak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `vakken` (`docentnaam`, `vak`, `docentcode`, `lokaal`) VALUES ('Schreuder','Engels','SCI','A104'),('Scheffers\r\n','geschiedenis','SCL','B409'),('Palsma\r\n','natuurkunde','PLP','B206'),('Hoekstra\r\n','Nederlands','HOJ','A202'),('Bakker\r\n','wiskunde','BAH','A105');
