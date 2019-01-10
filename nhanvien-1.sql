-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 01:57 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhanvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `dantoc`
--

CREATE TABLE `dantoc` (
  `MaDanToc` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenDanToc` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `dantoc`
--

INSERT INTO `dantoc` (`MaDanToc`, `TenDanToc`) VALUES
('1', 'Kinh'),
('2', 'Tày'),
('3', 'Hoa'),
('4', 'Thái'),
('5', 'Dao'),
('6', 'Nùng');

-- --------------------------------------------------------

--
-- Table structure for table `doi`
--

CREATE TABLE `doi` (
  `MaDoi` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenDoi` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `doi`
--

INSERT INTO `doi` (`MaDoi`, `TenDoi`) VALUES
('1', 'Team 1'),
('2', 'Team 2'),
('3', 'Team 3');

-- --------------------------------------------------------

--
-- Table structure for table `gioitinh`
--

CREATE TABLE `gioitinh` (
  `MaGioiTinh` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiGioiTinh` varchar(225) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `gioitinh`
--

INSERT INTO `gioitinh` (`MaGioiTinh`, `LoaiGioiTinh`) VALUES
('1', 'Nam'),
('2', 'Nu'),
('3', 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `honnhan`
--

CREATE TABLE `honnhan` (
  `MaHonNhan` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiHonNhan` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `honnhan`
--

INSERT INTO `honnhan` (`MaHonNhan`, `LoaiHonNhan`) VALUES
('1', 'Doc Than'),
('2', 'Da Ket Hon');

-- --------------------------------------------------------

--
-- Table structure for table `loaisuckhoe`
--

CREATE TABLE `loaisuckhoe` (
  `MaSucKhoe` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiSucKhoe` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaisuckhoe`
--

INSERT INTO `loaisuckhoe` (`MaSucKhoe`, `LoaiSucKhoe`) VALUES
('1', 'Tot'),
('2', 'Binh Thuong'),
('3', 'Xau');

-- --------------------------------------------------------

--
-- Table structure for table `nhommau`
--

CREATE TABLE `nhommau` (
  `MaNhomMau` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiMau` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhommau`
--

INSERT INTO `nhommau` (`MaNhomMau`, `LoaiMau`) VALUES
('1', 'O'),
('2', 'AB'),
('3', 'B'),
('4', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE `phongban` (
  `MaPB` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenPB` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`MaPB`, `TenPB`) VALUES
('1', 'Phòng thu'),
('2', 'Phòng tài chính'),
('3', 'Phòng kinh doanh');

-- --------------------------------------------------------

--
-- Table structure for table `quoctich`
--

CREATE TABLE `quoctich` (
  `MaQuocTich` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenQuocTich` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `quoctich`
--

INSERT INTO `quoctich` (`MaQuocTich`, `TenQuocTich`) VALUES
('1', 'Nhat Ban'),
('2', 'Han Quoc'),
('3', 'Viet Nam');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinnhanvien`
--

CREATE TABLE `thongtinnhanvien` (
  `MaNV` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `HoTen` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `MaGioiTinh` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayVaoDonGia` date NOT NULL,
  `MaPB` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDoi` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaTo` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaQuocTich` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDanToc` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaTonGiao` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaHonNhan` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NoiOHienTai` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThuongTru` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NoiSinh` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL,
  `NguyenQuan` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoCMND` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayCap` date NOT NULL,
  `NoiCap` char(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaTPGiaDinh` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaTPXaHoi` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NhanDang` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaNhomMau` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ChieuCao` int(11) NOT NULL,
  `CanNang` int(11) NOT NULL,
  `MaSucKhoe` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `BenhLy` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DienThoai` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DTDD` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `GhiChu` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `thongtinnhanvien`
--

INSERT INTO `thongtinnhanvien` (`MaNV`, `HoTen`, `NgaySinh`, `MaGioiTinh`, `NgayVaoDonGia`, `MaPB`, `MaDoi`, `MaTo`, `MaQuocTich`, `MaDanToc`, `MaTonGiao`, `MaHonNhan`, `NoiOHienTai`, `ThuongTru`, `NoiSinh`, `NguyenQuan`, `SoCMND`, `NgayCap`, `NoiCap`, `MaTPGiaDinh`, `MaTPXaHoi`, `NhanDang`, `MaNhomMau`, `ChieuCao`, `CanNang`, `MaSucKhoe`, `BenhLy`, `DienThoai`, `DTDD`, `Email`, `GhiChu`) VALUES
('4', '4', '2011-02-02', '1', '2011-03-02', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '222', '2011-03-02', '2', '1', '1', '2', '1', 2, 2, '1', '2', '2', '2', '2', '2'),
('5', '5', '0025-08-20', '1', '0025-08-20', '1', '2', '3', '2', '3', '1', '2', '5', '5', '5', '5', '5', '0025-08-20', '5', '1', '2', '5', '2', 5, 5, '2', '5', '5', '5', '5', '5'),
('6', '6', '2000-02-20', '3', '2000-02-20', '3', '2', '1', '1', '1', '1', '1', '6', '6', '6', '6', '6', '2000-02-20', '6', '2', '2', '6', '3', 6, 6, '2', '6', '6', '6', '6', '6'),
('7', '7', '2001-07-17', '1', '2001-07-17', '1', '1', '1', '1', '1', '1', '1', '7', '7', '7', '7', '7', '2001-07-17', '7', '1', '1', '7', '1', 77, 7, '1', '7', '7', '7', '7', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tongiao`
--

CREATE TABLE `tongiao` (
  `MaTonGiao` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenTonGiao` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tongiao`
--

INSERT INTO `tongiao` (`MaTonGiao`, `TenTonGiao`) VALUES
('1', 'Phat Giao'),
('2', 'Thien Chua Giao'),
('3', 'Vo Than');

-- --------------------------------------------------------

--
-- Table structure for table `tonhom`
--

CREATE TABLE `tonhom` (
  `MaTo` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenTo` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tonhom`
--

INSERT INTO `tonhom` (`MaTo`, `TenTo`) VALUES
('1', 'Group 1'),
('2', 'Group 2'),
('3', 'Group 3');

-- --------------------------------------------------------

--
-- Table structure for table `tpgiadinh`
--

CREATE TABLE `tpgiadinh` (
  `MaTPGiaDinh` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiTPGiaDinh` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tpgiadinh`
--

INSERT INTO `tpgiadinh` (`MaTPGiaDinh`, `LoaiTPGiaDinh`) VALUES
('1', 'Binh Thuong'),
('2', 'Cach Mang'),
('3', 'Thuong Binh');

-- --------------------------------------------------------

--
-- Table structure for table `tpxahoi`
--

CREATE TABLE `tpxahoi` (
  `MaTPXaHoi` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LoaiTPXaHoi` varchar(225) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tpxahoi`
--

INSERT INTO `tpxahoi` (`MaTPXaHoi`, `LoaiTPXaHoi`) VALUES
('1', 'Binh Thuong'),
('2', 'Can Bo Vien Chuc'),
('3', 'Nha Quyen Luc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dantoc`
--
ALTER TABLE `dantoc`
  ADD PRIMARY KEY (`MaDanToc`);

--
-- Indexes for table `doi`
--
ALTER TABLE `doi`
  ADD PRIMARY KEY (`MaDoi`);

--
-- Indexes for table `gioitinh`
--
ALTER TABLE `gioitinh`
  ADD PRIMARY KEY (`MaGioiTinh`);

--
-- Indexes for table `honnhan`
--
ALTER TABLE `honnhan`
  ADD PRIMARY KEY (`MaHonNhan`);

--
-- Indexes for table `loaisuckhoe`
--
ALTER TABLE `loaisuckhoe`
  ADD PRIMARY KEY (`MaSucKhoe`);

--
-- Indexes for table `nhommau`
--
ALTER TABLE `nhommau`
  ADD PRIMARY KEY (`MaNhomMau`);

--
-- Indexes for table `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`MaPB`);

--
-- Indexes for table `quoctich`
--
ALTER TABLE `quoctich`
  ADD PRIMARY KEY (`MaQuocTich`);

--
-- Indexes for table `thongtinnhanvien`
--
ALTER TABLE `thongtinnhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `NgaySinh` (`NgaySinh`),
  ADD KEY `MaGioiTinh` (`MaGioiTinh`,`MaPB`,`MaDoi`,`MaTo`,`MaQuocTich`,`MaDanToc`,`MaTonGiao`,`MaHonNhan`,`MaTPGiaDinh`,`MaTPXaHoi`,`MaNhomMau`,`MaSucKhoe`),
  ADD KEY `MaPB` (`MaPB`),
  ADD KEY `MaSucKhoe` (`MaSucKhoe`),
  ADD KEY `MaHonNhan` (`MaHonNhan`),
  ADD KEY `MaNhomMau` (`MaNhomMau`),
  ADD KEY `MaTPGiaDinh` (`MaTPGiaDinh`),
  ADD KEY `MaDoi` (`MaDoi`),
  ADD KEY `MaTPXaHoi` (`MaTPXaHoi`),
  ADD KEY `MaTonGiao` (`MaTonGiao`),
  ADD KEY `MaQuocTich` (`MaQuocTich`),
  ADD KEY `MaDanToc` (`MaDanToc`),
  ADD KEY `MaTo` (`MaTo`);

--
-- Indexes for table `tongiao`
--
ALTER TABLE `tongiao`
  ADD PRIMARY KEY (`MaTonGiao`);

--
-- Indexes for table `tonhom`
--
ALTER TABLE `tonhom`
  ADD PRIMARY KEY (`MaTo`);

--
-- Indexes for table `tpgiadinh`
--
ALTER TABLE `tpgiadinh`
  ADD PRIMARY KEY (`MaTPGiaDinh`);

--
-- Indexes for table `tpxahoi`
--
ALTER TABLE `tpxahoi`
  ADD PRIMARY KEY (`MaTPXaHoi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `thongtinnhanvien`
--
ALTER TABLE `thongtinnhanvien`
  ADD CONSTRAINT `thongtinnhanvien_ibfk_1` FOREIGN KEY (`MaPB`) REFERENCES `phongban` (`MaPB`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_10` FOREIGN KEY (`MaTPXaHoi`) REFERENCES `tpxahoi` (`MaTPXaHoi`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_11` FOREIGN KEY (`MaTonGiao`) REFERENCES `tongiao` (`MaTonGiao`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_12` FOREIGN KEY (`MaQuocTich`) REFERENCES `quoctich` (`MaQuocTich`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_13` FOREIGN KEY (`MaDanToc`) REFERENCES `dantoc` (`MaDanToc`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_14` FOREIGN KEY (`MaTo`) REFERENCES `tonhom` (`MaTo`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_2` FOREIGN KEY (`MaSucKhoe`) REFERENCES `loaisuckhoe` (`MaSucKhoe`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_4` FOREIGN KEY (`MaHonNhan`) REFERENCES `honnhan` (`MaHonNhan`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_5` FOREIGN KEY (`MaNhomMau`) REFERENCES `nhommau` (`MaNhomMau`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_6` FOREIGN KEY (`MaTPGiaDinh`) REFERENCES `tpgiadinh` (`MaTPGiaDinh`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_8` FOREIGN KEY (`MaDoi`) REFERENCES `doi` (`MaDoi`),
  ADD CONSTRAINT `thongtinnhanvien_ibfk_9` FOREIGN KEY (`MaGioiTinh`) REFERENCES `gioitinh` (`MaGioiTinh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
