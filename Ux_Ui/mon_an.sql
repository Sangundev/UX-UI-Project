-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 08:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_nha_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `mon_an`
--

CREATE TABLE `mon_an` (
  `ma_mon` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_mon` varchar(100) NOT NULL,
  `noi_dung_tom_tat` varchar(200) NOT NULL,
  `noi_dung_chi_tiet` varchar(500) NOT NULL,
  `don_gia` double NOT NULL,
  `don_gia_khuyen_mai` double NOT NULL,
  `khuyen_mai` varchar(200) NOT NULL DEFAULT 'nước ngọt, khăn lạnh',
  `hinh` varchar(100) NOT NULL,
  `ngay_cap_nhat` date NOT NULL,
  `dvt` varchar(50) NOT NULL DEFAULT 'đĩa',
  `trong_ngay` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mon_an`
--

INSERT INTO `mon_an` (`ma_mon`, `ma_loai`, `ten_mon`, `noi_dung_tom_tat`, `noi_dung_chi_tiet`, `don_gia`, `don_gia_khuyen_mai`, `khuyen_mai`, `hinh`, `ngay_cap_nhat`, `dvt`, `trong_ngay`) VALUES
(1, 2, 'Bánh canh', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Được làm từ bột gạo, bột mì, hoặc bột sắn hoặc bột gạo pha bột sắn cán thành tấm và cắt ra thành sợi to và ngắn với nước dùng được nấu từ tôm, cá, giò heo... thêm gia vị tùy theo từng loại', 25000, 0, 'nước ngọt, khăn lạnh', 'Banh-Canh-Thit.jpg', '2013-12-28', 'đĩa', 0),
(2, 10, 'Nước giải khác các loại', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Chèn thập cẩm, chè đâu xanh, trà sữa trân châu,... được chế biến từ chính các đầu bếp của nhà hàng chúng tôi.', 45000, 0, 'nước ngọt, khăn lạnh', 'nuoc_giai_khat_cac_loai.jpg', '2013-12-29', 'đĩa', 0),
(3, 2, 'Súp Gà Ngô non', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cách làm:\r\n\r\n\r\nĐun nước dùng sôi, cho thịt gà vào, nêm muối tiêu, đun sôi nhỏ lửa 10 phút. Nếu bạn sợ gà quá nhừ thì có thể vớt thịt gà ra.', 25000, 0, 'nước ngọt, khăn lạnh', 'sup_ngo_non.jpg', '2013-12-29', 'đĩa', 0),
(4, 1, 'Salát cà chua dưa chuột', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...Cách làm: dưa chuột cà chua, dứa, gọt vỏ, rửa sạch, thái lát mỏng. Bày xen kẽ các nguyên liệu trên theo hình tròn hoặc hình dẻ quạt.Tỏi, ớt đập dập, băm nhỏ, cho vào tô với một chút dấm đường và một chút muối. Quậy đều hỗn hợp trên, nếm thử thấy có vị chua, ngọt vừa ăn là được. Dội hỗn hợp trên vào đĩa nguyên liệu đã được trình bày.', 25000, 0, 'nước ngọt, khăn lạnh', 'salat_ca_chua_dua_chuot.jpg', '2013-12-29', 'đĩa', 0),
(5, 1, 'Nộm gà xé phay', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Nguyên liệu:\r\n250g thịt ức gà\r\n½ củ hành tây to (hoặc 1 củ nhỏ)\r\n½ củ cà rốt\r\n1 chút lạc rang\r\nRau mùi, húng\r\nNước mắm, chanh, đường', 80000, 0, 'nước ngọt, khăn lạnh', 'nom_ga_xe_phay.jpg', '2013-12-29', 'đĩa', 0),
(6, 2, 'Nem Phù đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gọi một đĩa nem ốc mà phải đợi đến 15 phút. Nem được gói từ trước, đến khi khách gọi nhà hàng mới mang vào rán. Trong lúc đợi có thể gọi bún ốc, Gọi một đĩa nem ốc mà phải đợi đến 15 phút. Nem được gói từ trước, đến khi khách gọi nhà hàng mới mang vào rán. Trong lúc đợi có thể gọi bún ốc, ', 80000, 0, 'nước ngọt, khăn lạnh', 'nem-oc-phu-dong.jpg', '2013-12-29', 'đĩa', 0),
(7, 1, 'Tôm sú chiên trà', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên tràTôm sú chiên trà', 650000, 0, 'nước ngọt, khăn lạnh', 'tomsu-nuocdua.jpg', '2013-12-29', 'đĩa', 0),
(8, 2, 'Gà quay', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xu hướng ẩm thực của nhà hàng Anh Em khá đa dạng, tuy nhiên, nổi bật nhất vẫn là những món quay với hương vị mới như gà quay sầu riêng, gà quay bọc xôi...Xu hướng ẩm thực của nhà hàng Anh Em khá đa dạng, tuy nhiên, nổi bật nhất vẫn là những món quay với hương vị mới như gà quay sầu riêng, gà quay bọc xôi...', 25000, 0, 'nước ngọt, khăn lạnh', 'ImageHandler.ashx.jpg', '2013-12-29', 'đĩa', 0),
(9, 1, 'Mực xào thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Mực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩm', 180000, 5, 'nước ngọt, khăn lạnh', 'muc_xao_tham_cap.jpg', '2013-12-29', 'đĩa', 0),
(10, 1, 'Mực xào thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Mực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩmMực xào thập cẩm', 180000, 5, 'nước ngọt, khăn lạnh', 'muc_xao_tham_cap.jpg', '2013-12-29', 'đĩa', 0),
(11, 1, 'Cải làn xào tỏi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏiCải làn xào tỏi', 70000, 0, 'nước ngọt, khăn lạnh', 'cai_lan_xao_toi.jpg', '2013-12-29', 'đĩa', 0),
(12, 3, 'Canh chua ngao', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngaoCanh chua ngao', 90000, 0, 'nước ngọt, khăn lạnh', 'canh ngao.jpg', '2013-12-29', 'đĩa', 0),
(13, 2, 'Cơm tám', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'com_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpgcom_tam.jpg', 25000, 0, 'nước ngọt, khăn lạnh', 'com_tam.jpg', '2013-12-29', 'đĩa', 0),
(14, 1, 'Xôi Hoàng Phố', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng PhốXôi Hoàng Phố', 60000, 0, 'nước ngọt, khăn lạnh', 'xoi_hoang_pho.jpg', '2013-12-29', 'đĩa', 0),
(15, 2, 'Khăn lạnh', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Khăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnhKhăn lạnh', 2000, 0, 'nước ngọt, khăn lạnh', 'khen_lanh.jpg', '2013-12-29', 'đĩa', 0),
(16, 2, 'Dưa Vàng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Dưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa VàngDưa Vàng', 60000, 0, 'nước ngọt, khăn lạnh', 'dua_vang.jpg', '2013-12-29', 'đĩa', 0),
(17, 2, 'Nộm gà hoa chuối', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Nộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuốiNộm gà hoa chuối', 80000, 0, 'nước ngọt, khăn lạnh', 'nom_ga_hoa_chuoi.jpg', '2013-12-29', 'đĩa', 0),
(18, 3, 'Tôm sú nướng ngũ vị', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú nướng ngũ vịTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị\r\nTôm sú nướng ngũ vị', 650000, 0, 'nước ngọt, khăn lạnh', 'tom_su_nuong_ngu_vi.jpg', '2013-12-29', 'đĩa', 0),
(19, 3, 'Gà nướng Phù Đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù ĐổngGà nướng Phù Đổng', 280000, 0, 'nước ngọt, khăn lạnh', 'ga_nuong_phu_dong.JPG', '2013-12-29', 'đĩa', 0),
(20, 2, 'Bò xốt tiêu đen', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đenBò xốt tiêu đen', 150000, 0, 'nước ngọt, khăn lạnh', 'bo_sot_tieu_den.jpg', '2013-12-30', 'đĩa', 0),
(21, 2, 'Cá Điêu hồng chiên xù', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xùCá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xù\r\nCá Điêu hồng chiên xù', 2400000, 0, 'nước ngọt, khăn lạnh', 'ca_dieu_hong_chien_xu.jpg', '2013-12-30', 'đĩa', 0),
(22, 2, 'Ngô chiên', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Ngô chiênNgô chiênNgô chiênNgô chiênNgô chiên\r\nNgô chiênNgô chiên\r\nNgô chiên', 60000, 0, 'nước ngọt, khăn lạnh', 'ngochien.jpg', '2013-12-30', 'đĩa', 0),
(23, 2, 'Ngọn susu xào tỏi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Ngọn susu xào tỏi Ngọn susu xào tỏi Ngọn susu xào tỏi\r\nNgọn susu xào tỏi Ngọn susu xào tỏi Ngọn susu xào tỏi', 45000, 0, 'nước ngọt, khăn lạnh', 'susu_xao_toi.jpg', '2013-12-30', 'đĩa', 0),
(24, 2, 'Canh bóng mọc thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩm\r\nCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩm\r\nCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩmCanh bóng mọc thập cẩm', 60000, 0, 'nước ngọt, khăn lạnh', 'canh_bong_moc_thap_cam.jpg', '2013-12-30', 'đĩa', 0),
(25, 2, 'Cơm tám', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám \r\nCơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám \r\nCơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám Cơm tám ', 30000, 0, 'nước ngọt, khăn lạnh', 'com_tam_ga.jpg', '2013-12-30', 'đĩa', 0),
(26, 2, 'Xôi vò hạt sen', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen\r\nXôi vò hạt sen', 60000, 0, 'nước ngọt, khăn lạnh', 'xoi_vo_hat_sen.jpg', '2013-12-30', 'đĩa', 0),
(27, 2, 'Gỏi mướp đắng ruốc', 'Nguyên liệu\n\nMướp đắng: 2 quả, ruốc thịt heo: 50g, đá bào: 500g, nilon bọc đồ ăn, hoa cà rốt trang trí.', 'Cách chế biến\n\nMướp đắng rửa sạch, để ráo. Bổ đôi quả theo chiều dọc, sau đó xát thành từng lát mỏng 0,8 mm theo chiều ngang quả mướp. Đá cây bào mỏng, cho vào đĩa sâu lòng, bọc nilon mỏng kín mặt đĩa, xếp mướp đắng lên trên, trình bày cho đẹp mắt. Để khoảng 30 phút cho mướp mát lạnh. Nếu đã tan hết thì thay lượt đá khác với cách làm tương tự. Sau đó rắc ruốc thịt heo xé tơi lên trên.', 50000, 0, 'nước ngọt, khăn lạnh', 'goi muop dang ruoc.jpg', '2013-12-30', 'đĩa', 0),
(28, 2, 'Dưa hấu', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Dưa hấu Dưa hấuDưa hấu Dưa hấuDưa hấu Dưa hấuDưa hấu Dưa hấu\r\nDưa hấu Dưa hấuDưa hấu Dưa hấu', 50000, 0, 'nước ngọt, khăn lạnh', 'dua_hau.jpg', '2013-12-30', 'đĩa', 0),
(29, 2, 'Súp ngô cua', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua Súp ngô cua', 30000, 0, 'nước ngọt, khăn lạnh', 'sup_ngo_cua.jpg', '2013-12-30', 'đĩa', 0),
(30, 2, 'Salad Phù Đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng Salad Phù Đổng', 120000, 0, 'nước ngọt, khăn lạnh', 'salat.jpg', '2013-12-30', 'đĩa', 0),
(31, 2, 'Tôm sú rang muối tiêu', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu\r\nTôm sú rang muối tiêu', 650000, 0, 'nước ngọt, khăn lạnh', 'tom_su_rang_muoi.jpg', '2013-12-30', 'đĩa', 1),
(32, 2, 'Gà nướng Phù Đổng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng\r\nGà nướng Phù Đổng', 280000, 0, 'nước ngọt, khăn lạnh', 'ga_nuong_pd.jpg', '2013-12-30', 'đĩa', 0),
(33, 2, 'Cua bấy chiên bơ', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ\r\nCua bấy chiên bơ', 70000, 0, 'nước ngọt, khăn lạnh', 'cua_bay_chien_bo.jpg', '2013-12-30', 'đĩa', 1),
(34, 2, 'Bò lúc lắc khoai tây', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây\r\nBò lúc lắc khoai tây', 150000, 0, 'nước ngọt, khăn lạnh', 'bo_luc_lac_khoai_tay.jpg', '2013-12-30', 'đĩa', 0),
(35, 2, 'Hoa lơ xanh xào tỏi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Hoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi\r\nHoa lơ xanh xào tỏi', 70000, 0, 'nước ngọt, khăn lạnh', 'bong_cai_xanh.png', '2013-12-30', 'đĩa', 1),
(36, 2, 'Canh mọc tôm cua', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh mọc tôm cua\r\nCanh mọc tôm cuaCanh mọc tôm cua', 32000, 0, 'nước ngọt, khăn lạnh', 'canh_moc_tom_cua.jpg', '2013-12-30', 'đĩa', 0),
(37, 2, 'Cơm chiên Hạnh Phúc', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc\r\nCơm chiên Hạnh Phúc', 60000, 0, 'nước ngọt, khăn lạnh', 'com_hanh_phuc.jpg', '2013-12-30', 'đĩa', 0),
(38, 2, 'Bánh trưng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bánh trưng Bánh trưng\r\nBánh trưng Bánh trưng Bánh trưng\r\nBánh trưng Bánh trưng\r\nBánh trưng Bánh trưng Bánh trưng', 60000, 0, 'nước ngọt, khăn lạnh', 'banh_chung.jpg', '2013-12-30', 'đĩa', 0),
(39, 2, 'Kem Caramen', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Kem Caramen Kem Caramen Kem Caramen\r\nKem Caramen Kem Caramen Kem Caramen\r\nKem Caramen Kem Caramen Kem Caramen\r\nKem Caramen Kem Caramen Kem Caramen', 12000, 0, 'nước ngọt, khăn lạnh', 'kem-caramen.jpg', '2013-12-30', 'đĩa', 0),
(40, 2, 'Súp Hải sản', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Súp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản', 50000, 0, 'nước ngọt, khăn lạnh', 'sup_hai_san.jpg', '2013-12-30', 'đĩa', 0),
(41, 2, 'Súp Hải sản', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Súp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản\r\nSúp Hải sản Súp Hải sản Súp Hải sản', 50000, 0, 'nước ngọt, khăn lạnh', 'sup_hai_san.jpg', '2013-12-30', 'đĩa', 0),
(42, 2, 'Salad Cá Ngừ', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Salad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ\r\nSalad Cá Ngừ Salad Cá Ngừ', 98000, 0, 'nước ngọt, khăn lạnh', 'salad_ca_ngu.jpg', '2013-12-30', 'đĩa', 0),
(43, 2, 'Tôm sú hấp nước dừa', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Tôm sú hấp nước dừa\r\nTôm sú hấp nước dừa\r\nTôm sú hấp nước dừa\r\nTôm sú hấp nước dừa', 650000, 0, 'nước ngọt, khăn lạnh', 'tom_su_hap_nuoc_dua.jpg', '2013-12-30', 'đĩa', 0),
(44, 2, 'Gà hấp lá chanh', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Gà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh\r\nGà hấp lá chanh', 320000, 0, 'nước ngọt, khăn lạnh', 'ga_hap_la_canh.jpg', '2013-12-30', 'đĩa', 0),
(45, 2, 'Cá tầm nướng', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng\r\nCá tầm nướng Cá tầm nướng', 320000, 0, 'nước ngọt, khăn lạnh', 'ca_tam_nuong.jpg', '2013-12-30', 'đĩa', 0),
(46, 2, 'Bò Úc bít tết', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết', 220000, 0, 'nước ngọt, khăn lạnh', 'bo_uc_bit_tet.jpg', '2013-12-30', 'đĩa', 0),
(47, 2, 'Bò Úc bít tết', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Bò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết\r\nBò Úc bít tết Bò Úc bít tết Bò Úc bít tết', 220000, 0, 'nước ngọt, khăn lạnh', 'bo_uc_bit_tet.jpg', '2013-12-30', 'đĩa', 0),
(48, 4, 'Rau cải chíp xào thịt hộp', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Rau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp\r\nRau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp Rau cải chíp xào thịt hộp', 80000, 0, 'nước ngọt, khăn lạnh', 'rau_cai_chip_vao_thit_hop.jpg', '2013-12-30', 'đĩa', 0),
(49, 5, 'Canh gà nấm tươi', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Canh gà nấm tươi Canh gà nấm tươi Canh gà nấm tươi\r\nCanh gà nấm tươi Canh gà nấm tươi Canh gà nấm tươi', 70000, 0, 'nước ngọt, khăn lạnh', 'canh_ga_nam_tuoi.jpg', '2013-12-30', 'đĩa', 0),
(50, 6, 'Cơm rang Hải sản', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Cơm rang Hải sản Cơm rang Hải sản Cơm rang Hải sản\r\nCơm rang Hải sản Cơm rang Hải sản Cơm rang Hải sản', 80000, 0, 'nước ngọt, khăn lạnh', 'com_rang_hai_san.jpg', '2013-12-30', 'đĩa', 0),
(51, 6, 'Xôi lạp sườn', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Xôi lạp sườn Xôi lạp sườn Xôi lạp sườn\r\nXôi lạp sườn Xôi lạp sườn Xôi lạp sườn\r\nXôi lạp sườn Xôi lạp sườn Xôi lạp sườn', 60000, 0, 'nước ngọt, khăn lạnh', 'xoi_lap_suon.jpg', '2013-12-30', 'đĩa', 0),
(52, 6, 'Hoa quả thập cẩm', 'Nguyên liệu: 3 quả dưa chuột, 3 quả cà chua, 1/2 quả dứa, xà lách xoăn, hành tây, tỏi, đường, dấm, ớt...', 'Hoa quả thập cẩm Hoa quả thập cẩm Hoa quả thập cẩm\r\nHoa quả thập cẩm Hoa quả thập cẩm Hoa quả thập cẩm', 65000, 0, 'nước ngọt, khăn lạnh', 'hoa_qua_thap_cam.jpg', '2013-12-30', 'đĩa', 0),
(53, 4, 'Salat Tôm trái thơm', 'Tôm để làm salad nên chọn tôm tươi, thích nhất vẫn là loại tôm đang bơi lội tung tăng khi ra chợ', 'Nguyên liệu:\r\n\r\n* Nước trộn:\r\n\r\n- 80ml dấm gạo\r\n\r\n- 60ml xì dầu\r\n\r\n- 2 tbs mật ong\r\n\r\n- 1 tsp dầu vừng\r\n\r\n- 1 – 2 tsp gừng băm nhỏ\r\n\r\n- 4, 5 tép tỏi, băm nhỏ', 150000, 0, 'nước uống, khen lạnh', 'salad_tom_thai_thom.jpg', '2013-12-31', 'đĩa', 1),
(54, 4, 'Bào Ngư xào song nấm', 'Dùng nóng với cơm và chấm kèm nước tương. ', 'Nguyên liệu- 1 hộp bầu ngư - 10 tai nấm đông cô - 1 hủ hay 1 hộp măng tây - củ hành,- muối ,tiêu, bột bouillons de volaille ( hoặc bột ngọt ),- 1 muỗng súp dầu mè,- 1 muỗng súp dầu hào.- Dầu ăn- 1 muổng súp bột maïzenna - Chút ngò , hành lá ', 300000, 0, 'nước uống, khen lạnh', 'nam bao ngu xao toi.jpg', '2013-12-31', 'đĩa', 1),
(55, 4, 'Bào Ngư sốt dầu hào nguyên con', 'Đây là một món ăn ngon và bổ dưỡng,chế biến món ăn tốn khá nhiều thời gian cho khâu sơ chế và khâu nấu nướng,dưới đây là cách chế biến món bào ngư sốt dầu hào. ', 'Nguyên liệu:\r\n\r\n    Bào ngư 4 con\r\n    gà mái 1 con\r\n    thịt nạc 300g\r\n    sò điệp khô 3 con\r\n    Hành lá 1 tép\r\n    Nước dùng gà\r\n    jambon Kim Hoa 50g\r\n    dầu hào\r\n    dầu mè\r\n    bột năng\r\n    một miếng phên tre nếu không có thì dùng mấy chiếc xiên bằng tre', 250000, 0, 'nước uống, khen lạnh', 'bao_ngu_sot_dau_hao.jpg', '2013-12-31', 'đĩa', 1),
(56, 4, 'Bào Ngư om cải xanh', 'Nguyên liệu: 500g bào ngư Úc 300g rau cải xanh Nước xương gà, hành khô, gừng, mắm, muối, mì chính. ', 'YÊU CẦU THÀNH PHẨM:\r\n\r\nThơm ngon , nước trong mà vẫn ngọt đặc trưng. Có thể cho thêm nấm hương để tăng thêm độ hấp dẫn. Trang trí thêm hoa cà rốt cho bắt mắt.\r\n\r\nMón này dùng làm món khai vị (thay súp). ', 180000, 0, 'nước uống, khen lạnh', 'bao_ngu_om_cai_xanh.jpg', '2013-12-31', 'đĩa', 1),
(57, 4, 'Bào Ngư sốt nấm', 'Bắc nồi lên bếp, cho mỡ gà vào thắng lấy nước. ', 'Nguyên liệu:\r\n- 500g nấm hương\r\n- 2 chai nước bào ngư\r\n- 100g bông cải xanh\r\n- 300g nước dùng gà\r\n- 50g dầu hàu\r\n- 150g mỡ gà\r\n- 5g muối\r\n- 50g gừng, hành tây', 190000, 0, 'nước uống, khen lạnh', 'bao_ngu_sot_nam.jpg', '2013-12-31', 'đĩa', 1),
(58, 4, 'Gỏi mướp đắng ruốc', 'Mướp đắng ướp đá ruốc không chỉ là món ăn đơn giản, ngon miệng mà còn rất tốt cho sức khỏe. ', 'Nguyên liệu\r\n\r\nMướp đắng: 2 quả, ruốc thịt heo: 50g, đá bào: 500g, nilon bọc đồ ăn, hoa cà rốt trang trí.', 12000, 0, 'nước uống, khen lạnh', 'goi-kho-qua-muop-dang.jpg', '2013-12-31', 'đĩa', 1),
(59, 4, 'Nộm bò rau muống', 'Món này ăn rau muống giòn cực như ăn rau sống ý. Mùa hè ăn thế này thấy mát mát và mát mắt nữa vì đủ màu, xanh, đỏ, nâu, trắng. Thịt bò cũng chua chua ngọt ngọt. ', 'Nguyên liệu:\r\n\r\nRau muống: sơ mới ½ mớ\r\nGiá đỗ: 1 ít thôi\r\nCà rốt: thái mỏng dài bằng giá đỗ.\r\nThịt thăn bò, dứa ½ quả\r\nLạc rang giã dập\r\nMuối, cốt chanh, đường, ớt xay.', 80000, 0, 'nước uống, khen lạnh', 'nom_bo_rau_muong.jpg', '2013-12-31', 'đĩa', 1),
(60, 4, 'Nộm gà hoa chuối', 'Nộm gà hoa chuối làm không quá cầu kỳ nhưng để để món ăn có được nhiều hương vị phong phú, bạn cần chuẩn bị nhiều loại nguyên liệu khác nhau. ', 'Nguyên liệu: Thịt gà (lườn): 150 g, cà rốt bào sợi: một củ, hoa chuối: 300 g, chanh: một quả, đường: 3 thìa canh, giấm: 3 thìa canh, muối: 2 thìa cà phê, mắm: 2 thìa canh, lá chanh: 5 lá, hành tây: một củ, rau răm, tỏi, ớt, lạc, hành, tiêu, rau mùi, thơm, xà lách, cà chua.', 50000, 0, 'nước uống, khen lạnh', 'nom_ga_rau_chuoi.jpg', '2013-12-31', 'đĩa', 1),
(61, 6, 'Xôi gà', 'Nộm gà hoa chuối làm không quá cầu kỳ nhưng để để món ăn có được nhiều hương vị phong phú, bạn cần chuẩn bị nhiều loại nguyên liệu khác nhau. ', 'Nguyên liệu: Thịt gà (lườn): 150 g, cà rốt bào sợi: một củ, hoa chuối: 300 g, chanh: một quả, đường: 3 thìa canh, giấm: 3 thìa canh, muối: 2 thìa cà phê, mắm: 2 thìa canh, lá chanh: 5 lá, hành tây: một củ, rau răm, tỏi, ớt, lạc, hành, tiêu, rau mùi, thơm, xà lách, cà chua.', 25000, 0, 'nước ngọt, khăn lạnh', 'xoi_ga.jpg', '2014-01-03', 'đĩa', 1),
(62, 1, 'ốc bươu kho gừng ', 'Món ốc đậm đà thấm vị, thịt giòn ngọt, thơm và ấm vị gừng. Mùa mưa đang đến, ngồi bên mâm cơm gia đình với món Ốc bươu kho gừng thơm lừng sẽ giúp không khí cả gia đình bạn ấm cúng lắm đó.', 'Để chế biến món ăn này, chúng ta cần các nguyên liệu sau đây:\r\n- Ốc bươu bỏ phần ốc bùn phía dưới, xát thịt ốc với ít muối và ít giấm rửa sạch nhớt, để ráo. Ướp với 1m bột ngọt AJI-NO-MOTO®, 1M nước mắm, 1m giấm gạo lên men LISA, 2M hành tỏi băm, gừng sợi và ớt hiểm.\r\n- Gừng thái chỉ. Ớt hiểm đập dập.\r\nCách chế biến\r\n- Dùng tộ đất cho 1M dầu, 1M đường thắng caramel, thêm 1M dầu điều, cho ốc bươu vào xào săn, kho nhỏ lửa đến khi ốc vừa chín, nước kho cạn sệt.\r\nThưởng thức\r\n- Bày ra đĩa, dùng khi ', 50000, 0, '0', 'oc-buou-kho-gung.jpg', '2014-04-21', 'món', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mon_an`
--
ALTER TABLE `mon_an`
  ADD PRIMARY KEY (`ma_mon`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mon_an`
--
ALTER TABLE `mon_an`
  MODIFY `ma_mon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mon_an`
--
ALTER TABLE `mon_an`
  ADD CONSTRAINT `FK_MON_LOAI` FOREIGN KEY (`ma_loai`) REFERENCES `loai_mon_an` (`ma_loai`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
