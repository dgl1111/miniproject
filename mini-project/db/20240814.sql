-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.39 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- mini 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `mini` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mini`;

-- 테이블 mini.tbl_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `boardNo` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `contents` text,
  `cdatetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `cnt` int DEFAULT '0',
  `userId` varchar(50) NOT NULL,
  PRIMARY KEY (`boardNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mini.tbl_board:~10 rows (대략적) 내보내기
INSERT INTO `tbl_board` (`boardNo`, `title`, `contents`, `cdatetime`, `cnt`, `userId`) VALUES
	(1, '첫 번째 게시글', '이것은 첫 번째 게시글의 내용입니다.', '2024-08-06 10:28:56', 12, 'user1'),
	(2, '두 번째 게시글', '이것은 두 번째 게시글의 내용입니다.', '2024-08-06 10:28:56', 8, 'user2'),
	(3, '세 번째 게시글', '이것은 세 번째 게시글의 내용입니다.', '2024-08-06 10:28:56', 23, 'user3'),
	(4, '네 번째 게시글', '이것은 네 번째 게시글의 내용입니다.', '2024-08-06 13:08:46', 5, 'user1'),
	(5, '다섯 번째 게시글', '이것은 다섯 번째 게시글의 내용입니다.', '2024-08-06 13:08:47', 9, 'user1'),
	(6, '여섯 번째 게시글', '이것은 여섯 번째 게시글의 내용입니다.', '2024-08-06 13:08:49', 15, 'user3'),
	(7, '일곱 번째 게시글', '이것은 일곱 번째 게시글의 내용입니다.', '2024-08-06 13:08:51', 7, 'user2'),
	(8, '여덟 번째 게시글', '이것은 여덟 번째 게시글의 내용입니다.', '2024-08-06 13:08:53', 4, 'user1'),
	(9, '아홉 번째 게시글', '이것은 아홉 번째 게시글의 내용입니다.', '2024-08-06 13:08:55', 11, 'user2'),
	(10, '열 번째 게시글', '이것은 열 번째 게시글의 내용입니다.', '2024-08-06 13:08:57', 2, 'user3');

-- 테이블 mini.tbl_tboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_tboard` (
  `tboardNo` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `contents` text,
  `cdatetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`tboardNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mini.tbl_tboard:~10 rows (대략적) 내보내기
INSERT INTO `tbl_tboard` (`tboardNo`, `title`, `contents`, `cdatetime`, `name`) VALUES
	(1, '첫 번째 생각', '이것은 첫 번째 생각 내용입니다.', '2024-08-06 10:28:56', '홍길동'),
	(2, '두 번째 생각', '이것은 두 번째 생각 내용입니다.', '2024-08-06 10:28:56', '김철수'),
	(3, '세 번째 생각', '이것은 세 번째 생각 내용입니다.', '2024-08-06 10:28:56', '박영희'),
	(4, '네 번째 생각', '이것은 네 번째 생각 내용입니다.', '2024-08-06 13:08:46', '홍길동'),
	(5, '다섯 번째 생각', '이것은 다섯 번째 생각 내용입니다.', '2024-08-06 13:08:47', '홍길동'),
	(6, '여섯 번째 생각', '이것은 여섯 번째 생각 내용입니다.', '2024-08-06 13:08:49', '박영희'),
	(7, '일곱 번째 생각', '이것은 일곱 번째 생각 내용입니다.', '2024-08-06 13:08:51', '김철수'),
	(8, '여덟 번째 생각', '이것은 여덟 번째 생각 내용입니다.', '2024-08-06 13:08:53', '홍길동'),
	(9, '아홉 번째 생각', '이것은 아홉 번째 생각 내용입니다.', '2024-08-06 13:08:55', '김철수'),
	(10, '열 번째 생각', '이것은 열 번째 생각 내용입니다.', '2024-08-06 13:08:57', '박영희');

-- 테이블 mini.tbl_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `name` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '''C''',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 mini.tbl_user:~4 rows (대략적) 내보내기
INSERT INTO `tbl_user` (`name`, `userId`, `pwd`, `phone`, `email`, `gender`, `status`) VALUES
	('admin', 'admin', 'admin', '01000000000', 'admin@gmail.com', 'f', '\'A\''),
	('홍길동', 'user1', '1234', '01012345678', 'hong@gmail.com', 'm', '\'C\''),
	('김철수', 'user2', '1234', '01098745612', 'kim@gmail.com', 'm', '\'C\''),
	('박영희', 'user3', '1234', '박영희01012349874', 'park@gmail.com', 'f', '\'C\'');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
