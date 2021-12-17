-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: mysql205.cszw5wiaeg6n.us-east-2.rds.amazonaws.com    Database: gymcarry
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
-- SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

-- SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `crcertification`
--

DROP TABLE IF EXISTS `crcertification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crcertification` (
  `CRIDX` int NOT NULL COMMENT '캐리번호',
  `CRCERTI1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '자격및경력1',
  `CRCERTI2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '자격및경력1',
  `CRCERTI3` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '자격및경력1',
  `CRCERTI4` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '자격및경력1',
  `CRCERTI5` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '자격및경력1',
  PRIMARY KEY (`CRIDX`),
  KEY `FK_CARRY_TO_CRCERTIFICATION` (`CRIDX`),
  CONSTRAINT `FK_CARRY_TO_CRCERTIFICATION` FOREIGN KEY (`CRIDX`) REFERENCES `carry` (`CRIDX`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crcertification`
--

LOCK TABLES `crcertification` WRITE;
/*!40000 ALTER TABLE `crcertification` DISABLE KEYS */;
INSERT INTO `crcertification` VALUES (1,'특수체육 지도자','스포츠 마사지 지도자','퍼스널트레이닝 지도자','운동재활 상담사','건강운동관리사'),(2,'2급 생활스포츠지도사','1급 전문스포츠지도사','장애 운동재활 지도자','',''),(3,'국제요가얼라이언스(RYT200)','유솜 지도자 자격증','Core Perform 지도자 과정 수료 - Grobal Group Fit Association','Muscle Pump 지도자 과정 수료 - Grobal Group Fit Association','생활스포츠지도사 3급 (에어로빅) - 문화체육관광부'),(4,'특수체육 지도자','스포츠 마사지 지도자','장애 운동재활 지도자','장애인체육지도자',''),(6,'특수체육 지도자','1급 전문스포츠지도사','퍼스널트레이닝 지도자','운동재활 상담사',''),(7,'노인스포츠지도사','건강운동관리사','퍼스널 트레이너(NSCA-CPT)','',''),(8,'특수체육 지도자','스포츠 마사지 지도자','퍼스널 트레이너(NSCA-CPT)','운동재활 상담사',''),(10,'체형교정','바디프로필','대회준비','기초트레이닝','고급트레이닝'),(12,'2급 생활스포츠지도사','스포츠 마사지 지도자','퍼스널 트레이너(NSCA-CPT)','노인스포츠지도사 ',''),(13,'필라테스 자격증',' 선수 트레이너','체력관리전문가(CSCS)','응급처치 및 CPR 수료증','전) 이온 필라테스 신촌 필라테스 강사'),(14,'특수체육 지도자','장애인체육지도자','노인체육지도자','',''),(16,'노인겅강마사지','스포츠테이핑','스포츠마사지','바디디자인',''),(17,'노인스포츠지도사','스포츠 마사지 지도자','퍼스널 트레이너(NSCA-CPT)','',''),(19,'노인스포츠지도사','건강운동관리사','퍼스널트레이닝 지도자','운동재활 상담사','건강운동관리사'),(20,'물리치료사 국가자격증','국제 필라테스 자격증','체육지도자 2급','',''),(21,'하타 요가 지도사','운동재활 상담사','현) 요가 아틀리에 하타, 빈야사 요가 지도자','',''),(22,'다이어트','근비대','프로필','머슬대회',''),(23,'멘즈헬스 맨몸운동 프로젝트 플렝크 가이드','강남 ARC P.T Studio 트레이너','현) 고프로 엠버서더','운동처방사','응급처치 및 CPR 수료증'),(24,'필라테스 자격증','운동재활 상담사','체력관리전문가(CSCS)','전) 부천 문필라테스 필라테스 강사 ','현) 엠오엠 필라테스 상암점 필라테스 강사'),(25,'Afic Step master 아마데미 수료','생활체육지도자 에어로빅 2급','Bosu mind_body coure 수료','Afic Step master 아마데미 수료','대한 MS체형학회 견관절 재활과정 수료'),(26,'생활체육지도자 보디빌딩 2급)','NSCA KOREA Pilates Instructor Course 수료','Gymstick muscle 지도자 자격증','대한 MS체형학회 견관절 재활과정 수료','EXERCISE SCHOOL 재활운동지도자과정 수료'),(27,'pt','자세교정','피트니스대회','',''),(28,'건강운동관리사','선수 트레이너','각 종목 엘리트스포츠 단체 재활 지도자','구급 및 응급처치사','운동재활 상담사'),(29,'생활체육지도자 에어로빅 / 보디빌딩 3급','필라테스코리아 국제','레드코드 슬링 테라피 Licence','크로스핏 레벨1 트레이너 Certificate','조선일보 헬스조선 \'근력 강화 피트니스\' 촬영'),(30,'스포츠 마사지 지도자','퍼스널트레이닝 지도자','1급 생활스포츠지도사','',''),(31,'자세평가','바른자세정렬인지','호흡인지','스트레칭','다이어트'),(32,'생활체육 지도자 자격증2급','ems운동치료사 자격증','acub필라테스 퍼스널','',''),(33,'무용예술학부졸업','KEPA PLATES ASSOCIATION','해부학이수','임산부 산전산후 교육이수','보이필라테스 강사'),(34,'스포츠 마사지 지도자','운동재활 상담사','2급 전문스포츠지도사','',''),(35,'아쉬탕가','빈야사','지바목티','차크라빈야사','하타'),(36,'필라핏 지도자 과정 수료 - Grobal Group Fit Association','생활스포츠지도사 3급 (에어로빅) - 문화체육관광부','케어링 플로우 워크샵 수료 - 케어링코리아','',''),(38,'자세교정','자세평가','유연성증가','',''),(39,' 엘리트스포츠 단체 재활 지도자','전) 도곡 퓨어짐 퍼스널 트레이너 ','2019 보디빌더 대회 은상','2020 월드챔피언쉽 3RD Award','현) 헬스보이짐 상암MBC점 퍼스널 트레이너'),(40,'건강운동관리사','퍼스널트레이닝 지도자','','',''),(41,'건강운동관리사','퍼스널트레이닝 지도자','2008 보디빌딩 대회 금상','2020 월드챔피언쉽 1st Award','2021 월드챔피언쉽 2nd Award'),(42,'필라테스 자격증','장애 운동재활 지도자','운동재활 상담사','스포츠 마사지 지도자','응급처치 및 CPR 수료증'),(43,' Authorized Teacher Level 2 공인인가','KYIA 요가지도자 1코스','요가 지도자 자격증(Yoga Teacher Training Courses)','',''),(44,'인도 비베 까난다 요가 대학교','동국대학원 명상심리학과 박사','','',''),(45,'재활파트','다이어트','트레이너준비생','피트니스대회','체형교정'),(46,'보디빌딩 스포츠 및 웨이트트레이닝 자격증 - (사)대한보디빌딩협회','인도 아쉬람','','',''),(47,'특수체육 지도자','장애인체육지도자','','',''),(48,'특수체육 지도자','건강운동관리사','퍼스널 트레이너(NSCA-CPT)','',''),(49,'특수체육 지도자','장애인체육지도자','노인체육지도자','',''),(50,'필라핏 지도자 과정 수료 - Grobal Group Fit Association','다빈치바디보드 트레이너 과정 수료 - 다빈치바디보드','케어링 플로우 워크샵 수료 - 케어링코리아','Muscle Pump 지도자 과정 수료 - Grobal Group Fit Association',''),(51,' 2급 전문스포츠지도사','노인스포츠지도사 ','퍼스널 트레이너(NSCA-CPT)','',''),(52,' 2급 전문스포츠지도사','재활전문가','물리치료사','',''),(53,'Aerial Yoga 지도자 자격증 - 옴팩토리','하타요가 지도자 자격증 - 핫요가 지도자협회','린다코어 요가 지도자 베이직 과정 수료 - 린다코어요가','',''),(54,'생활체육지도자2급','트위스터백 lv2강사자격','펑셔널트레이닝 전문가코스 수료','크로스핏 자격증','슈퍼스타K 시즌2-6 Top10 바디디렉팅'),(55,' 2급 전문스포츠지도사','재활전문가','노인체육지도자','',''),(56,'생활스포츠지도사 2급 - 문화관광체육부','원트 댄스팀 리더','원밀리언 소속 댄서','',''),(59,'특수체육 지도자','노인스포츠지도사 ','물리치료사','',''),(60,'생활 스포츠 지도사 보디빌딩 2급','구 KOICA 해외봉사단 단원','ISSA Sports Nutritionist (ISSA 스포츠 영양사)','대한적십자 응급처치 교육 수료','National CPR Foundation CPR/AED/First-AID 응급처치학'),(61,'특수체육 지도자','재활전문가','','',''),(62,'특수체육 지도자','노인스포츠지도사 ','','',''),(64,'국제요가얼라이언스(RYT200)','프라우드먼 댄스팀 리더','건강운동관리사','',''),(65,'국제요가얼라이언스(RYT200)','태극권 10년 수련','태권도 3단','유솜 요가 자격증',''),(67,'탐 현대무용단 주역','현대백화점 본점 문화센터 강의','더 스페이스 요가 대표','무용과 석사 취득','뉴욕 파워 필라테스 기구 전과정 국제강사 자격 취득'),(68,'뉴욕 파워 필라테스 기구 전과정 국제강사 자격 취득','뉴욕 파워 필라테스 Mat 국제강사 자격 취득','이화여대 무용과 석사 취득','','');
/*!40000 ALTER TABLE `crcertification` ENABLE KEYS */;
UNLOCK TABLES;
-- SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-25 22:17:31
