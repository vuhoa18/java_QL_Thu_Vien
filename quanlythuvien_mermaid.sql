-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 03, 2026 lúc 06:36 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlythuvien_mermaid`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctpm_chi_tiet_pm`
--

CREATE TABLE `ctpm_chi_tiet_pm` (
  `Ma_PM` varchar(20) NOT NULL,
  `Ma_Sach` varchar(20) NOT NULL,
  `Tinh_Trang_Sach` varchar(100) DEFAULT NULL,
  `So_Luong` int(11) DEFAULT 1,
  `Da_Tra` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctpm_chi_tiet_pm`
--

INSERT INTO `ctpm_chi_tiet_pm` (`Ma_PM`, `Ma_Sach`, `Tinh_Trang_Sach`, `So_Luong`, `Da_Tra`) VALUES
('PM01', 'S01', 'Bình thường', 1, 1),
('PM02', 'S02', 'Rách bìa nhẹ', 1, 1),
('PM03', 'S03', 'Mất sách (Đã đền)', 1, 1),
('PM04', 'S04', 'Bình thường', 1, 1),
('PM05', 'S05', 'Có vết viết chì', 1, 1),
('PM06', 'S06', 'Ẩm mốc nhẹ', 1, 1),
('PM07', 'S07', 'Bình thường', 1, 1),
('PM08', 'S08', 'Lỏng gáy sách', 1, 1),
('PM09', 'S09', 'Bình thường', 1, 1),
('PM10', 'S10', 'Mất tem mã vạch', 1, 1),
('PM11', 'S11', 'Dính bẩn trang 5', 1, 1),
('PM12', 'S12', 'Mới', 1, 0),
('PM13', 'S13', 'Rách trang 10', 1, 1),
('PM14', 'S14', 'Bình thường', 1, 1),
('PM15', 'S15', 'Bình thường', 1, 1),
('PM16', 'S16', 'Mới', 1, 0),
('PM17', 'S17', 'Bình thường', 1, 1),
('PM18', 'S18', 'Vẽ bậy nhiều chỗ', 1, 1),
('PM19', 'S19', 'Nghi vấn tráo sách', 1, 0),
('PM20', 'S20', 'Bình thường', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctpn_chi_tiet_pn`
--

CREATE TABLE `ctpn_chi_tiet_pn` (
  `Ma_PN` varchar(20) NOT NULL,
  `Ma_Sach` varchar(20) NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `Don_Gia_Nhap` decimal(10,2) DEFAULT NULL,
  `Thanh_Tien` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctpn_chi_tiet_pn`
--

INSERT INTO `ctpn_chi_tiet_pn` (`Ma_PN`, `Ma_Sach`, `So_Luong`, `Don_Gia_Nhap`, `Thanh_Tien`) VALUES
('PN01', 'S01', 500, 100000.00, 50000000.00),
('PN02', 'S02', 150, 100000.00, 15000000.00),
('PN03', 'S03', 300, 85000.00, 25500000.00),
('PN04', 'S04', 200, 60000.00, 12000000.00),
('PN05', 'S05', 200, 40000.00, 8000000.00),
('PN06', 'S06', 475, 20000.00, 9500000.00),
('PN07', 'S07', 15, 200000.00, 3000000.00),
('PN08', 'S08', 120, 150000.00, 18000000.00),
('PN09', 'S09', 50, 130000.00, 6500000.00),
('PN10', 'S10', 56, 200000.00, 11200000.00),
('PN11', 'S11', 110, 200000.00, 22000000.00),
('PN12', 'S12', 300, 200000.00, 60000000.00),
('PN13', 'S13', 290, 50000.00, 14500000.00),
('PN14', 'S14', 50, 50000.00, 2500000.00),
('PN15', 'S15', 130, 60000.00, 7800000.00),
('PN16', 'S16', 100, 50000.00, 5000000.00),
('PN17', 'S17', 115, 80000.00, 9200000.00),
('PN18', 'S18', 650, 20000.00, 13000000.00),
('PN19', 'S19', 225, 20000.00, 4500000.00),
('PN20', 'S20', 350, 100000.00, 35000000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctpp_chi_tiet_pp`
--

CREATE TABLE `ctpp_chi_tiet_pp` (
  `Ma_PP` varchar(20) NOT NULL,
  `Ma_Ly_Do_Phat` varchar(20) NOT NULL,
  `Ma_Sach` varchar(20) NOT NULL,
  `So_Tien_Phat` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctpp_chi_tiet_pp`
--

INSERT INTO `ctpp_chi_tiet_pp` (`Ma_PP`, `Ma_Ly_Do_Phat`, `Ma_Sach`, `So_Tien_Phat`) VALUES
('PP01', 'LDP01', 'S01', 15000.00),
('PP02', 'LDP03', 'S02', 20000.00),
('PP03', 'LDP02', 'S05', 150000.00),
('PP04', 'LDP05', 'S08', 10000.00),
('PP05', 'LDP01', 'S03', 35000.00),
('PP06', 'LDP04', 'S10', 50000.00),
('PP07', 'LDP10', 'S12', 30000.00),
('PP08', 'LDP01', 'S07', 5000.00),
('PP09', 'LDP07', 'S15', 5000.00),
('PP10', 'LDP01', 'S13', 50000.00),
('PP11', 'LDP04', 'S20', 40000.00),
('PP12', 'LDP02', 'S22', 120000.00),
('PP13', 'LDP01', 'S18', 10000.00),
('PP14', 'LDP06', 'S06', 25000.00),
('PP15', 'LDP01', 'S09', 25000.00),
('PP16', 'LDP05', 'S25', 50000.00),
('PP17', 'LDP08', 'S01', 50000.00),
('PP18', 'LDP01', 'S14', 20000.00),
('PP19', 'LDP09', 'S11', 200000.00),
('PP20', 'LDP01', 'S19', 5000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doc_gia`
--

CREATE TABLE `doc_gia` (
  `Ma_DG` varchar(20) NOT NULL,
  `Ho_Dem` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) NOT NULL,
  `Gioi_Tinh` varchar(10) DEFAULT NULL,
  `Ngay_Sinh` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Dia_Chi` varchar(255) DEFAULT NULL,
  `So_Sach_Muon` int(11) DEFAULT 0,
  `Ngay_Het_Han` date DEFAULT NULL,
  `Tien_Phi_Thanh_Vien` decimal(15,2) DEFAULT 0.00,
  `Ma_Loai_TV` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doc_gia`
--

INSERT INTO `doc_gia` (`Ma_DG`, `Ho_Dem`, `Ten`, `Gioi_Tinh`, `Ngay_Sinh`, `Email`, `SDT`, `Dia_Chi`, `So_Sach_Muon`, `Ngay_Het_Han`, `Tien_Phi_Thanh_Vien`, `Ma_Loai_TV`) VALUES
('DG01', 'Nguyễn Văn', 'An', 'Nam', '2003-05-10', 'an.nv@gmail.com', '0901123456', '273 An Dương Vương, Q.5', 1, '2025-05-10', 50000.00, 'LTV01'),
('DG02', 'Trần Thị', 'Bích', 'Nữ', '2004-08-20', 'bich.tran@gmail.com', '0902234567', '105 Bà Huyện Thanh Quan, Q.3', 0, '2025-08-20', 100000.00, 'LTV02'),
('DG03', 'Lê Minh', 'Cường', 'Nam', '2002-12-15', 'cuong.le@yahoo.com', '0903345678', '45 Nguyễn Khãi, Q.1', 2, '2025-12-15', 200000.00, 'LTV03'),
('DG04', 'Phạm Thu', 'Dung', 'Nữ', '2003-02-28', 'dung.pham@hotmail.com', '0904456789', '12 Nguyễn Văn Bảo, Gò Vấp', 5, '2025-02-28', 30000.00, 'LTV04'),
('DG05', 'Hoàng Quốc', 'Đạt', 'Nam', '2001-11-11', 'dat.hoang@gmail.com', '0905567890', '98 Tô Hiến Thành, Q.10', 3, '2025-11-11', 0.00, 'LTV05'),
('DG06', 'Vũ Thị', 'Em', 'Nữ', '2005-01-05', 'em.vu@gmail.com', '0906678901', '50 Lê Văn Việt, Thủ Đức', 0, '2026-01-05', 500000.00, 'LTV06'),
('DG07', 'Đặng Văn', 'Phúc', 'Nam', '2000-09-09', 'phuc.dang@outlook.com', '0907789012', '30/2 Phạm Văn Đồng, Bình Thạnh', 1, '2025-09-09', 20000.00, 'LTV07'),
('DG08', 'Lê Thị', 'Hạnh', 'Nữ', '2002-07-22', 'hanh.le@gmail.com', '0908890123', '101 Nguyễn Trãi, Q.5', 0, '2025-07-22', 50000.00, 'LTV01'),
('DG09', 'Đỗ Minh', 'Hiếu', 'Nam', '1999-04-30', 'hieu.do@gmail.com', '0909901234', '22 Lý Thường Kiệt, Q.10', 4, '2025-04-30', 100000.00, 'LTV02'),
('DG10', 'Ngô Lan', 'Hương', 'Nữ', '2003-10-15', 'huong.ngo@gmail.com', '0910012345', '77 Xô Viết Nghệ Tĩnh, Bình Thạnh', 2, '2025-10-15', 200000.00, 'LTV03'),
('DG11', 'Lý Văn', 'Khoa', 'Nam', '2004-03-12', 'khoa.ly@gmail.com', '0911123456', '120 Hậu Giang, Q.6', 1, '2025-03-12', 30000.00, 'LTV04'),
('DG12', 'Dương Thị', 'Linh', 'Nữ', '2002-06-18', 'linh.duong@gmail.com', '0912234567', '44 Võ Văn Ngân, Thủ Đức', 0, '2025-06-18', 0.00, 'LTV05'),
('DG13', 'Hà Văn', 'Mạnh', 'Nam', '2001-08-25', 'manh.ha@gmail.com', '0913345678', '88 Lê Lợi, Q.1', 2, '2025-08-25', 500000.00, 'LTV06'),
('DG14', 'Phan Thị', 'Nhung', 'Nữ', '2003-12-05', 'nhung.phan@gmail.com', '0914456789', '150 Nguyễn Thị Minh Khai, Q.3', 3, '2025-12-05', 20000.00, 'LTV07'),
('DG15', 'Trịnh Quốc', 'Oai', 'Nam', '1998-02-14', 'oai.trinh@gmail.com', '0915567890', '33 Hoàng Diệu, Q.4', 5, '2025-02-14', 50000.00, 'LTV01'),
('DG16', 'Lâm Thị', 'Phương', 'Nữ', '2004-11-20', 'phuong.lam@gmail.com', '0916678901', '200 Phạm Hùng, Q.8', 0, '2025-11-20', 100000.00, 'LTV02'),
('DG17', 'Cao Minh', 'Quang', 'Nam', '1985-05-15', 'quang.cao@gmail.com', '0917789012', '12 Tân Kỳ Tân Quý, Tân Phú', 3, '2026-05-15', 200000.00, 'LTV03'),
('DG18', 'Đinh Thị', 'Rạng', 'Nữ', '2002-09-02', 'rang.dinh@gmail.com', '0918890123', '55 Âu Cơ, Tân Bình', 1, '2025-09-02', 30000.00, 'LTV04'),
('DG19', 'Mạc Văn', 'Sơn', 'Nam', '2003-01-30', 'son.mac@gmail.com', '0919901234', '99 Quang Trung, Gò Vấp', 2, '2025-01-30', 0.00, 'LTV05'),
('DG20', 'Châu Thị', 'Tuyết', 'Nữ', '2005-04-12', 'tuyet.chau@gmail.com', '0920012345', '70 Nguyễn Văn Linh, Q.7', 0, '2026-04-12', 500000.00, 'LTV06'),
('DG21', 'Tạ Văn', 'Uy', 'Nam', '2001-07-27', 'uy.ta@gmail.com', '0921123456', '30 Trần Hưng Đạo, Q.5', 1, '2025-07-27', 20000.00, 'LTV07'),
('DG22', 'Lưu Thị', 'Vân', 'Nữ', '2000-10-10', 'van.luu@gmail.com', '0922234567', '18 Lê Văn Sỹ, Q.3', 4, '2025-10-10', 50000.00, 'LTV01'),
('DG23', 'Hoàng Văn', 'Sơn', 'Nam', '1995-12-24', 'son.hoang@gmail.com', '0923345678', '60 Cộng Hòa, Tân Bình', 2, '2026-12-24', 100000.00, 'LTV02'),
('DG24', 'Quách Thị', 'Yến', 'Nữ', '2004-02-19', 'yen.quach@gmail.com', '0924456789', '25 Kinh Dương Vương, Q.6', 0, '2025-02-19', 200000.00, 'LTV03'),
('DG25', 'Trương Văn', 'Giàu', 'Nam', '2003-06-06', 'giau.truong@gmail.com', '0925567890', '100 Hồng Bàng, Q.5', 1, '2025-06-06', 30000.00, 'LTV04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `Ma_NV` varchar(20) NOT NULL,
  `Ho_Dem` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) NOT NULL,
  `Ngay_Sinh` date DEFAULT NULL,
  `Gioi_Tinh` varchar(10) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Dia_Chi` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CHUC_VU` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`Ma_NV`, `Ho_Dem`, `Ten`, `Ngay_Sinh`, `Gioi_Tinh`, `SDT`, `Dia_Chi`, `Email`, `CHUC_VU`) VALUES
('NV01', 'Trần Văn', 'Thành', '1985-01-01', 'Nam', '0901888001', 'Quận 1, TP.HCM', 'thanh.manager@lib.com', 'Quan Ly'),
('NV02', 'Lê Thị', 'Mai', '1995-02-14', 'Nữ', '0901888002', 'Quận 3, TP.HCM', 'mai.tt@lib.com', 'Thu Thu'),
('NV03', 'Nguyễn Thị', 'Lan', '1996-03-08', 'Nữ', '0901888003', 'Gò Vấp, TP.HCM', 'lan.tt@lib.com', 'Thu Thu'),
('NV04', 'Phạm Văn', 'Hùng', '1990-04-30', 'Nam', '0901888004', 'Bình Thạnh, TP.HCM', 'hung.kt@lib.com', 'Ke Toan'),
('NV05', 'Hoàng Văn', 'Nam', '1980-05-01', 'Nam', '0901888005', 'Thủ Đức, TP.HCM', 'nam.bv@lib.com', 'Bao Ve'),
('NV06', 'Đỗ Thị', 'Hoa', '1998-06-01', 'Nữ', '0901888006', 'Quận 7, TP.HCM', 'hoa.tt@lib.com', 'Thu Thu'),
('NV07', 'Vũ Văn', 'Cường', '1992-07-27', 'Nam', '0901888007', 'Tân Bình, TP.HCM', 'cuong.it@lib.com', 'IT Admin'),
('NV08', 'Bùi Thị', 'Phượng', '1997-08-19', 'Nữ', '0901888008', 'Quận 12, TP.HCM', 'phuong.tt@lib.com', 'Thu Thu'),
('NV09', 'Đặng Văn', 'Kho', '1988-09-02', 'Nam', '0901888009', 'Hóc Môn, TP.HCM', 'kho.ql@lib.com', 'Quan Ly Kho'),
('NV10', 'Ngô Thị', 'Tạp', '1975-10-10', 'Nữ', '0901888010', 'Bình Tân, TP.HCM', 'tap.vs@lib.com', 'Tap Vu'),
('NV11', 'Lý Văn', 'Huy', '1994-11-20', 'Nam', '0901888011', 'Quận 5, TP.HCM', 'huy.tt@lib.com', 'Thu Thu'),
('NV12', 'Dương Thị', 'Yến', '1993-12-12', 'Nữ', '0901888012', 'Quận 10, TP.HCM', 'yen.tt@lib.com', 'Thu Thu'),
('NV13', 'Trịnh Văn', 'Toàn', '1982-01-15', 'Nam', '0901888013', 'Củ Chi, TP.HCM', 'toan.bv@lib.com', 'Bao Ve'),
('NV14', 'Hà Thị', 'Trang', '1999-02-28', 'Nữ', '0901888014', 'Phú Nhuận, TP.HCM', 'trang.tt@lib.com', 'Thu Thu'),
('NV15', 'Phan Văn', 'Đạt', '1995-03-26', 'Nam', '0901888015', 'Quận 4, TP.HCM', 'dat.tt@lib.com', 'Thu Thu'),
('NV16', 'Lâm Thị', 'Linh', '2000-04-10', 'Nữ', '0901888016', 'Quận 8, TP.HCM', 'linh.tt@lib.com', 'Thu Thu'),
('NV17', 'Cao Văn', 'Bách', '1991-05-15', 'Nam', '0901888017', 'Quận 2, TP.HCM', 'bach.admin@lib.com', 'Quan Ly'),
('NV18', 'Đinh Thị', 'Tâm', '1996-06-01', 'Nữ', '0901888018', 'Nhà Bè, TP.HCM', 'tam.tt@lib.com', 'Thu Thu'),
('NV19', 'Mạc Văn', 'Khoa', '1993-07-07', 'Nam', '0901888019', 'Đồng Nai', 'khoa.tt@lib.com', 'Thu Thu'),
('NV20', 'Châu Thị', 'Nhung', '1998-08-08', 'Nữ', '0901888020', 'Bình Dương', 'nhung.tt@lib.com', 'Thu Thu'),
('NV21', 'Tạ Văn', 'Hiếu', '1985-09-09', 'Nam', '0901888021', 'Long An', 'hieu.bv@lib.com', 'Bao Ve'),
('NV22', 'Lưu Thị', 'Thảo', '1997-10-20', 'Nữ', '0901888022', 'Tân Phú, TP.HCM', 'thao.tt@lib.com', 'Thu Thu'),
('NV23', 'Vương Văn', 'Quang', '1994-11-11', 'Nam', '0901888023', 'Quận 6, TP.HCM', 'quang.tt@lib.com', 'Thu Thu'),
('NV24', 'Quách Thị', 'Vân', '2001-12-25', 'Nữ', '0901888024', 'Quận 11, TP.HCM', 'van.tt@lib.com', 'Thu Thu'),
('NV25', 'Trương Văn', 'Giám', '1970-01-01', 'Nam', '0901888999', 'Quận 1, TP.HCM', 'giam.ceo@lib.com', 'Giam Doc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

CREATE TABLE `nha_cung_cap` (
  `Ma_NCC` varchar(20) NOT NULL,
  `Ten_NCC` varchar(100) NOT NULL,
  `Dia_Chi` varchar(255) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`Ma_NCC`, `Ten_NCC`, `Dia_Chi`, `SDT`, `Email`) VALUES
('NCC01', 'Công Ty Fahasa', '60-62 Lê Lợi, Q.1, TP.HCM', '1900636467', 'info@fahasa.com'),
('NCC02', 'Tiki Trading', 'Lô A1, KCN Tân Bình, TP.HCM', '19006035', 'hotro@tiki.vn'),
('NCC03', 'Nhã Nam', '59 Đỗ Quang, Cầu Giấy, Hà Nội', '02435146875', 'info@nhanam.vn'),
('NCC04', 'NXB Kim Đồng', '55 Quang Trung, Hai Bà Trưng, Hà Nội', '02439434730', 'info@nxbkimdong.com.vn'),
('NCC05', 'NXB Trẻ', '161B Lý Chính Thắng, Q.3, TP.HCM', '02839316289', 'hopthubandoc@nxbtre.com.vn'),
('NCC06', 'Phương Nam Book', '940 Đường 3/2, Q.11, TP.HCM', '19006656', 'hotro@phuongnambook.com'),
('NCC07', 'Vinabook', '52 Hai Bà Trưng, Q.1, TP.HCM', '02838207153', 'hotro@vinabook.com'),
('NCC08', 'Alpha Books', '176 Thái Hà, Đống Đa, Hà Nội', '02437734544', 'lienhe@alphabooks.vn'),
('NCC09', 'Đinh Tị Books', '78 Đường 3, Q.Gò Vấp, TP.HCM', '02437188888', 'contacts@dinhtibooks.com.vn'),
('NCC10', 'Thái Hà Books', '119 C5 Tô Hiệu, Cầu Giấy, Hà Nội', '02437930480', 'info@thaihabooks.com'),
('NCC11', 'First News - Trí Việt', '11H Nguyễn Thị Minh Khai, Q.1, TP.HCM', '02838227979', 'triviet@firstnews.com.vn'),
('NCC12', 'Minh Long Book', 'Lô 34E, KĐT Đại Kim, Hoàng Mai, Hà Nội', '02437346808', 'minhlongbook@gmail.com'),
('NCC13', 'NXB Giáo Dục', '81 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', '02438220801', 'phathanh@nxbgd.vn'),
('NCC14', 'Huy Hoàng Bookstore', '110D Ngọc Hà, Ba Đình, Hà Nội', '02437365859', 'info@huyhoangbook.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_xuat_ban`
--

CREATE TABLE `nha_xuat_ban` (
  `Ma_NXB` varchar(20) NOT NULL,
  `Ten_NXB` varchar(100) NOT NULL,
  `Dia_Chi` varchar(255) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_xuat_ban`
--

INSERT INTO `nha_xuat_ban` (`Ma_NXB`, `Ten_NXB`, `Dia_Chi`, `SDT`, `Email`) VALUES
('NXB01', 'NXB Kim Đồng', '55 Quang Trung, Hà Nội', '02439434730', 'info@nxbkimdong.com.vn'),
('NXB02', 'NXB Trẻ', '161B Lý Chính Thắng, Q.3, TP.HCM', '02839316289', 'hopthubandoc@nxbtre.com.vn'),
('NXB03', 'NXB Giáo Dục Việt Nam', '81 Trần Hưng Đạo, Hà Nội', '02438220801', 'phathanh@nxbgd.vn'),
('NXB04', 'NXB Văn Học', '18 Nguyễn Trường Tộ, Hà Nội', '02437161518', 'info@nxbvanhoc.com'),
('NXB05', 'NXB Lao Động', '175 Giảng Võ, Hà Nội', '02438515380', 'nxblaodong@yahoo.com'),
('NXB06', 'NXB Thanh Niên', '64 Bà Triệu, Hà Nội', '02439434044', 'info@nxbthanhnien.vn'),
('NXB07', 'NXB Tổng Hợp TP.HCM', '62 Nguyễn Thị Minh Khai, Q.1, TP.HCM', '02838225340', 'tonghop@nxbhcm.com.vn'),
('NXB08', 'NXB Phụ Nữ', '39 Hàng Chuối, Hà Nội', '02439710719', 'nxbphunu@gmail.com'),
('NXB09', 'NXB Thế Giới', '46 Trần Hưng Đạo, Hà Nội', '02438253841', 'thegioi@hn.vnn.vn'),
('NXB10', 'NXB Chính Trị Quốc Gia', '6/86 Duy Tân, Cầu Giấy, Hà Nội', '02439422008', 'suthat@nxbctqg.vn'),
('NXB11', 'NXB Hội Nhà Văn', '65 Nguyễn Du, Hà Nội', '02438222135', 'hnv@nxbhoinhavan.vn'),
('NXB12', 'NXB Công An Nhân Dân', '92 Nguyễn Du, Hà Nội', '02439762694', 'cand@nxb.gov.vn'),
('NXB13', 'NXB Xây Dựng', '37 Lê Đại Hành, Hà Nội', '02439760232', 'banhang@nxbxaydung.com.vn'),
('NXB14', 'NXB Y Học', '352 Đội Cấn, Ba Đình, Hà Nội', '02437627816', 'nxbyhoc@fpt.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pm_phieu_muon`
--

CREATE TABLE `pm_phieu_muon` (
  `Ma_PM` varchar(20) NOT NULL,
  `Ma_DG` varchar(20) NOT NULL,
  `Ma_NV` varchar(20) NOT NULL,
  `Ngay_Muon` date NOT NULL,
  `Ngay_Tra_Du_Kien` date NOT NULL,
  `Ngay_Thuc_Tra` date DEFAULT NULL,
  `Ghi_Chu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pm_phieu_muon`
--

INSERT INTO `pm_phieu_muon` (`Ma_PM`, `Ma_DG`, `Ma_NV`, `Ngay_Muon`, `Ngay_Tra_Du_Kien`, `Ngay_Thuc_Tra`, `Ghi_Chu`) VALUES
('PM01', 'DG01', 'NV01', '2024-01-20', '2024-02-03', '2024-02-06', 'Trả trễ 3 ngày'),
('PM02', 'DG02', 'NV02', '2024-02-01', '2024-02-15', '2024-02-12', 'Trả đúng hạn, sách bị rách bìa'),
('PM03', 'DG03', 'NV01', '2024-02-05', '2024-02-19', '2024-02-15', 'Làm mất sách, đã đền bù'),
('PM04', 'DG04', 'NV02', '2024-02-10', '2024-02-24', '2024-03-02', 'Trả trễ 7 ngày'),
('PM05', 'DG05', 'NV03', '2024-02-12', '2024-02-26', '2024-02-26', 'Trả đúng hạn, có vết viết bậy'),
('PM06', 'DG06', 'NV04', '2024-02-15', '2024-03-01', '2024-03-01', 'Sách bị ẩm nhẹ'),
('PM07', 'DG07', 'NV05', '2024-02-20', '2024-03-05', '2024-03-06', 'Trả trễ 1 ngày'),
('PM08', 'DG08', 'NV01', '2024-02-22', '2024-03-07', '2024-03-07', 'Gáy sách bị lỏng'),
('PM09', 'DG09', 'NV03', '2024-02-25', '2024-03-10', '2024-03-20', 'Trả trễ 10 ngày'),
('PM10', 'DG10', 'NV02', '2024-03-01', '2024-03-15', '2024-03-15', 'Mất tem thư viện'),
('PM11', 'DG11', 'NV04', '2024-03-05', '2024-03-19', '2024-03-19', 'Sách bị dính bẩn'),
('PM12', 'DG12', 'NV01', '2024-03-08', '2024-03-22', NULL, 'Đang mượn (Mất sách giáo trình)'),
('PM13', 'DG13', 'NV05', '2024-03-10', '2024-03-24', '2024-03-24', 'Rách 1 trang nội dung'),
('PM14', 'DG14', 'NV03', '2024-03-12', '2024-03-26', '2024-03-31', 'Trả trễ 5 ngày'),
('PM15', 'DG15', 'NV02', '2024-03-15', '2024-03-29', '2024-03-31', 'Trả trễ 2 ngày'),
('PM16', 'DG16', 'NV02', '2024-03-18', '2024-04-01', NULL, 'Đang mượn (Báo mất thẻ)'),
('PM17', 'DG17', 'NV01', '2024-03-20', '2024-04-03', '2024-04-04', 'Trả trễ 1 ngày'),
('PM18', 'DG18', 'NV01', '2024-03-22', '2024-04-05', '2024-04-05', 'Vẽ bậy nhiều trang'),
('PM19', 'DG19', 'NV05', '2024-03-25', '2024-04-08', NULL, 'Đang mượn (Nghi vấn tráo sách)'),
('PM20', 'DG20', 'NV04', '2024-03-28', '2024-04-11', '2024-04-15', 'Trả trễ 4 ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pn_phieu_nhap`
--

CREATE TABLE `pn_phieu_nhap` (
  `Ma_PN` varchar(20) NOT NULL,
  `Ngay_Nhap` datetime DEFAULT current_timestamp(),
  `Ma_NCC` varchar(20) DEFAULT NULL,
  `Ma_NV` varchar(20) DEFAULT NULL,
  `Ghi_Chu` text DEFAULT NULL,
  `Tong_Tien` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pn_phieu_nhap`
--

INSERT INTO `pn_phieu_nhap` (`Ma_PN`, `Ngay_Nhap`, `Ma_NCC`, `Ma_NV`, `Ghi_Chu`, `Tong_Tien`) VALUES
('PN01', '2024-01-10 08:30:00', 'NCC01', 'NV01', 'Nhập sách giáo khoa đầu năm học', 50000000.00),
('PN02', '2024-01-15 09:00:00', 'NCC02', 'NV02', 'Nhập truyện tranh Kim Đồng đợt 1', 15000000.00),
('PN03', '2024-02-05 14:20:00', 'NCC03', 'NV01', 'Bổ sung giáo trình CNTT', 25500000.00),
('PN04', '2024-02-20 10:15:00', 'NCC01', 'NV03', 'Nhập sách tham khảo Ngoại ngữ', 12000000.00),
('PN05', '2024-03-01 08:45:00', 'NCC04', 'NV02', 'Nhập sách Văn học kinh điển', 8000000.00),
('PN06', '2024-03-15 15:30:00', 'NCC02', 'NV01', 'Bổ sung truyện tranh thiếu nhi', 9500000.00),
('PN07', '2024-04-02 11:00:00', 'NCC05', 'NV04', 'Nhập tạp chí khoa học kỳ 1', 3000000.00),
('PN08', '2024-04-20 09:30:00', 'NCC03', 'NV01', 'Nhập sách chuyên ngành Kinh tế', 18000000.00),
('PN09', '2024-05-10 13:45:00', 'NCC01', 'NV03', 'Nhập từ điển các loại', 6500000.00),
('PN10', '2024-06-05 10:20:00', 'NCC04', 'NV02', 'Nhập sách kỹ năng sống', 11200000.00),
('PN11', '2024-07-15 08:00:00', 'NCC02', 'NV05', 'Nhập truyện Manga mới phát hành', 22000000.00),
('PN12', '2024-08-01 14:10:00', 'NCC01', 'NV01', 'Chuẩn bị sách cho năm học mới', 60000000.00),
('PN13', '2024-08-20 09:50:00', 'NCC03', 'NV02', 'Bổ sung sách Lập trình Java/Web', 14500000.00),
('PN14', '2024-09-05 16:00:00', 'NCC05', 'NV04', 'Nhập báo và tạp chí tháng 9', 2500000.00),
('PN15', '2024-09-25 10:30:00', 'NCC04', 'NV01', 'Nhập tiểu thuyết trinh thám', 7800000.00),
('PN16', '2024-10-10 11:15:00', 'NCC02', 'NV03', 'Nhập ấn phẩm đặc biệt', 5000000.00),
('PN17', '2024-10-25 15:40:00', 'NCC01', 'NV02', 'Nhập sách Y học thường thức', 9200000.00),
('PN18', '2024-11-12 09:20:00', 'NCC03', 'NV05', 'Bổ sung sách Toán cao cấp', 13000000.00),
('PN19', '2024-12-05 14:50:00', 'NCC05', 'NV04', 'Nhập sách giảm giá cuối năm', 4500000.00),
('PN20', '2024-12-20 08:10:00', 'NCC01', 'NV01', 'Tổng kết và nhập bổ sung kho', 35000000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pp_phieu_phat`
--

CREATE TABLE `pp_phieu_phat` (
  `Ma_PP` varchar(20) NOT NULL,
  `Ma_PM` varchar(20) DEFAULT NULL,
  `Ma_NV` varchar(20) DEFAULT NULL,
  `Ngay_Ghi` datetime DEFAULT current_timestamp(),
  `Ly_Do` varchar(255) DEFAULT NULL,
  `Tong_Tien` decimal(15,0) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pp_phieu_phat`
--

INSERT INTO `pp_phieu_phat` (`Ma_PP`, `Ma_PM`, `Ma_NV`, `Ngay_Ghi`, `Ly_Do`, `Tong_Tien`) VALUES
('PP01', 'PM01', 'NV01', '2024-02-10 09:30:00', 'Trả sách quá hạn 3 ngày', 15000),
('PP02', 'PM02', 'NV02', '2024-02-12 14:15:00', 'Làm rách bìa sách', 20000),
('PP03', 'PM03', 'NV01', '2024-02-15 10:00:00', 'Làm mất sách (Đền bù 150%)', 150000),
('PP04', 'PM05', 'NV03', '2024-02-18 16:20:00', 'Viết bậy lên trang 15', 10000),
('PP05', 'PM04', 'NV02', '2024-02-20 08:45:00', 'Trả sách quá hạn 7 ngày', 35000),
('PP06', 'PM06', 'NV04', '2024-02-22 11:30:00', 'Làm ướt sách do mưa', 50000),
('PP07', 'PM08', 'NV01', '2024-02-25 15:10:00', 'Hư hỏng gáy sách', 30000),
('PP08', 'PM07', 'NV05', '2024-02-28 09:00:00', 'Trả sách quá hạn 1 ngày', 5000),
('PP09', 'PM10', 'NV02', '2024-03-01 13:40:00', 'Mất tem mã vạch', 5000),
('PP10', 'PM09', 'NV03', '2024-03-02 10:20:00', 'Trả sách quá hạn 10 ngày', 50000),
('PP11', 'PM12', 'NV01', '2024-03-05 14:50:00', 'Làm bẩn sách (đổ cà phê)', 40000),
('PP12', 'PM11', 'NV04', '2024-03-08 08:30:00', 'Mất sách giáo trình', 120000),
('PP13', 'PM15', 'NV02', '2024-03-10 16:00:00', 'Trả sách quá hạn 2 ngày', 10000),
('PP14', 'PM13', 'NV05', '2024-03-12 11:15:00', 'Rách trang nội dung', 25000),
('PP15', 'PM14', 'NV03', '2024-03-15 09:45:00', 'Trả sách quá hạn 5 ngày', 25000),
('PP16', 'PM18', 'NV01', '2024-03-18 13:20:00', 'Vẽ bậy nhiều trang', 50000),
('PP17', 'PM16', 'NV02', '2024-03-20 15:30:00', 'Làm mất thẻ thư viện', 50000),
('PP18', 'PM20', 'NV04', '2024-03-22 10:10:00', 'Trả sách quá hạn 4 ngày', 20000),
('PP19', 'PM19', 'NV05', '2024-03-25 14:40:00', 'Cố ý tráo đổi sách', 200000),
('PP20', 'PM17', 'NV01', '2024-03-28 09:15:00', 'Trả sách quá hạn 1 ngày', 5000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qp_phat`
--

CREATE TABLE `qp_phat` (
  `Ma_Ly_Do_Phat` varchar(20) NOT NULL,
  `Ten_Ly_Do_Phat` varchar(255) NOT NULL,
  `Cach_Tinh_Phat` varchar(255) DEFAULT NULL,
  `Ghi_Chu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qp_phat`
--

INSERT INTO `qp_phat` (`Ma_Ly_Do_Phat`, `Ten_Ly_Do_Phat`, `Cach_Tinh_Phat`, `Ghi_Chu`) VALUES
('LDP01', 'Trả sách quá hạn', '2.000 VNĐ / Ngày trễ', 'Tính theo số ngày thực tế trễ hạn so với ngày hẹn trả'),
('LDP02', 'Làm mất sách', 'Đền bù 150% giá trị thực của sách', 'Giá sách căn cứ theo giá bìa hoặc giá thị trường tại thời điểm mất'),
('LDP03', 'Làm rách bìa sách', 'Phạt 20.000 VNĐ / Cuốn', 'Áp dụng cho trường hợp rách nhẹ, vẫn có thể dán lại được'),
('LDP04', 'Làm ướt, nấm mốc sách', 'Đền bù 100% giá trị sách', 'Sách bị hư hỏng không thể phục hồi hoặc ảnh hưởng vệ sinh'),
('LDP05', 'Viết, vẽ bậy vào sách', 'Phạt 10.000 VNĐ / Trang', 'Nếu số tiền phạt vượt quá giá trị sách thì áp dụng mức đền bù 100% giá sách'),
('LDP06', 'Mất trang nội dung', 'Đền bù 100% giá trị sách', 'Sách bị thiếu trang không thể đọc trọn vẹn nội dung'),
('LDP07', 'Làm hỏng mã vạch/Tem thư viện', 'Phạt 15.000 VNĐ / Tem', 'Chi phí để in và dán lại mã vạch quản lý mới'),
('LDP08', 'Mất thẻ thư viện', 'Phí cấp lại 50.000 VNĐ / Thẻ', 'Áp dụng khi độc giả làm mất thẻ và yêu cầu cấp lại thẻ mới'),
('LDP09', 'Tráo đổi ruột sách', 'Đền sách gốc + Cấm mượn 6 tháng', 'Hành vi cố ý tráo sách cũ nát vào bìa sách mới'),
('LDP10', 'Bóc gáy sách, bung keo', 'Phạt 30.000 VNĐ / Cuốn', 'Chi phí để đóng lại gáy sách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qp_phi_thanh_vien`
--

CREATE TABLE `qp_phi_thanh_vien` (
  `Ma_Loai_TV` varchar(20) NOT NULL,
  `Ten_Loai_TV` varchar(100) NOT NULL,
  `Phi` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `qp_phi_thanh_vien`
--

INSERT INTO `qp_phi_thanh_vien` (`Ma_Loai_TV`, `Ten_Loai_TV`, `Phi`) VALUES
('LTV01', 'Thẻ Thường', 50000.00),
('LTV02', 'Thẻ VIP Bạc', 100000.00),
('LTV03', 'Thẻ VIP Vàng', 200000.00),
('LTV04', 'Thẻ Sinh Viên', 30000.00),
('LTV05', 'Thẻ Giảng Viên', 0.00),
('LTV06', 'Thẻ Doanh Nghiệp', 500000.00),
('LTV07', 'Thẻ Khách Vãng Lai', 20000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `Ma_Sach` varchar(20) NOT NULL,
  `Ten_Sach` varchar(255) NOT NULL,
  `Nam_XB` int(11) DEFAULT NULL,
  `Ma_TL` varchar(20) DEFAULT NULL,
  `Don_Gia` decimal(10,2) DEFAULT NULL,
  `So_Luong` int(11) DEFAULT 0,
  `Ma_TG` varchar(20) DEFAULT NULL,
  `Ma_NXB` varchar(20) DEFAULT NULL,
  `So_Trang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`Ma_Sach`, `Ten_Sach`, `Nam_XB`, `Ma_TL`, `Don_Gia`, `So_Luong`, `Ma_TG`, `Ma_NXB`, `So_Trang`) VALUES
('S01', 'Lập Trình Java Căn Bản', 2023, 'TL08', 150000.00, 50, 'TG01', 'NXB01', 450),
('S02', 'Cấu Trúc Dữ Liệu & Giải Thuật', 2022, 'TL17', 180000.00, 40, 'TG01', 'NXB01', 520),
('S03', 'Hacker Mũ Trắng', 2021, 'TL21', 250000.00, 30, 'TG02', 'NXB03', 380),
('S04', 'Nhập Môn Trí Tuệ Nhân Tạo', 2024, 'TL20', 300000.00, 25, 'TG03', 'NXB02', 600),
('S05', 'Marketing Căn Bản', 2020, 'TL03', 120000.00, 100, 'TG04', 'NXB05', 320),
('S06', 'Nghệ Thuật Bán Hàng', 2021, 'TL09', 110000.00, 80, 'TG04', 'NXB05', 280),
('S07', 'Quản Trị Nhân Sự 4.0', 2019, 'TL23', 135000.00, 60, 'TG05', 'NXB04', 400),
('S08', 'Tự Do Tài Chính', 2023, 'TL05', 99000.00, 150, 'TG06', 'NXB06', 250),
('S09', 'Khởi Nghiệp Tinh Gọn', 2018, 'TL01', 145000.00, 70, 'TG07', 'NXB02', 350),
('S10', 'Mắt Biếc', 2017, 'TL24', 85000.00, 200, 'TG08', 'NXB07', 300),
('S11', 'Thám Tử Sherlock Holmes', 2015, 'TL11', 160000.00, 90, 'TG15', 'NXB08', 650),
('S12', 'Doraemon Tập 1', 2024, 'TL22', 25000.00, 500, 'TG09', 'NXB01', 192),
('S13', 'Doraemon Tập 2', 2024, 'TL14', 25000.00, 500, 'TG09', 'NXB01', 192),
('S14', 'Doraemon Đại Tuyển Tập', 2023, 'TL25', 150000.00, 100, 'TG09', 'NXB01', 800),
('S15', 'Hồi Ký Lý Quang Diệu', 2016, 'TL15', 280000.00, 30, 'TG10', 'NXB09', 750),
('S16', 'Đắc Nhân Tâm', 2022, 'TL16', 78000.00, 300, 'TG11', 'NXB10', 320),
('S17', 'Quẳng Gánh Lo Đi Và Vui Sống', 2021, 'TL10', 76000.00, 250, 'TG11', 'NXB10', 310),
('S18', 'Món Ngon Hà Nội', 2020, 'TL12', 190000.00, 50, 'TG12', 'NXB11', 240),
('S19', 'Tâm Lý Học Đám Đông', 2019, 'TL04', 115000.00, 45, 'TG13', 'NXB12', 410),
('S20', 'Xách Ba Lô Lên Và Đi', 2018, 'TL13', 89000.00, 120, 'TG14', 'NXB07', 360),
('S21', 'Hack Não 1500 Từ Tiếng Anh', 2023, 'TL02', 290000.00, 200, 'TG16', 'NXB13', 500),
('S22', 'Luyện Thi IELTS Cambridge', 2024, 'TL19', 350000.00, 150, 'TG17', 'NXB13', 450),
('S23', 'Giáo Trình Minna no Nihongo', 2021, 'TL07', 120000.00, 100, 'TG18', 'NXB14', 380),
('S24', 'Đại Số 12 Nâng Cao', 2024, 'TL06', 45000.00, 500, 'TG19', 'NXB03', 210),
('S25', 'Kinh Tế Vi Mô', 2022, 'TL18', 220000.00, 80, 'TG20', 'NXB15', 600);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tac_gia`
--

CREATE TABLE `tac_gia` (
  `Ma_TG` varchar(20) NOT NULL,
  `Ho_Dem` varchar(50) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `Gioi_Tinh` varchar(10) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `Dia_Chi` varchar(255) DEFAULT NULL,
  `Nam_Sinh` int(11) DEFAULT NULL,
  `Quoc_Tich` varchar(50) DEFAULT 'Việt Nam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tac_gia`
--

INSERT INTO `tac_gia` (`Ma_TG`, `Ho_Dem`, `Ten`, `Gioi_Tinh`, `SDT`, `Dia_Chi`, `Nam_Sinh`, `Quoc_Tich`) VALUES
('TG01', 'Nguyễn Nhật', 'Ánh', 'Nam', '0909123456', 'TP.HCM, Việt Nam', 1955, 'Việt Nam'),
('TG02', 'J.K.', 'Rowling', 'Nữ', '+442071234567', 'Yate, Anh Quốc', 1965, 'Anh'),
('TG03', 'Nam', 'Cao', 'Nam', NULL, 'Hà Nam, Việt Nam', 1917, 'Việt Nam'),
('TG04', 'Stephen', 'King', 'Nam', '+12079998888', 'Maine, Hoa Kỳ', 1947, 'Mỹ'),
('TG05', 'Haruki', 'Murakami', 'Nam', '+81312345678', 'Kyoto, Nhật Bản', 1949, 'Nhật Bản'),
('TG06', 'Tô', 'Hoài', 'Nam', NULL, 'Hà Nội, Việt Nam', 1920, 'Việt Nam'),
('TG07', 'Victor', 'Hugo', 'Nam', NULL, 'Paris, Pháp', 1802, 'Pháp'),
('TG08', 'Kim', 'Dung', 'Nam', NULL, 'Hồng Kông, Trung Quốc', 1924, 'Trung Quốc'),
('TG09', 'Fujiko F.', 'Fujio', 'Nam', NULL, 'Toyama, Nhật Bản', 1933, 'Nhật Bản'),
('TG10', 'Dale', 'Carnegie', 'Nam', NULL, 'Missouri, Hoa Kỳ', 1888, 'Mỹ'),
('TG11', 'Rosie', 'Nguyễn', 'Nữ', '0918888999', 'Hà Nội, Việt Nam', 1987, 'Việt Nam'),
('TG12', 'Vũ Trọng', 'Phụng', 'Nam', NULL, 'Hưng Yên, Việt Nam', 1912, 'Việt Nam'),
('TG13', 'Dan', 'Brown', 'Nam', '+16035551234', 'New Hampshire, Hoa Kỳ', 1964, 'Mỹ'),
('TG14', 'Agatha', 'Christie', 'Nữ', NULL, 'Torquay, Anh Quốc', 1890, 'Anh'),
('TG15', 'Ngô Tất', 'Tố', 'Nam', NULL, 'Bắc Ninh, Việt Nam', 1894, 'Việt Nam'),
('TG16', 'Ernest', 'Hemingway', 'Nam', NULL, 'Illinois, Hoa Kỳ', 1899, 'Mỹ'),
('TG17', 'Lev', 'Tolstoy', 'Nam', NULL, 'Tula, Nga', 1828, 'Nga'),
('TG18', 'George', 'Orwell', 'Nam', NULL, 'London, Anh Quốc', 1903, 'Anh'),
('TG19', 'Nguyễn', 'Du', 'Nam', NULL, 'Hà Tĩnh, Việt Nam', 1765, 'Việt Nam'),
('TG20', 'Paulo', 'Coelho', 'Nam', '+552199998888', 'Rio de Janeiro, Brazil', 1947, 'Brazil'),
('TG21', 'Đặng Thùy', 'Trâm', 'Nữ', NULL, 'Hà Nội, Việt Nam', 1942, 'Việt Nam'),
('TG22', 'Gosho', 'Aoyama', 'Nam', '+81355554444', 'Tottori, Nhật Bản', 1963, 'Nhật Bản'),
('TG23', 'Arthur Conan', 'Doyle', 'Nam', NULL, 'Edinburgh, Anh Quốc', 1859, 'Anh'),
('TG24', 'Mark', 'Twain', 'Nam', NULL, 'Missouri, Hoa Kỳ', 1835, 'Mỹ'),
('TG25', 'Hồ Biểu', 'Chánh', 'Nam', NULL, 'Tiền Giang, Việt Nam', 1884, 'Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `TEN_DANG_NHAP` varchar(50) NOT NULL,
  `Ma_NV` varchar(20) NOT NULL,
  `MAT_KHAU` varchar(255) NOT NULL,
  `QUYEN_HAN` varchar(50) DEFAULT NULL,
  `TRANG_THAI` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`TEN_DANG_NHAP`, `Ma_NV`, `MAT_KHAU`, `QUYEN_HAN`, `TRANG_THAI`) VALUES
('admin_backup', 'NV17', '123456', 'Quan Ly', '1'),
('admin_tong', 'NV01', '123456', 'Quan Ly', '1'),
('baove_hieu', 'NV21', '123456', 'Bao Ve', '1'),
('baove_nam', 'NV05', '123456', 'Bao Ve', '0'),
('baove_toan', 'NV13', '123456', 'Bao Ve', '1'),
('giamdoc', 'NV25', '123456', 'Quan Ly', '1'),
('it_cuong', 'NV07', '123456', 'IT Admin', '1'),
('ketoan_hung', 'NV04', '123456', 'Ke Toan', '1'),
('nhanvien_tv', 'NV24', '123456', 'Thu Thu', '0'),
('quanly_kho', 'NV09', '123456', 'Quan Ly', '1'),
('tapvu_01', 'NV10', '123456', 'Tap Vu', '1'),
('thuthu_dat', 'NV15', '123456', 'Thu Thu', '1'),
('thuthu_hoa', 'NV06', '123456', 'Thu Thu', '1'),
('thuthu_huy', 'NV11', '123456', 'Thu Thu', '1'),
('thuthu_khoa', 'NV19', '123456', 'Thu Thu', '1'),
('thuthu_lan', 'NV03', '123456', 'Thu Thu', '1'),
('thuthu_linh', 'NV16', '123456', 'Thu Thu', '1'),
('thuthu_mai', 'NV02', '123456', 'Thu Thu', '1'),
('thuthu_nhung', 'NV20', '123456', 'Thu Thu', '1'),
('thuthu_phuong', 'NV08', '123456', 'Thu Thu', '1'),
('thuthu_quang', 'NV23', '123456', 'Thu Thu', '1'),
('thuthu_tam', 'NV18', '123456', 'Thu Thu', '1'),
('thuthu_thao', 'NV22', '123456', 'Thu Thu', '1'),
('thuthu_trang', 'NV14', '123456', 'Thu Thu', '1'),
('thuthu_yen', 'NV12', '123456', 'Thu Thu', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai`
--

CREATE TABLE `the_loai` (
  `Ma_TL` varchar(20) NOT NULL,
  `Ten_TL` varchar(100) NOT NULL,
  `Mo_Ta` text DEFAULT NULL,
  `Ma_TL_Cha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai`
--

INSERT INTO `the_loai` (`Ma_TL`, `Ten_TL`, `Mo_Ta`, `Ma_TL_Cha`) VALUES
('ROOT01', 'Khoa Học & Công Nghệ', 'Sách về tự nhiên, kỹ thuật', NULL),
('ROOT02', 'Văn Học & Nghệ Thuật', 'Tác phẩm văn chương', NULL),
('ROOT03', 'Kinh Tế & Kỹ Năng', 'Kiến thức kinh doanh', NULL),
('ROOT04', 'Đời Sống & Xã Hội', 'Kiến thức xã hội', NULL),
('ROOT05', 'Giáo Dục & Ngoại Ngữ', 'Sách giáo khoa', NULL),
('TL01', 'Công Nghệ Thông Tin', 'Lập trình, mạng', 'ROOT01'),
('TL02', 'Khoa Học Viễn Tưởng', 'Tiểu thuyết tương lai', 'ROOT02'),
('TL03', 'Tiểu Thuyết Tình Cảm', 'Truyện ngôn tình', 'ROOT02'),
('TL04', 'Kinh Tế - Quản Trị', 'Quản trị kinh doanh', 'ROOT03'),
('TL05', 'Tâm Lý - Kỹ Năng', 'Kỹ năng mềm', 'ROOT03'),
('TL06', 'Truyện Tranh (Manga)', 'Truyện tranh Nhật Bản', 'ROOT02'),
('TL07', 'Lịch Sử - Địa Lý', 'Lịch sử thế giới', 'ROOT04'),
('TL08', 'Văn Học Cổ Điển', 'Tác phẩm kinh điển', 'ROOT02'),
('TL09', 'Sách Thiếu Nhi', 'Truyện cổ tích', 'ROOT02'),
('TL10', 'Y Học - Sức Khỏe', 'Kiến thức y khoa', 'ROOT04'),
('TL11', 'Nấu Ăn - Ẩm Thực', 'Công thức nấu ăn', 'ROOT04'),
('TL12', 'Nông Lâm Ngư Nghiệp', 'Kỹ thuật canh tác', 'ROOT01'),
('TL13', 'Kiến Trúc - Xây Dựng', 'Thiết kế công trình', 'ROOT01'),
('TL14', 'Pháp Luật - Chính Trị', 'Văn bản luật', 'ROOT04'),
('TL15', 'Tôn Giáo - Tâm Linh', 'Đời sống tâm linh', 'ROOT04'),
('TL16', 'Du Lịch - Khám Phá', 'Cẩm nang du lịch', 'ROOT04'),
('TL17', 'Tự Truyện - Hồi Ký', 'Câu chuyện cuộc đời', 'ROOT02'),
('TL18', 'Sách Giáo Khoa', 'Sách giáo khoa các cấp', 'ROOT05'),
('TL19', 'Tạp Chí Khoa Học', 'Nghiên cứu khoa học', 'ROOT01'),
('TL20', 'Ngoại Ngữ', 'Giáo trình ngoại ngữ', 'ROOT05'),
('TL21', 'Triết Học', 'Tư tưởng triết học', 'ROOT03'),
('TL22', 'Toán Học & Logic', 'Toán cao cấp', 'ROOT01'),
('TL23', 'Vật Lý Vũ Trụ', 'Vật lý thiên văn', 'ROOT01'),
('TL24', 'Thiên Văn Học', 'Nghiên cứu vũ trụ', 'ROOT01'),
('TL25', 'Trinh Thám - Kinh Dị', 'Vụ án bí ẩn', 'ROOT02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctpm_chi_tiet_pm`
--
ALTER TABLE `ctpm_chi_tiet_pm`
  ADD PRIMARY KEY (`Ma_PM`,`Ma_Sach`);

--
-- Chỉ mục cho bảng `ctpn_chi_tiet_pn`
--
ALTER TABLE `ctpn_chi_tiet_pn`
  ADD PRIMARY KEY (`Ma_PN`,`Ma_Sach`),
  ADD KEY `Ma_Sach` (`Ma_Sach`);

--
-- Chỉ mục cho bảng `ctpp_chi_tiet_pp`
--
ALTER TABLE `ctpp_chi_tiet_pp`
  ADD PRIMARY KEY (`Ma_PP`,`Ma_Ly_Do_Phat`,`Ma_Sach`),
  ADD KEY `Ma_Ly_Do_Phat` (`Ma_Ly_Do_Phat`),
  ADD KEY `Ma_Sach` (`Ma_Sach`);

--
-- Chỉ mục cho bảng `doc_gia`
--
ALTER TABLE `doc_gia`
  ADD PRIMARY KEY (`Ma_DG`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`Ma_NV`);

--
-- Chỉ mục cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  ADD PRIMARY KEY (`Ma_NCC`);

--
-- Chỉ mục cho bảng `nha_xuat_ban`
--
ALTER TABLE `nha_xuat_ban`
  ADD PRIMARY KEY (`Ma_NXB`);

--
-- Chỉ mục cho bảng `pm_phieu_muon`
--
ALTER TABLE `pm_phieu_muon`
  ADD PRIMARY KEY (`Ma_PM`),
  ADD KEY `Ma_DG` (`Ma_DG`),
  ADD KEY `Ma_NV` (`Ma_NV`);

--
-- Chỉ mục cho bảng `pn_phieu_nhap`
--
ALTER TABLE `pn_phieu_nhap`
  ADD PRIMARY KEY (`Ma_PN`),
  ADD KEY `Ma_NCC` (`Ma_NCC`),
  ADD KEY `Ma_NV` (`Ma_NV`);

--
-- Chỉ mục cho bảng `pp_phieu_phat`
--
ALTER TABLE `pp_phieu_phat`
  ADD PRIMARY KEY (`Ma_PP`);

--
-- Chỉ mục cho bảng `qp_phat`
--
ALTER TABLE `qp_phat`
  ADD PRIMARY KEY (`Ma_Ly_Do_Phat`);

--
-- Chỉ mục cho bảng `qp_phi_thanh_vien`
--
ALTER TABLE `qp_phi_thanh_vien`
  ADD PRIMARY KEY (`Ma_Loai_TV`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`Ma_Sach`),
  ADD KEY `Ma_TL` (`Ma_TL`),
  ADD KEY `Ma_TG` (`Ma_TG`),
  ADD KEY `Ma_NXB` (`Ma_NXB`);

--
-- Chỉ mục cho bảng `tac_gia`
--
ALTER TABLE `tac_gia`
  ADD PRIMARY KEY (`Ma_TG`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`TEN_DANG_NHAP`),
  ADD KEY `Ma_NV` (`Ma_NV`);

--
-- Chỉ mục cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`Ma_TL`),
  ADD KEY `Ma_TL_Cha` (`Ma_TL_Cha`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctpn_chi_tiet_pn`
--
ALTER TABLE `ctpn_chi_tiet_pn`
  ADD CONSTRAINT `ctpn_chi_tiet_pn_ibfk_1` FOREIGN KEY (`Ma_PN`) REFERENCES `pn_phieu_nhap` (`Ma_PN`),
  ADD CONSTRAINT `ctpn_chi_tiet_pn_ibfk_2` FOREIGN KEY (`Ma_Sach`) REFERENCES `sach` (`Ma_Sach`);

--
-- Các ràng buộc cho bảng `ctpp_chi_tiet_pp`
--
ALTER TABLE `ctpp_chi_tiet_pp`
  ADD CONSTRAINT `ctpp_chi_tiet_pp_ibfk_1` FOREIGN KEY (`Ma_PP`) REFERENCES `pp_phieu_phat` (`Ma_PP`),
  ADD CONSTRAINT `ctpp_chi_tiet_pp_ibfk_2` FOREIGN KEY (`Ma_Ly_Do_Phat`) REFERENCES `qp_phat` (`Ma_Ly_Do_Phat`),
  ADD CONSTRAINT `ctpp_chi_tiet_pp_ibfk_3` FOREIGN KEY (`Ma_Sach`) REFERENCES `sach` (`Ma_Sach`);

--
-- Các ràng buộc cho bảng `pm_phieu_muon`
--
ALTER TABLE `pm_phieu_muon`
  ADD CONSTRAINT `pm_phieu_muon_ibfk_1` FOREIGN KEY (`Ma_DG`) REFERENCES `doc_gia` (`Ma_DG`),
  ADD CONSTRAINT `pm_phieu_muon_ibfk_2` FOREIGN KEY (`Ma_NV`) REFERENCES `nhan_vien` (`Ma_NV`);

--
-- Các ràng buộc cho bảng `pn_phieu_nhap`
--
ALTER TABLE `pn_phieu_nhap`
  ADD CONSTRAINT `pn_phieu_nhap_ibfk_1` FOREIGN KEY (`Ma_NCC`) REFERENCES `nha_cung_cap` (`Ma_NCC`),
  ADD CONSTRAINT `pn_phieu_nhap_ibfk_2` FOREIGN KEY (`Ma_NV`) REFERENCES `nhan_vien` (`Ma_NV`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`Ma_TL`) REFERENCES `the_loai` (`Ma_TL`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`Ma_TG`) REFERENCES `tac_gia` (`Ma_TG`),
  ADD CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`Ma_NXB`) REFERENCES `nha_xuat_ban` (`Ma_NXB`);

--
-- Các ràng buộc cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `tai_khoan_ibfk_1` FOREIGN KEY (`Ma_NV`) REFERENCES `nhan_vien` (`Ma_NV`);

--
-- Các ràng buộc cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  ADD CONSTRAINT `the_loai_ibfk_1` FOREIGN KEY (`Ma_TL_Cha`) REFERENCES `the_loai` (`Ma_TL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
