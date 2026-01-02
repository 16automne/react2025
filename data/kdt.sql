-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 25-12-31 01:57
-- 서버 버전: 10.4.32-MariaDB
-- PHP 버전: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `kdt`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `book_store`
--

CREATE TABLE `book_store` (
  `code` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `area1` varchar(10) DEFAULT NULL,
  `area2` varchar(10) DEFAULT NULL,
  `area3` varchar(10) DEFAULT NULL,
  `book_cnt` int(4) DEFAULT NULL,
  `owner_nm` varchar(10) DEFAULT NULL,
  `tel_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `book_store`
--

INSERT INTO `book_store` (`code`, `name`, `area1`, `area2`, `area3`, `book_cnt`, `owner_nm`, `tel_num`) VALUES
(5, '리브로', '광주', '남구', '', 24000, '박천민', '062-5234-5678'),
(7, '11번가', '부산', '수영', '광안', 10000, '최삽삽', '051-7234-5678');

-- --------------------------------------------------------

--
-- 테이블 구조 `customer`
--

CREATE TABLE `customer` (
  `c_name` varchar(20) DEFAULT NULL,
  `c_address` varchar(100) DEFAULT NULL,
  `c_tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `customer`
--

INSERT INTO `customer` (`c_name`, `c_address`, `c_tel`) VALUES
('레스토랑가야', '강남구 역삼동 3번지', '02-12588-9956'),
('카페신라', '강남구 역삼4동 1번지', '02-1258-1313'),
('서교동식당', '강남구 역삼5동 6번지', '02-1258-1315'),
('부바레스토랑', '송파구 문정동 8번지', '02-1258-6666');

-- --------------------------------------------------------

--
-- 테이블 구조 `fruits`
--

CREATE TABLE `fruits` (
  `num` int(5) NOT NULL,
  `name` varchar(20) DEFAULT 'not null',
  `price` int(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `fruits`
--

INSERT INTO `fruits` (`num`, `name`, `price`, `color`, `country`) VALUES
(1, '바나나', 5000, '노랑', '필리핀'),
(2, '멜론', 6000, '초록', '말레이시아'),
(3, '사과', 1000, '빨강', '대구'),
(4, '', 0, '빨강', '대구'),
(5, '포도', 3000, '보라', '필리핀'),
(6, '', 0, '', ''),
(7, '', 0, '', ''),
(8, '', 0, '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `goods`
--

CREATE TABLE `goods` (
  `g_code` int(11) DEFAULT NULL,
  `g_name` varchar(20) DEFAULT NULL,
  `g_cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `goods`
--

INSERT INTO `goods` (`g_code`, `g_name`, `g_cost`) VALUES
(10, '만두세트', 315),
(12, '해물국수세트', 924),
(15, '냉동한식세트', 788),
(22, '중국식만두', 210),
(25, '꼬마만두', 263),
(36, '감자빵', 350),
(57, '녹차', 1600),
(68, '우롱차', 2000);

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `mb_no` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_job` varchar(255) NOT NULL DEFAULT '',
  `mb_gender` varchar(255) NOT NULL DEFAULT '',
  `mb_language` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_email`, `mb_job`, `mb_gender`, `mb_language`, `mb_datetime`) VALUES
(1, 'aaa', '$2y$10$ajg7DBNV8tIYwJZO03uH9eLrvtESVuoPWxwJATq36lfA05xisjlRe', 'aaa', 'aaa@naver.com', '학생', '남', 'HTML', '2025-11-20 02:04:05'),
(2, 'bbb', '$2y$10$euM8JeOhsMqlK4ny3H9MsuiCiyQF52d39rJvDYPN3JIBjsMsyotgi', 'bbb', 'bbb@nate.com', '학생', '여', 'HTML,PHP', '2025-11-20 02:07:27'),
(3, 'ccc', '$2y$10$UuUOTEqzimGULBVD4Y5D.u4nwMaA.Ir6M1Escn2u1chL65G8ws10C', 'ccc', 'ccc@gmail.com', '공무원', '여', 'PHP,SQL', '2025-11-20 02:50:40'),
(5, 'ddd', '$2y$10$SqiDEEHVPEaSIcE08b8a.OlksA/j4NiuxPhwBNSaQM9TuahGfyL7C', 'ddd', 'ddd@naver.com', '', '남', 'HTML', '2025-11-20 02:50:59'),
(7, 'eee', '$2y$10$LSa0OhUImYY0aASeCItjH.BsxBA6LdPH2mLt2ukVRlTKbEN/BAWtm', 'eee', 'eee@nate.com', '학생', '남', 'HTML', '2025-11-20 02:51:46'),
(9, 'fff', '$2y$10$m.LVDg9yHq9C3wQjPxXDQ.sYGRZ24Il5PUg5zkTmjOVBiG3gniVY6', 'fff', 'fff@naver.com', '학생', '여', 'CSS', '2025-11-20 02:52:09'),
(11, 'aaaa', '$2y$10$KylIhZgBwONdGYoR16AmFuTQeSgkignq3sn8mX33BYq/zalYt1vea', 'aaaa', 'aaaa@naver.com', '주부', '여', 'PHP,SQL', '2025-11-20 02:54:19'),
(13, 'bbbb', '$2y$10$MEt/MYXQtNBsyDvz4FnAeeqbKKriQQf9ofbv6wdC4NaGlEN5tXoxO', 'bbbb', 'bbbb@nate.com', '무직', '남', 'HTML', '2025-11-20 02:54:59');

-- --------------------------------------------------------

--
-- 테이블 구조 `noodle`
--

CREATE TABLE `noodle` (
  `num` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `company` varchar(10) DEFAULT NULL,
  `kind` varchar(1) DEFAULT NULL,
  `price` varchar(5) DEFAULT NULL,
  `e_date` varchar(8) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `noodle`
--

INSERT INTO `noodle` (`num`, `name`, `company`, `kind`, `price`, `e_date`, `reg_date`) VALUES
(1, '안성탕면', '농심', 'M', '700', '20131016', '2025-11-17 04:06:07'),
(2, '김치라면', '삼양', 'M', '700', '20131016', '2025-11-17 04:06:07'),
(3, '진라면', '오뚜기', 'C', '800', '20131016', '2025-11-17 04:06:07'),
(4, '꼬꼬면', '팔도', 'C', '1000', '20131016', '2025-11-17 04:06:07'),
(5, '신라면', '농심', 'C', '1100', '20131016', '2025-11-17 04:06:07'),
(6, '삼양라면', '삼양', 'M', '700', '20131016', '2025-11-17 04:06:07'),
(7, '너구리', '농심', 'M', '850', '20131016', '2025-11-17 04:06:07'),
(8, '나가사키짬뽕', '삼양', 'C', '1300', '20131016', '2025-11-17 04:06:07'),
(9, '짜파게티', '농심', 'C', '1300', '20131016', '2025-11-17 04:06:07');

-- --------------------------------------------------------

--
-- 테이블 구조 `orders`
--

CREATE TABLE `orders` (
  `o_day` varchar(20) DEFAULT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `g_code` int(11) DEFAULT NULL,
  `o_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `orders`
--

INSERT INTO `orders` (`o_day`, `c_name`, `g_code`, `o_num`) VALUES
('25-03-01', '부바레스토랑', 10, 10),
('25-03-02', '레스토랑가야', 22, 12),
('25-03-03', '동경반점', 15, 12),
('25-03-03', '서강대교식당', 68, 4),
('25-03-04', '부바레스토랑', 57, 15),
('25-03-05', '동경반점', 25, 21),
('25-03-06', '카페신라', 36, 6),
('25-03-08', '부바레스토랑', 36, 13),
('25-03-09', '레스토랑가야', 22, 8),
('25-03-10', '동경반점', 22, 10),
('25-03-12', '부바레스토랑', 57, 5),
('25-03-12', '서강대교식당', 10, 12);

-- --------------------------------------------------------

--
-- 테이블 구조 `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `tell` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `txtbox` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `shop_data`
--

CREATE TABLE `shop_data` (
  `no` int(6) NOT NULL,
  `cate` varchar(100) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `parent` varchar(20) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `shop_data`
--

INSERT INTO `shop_data` (`no`, `cate`, `name`, `price`, `img`, `parent`, `img2`, `comment`, `memo`, `datetime`) VALUES
(9, 'cate01', '슬림 실리콘 배변매트', 34900, 'product1.jpg', '100% 실리콘으로 안전, 세척이 쉬', 'product1.jpg', '100% 실리콘으로 안전, 세척이 쉬운 배변판', '', '2025-11-28 13:17:50'),
(10, 'cate01', '탄탄 강아지계단_오픈형 3단', 109000, 'product2.jpg', '세탁없이 물로 닦아도 깨끗한 계단', 'product2.jpg', '세탁없이 물로 닦아도 깨끗한 계단', '', '2025-11-28 13:19:46'),
(11, 'cate02', '클린펫 반려동물 하우스', 129000, 'product3.png', '스틸 소재로 냄새가 나지 않는 위생적', 'product3.png', '스틸 소재로 냄새가 나지 않는 위생적인 하우스', '', '2025-12-01 09:40:09'),
(12, 'cate02', '쫀득 롤매트', 2200, 'product4.png', '팬톤컬러로 은은한 색감, 친환경 가소', 'product4.png', '팬톤컬러로 은은한 색감, 친환경 가소제', '', '2025-12-01 09:40:34'),
(13, 'cate03', '쑥쑥 식기테이블 2구', 72000, 'product5.jpg', '스틸로 위생적이고 높이/각도 조절이 ', 'product5.jpg', '스틸로 위생적이고 높이/각도 조절이 가능', '', '2025-12-01 09:40:59'),
(14, 'cate03', '클린펫 하네스', 34900, 'product6.jpg', '옷처럼 입고 벗는 이지웨어 초경량 하', 'product6.jpg', '옷처럼 입고 벗는 이지웨어 초경량 하네스', '', '2025-12-01 09:41:25'),
(15, 'cate04', '쿨쿨 스톤매트_쿨매트', 99000, 'product7.jpg', '시원함이 최대 8시간 지속되는 쿨매트', 'product7.jpg', '시원함이 최대 8시간 지속되는 쿨매트', '', '2025-12-01 09:41:49'),
(16, 'cate04', '마일드 배스바', 15000, 'product8.jpg', '반려동물 피부에 맞춘 저자극 중성비누', 'product8.jpg', '반려동물 피부에 맞춘 저자극 중성비누', '', '2025-12-01 09:42:12'),
(17, 'cate01', '슬림 실리콘 배변매트', 34900, 'product1.jpg', '100% 실리콘으로 안전, 세철이 쉬', 'product_01_detail.png', '100% 실리콘으로 안전, 세철이 쉬운 배변판', '메모내용', '2025-12-01 10:12:28');

-- --------------------------------------------------------

--
-- 테이블 구조 `shop_members`
--

CREATE TABLE `shop_members` (
  `no` int(6) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `mb_name` varchar(20) NOT NULL,
  `mb_password` varchar(255) NOT NULL,
  `mb_email` varchar(255) NOT NULL,
  `mb_address` varchar(255) NOT NULL,
  `mb_phone` varchar(11) NOT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `shop_members`
--

INSERT INTO `shop_members` (`no`, `mb_id`, `mb_name`, `mb_password`, `mb_email`, `mb_address`, `mb_phone`, `datetime`) VALUES
(1, 'akee1004', '조다빈', '$2y$10$eua7EXcL0uVz/1i8wUDUQO1zjNACbdG870T8fLVf2pixeGErUwmvO', 'akee1004@naver.com', '서울시 중랑구', '01037050543', '2025-11-27 09:39:51'),
(2, 'Admin1234', '관리자', '$2y$10$pykGiE8tp21XbklqWyaNpOuJuaLU1nnEESLV2De3S6nAJRttAzpJm', 'admin@naver.com', 'admin', '01012345678', '2025-11-27 09:44:11'),
(3, 'abcd', '에이비', '$2y$10$OdwvH/JODTXCyPB2e0Kls.X7tpKactCALasnMRWYhhWy2VOh756Sy', 'abcd@naver.com', '울랄ㄹ라', '01012345678', '2025-12-03 11:02:31');

-- --------------------------------------------------------

--
-- 테이블 구조 `shop_temp`
--

CREATE TABLE `shop_temp` (
  `no` int(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `parent` varchar(20) NOT NULL,
  `count` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `money` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `shop_temp`
--

INSERT INTO `shop_temp` (`no`, `name`, `parent`, `count`, `price`, `money`, `img`, `comment`, `session_id`, `datetime`) VALUES
(1, '슬림 실리콘 배변매트', '100% 실리콘으로 안전, 세척이 쉬', '1', 34900, 34900, 'product1.jpg', '100% 실리콘으로 안전, 세척이 쉬운 배변판', '767f1p2nircj5emq5fehsmr8nu', '2025-12-03 09:42:56'),
(2, '클린펫 하네스', '옷처럼 입고 벗는 이지웨어 초경량 하', '1', 34900, 34900, 'product6.jpg', '옷처럼 입고 벗는 이지웨어 초경량 하네스', '767f1p2nircj5emq5fehsmr8nu', '2025-12-03 09:43:04'),
(3, '슬림 실리콘 배변매트', '100% 실리콘으로 안전, 세철이 쉬', '4', 34900, 139600, 'product1.jpg', '100% 실리콘으로 안전, 세철이 쉬운 배변판', '767f1p2nircj5emq5fehsmr8nu', '2025-12-03 10:01:28'),
(4, '탄탄 강아지계단_오픈형 3단', '세탁없이 물로 닦아도 깨끗한 계단', '1', 109000, 109000, 'product2.jpg', '세탁없이 물로 닦아도 깨끗한 계단', '767f1p2nircj5emq5fehsmr8nu', '2025-12-03 10:11:36'),
(5, '탄탄 강아지계단_오픈형 3단', '세탁없이 물로 닦아도 깨끗한 계단', '1', 109000, 109000, 'product2.jpg', '세탁없이 물로 닦아도 깨끗한 계단', '767f1p2nircj5emq5fehsmr8nu', '2025-12-03 10:24:18');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `book_store`
--
ALTER TABLE `book_store`
  ADD PRIMARY KEY (`code`);

--
-- 테이블의 인덱스 `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mb_no`),
  ADD UNIQUE KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `noodle`
--
ALTER TABLE `noodle`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `shop_data`
--
ALTER TABLE `shop_data`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `shop_members`
--
ALTER TABLE `shop_members`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `shop_temp`
--
ALTER TABLE `shop_temp`
  ADD PRIMARY KEY (`no`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `book_store`
--
ALTER TABLE `book_store`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `fruits`
--
ALTER TABLE `fruits`
  MODIFY `num` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `mb_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 테이블의 AUTO_INCREMENT `noodle`
--
ALTER TABLE `noodle`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 테이블의 AUTO_INCREMENT `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `shop_data`
--
ALTER TABLE `shop_data`
  MODIFY `no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 테이블의 AUTO_INCREMENT `shop_members`
--
ALTER TABLE `shop_members`
  MODIFY `no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `shop_temp`
--
ALTER TABLE `shop_temp`
  MODIFY `no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
