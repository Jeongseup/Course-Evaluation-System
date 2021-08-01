-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 198.13.53.191    Database: dev1
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.7-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_answer`
--

DROP TABLE IF EXISTS `t_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `answer_value` int(10) unsigned NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `answer_FK` (`user_email`),
  KEY `answer_FK_1` (`question_id`),
  KEY `t_answer_FK` (`class_id`),
  CONSTRAINT `answer_FK` FOREIGN KEY (`user_email`) REFERENCES `t_user` (`user_email`),
  CONSTRAINT `t_answer_FK` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`),
  CONSTRAINT `t_answer_FK_1` FOREIGN KEY (`question_id`) REFERENCES `t_question` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='사용자 평가 응답 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_answer`
--

LOCK TABLES `t_answer` WRITE;
/*!40000 ALTER TABLE `t_answer` DISABLE KEYS */;
INSERT INTO `t_answer` VALUES (1,2,5,'ek@gmail.com',1),(3,7,5,'js@gmail.com',3),(6,2,3,'mh@gmail.com',1),(18,13,3,'pj@gmail.com',5),(19,14,3,'pj@gmail.com',5),(20,16,3,'pj@gmail.com',7),(21,17,4,'pj@gmail.com',7),(22,16,3,'wg@gmail.com',6),(23,17,2,'wg@gmail.com',6),(24,19,1,'wg@gmail.com',7),(25,20,5,'wg@gmail.com',7),(30,16,3,'hy@gmail.com',6),(31,17,2,'hy@gmail.com',6),(32,19,2,'hy@gmail.com',7),(33,20,3,'hy@gmail.com',7),(34,13,4,'jy@gmail.com',5),(35,14,3,'jy@gmail.com',5),(36,16,4,'jy@gmail.com',7),(37,17,1,'jy@gmail.com',7),(38,22,1,'jh@gmail.com',8),(39,23,3,'jh@gmail.com',8),(40,25,2,'jh@gmail.com',9),(41,26,4,'jh@gmail.com',9),(42,25,3,'hg@gmail.com',9),(43,26,2,'hg@gmail.com',9),(46,22,2,'gh@gmail.com',8),(47,23,3,'gh@gmail.com',8),(50,22,3,'dy@gmail.com',8),(51,23,2,'dy@gmail.com',8),(52,25,3,'dy@gmail.com',9),(53,26,1,'dy@gmail.com',9),(56,25,3,'jr@gmail.com',9),(57,26,1,'jr@gmail.com',9),(117,33,4,'ek@gmail.com',4),(118,34,3,'ek@gmail.com',4),(119,38,0,'ek@gmail.com',4),(120,39,0,'ek@gmail.com',4),(121,33,4,'ek@gmail.com',4),(122,34,3,'ek@gmail.com',4),(123,38,0,'ek@gmail.com',4),(124,39,0,'ek@gmail.com',4),(125,2,4,'tj@gmail.com',1),(126,2,5,'js@gmail.com',1),(127,3,4,'ek@gmail.com',1),(128,3,4,'mh@gmail.com',1),(129,3,4,'tj@gmail.com',1),(130,3,3,'js@gmail.com',1),(131,4,5,'ek@gmail.com',1),(132,4,5,'mh@gmail.com',1),(133,4,5,'tj@gmail.com',1),(134,4,5,'js@gmail.com',1),(135,5,1,'ek@gmail.com',1),(136,5,5,'mh@gmail.com',1),(137,5,4,'tj@gmail.com',1),(138,5,2,'js@gmail.com',1),(139,8,0,'ek@gmail.com',3),(140,9,0,'ek@gmail.com',3),(141,8,0,'ek@gmail.com',3),(142,9,0,'ek@gmail.com',3),(143,8,5,'ek@gmail.com',3),(144,9,0,'ek@gmail.com',3),(145,8,5,'ek@gmail.com',3),(146,9,0,'ek@gmail.com',3),(147,8,4,'ek@gmail.com',3),(148,9,3,'ek@gmail.com',3),(149,8,4,'ek@gmail.com',3),(150,9,3,'ek@gmail.com',3),(151,33,0,'mh@gmail.com',2),(152,34,0,'mh@gmail.com',2),(153,38,0,'mh@gmail.com',2),(154,39,0,'mh@gmail.com',2),(155,70,0,'mh@gmail.com',2);
/*!40000 ALTER TABLE `t_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_class`
--

DROP TABLE IF EXISTS `t_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_class` (
  `course_id` int(10) unsigned NOT NULL COMMENT '과정 아이디',
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '수업 고유 아이디',
  `name` varchar(100) NOT NULL COMMENT '수업명',
  `start_date` date DEFAULT NULL COMMENT '수업 시작일',
  `end_date` date DEFAULT NULL COMMENT '수업 종료일',
  `information` longtext DEFAULT NULL COMMENT '수업 소개',
  `place` varchar(100) DEFAULT NULL COMMENT '수업 장소',
  `eval_status_id` int(10) unsigned DEFAULT NULL COMMENT '수업평가 진행상태 아이디',
  PRIMARY KEY (`class_id`),
  KEY `class_FK` (`course_id`),
  KEY `class_FK_1` (`eval_status_id`),
  CONSTRAINT `class_FK` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`course_id`),
  CONSTRAINT `class_FK_1` FOREIGN KEY (`eval_status_id`) REFERENCES `t_eval_status_types` (`eval_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='과정 내 수업 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_class`
--

LOCK TABLES `t_class` WRITE;
/*!40000 ALTER TABLE `t_class` DISABLE KEYS */;
INSERT INTO `t_class` VALUES (1,1,'이더리움 클래스','2021-07-15','2021-07-17','블록체인관련 HTML수업입니다.','101호',4),(1,2,'비트코인 클래스','2021-07-18','2021-07-20','블록체인관련 CSS수업입니다.','101호',3),(1,3,'JavaScript','2021-07-21','2021-07-23','블록체인관련 JavaScript수업입니다.','101호',2),(1,4,'Vue.js','2021-07-24','2021-07-27','자바스크립트 프레임워크인 Vue.js를 배우고, 이를 활용하여 간단한 미니 프로젝트를 진행하는 수업입니다.','401호',2),(2,5,'HTML','2021-07-15','2021-07-17','빅데이터관련 HTML 수업입니다. ','102호',1),(2,6,'CSS','2021-07-18','2021-07-20','빅데이터관련 CSS 수업입니다. ','102호',2),(2,7,'Python','2021-07-21','2021-07-23','빅데이터관련 Python 수업입니다. ','102호',3),(3,8,'HTML','2021-07-15','2021-07-17','인공지능관련 HTML 수업입니다. ','103호',1),(3,9,'JavaScript','2021-07-18','2021-07-20','인공지능관련 JavaScript 수업입니다. ','103호',2),(3,10,'CSS','2021-07-21','2021-07-23','인공지능관련 CSS수업입니다.','103호',3);
/*!40000 ALTER TABLE `t_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_course`
--

DROP TABLE IF EXISTS `t_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_course` (
  `course_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '과정 고유 아이디',
  `name` varchar(100) NOT NULL COMMENT '과정명',
  `start_date` date NOT NULL COMMENT '과정 시작일',
  `end_date` date NOT NULL COMMENT '과정 종료일',
  `information` longtext DEFAULT NULL COMMENT '과정 소개',
  `goverment_type_id` int(10) unsigned NOT NULL COMMENT '담당 정부기관 아이디',
  `place` varchar(100) NOT NULL COMMENT '과정 진행 장소',
  `user_email` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_FK` (`goverment_type_id`),
  KEY `t_course_FK` (`user_email`),
  CONSTRAINT `course_FK` FOREIGN KEY (`goverment_type_id`) REFERENCES `t_goverment_types` (`goverment_type_id`),
  CONSTRAINT `t_course_FK` FOREIGN KEY (`user_email`) REFERENCES `t_user` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='과정 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_course`
--

LOCK TABLES `t_course` WRITE;
/*!40000 ALTER TABLE `t_course` DISABLE KEYS */;
INSERT INTO `t_course` VALUES (1,'블록체인','2021-07-15','2021-11-19','블록체인 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(2,'빅데이터','2021-07-15','2021-11-19','빅데이터 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(3,'인공지능','2021-07-15','2021-11-19','인공지능 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(4,'사물인터넷','2021-07-20','2021-11-30','사물인터넷 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(5,'암호학','2021-07-20','2021-11-30','암호학 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(6,'머신러닝','2021-07-20','2021-11-30','머신러닝 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(7,'로봇공학','2021-07-21','2021-11-30','로봇공학 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(8,'3차원 인쇄','2021-07-21','2021-11-30','3차원 인쇄 교육과정입니다.',1,'월드메르디앙','hk@gmail.com'),(9,'나노기술','2021-07-21','2021-11-30','나노기술 교육과정입니다.',1,'월드메르디앙','hk@gmail.com');
/*!40000 ALTER TABLE `t_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_eval_status_types`
--

DROP TABLE IF EXISTS `t_eval_status_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_eval_status_types` (
  `eval_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '평가지 진행상태 고유 아이디',
  `eval_status_name` varchar(100) DEFAULT NULL COMMENT '평가지 진행상태 표기명',
  PRIMARY KEY (`eval_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='평가지 진행상태 밸류 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_eval_status_types`
--

LOCK TABLES `t_eval_status_types` WRITE;
/*!40000 ALTER TABLE `t_eval_status_types` DISABLE KEYS */;
INSERT INTO `t_eval_status_types` VALUES (1,'강의 평가지 생성'),(2,'강의 평가지 수정'),(3,'강의 평가 진행중'),(4,'결과조회');
/*!40000 ALTER TABLE `t_eval_status_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_eval_values`
--

DROP TABLE IF EXISTS `t_eval_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_eval_values` (
  `eval_id` int(10) unsigned NOT NULL,
  `value_1` int(11) NOT NULL,
  `value_2` int(11) NOT NULL,
  `value_3` int(11) NOT NULL,
  `value_4` int(11) NOT NULL,
  `value_5` int(11) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eval_id`),
  KEY `t_eval_values_FK` (`class_id`),
  CONSTRAINT `eval_values_FK` FOREIGN KEY (`eval_id`) REFERENCES `t_evaluation_paper` (`eval_id`),
  CONSTRAINT `t_eval_values_FK` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='평가밸류 점수 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_eval_values`
--

LOCK TABLES `t_eval_values` WRITE;
/*!40000 ALTER TABLE `t_eval_values` DISABLE KEYS */;
INSERT INTO `t_eval_values` VALUES (1,20,40,60,80,100,1),(2,10,20,30,40,50,2),(3,20,40,60,80,100,3),(4,10,20,30,40,50,4);
/*!40000 ALTER TABLE `t_eval_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_evaluation_paper`
--

DROP TABLE IF EXISTS `t_evaluation_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_evaluation_paper` (
  `class_id` int(10) unsigned NOT NULL COMMENT '평가지 수업 아이디',
  `eval_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '평가지 고유 아이디',
  `start_time` date NOT NULL COMMENT '평가 시작시간',
  `end_time` date NOT NULL COMMENT '평가 종료시간',
  `eval_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '평가지 응답개수',
  `title` varchar(100) NOT NULL COMMENT '평가지 제목',
  `information` longtext NOT NULL COMMENT '평가지 설명문',
  `image_address` varchar(100) DEFAULT NULL COMMENT '평가지 메인 이미지주소',
  PRIMARY KEY (`eval_id`),
  KEY `evaluation_paper_FK` (`class_id`),
  CONSTRAINT `evaluation_paper_FK` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='평가지 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_evaluation_paper`
--

LOCK TABLES `t_evaluation_paper` WRITE;
/*!40000 ALTER TABLE `t_evaluation_paper` DISABLE KEYS */;
INSERT INTO `t_evaluation_paper` VALUES (1,1,'2021-07-18','2021-07-19',4,'이더리움 평가지','블록체인수업_HTML평가에 대한 소개입니다\r\n',NULL),(2,2,'2021-07-21','2021-07-22',3,'\'블록체인 BM모델 개발 과정\' 평가지','\'블록체인 BM모델 개발 과정\' 에 대한 평가입니다. \r\n수강생분들의 자유로운 피드백을 부탁드립니다.',NULL),(3,3,'2021-07-24','2021-07-25',0,'JavaScript평가지','블록체인수업_JavaScript평가에 대한 소개입니다',NULL),(4,4,'2021-07-15','2021-07-23',0,'Vue.js평가지','블록체인수업_Vue.js평가에 대한 소개입니다',NULL),(5,5,'2021-07-17','2021-07-17',0,'HTML수업 평가지','빅데이터수업_HTML평가에 대한 소개입니다',NULL),(6,6,'2021-07-17','2021-07-17',0,'CSS수업 평가지','빅데이터수업_CSS평가에 대한 소개입니다',NULL),(7,7,'2021-07-18','2021-07-19',0,'Python평가지','빅데이터수업_Python평가에 대한 소개입니다',NULL),(8,8,'2021-07-19','2021-07-20',0,'HTML수업 평가지','인공지능수업_HTML평가에 대한 소개입니다',NULL),(9,9,'2021-07-20','2021-07-22',0,'JavaScript수업 평가지','인공지능수업_JavaScript평가에 대한 소개입니다',NULL),(10,10,'2021-07-15','2021-07-19',0,'CSS수업 평가지','인공지능수업_CSS평가에 대한 소개입니다',NULL),(4,29,'2021-07-22','2021-07-30',0,'평가제목 ','평ㄱ자ㅣ 설명ㄴ마어ㅣㅁ암 ㅇ마ㅓ이 ',NULL),(4,30,'2021-07-22','2021-07-23',0,'123','124122',NULL),(4,31,'2021-07-22','2021-07-24',0,'구글 폼처럼','열심히 하는 강사의 품격이 되겠습니다.',NULL),(4,32,'2021-07-22','2021-07-24',0,'구글 폼처럼','열심히 하는 강사의 품격이 되겠습니다.',NULL),(4,33,'2021-07-22','2021-07-28',0,'구글 폼처럼','열심히 하는 강사의 품격이 되겠습니다.',NULL);
/*!40000 ALTER TABLE `t_evaluation_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_goverment_types`
--

DROP TABLE IF EXISTS `t_goverment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_goverment_types` (
  `goverment_type_id` int(10) unsigned NOT NULL,
  `goverment_type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`goverment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='과정 지원 정부담당 타입명 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_goverment_types`
--

LOCK TABLES `t_goverment_types` WRITE;
/*!40000 ALTER TABLE `t_goverment_types` DISABLE KEYS */;
INSERT INTO `t_goverment_types` VALUES (1,'과학기술정보통신부'),(2,'고용노동부'),(3,'외교부');
/*!40000 ALTER TABLE `t_goverment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_question`
--

DROP TABLE IF EXISTS `t_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_question` (
  `eval_id` int(10) unsigned NOT NULL COMMENT '컴포터트들이 포함된 평가지 고유 아이디',
  `question_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '컴포넌트 고유 아이디',
  `order` int(10) unsigned NOT NULL COMMENT '컴포넌트 순서',
  `type` varchar(100) NOT NULL COMMENT '컴포넌트 타입',
  `content` varchar(100) NOT NULL COMMENT '컴포넌트 내용',
  `class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `question_FK_1` (`type`),
  KEY `question_FK` (`eval_id`),
  KEY `t_question_FK` (`class_id`),
  CONSTRAINT `question_FK` FOREIGN KEY (`eval_id`) REFERENCES `t_evaluation_paper` (`eval_id`),
  CONSTRAINT `t_question_FK` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='평가지 질문 및 제목등의 컴포넌트 데이터 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_question`
--

LOCK TABLES `t_question` WRITE;
/*!40000 ALTER TABLE `t_question` DISABLE KEYS */;
INSERT INTO `t_question` VALUES (1,1,0,'D','이더리움 클래스에 관한 질문입니다. 바르게 응답해주세요',1),(1,2,1,'Q','강사의 교수법은 적절했나요?',1),(1,3,3,'Q','강사는 수업진행방식은 어땠나요?',1),(1,4,2,'Q','강사는 전문성이 있었나요?',1),(1,5,3,'Q','강사는 적절한 예시를 사용했나요?',1),(3,7,7,'D','블록체인 JavaScript 설명입니다.',3),(3,8,8,'Q','블록체인 JavaScript 질문입니다.',3),(3,9,8,'Q','블록체인 JavaScript 이미지추가입니다.',3),(5,13,13,'D','빅데이터 HTML 설명입니다.',5),(5,14,14,'Q','빅데이터 HTML 질문입니다.',5),(5,15,15,'Q','빅데이터 HTML 이미지추가입니다.',5),(6,16,16,'D','빅데이터 CSS 설명입니다.',6),(6,17,17,'Q','빅데이터 CSS 질문입니다.',6),(6,18,18,'Q','빅데이터 CSS 이미지추가입니다.',6),(7,19,19,'D','빅데이터 Python 설명입니다.',7),(7,20,20,'Q','빅데이터 Python 질문입니다.',7),(7,21,21,'Q','빅데이터 Python 이미지추가입니다.',7),(8,22,22,'D','인공지능 HTML 설명입니다.',8),(8,23,23,'Q','인공지능 HTML 질문입니다.',8),(8,24,24,'Q','인공지능 HTML 이미지추가입니다.',8),(9,25,25,'D','인공지능 JavaScript 설명입니다.',9),(9,26,26,'Q','인공지능 JavaScript 질문입니다.',9),(10,27,27,'D','인공지능 CSS 설명입니다.',10),(10,28,28,'D','인공지능 CSS 질문입니다.',10),(2,32,0,'D','교육강사에 대한 전반적인 만족도 설문조사를 진행하고자 합니다.',2),(2,33,1,'Q','진행 된 교육내용(커리큘럼)에 대한 만족하십니까?',2),(2,34,2,'Q','강의 진행속도(진도) / 전달성에 대해 만족하십니까?',2),(2,38,3,'Q','강의 준비성에 대해 만족하십니까? ',2),(2,39,4,'Q','기술에 대한 전문성에 대해 만족하십니까?',2),(2,70,5,'Q','성실성에 대해 만족하십니까?',2),(4,73,0,'Q','',4),(4,74,0,'Q','질문1',4),(4,75,1,'Q','질문 2',4),(4,76,0,'Q','질문1',4),(4,77,1,'Q','질문 2',4),(4,78,0,'Q','구글 폼 처럼 적습니다',4),(4,79,1,'D','아시겠나요?',4),(4,80,2,'Q','',4),(4,81,3,'D','',4),(4,82,4,'D','',4),(4,83,0,'Q','고승원 강사님은 잘생겼다.',4),(4,84,1,'Q','',4),(4,85,2,'D','',4),(4,86,3,'Q','',4),(4,87,4,'D','',4),(4,88,0,'Q','고승원 강사님은 잘생겼다.',4),(4,89,1,'Q','',4),(4,90,2,'D','',4),(4,91,3,'Q','',4),(4,92,4,'D','',4),(4,93,0,'Q','고승원 강사님은 잘생겼다. ',4),(4,94,1,'Q','남명혜는 발표를 잘 못한다. ',4),(4,95,2,'D','잘 붙여넣으시면 됩니다. ',4),(4,96,0,'Q','asdadad',4),(4,97,1,'Q','ssadadad',4),(4,98,2,'Q','',4),(4,99,3,'Q','',4);
/*!40000 ALTER TABLE `t_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_questions`
--

DROP TABLE IF EXISTS `t_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned NOT NULL,
  `type` char(1) NOT NULL DEFAULT '',
  `content` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_questions`
--

LOCK TABLES `t_questions` WRITE;
/*!40000 ALTER TABLE `t_questions` DISABLE KEYS */;
INSERT INTO `t_questions` VALUES (1,1,'Q','강사 속도는 적절했나요?'),(2,1,'D','다음은 강사에 대한 평가 질문입니다.'),(3,1,'Q','강사의 교수법은 적절했나요?'),(4,1,'Q','강사는 적절한 예제를 제시했나요?'),(5,1,'Q','강사는 어땠나요?'),(6,1,'D',''),(7,1,'D',''),(8,1,'Q',''),(9,1,'Q','강사의 강의 속도는 적절했나요?'),(10,1,'D','다음은 강사에 대한 평가 질문입니다.'),(11,1,'D',''),(12,1,'Q','강사의 교수법은 적절했나요?'),(13,1,'Q','강사는 적절한 예제를 제시했나요?'),(14,1,'D',''),(15,1,'D',''),(16,1,'Q',''),(17,1,'D',''),(18,1,'Q','강사의 강의 속도는 적절했나요?'),(19,1,'D','다음은 강사에 대한 평가 질문입니다.'),(20,1,'Q',''),(21,1,'Q','강사의 교수법은 적절했나요?'),(22,1,'Q','강사의 강의 속도는 적절했나요?'),(23,1,'Q','강사는 적절한 예제를 제시했나요?'),(24,1,'D','다음은 강사에 대한 평가 질문입니다.'),(25,1,'Q','강사의 교수법은 적절했나요?'),(26,1,'Q','강사는 적절한 예제를 제시했나요?'),(27,1,'Q','강사의 강의 속도는 적절했나요?'),(28,1,'D','다음은 강사에 대한 평가 질문입니다.'),(29,1,'Q','강사의 교수법은 적절했나요?'),(30,1,'Q','강사는 적절한 예제를 제시했나요?'),(31,1,'Q','강사의 강의 속도는 적절했나요?'),(32,1,'D','다음은 강사에 대한 평가 질문입니다.'),(33,1,'Q','강사의 교수법은 적절했나요?'),(34,1,'Q','강사는 적절한 예제를 제시했나요?'),(35,1,'Q','강사의 강의 속도는 적절했나요?'),(36,1,'D','다음은 강사에 대한 평가 질문입니다.'),(37,1,'Q','강사의 교수법은 적절했나요?'),(38,1,'Q','강사는 적절한 예제를 제시했나요?');
/*!40000 ALTER TABLE `t_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student`
--

DROP TABLE IF EXISTS `t_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '학생 고유 아이디',
  `course_id` int(10) unsigned NOT NULL COMMENT '과정 아이디',
  `user_email` varchar(100) NOT NULL COMMENT '과정 학생 아이디',
  `name` varchar(100) DEFAULT NULL,
  `current_eval_id` int(10) unsigned DEFAULT NULL,
  `eval_abled` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_FK` (`course_id`),
  KEY `student_FK_1` (`user_email`),
  CONSTRAINT `student_FK` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`course_id`),
  CONSTRAINT `t_student_FK` FOREIGN KEY (`user_email`) REFERENCES `t_user` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='과정 내 학생 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student`
--

LOCK TABLES `t_student` WRITE;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
INSERT INTO `t_student` VALUES (5,2,'pj@gmail.com','박준식',NULL,NULL),(6,2,'wg@gmail.com','정완규',NULL,NULL),(7,2,'hy@gmail.com','김혜인',NULL,NULL),(8,2,'jy@gmail.com','서장연',NULL,NULL),(9,3,'jh@gmail.com','이종호',NULL,NULL),(10,3,'hg@gmail.com','도희경',NULL,NULL),(11,3,'gh@gmail.com','김기현',NULL,NULL),(12,3,'dy@gmail.com','홍대의',NULL,NULL),(13,3,'jr@gmail.com','최재람',NULL,NULL),(14,1,'ek@gmail.com','정은경',2,0),(15,1,'mh@gmail.com','남명혜',2,1),(16,1,'js@gmail.com','손정습',2,0),(20,1,'tj@gmail.com','장태진',2,0);
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_teacher`
--

DROP TABLE IF EXISTS `t_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teacher` (
  `teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) NOT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `teacher_FK` (`user_email`),
  KEY `teacher_FK_1` (`class_id`),
  CONSTRAINT `teacher_FK` FOREIGN KEY (`user_email`) REFERENCES `t_user` (`user_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacher_FK_1` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='수업 내 강사 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher`
--

LOCK TABLES `t_teacher` WRITE;
/*!40000 ALTER TABLE `t_teacher` DISABLE KEYS */;
INSERT INTO `t_teacher` VALUES (1,'sw@gmail.com',3,'고승원'),(2,'sw@gmail.com',4,'고승원'),(3,'yh@gmail.com',2,'류영훈'),(4,'yi@gmail.com',1,'이영인'),(5,'cl@gmail.com',5,'장채린');
/*!40000 ALTER TABLE `t_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `user_type_id` int(10) unsigned NOT NULL COMMENT '사용자 타입 테이블 아이디',
  `user_email` varchar(100) NOT NULL COMMENT '사용자 이메일 & PRIMARY ID',
  `password` varchar(100) NOT NULL COMMENT '사용자 비밀번호',
  `name` varchar(100) NOT NULL COMMENT '사용자 이름',
  `tel` varchar(100) NOT NULL COMMENT '사용자 연락처',
  PRIMARY KEY (`user_email`),
  KEY `user_FK` (`user_type_id`),
  CONSTRAINT `user_FK` FOREIGN KEY (`user_type_id`) REFERENCES `t_user_types` (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사용자 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (2,'cl@gmail.com','1234','장채린','01012345678'),(3,'dy@gmail.com','1234','홍대의','01012345678'),(3,'ek@gmail.com','1234','정은경','01012345678'),(3,'gh@gmail.com','1234','김기현','01012345678'),(3,'hg@gmail.com','1234','도희경','01012345678'),(1,'hk@gmail.com','1234','한경닷컴','0212345678'),(3,'hy@gmail.com','1234','김혜인','01012345678'),(3,'jh@gmail.com','1234','이종호','01012345678'),(3,'jr@gmail.com','1234','최재람','01012345678'),(3,'js@gmail.com','1234','손정습','01012345678'),(3,'jy@gmail.com','1234','서장연','01012345678'),(3,'mh@gmail.com','1234','남명혜','01012345678'),(3,'pj@gmail.com','1234','박준식','01012345678'),(2,'sw@gmail.com','1234','고승원','01012345678'),(3,'tj@gmail.com','1234','장태진','01012345678'),(3,'wg@gmail.com','1234','정완규','01012345678'),(2,'yh@gmail.com','1234','류영훈','01012345678'),(2,'yi@gmail.com','1234','이영인','01012345678');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_types`
--

DROP TABLE IF EXISTS `t_user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_types` (
  `user_type_id` int(10) unsigned NOT NULL COMMENT '사용자 타입 테이블 id',
  `user_type_name` varchar(100) DEFAULT NULL COMMENT '사용자 타입명',
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='유저 테이블의 사용자타입에 관한 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_types`
--

LOCK TABLES `t_user_types` WRITE;
/*!40000 ALTER TABLE `t_user_types` DISABLE KEYS */;
INSERT INTO `t_user_types` VALUES (1,'교육기관'),(2,'강사'),(3,'학생');
/*!40000 ALTER TABLE `t_user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dev1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28 23:53:21
