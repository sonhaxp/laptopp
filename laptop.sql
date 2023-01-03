-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 04, 2023 lúc 12:47 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articlecategories`
--

CREATE TABLE `articlecategories` (
  `ArticleCategoriesId` int(11) NOT NULL,
  `CategoryName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategorySort` int(11) NOT NULL,
  `Status` bit(1) NOT NULL,
  `ArticleCategoriesParentId` int(11) DEFAULT NULL,
  `Image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articlecategories`
--

INSERT INTO `articlecategories` (`ArticleCategoriesId`, `CategoryName`, `Url`, `CategorySort`, `Status`, `ArticleCategoriesParentId`, `Image`) VALUES
(1, 'Tin khuyến mãi', 'tin-tuc/tin-khuyen-mai', 1, b'1', NULL, NULL),
(2, 'Thông tin cửa hàng', 'tin-tuc/thong-tin-cua-hang', 2, b'1', NULL, NULL),
(3, 'Tin tức công nghệ', 'tin-tuc/tin-tức-cong-nghe', 3, b'1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `ArticlesId` int(11) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Subject` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreateDate` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `ArticleCategoryId` int(11) NOT NULL,
  `Url` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TitleMeta` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionMeta` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`ArticlesId`, `UserId`, `Subject`, `Description`, `Body`, `Image`, `CreateDate`, `Status`, `ArticleCategoryId`, `Url`, `TitleMeta`, `DescriptionMeta`) VALUES
(1, 1, 'Giá sốc cuối tuần, TS Laptop giảm giá đến 50% cho nhiều sản phẩm công nghệ', 'Từ ngày 04/11 đến ngày 06/11, TS Laptop tặng ưu đãi đến 50% cho nhiều sản phẩm công nghệ và sản phẩm gia dụng.', '<p style=\"text-align: justify;\">Mở đầu cho chương trình ưu đãi, sản phẩm<a href=\"https://fptshop.com.vn/apple\" target=\"_blank\"> Apple chính hãng </a>được giảm giá đến 5.000.000 đồng, bạn không nên bỏ qua iPhone 13 128GB giảm 5.500.000 đồng còn 19.490.000 đồng, iPhone 11 64GB giảm 3.500.000 đồng còn 11.499.000 đồng, MacBook Air 13\" 2020 M1 256GB giảm 3.000.000 đồng còn 23.999.000 đồng. Bên cạnh đó các sản phẩm như: Tai nghe AirPods 2 hộp sạc dây, iPad Gen 9 2021 10.2 inch WiFi 64GB, Apple Watch Series 7 GPS 41mm viền nhôm dây cao su cũng đang được bán với giá cực kì hấp dẫn tại FPT Shop.&nbsp;</p><p style=\"text-align: justify;\">Với dịp ưu đãi này, khách hàng của FPT Shop có cơ hội sở hữu các sản phẩm điện thoại thông minh thời thượng với giá giảm lên đến 35%. Đặc biệt, có thể kể đến Samsung Galaxy S22 Bora Purple giảm giá \'sâu\' đến 8.000.000 đồng, vậy chỉ cần 13.990.000 đồng, khách hàng đã có thể sở hữu ngay chiếc smartphone thời thượng này. Ngoài ra, Samsung Galaxy A53 5G 256GB giảm giá chỉ còn 8.490.000 đồng, ​​Samsung Galaxy A13 giảm còn 4.090.000 đồng. Các dòng sản phẩm của OPPO và Xiaomi cũng được bán với giá ưu đãi như: OPPO Reno6 5G giảm còn 9.990.000 đồng, Xiaomi 11T Pro 12GB-256GB giảm 23% còn 11.490.000 đồng.&nbsp;&nbsp;</p><p style=\"text-align:center\"><img alt=\"\" height=\"533\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/151310/Originals/HS-T11-TUAN1-CHUNG-THUMB.jpg\" width=\"800\"></p><p style=\"text-align: center;\"><em>Từ ngày 04/11 - 06/11, FPT Shop giảm đến 50% nhiều sản phẩm công nghệ và gia dụng.</em></p><p style=\"text-align: justify;\">Đối với các sản phẩm <a href=\"https://fptshop.com.vn/may-tinh-bang\">máy tính bảng</a>, FPT Shop cũng có mức ưu đãi cực hấp dẫn đến 30% như: Samsung Galaxy Tab S7 FE giảm 16% chỉ còn 11.690.000 đồng, Samsung Galaxy Tab S6 Lite 2022 giảm 30% còn 6.990.000 đồng, Tab 10 Wifi của Masstel giảm 17% chỉ còn 2.490.000 đồng.&nbsp;</p><p style=\"text-align: justify;\">Hấp dẫn hơn với các sản phẩm <a href=\"https://fptshop.com.vn/smartwatch\">đồng hồ thông minh</a> cũng được giảm giá 30% như: Samsung Galaxy Watch 4 Classic 46mm giảm 33% còn 5.990.000 đồng, Super Hero 4G của Masstel giảm giá 20% còn 1.990.000 đồng, Xiaomi Smart band 7 giảm 16% còn 1.090.000 đồng.</p><p style=\"text-align: justify;\">FPT Shop cũng dành chương trình ưu đãi đến 50% cho nhiều dòng laptop đến từ các thương hiệu nổi tiếng như: Asus, Gigabyte, HP, MSI, Lenovo, Dell. Ngoài ra, khách hàng sẽ được tặng kèm balo khi chọn sở hữu laptop tại FPT Shop, đối với các dòng laptop gaming sẽ được tặng kèm chuột gaming.&nbsp;</p><p style=\"text-align: justify;\">Nổi bật nhất trong chương trình ưu đãi lần này, không thể không kể đến các sản phẩm gia dụng được giảm giá đến 53%. Sản phẩm tiêu biểu lần này như: Nồi chiên không dầu điện tử Kangaroo 12 lít KG12AF1A giảm 50% chỉ còn 3.090.000 đồng, quạt điều hoà Kangaroo KG50F62 giảm 53% chỉ còn 2.090.000 đồng, máy lọc không khí Kangaroo KG30AP1 giảm 47% chỉ còn 1.890.000 đồng và còn rất nhiều sản phẩm gia dụng khác đến từ các thương hiệu như: Sunhouse, Unie, Kalite,...cũng đang giảm mạnh từ 20% - 40%.&nbsp;</p><p style=\"text-align: justify;\">Nếu đang có nhu cầu với một số <a href=\"https://fptshop.com.vn/phu-kien\" target=\"_blank\">phụ kiện và linh kiện PC</a>, khách hàng có thể tham khảo Combo <a href=\"https://fptshop.com.vn/phu-kien/loa\">Loa Bluetooth</a> Karaoke Soundmax M22 + Mic không dây giảm 50% chỉ còn 1.845.000 đồng, tai nghe Bluetooth nhét tai Aukey EP-M1s màu Trắng giảm 50% chỉ còn 745.000 đồng. Ngoài ra, còn rất nhiều sản phẩm phụ kiện và linh kiện PC khác cũng đang được giảm giá tại FPT Shop.&nbsp;</p><p style=\"text-align: justify;\"><em>Sản phẩm mua tại <a href=\"https://fptshop.com.vn\" target=\"_blank\">FPT Shop</a> là hàng chính hãng, khách hàng có thể chọn mua trực tiếp tại cửa hàng, mua online hoặc gọi hotline 1800 6601 để được tư vấn, mua hàng nhanh.</em></p><p>&nbsp;</p>\n</div>\n<div class=\"social-network__action\">\n<div class=\"post-like\">\n<div class=\"fb-like\" data-href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/gia-soc-cuoi-tuan-fpt-shop-giam-gia-den-50-cho-nhieu-san-pham-cong-nghe-151312\" data-width=\"\" data-layout=\"button_count\" data-action=\"like\" data-size=\"large\" data-share=\"false\"></div>\n</div>\n</div>\n', 'images/blog/638030952911660662_hs-t11-tuan1-chung-thumb.jpg', '2022-11-04 15:14:25', 1, 1, 'tin-tuc/tin-khuyen-mai/gia-soc-cuoi-tuan-ts-shop-giam-gia-den-50-cho-nhieu-san-pham-cong-nghe-151312', NULL, NULL),
(2, 1, 'Laptop Lenovo giảm đến 50% khi mua tại TS Shop', 'Từ ngày 08 - 17/11/2022, FPT Shop đồng loạt giảm sốc đến 50% cho laptop Lenovo và dành tặng thêm ưu đãi cho các bạn học sinh - sinh viên 1 năm bảo hành, trả góp 0% lãi suất.', '<p><span style=\"font-size:14px;\"><strong>Tuần lễ Lenovo đang diễn ra tại FPT Shop từ ng&agrave;y 08 - 17/11, đ&acirc;y l&agrave; cơ hội để bạn sở hữu&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/lenovo\">laptop Lenovo</a>&nbsp;với gi&aacute; giảm đến 50%. Đối với những ai đang băn khoăn về t&agrave;i ch&iacute;nh, FPT Shop hỗ trợ bạn trả g&oacute;p 0% l&atilde;i suất với thủ tục v&ocirc; c&ugrave;ng đơn giản.&nbsp;</strong></span></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/151288/Originals/Laptop-Gaming-T10-%20(18).jpg\" style=\"width: 800px; height: 533px;\" /></strong></p>\r\n\r\n<p style=\"text-align: center;\"><em>Từ ng&agrave;y 8 - 17/11, FPT Shop giảm đến 50% cho kh&aacute;ch h&agrave;ng mua laptop Lenovo.&nbsp;</em></p>\r\n\r\n<p><span style=\"font-size:14px;\">Đặc biệt, từ nay đến ng&agrave;y 31/12/2022, FPT Shop d&agrave;nh tặng những ưu đ&atilde;i hấp dẫn nhất đến tất cả c&aacute;c bạn học sinh, t&acirc;n sinh vi&ecirc;n, sinh vi&ecirc;n khi chọn mua&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay\">laptop</a>. Cụ thể, FPT Shop tặng ngay đặc quyền bảo h&agrave;nh đến 3 năm.&nbsp;Ngo&agrave;i thời gian bảo h&agrave;nh ch&iacute;nh h&atilde;ng từ 1 - 2 năm, FPT Shop sẽ tặng th&ecirc;m 1 năm bảo h&agrave;nh nữa, n&acirc;ng tổng thời gian bảo h&agrave;nh của m&aacute;y l&ecirc;n đến 3 năm. Nhờ đ&oacute;, c&aacute;c bạn sẽ y&ecirc;n t&acirc;m hơn khi sử dụng sản phẩm cũng như tiết kiệm được một phần chi ph&iacute; sửa chữa nếu chẳng may sản phẩm gặp sự cố.</span></p>\r\n\r\n<p><span style=\"font-size:14px;\">Ngo&agrave;i ra, kh&aacute;ch h&agrave;ng mua laptop tại FPT Shop c&ograve;n tặng th&ecirc;m nhiều qu&agrave; tặng thiết thực như: giảm th&ecirc;m 200.000 đồng khi mua&nbsp;<a href=\"https://fptshop.com.vn/may-in?thuong-hieu=brother\">m&aacute;y in Brother</a>&nbsp;khi mua k&egrave;m laptop; tặng k&egrave;m balo laptop v&agrave; qu&agrave; tặng gaming trị gi&aacute; dến 1.500.000 đồng.&nbsp;Hoặc kh&aacute;ch h&agrave;ng cũng c&oacute; thể chọn giảm đến 300.000 đồng khi thanh to&aacute;n 100% đơn h&agrave;ng qu&agrave; VNPAY-QR.&nbsp;</span></p>', 'storage/images/article/638034349464404386_lenovo-website.jpg', '2022-11-08 20:38:43', 1, 1, 'tin-tuc/tin-khuyen-mai/laptop-lenovo-giam-den-50-khi-mua-tai-fpt-shop-151288', NULL, NULL),
(3, 1, 'Độc nhất 11/11, FPT Shop giảm đến ‘nửa giá’ cho nhiều sản phẩm', 'Duy nhất hôm nay 11/11/2022, khách hàng sẽ nhận ưu đãi giảm giá lên đến 50% cùng nhiều phần quà hấp dẫn khi mua sắm các sản phẩm công nghệ và gia dụng tại FPT Shop.', '<p>Trong khu&ocirc;n khổ chương tr&igrave;nh &ldquo;Si&ecirc;u hội mua sắm 11/11&quot;, c&aacute;c sản phẩm&nbsp;<a href=\"https://fptshop.com.vn/ctkm/sieu-sale/apple\" target=\"_blank\">Apple</a>&nbsp;ch&iacute;nh h&atilde;ng được giảm đến 4.000.000 đồng, ti&ecirc;u biểu như:&nbsp;iPhone 14 128GB giảm 4.000.000 đồng c&ograve;n 20.990.000 đồng, MacBook Air 13&quot; 2020 M1 256GB giảm 4.000.000 đồng c&ograve;n 22.999.000 đồng, Apple Watch Series 7 GPS 41mm viền nh&ocirc;m d&acirc;y cao su giảm 3.200.000 đồng c&ograve;n 8.790.000 đồng, iPad Gen 9 2021 10.2 inch WiFi 64GB giảm 2.000.000 c&ograve;n 7.990.000 đồng,&nbsp; tai nghe AirPods 2 hộp sạc d&acirc;y giảm 1.100.000 đồng c&ograve;n 2.899.000 đồng.</p>\r\n\r\n<p>Cũng trong dịp n&agrave;y,&nbsp;<a href=\"https://fptshop.com.vn/ctkm/sieu-sale/dien-thoai\" target=\"_blank\">điện thoại th&ocirc;ng minh</a>&nbsp;tại FPT Shop giảm gi&aacute; s&acirc;u với nhiều d&ograve;ng sản phẩm, đơn cử l&agrave;:&nbsp;Samsung Galaxy S22 Bora giảm 9.000.000 đồng c&ograve;n 12.990.000 đồng, Samsung Galaxy A53 5G 256GB giảm 2.500.000 đồng c&ograve;n 8.490.000 đồng, Redmi 10A 2GB-32GB giảm 600.000 đồng c&ograve;n 2.290.000 đồng, Nokia G21 6GB-128GB giảm 800.000 đồng c&ograve;n 3.790.000 đồng, Vivo Y22s 8GB-128GB giảm 300.000 đồng c&ograve;n 5.690.000 đồng.</p>\r\n\r\n<p>Hơn thế nữa, nếu chọn mua c&aacute;c sản phẩm&nbsp;<a href=\"https://fptshop.com.vn/ctkm/sieu-sale/may-tinh-xach-tay\" target=\"_blank\">laptop</a>&nbsp;tại FPT Shop, bạn sẽ nhận ngay ưu đ&atilde;i giảm gi&aacute; l&ecirc;n đến 50% v&agrave; nhận th&ecirc;m nhiều qu&agrave; tặng hấp dẫn kh&aacute;c. Như vậy, chỉ từ 3.990.000 đồng, c&aacute;c bạn học sinh, sinh vi&ecirc;n đ&atilde; c&oacute; thể sở hữu ngay chiếc m&aacute;y t&iacute;nh x&aacute;ch tay đa nhiệm, hỗ trợ đắc lực cho học tập v&agrave; l&agrave;m việc. Được biết, c&aacute;c sản phẩm laptop đang tr&ecirc;n kệ FPT Shop đến từ những thương hiệu h&agrave;ng đầu như: Azus, HP, Gigabyte, Lenovo, MSI v&agrave; lu&ocirc;n c&oacute; gi&aacute; b&aacute;n v&ocirc; c&ugrave;ng ưu đ&atilde;i.</p>\r\n\r\n<p>Nổi bật nhất trong &ldquo;Si&ecirc;u hội mua sắm&quot; lần n&agrave;y phải kể đến c&aacute;c sản phẩm&nbsp;<a href=\"https://fptshop.com.vn/ctkm/sieu-sale/gia-dung\" target=\"_blank\">gia dụng</a>&nbsp;với ưu đ&atilde;i mạnh l&ecirc;n đến 63%. Một số sản phẩm gia dụng c&oacute; gi&aacute; hấp dẫn m&agrave; bạn n&ecirc;n c&acirc;n nhắc sở hữu, gồm c&oacute;:&nbsp;Chảo nh&ocirc;m chống d&iacute;nh đ&aacute;y từ Kangaroo 20cm KG654XS giảm 63% chỉ c&ograve;n 111.000 đồng, nồi chi&ecirc;n kh&ocirc;ng dầu điện tử Kangaroo 5.2 l&iacute;t KG55AF1A giảm 54% chỉ c&ograve;n 1.711.000 đồng, bếp điện từ đ&ocirc;i Kalite KL-3800 giảm 56% chỉ c&ograve;n 5.511.000 đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/151465/Originals/HS-T11-11_11-POST-CHUNG-THUMB.jpg\" style=\"width: 750px; height: 500px;\" /></p>', 'https://images.fpt.shop/unsafe/fit-in/300x200/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/11/16/638042198280967725_oppo-a1-pro-ra-mat-cover.jpeg', '2022-11-11 11:07:15', 1, 1, 'tin-tuc/tin-khuyen-mai/doc-nhat-11-11-fpt-shop-giam-den-nua-gia-cho-nhieu-san-pham-151465', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `AttributeId` int(11) NOT NULL,
  `Name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DisplayName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`AttributeId`, `Name`, `DisplayName`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 'Màu sắc', NULL, 1, '2022-10-28 23:27:40', NULL, 1, NULL),
(2, 'RAM', NULL, 1, '2022-10-28 23:27:40', NULL, 1, NULL),
(3, 'Ổ cứng', NULL, 1, '2022-10-28 23:27:40', NULL, 1, NULL),
(4, 'CPU', NULL, 1, '2022-10-28 23:27:40', NULL, 1, NULL),
(5, 'Đồ họa', NULL, 1, '2022-10-28 23:27:40', NULL, 1, NULL),
(6, 'Role', NULL, 1, '2022-10-28 23:27:40', NULL, 1, NULL),
(7, 'Tình trạng đơn hàng', NULL, 1, '2022-10-29 00:09:11', NULL, 1, NULL),
(8, 'Màn hình', NULL, 1, '2022-10-30 22:48:10', NULL, 1, NULL),
(9, 'Trọng lượng', NULL, 1, '2022-10-30 22:48:51', NULL, 1, NULL),
(10, 'Kích thước', NULL, 1, '2022-10-30 16:49:31', NULL, 1, NULL),
(11, 'Xuất xứ', NULL, 1, '2022-10-30 22:49:49', NULL, 1, NULL),
(12, 'Năm ra mắt', NULL, 1, '2022-10-30 22:50:08', NULL, 1, NULL),
(13, 'Hệ điều hành', NULL, 1, '2022-10-30 22:51:31', NULL, 1, NULL),
(14, 'Camera sau', NULL, 1, '2022-11-08 22:10:28', NULL, 1, NULL),
(15, 'Tình trạng phiếu nhập', NULL, 1, '2022-11-10 06:38:55', NULL, 1, NULL),
(16, 'Camera Selfie', NULL, 1, '2022-11-11 07:54:50', NULL, 1, NULL),
(17, 'Bộ nhớ trong', NULL, 1, '2022-11-11 07:55:09', NULL, 1, NULL),
(18, 'GPU', NULL, 1, '2022-11-11 07:55:26', NULL, 1, NULL),
(19, 'Dung lượng pin', NULL, 1, '2022-11-11 07:55:44', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributecategory`
--

CREATE TABLE `attributecategory` (
  `AttributeCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `AttributeId` int(11) NOT NULL,
  `Note` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributecategory`
--

INSERT INTO `attributecategory` (`AttributeCategoryId`, `CategoryId`, `AttributeId`, `Note`, `Status`) VALUES
(1, 1, 8, NULL, 1),
(2, 1, 4, NULL, 1),
(3, 1, 2, NULL, 1),
(4, 1, 3, NULL, 1),
(5, 1, 5, NULL, 1),
(6, 1, 9, NULL, 1),
(7, 1, 10, NULL, 1),
(8, 1, 11, NULL, 1),
(9, 1, 12, NULL, 1),
(10, 1, 13, NULL, 1),
(11, 2, 1, NULL, 1),
(15, 2, 12, NULL, 1),
(16, 2, 16, NULL, 1),
(17, 2, 17, NULL, 1),
(18, 2, 18, NULL, 1),
(19, 2, 19, NULL, 1),
(20, 2, 8, NULL, 1),
(21, 2, 14, NULL, 1),
(22, 2, 2, NULL, 1),
(23, 2, 11, NULL, 1),
(24, 2, 13, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributedetail`
--

CREATE TABLE `attributedetail` (
  `AttributeDetailId` int(11) NOT NULL,
  `AttributeId` int(11) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `ValueId` bigint(20) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributedetail`
--

INSERT INTO `attributedetail` (`AttributeDetailId`, `AttributeId`, `ProductId`, `ValueId`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(3, 4, 3, 23, 1, '2022-10-30 23:10:47', '2022-11-09 22:15:42', 1, 1),
(4, 2, 3, 5, 1, '2022-10-30 23:10:47', '2022-11-09 22:15:42', 1, 1),
(5, 3, 3, 24, 1, '2022-10-30 23:12:07', '2022-11-09 22:15:42', 1, 1),
(6, 5, 3, 25, 1, '2022-10-30 23:12:07', '2022-11-09 22:15:42', 1, 1),
(8, 9, 3, 27, 1, '2022-10-30 23:12:57', '2022-11-09 22:15:42', 1, 1),
(9, 10, 3, 28, 1, '2022-10-30 23:13:54', '2022-11-09 22:15:42', 1, 1),
(10, 11, 3, 29, 1, '2022-10-30 23:13:54', '2022-11-09 22:15:42', 1, 1),
(11, 12, 3, 30, 1, '2022-10-30 23:14:46', '2022-11-09 22:15:42', 1, 1),
(25, 8, 19, 22, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(26, 4, 19, 23, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(27, 2, 19, 5, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(28, 3, 19, 31, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(29, 5, 19, 25, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(30, 9, 19, 27, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(31, 10, 19, 28, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(32, 11, 19, 29, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(33, 12, 19, 30, 1, '2022-11-09 18:39:45', NULL, 1, NULL),
(34, 13, 3, 26, 1, '2022-11-09 21:40:33', '2022-11-09 22:15:42', 1, 1),
(36, 8, 3, 22, 1, '2022-11-09 22:01:07', '2022-11-09 22:15:42', 1, 1),
(51, 8, 7, 22, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(52, 4, 7, 36, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(53, 2, 7, 5, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(54, 3, 7, 31, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(55, 5, 7, 25, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(56, 9, 7, 27, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(57, 10, 7, 28, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(58, 12, 7, 30, 1, '2022-11-10 19:04:01', NULL, 1, NULL),
(59, 8, 13, 22, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(60, 4, 13, 36, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(61, 2, 13, 5, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(62, 3, 13, 31, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(63, 5, 13, 25, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(64, 9, 13, 27, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(65, 10, 13, 28, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(66, 12, 13, 30, 1, '2022-11-10 19:04:44', NULL, 1, NULL),
(67, 8, 6, 22, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(68, 4, 6, 36, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(69, 2, 6, 5, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(70, 3, 6, 31, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(71, 5, 6, 11, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(72, 9, 6, 27, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(73, 10, 6, 28, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(74, 12, 6, 30, 1, '2022-11-10 19:05:35', NULL, 1, NULL),
(75, 8, 11, 22, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(76, 4, 11, 36, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(77, 2, 11, 5, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(78, 3, 11, 24, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(79, 5, 11, 25, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(80, 9, 11, 27, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(81, 10, 11, 28, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(82, 12, 11, 30, 1, '2022-11-10 19:48:44', NULL, 1, NULL),
(83, 8, 12, 22, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(84, 4, 12, 36, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(85, 2, 12, 5, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(86, 3, 12, 31, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(87, 5, 12, 25, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(88, 9, 12, 27, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(89, 10, 12, 28, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(90, 12, 12, 30, 1, '2022-11-10 19:50:51', NULL, 1, NULL),
(91, 1, 23, 3, 1, '2022-11-10 20:14:32', '2022-11-11 08:04:11', 1, 1),
(92, 12, 23, 30, 1, '2022-11-10 20:14:32', '2022-11-11 08:04:11', 1, 1),
(93, 8, 1, 22, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(94, 4, 1, 8, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(95, 2, 1, 5, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(96, 3, 1, 24, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(97, 5, 1, 11, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(98, 9, 1, 27, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(99, 10, 1, 28, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(100, 11, 1, 29, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(101, 12, 1, 30, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(102, 13, 1, 26, 1, '2022-11-10 20:47:57', NULL, 1, NULL),
(103, 2, 23, 38, 1, '2022-11-11 08:01:08', '2022-11-11 08:04:11', 1, 1),
(104, 14, 23, 32, 1, '2022-11-11 08:01:08', '2022-11-11 08:04:11', 1, 1),
(105, 16, 23, 37, 1, '2022-11-11 08:01:08', '2022-11-11 08:04:11', 1, 1),
(106, 17, 23, 39, 1, '2022-11-11 08:01:08', '2022-11-11 08:04:11', 1, 1),
(107, 18, 23, 41, 1, '2022-11-11 08:01:08', '2022-11-11 08:04:11', 1, 1),
(108, 19, 23, 42, 1, '2022-11-11 08:01:08', '2022-11-11 08:04:11', 1, 1),
(109, 8, 23, 44, 1, '2022-11-11 08:03:20', '2022-11-11 08:04:11', 1, 1),
(110, 11, 23, 29, 1, '2022-11-11 08:04:11', NULL, 1, NULL),
(111, 13, 23, 43, 1, '2022-11-11 08:04:11', NULL, 1, NULL),
(112, 1, 24, 1, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(113, 12, 24, 30, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(114, 16, 24, 37, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(115, 17, 24, 39, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(116, 18, 24, 41, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(117, 19, 24, 42, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(118, 8, 24, 44, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(119, 14, 24, 32, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(120, 2, 24, 38, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(121, 11, 24, 29, 1, '2022-11-11 11:11:18', NULL, 1, NULL),
(122, 8, 27, 22, 1, '2022-12-29 14:58:41', NULL, 1, NULL),
(123, 4, 27, 8, 1, '2022-12-29 14:58:41', NULL, 1, NULL),
(124, 2, 27, 4, 1, '2022-12-29 14:58:41', NULL, 1, NULL),
(125, 3, 27, 6, 1, '2022-12-29 14:58:41', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributevalue`
--

CREATE TABLE `attributevalue` (
  `AttributeValueId` bigint(20) NOT NULL,
  `AttributeId` int(11) NOT NULL,
  `Value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributevalue`
--

INSERT INTO `attributevalue` (`AttributeValueId`, `AttributeId`, `Value`, `Status`) VALUES
(1, 1, 'Xanh', 1),
(2, 1, 'Đỏ', 1),
(3, 1, 'Vàng', 1),
(4, 2, '8GB', 1),
(5, 2, '16GB', 1),
(6, 3, '128GB', 1),
(7, 3, '256GB', 1),
(8, 4, 'Intel Core i5 1100H', 1),
(9, 4, 'Intel Core i7 11234H', 1),
(10, 5, 'GTX 2060Ti', 1),
(11, 5, 'GTX 3080Ti', 1),
(12, 6, 'Quản trị viên', 1),
(13, 6, 'Nhân viên', 1),
(14, 6, 'Khách hàng', 1),
(15, 6, 'Nhà cung cấp', 1),
(16, 7, 'Giỏ hàng', 1),
(17, 7, 'Chờ xác nhận', 1),
(18, 7, 'Hóa đơn', 1),
(19, 7, 'Hủy', 1),
(20, 1, 'Xám', 1),
(21, 1, 'Bạc', 1),
(22, 8, '15.6 inch, 2880 x 1620 Pixels, OLED, 120 Hz, 600 nits, OLED', 1),
(23, 4, 'AMD, Ryzen 7, 5800H', 1),
(24, 3, '512 GB', 1),
(25, 5, 'NVIDIA GeForce RTX 3050 4GB; AMD Radeon Graphics', 1),
(26, 13, 'Windows 11 Home', 1),
(27, 9, '1.8 kg', 1),
(28, 10, '359.8 x 234.3 x 1.89 mm', 1),
(29, 11, 'Trung Quốc', 1),
(30, 12, '2022', 1),
(31, 3, '1 TB', 1),
(32, 14, '12.0 MP + 12.0 MP + 12.0 MP', 1),
(33, 15, 'Lập nháp', 1),
(34, 15, 'Hóa đơn nhập', 1),
(35, 15, 'Hủy', 1),
(36, 4, 'Mac M1 Pro', 1),
(37, 16, '12.0 MP', 1),
(38, 2, '6GB', 1),
(39, 17, '128 GB', 1),
(40, 4, 'Apple A15 Bionic', 1),
(41, 18, 'Apple GPU 5 nhân', 1),
(42, 19, '4352 mAh', 1),
(43, 13, 'iOS 15', 1),
(44, 8, '6.7 inch, OLED, Super Retina XDR, 2778 x 1284 Pixels', 1),
(45, 8, '15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, 300 nits, Anti-glare LED-backlit', 1),
(46, 4, 'Intel, Core i5, 11400H', 1),
(47, 2, '16 GB (2 thanh 8 GB), DDR4, 3200 MHz', 1),
(48, 5, 'NVIDIA GeForce RTX 3050 4GB; Intel UHD Graphics', 1),
(49, 9, '2.2 kg', 1),
(50, 10, '361 x 258 x 24.9 mm', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `BrandId` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BrandParentId` int(11) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`BrandId`, `Name`, `BrandParentId`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 'Apple', NULL, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(2, 'Iphone', 1, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(3, 'Macbook', 1, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(4, 'Asus', NULL, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(5, 'Acer', NULL, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(6, 'Hp', NULL, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(7, 'Lenovo', NULL, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(8, 'Dell', NULL, 1, '2022-10-28 15:13:32', NULL, 1, NULL),
(9, 'Xiaomi', NULL, 1, '2022-11-08 21:45:07', NULL, 1, NULL),
(10, 'Gigabyte', NULL, 1, '2022-11-11 08:28:10', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brandcategory`
--

CREATE TABLE `brandcategory` (
  `BrandCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `BrandId` int(11) NOT NULL,
  `Note` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brandcategory`
--

INSERT INTO `brandcategory` (`BrandCategoryId`, `CategoryId`, `BrandId`, `Note`, `Status`) VALUES
(1, 1, 4, NULL, 1),
(2, 1, 3, NULL, 1),
(3, 1, 5, NULL, 1),
(4, 1, 8, NULL, 1),
(5, 1, 6, NULL, 1),
(6, 2, 9, NULL, 1),
(8, 2, 2, NULL, 1),
(9, 1, 10, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryId` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentCategoryId` int(11) DEFAULT NULL,
  `Url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL,
  `Image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryId`, `Name`, `Description`, `ParentCategoryId`, `Url`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`, `Image`) VALUES
(1, 'Laptop', 'Máy tính xách tay', NULL, 'may-tinh-xach-tay', 1, '2022-10-25 17:56:25', NULL, 1, NULL, '/images/icon/icon3.png'),
(2, 'Điện thoại', 'Điện thoại', NULL, 'dien-thoai', 1, '2022-10-27 09:26:20', NULL, 1, NULL, '/images/icon/icon4.png'),
(3, 'Máy tính bảng', NULL, NULL, 'may-tinh-bang', 1, '2022-10-27 09:27:40', NULL, 1, NULL, '/images/icon/icon_tablet.png'),
(4, 'Phụ kiện', NULL, NULL, 'phu-kien', 1, '2022-10-27 09:42:36', NULL, 1, NULL, '/images/icon/icon7.png'),
(5, 'PC & Máy in', NULL, NULL, 'may-tinh-de-ban', 1, '2022-10-27 09:46:16', NULL, 1, NULL, '/images/icon/icon6.png'),
(6, 'Máy ảnh', NULL, NULL, 'may-anh', 1, '2022-10-27 09:47:10', NULL, 1, NULL, '/images/icon/icon2.png'),
(7, 'Phụ kiện di động', NULL, 4, 'phu-kien-di-dong', 1, '2022-10-27 09:48:19', NULL, 1, NULL, NULL),
(8, 'Phụ kiện máy tính', NULL, 4, 'phu-kien-may-tinh', 1, '2022-10-27 09:48:19', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classifygroup`
--

CREATE TABLE `classifygroup` (
  `ClassifyGroupId` bigint(20) NOT NULL,
  `AttributeId` int(11) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `Stt` tinyint(4) DEFAULT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `classifygroup`
--

INSERT INTO `classifygroup` (`ClassifyGroupId`, `AttributeId`, `ProductId`, `Stt`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 1, 6, 1, 1, '2022-10-29 19:53:16', NULL, 1, NULL),
(2, 3, 9, 1, 1, '2022-10-29 19:53:16', NULL, 1, NULL),
(3, 1, 9, 1, 1, '2022-10-29 19:53:16', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classifygroupoption`
--

CREATE TABLE `classifygroupoption` (
  `ClassifyGroupOptionId` bigint(20) NOT NULL,
  `ClassifyGroupId` bigint(20) DEFAULT NULL,
  `ValueId` bigint(20) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `classifygroupoption`
--

INSERT INTO `classifygroupoption` (`ClassifyGroupOptionId`, `ClassifyGroupId`, `ValueId`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 1, 20, 1, '2022-10-29 19:53:52', NULL, 1, NULL),
(2, 1, 21, 1, '2022-10-29 19:53:52', NULL, 1, NULL),
(3, 2, 24, 1, '2022-10-29 19:53:52', NULL, 1, NULL),
(4, 2, 31, 1, '2022-10-29 19:53:52', NULL, 1, NULL),
(5, 3, 20, 1, '2022-10-29 19:53:52', NULL, 1, NULL),
(6, 3, 21, 1, '2022-10-29 19:53:52', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configsite`
--

CREATE TABLE `configsite` (
  `ConfigSiteId` int(11) NOT NULL,
  `Image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Place` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VPDD` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hotline` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configsite`
--

INSERT INTO `configsite` (`ConfigSiteId`, `Image`, `Place`, `VPDD`, `Title`, `Description`, `Hotline`, `Email`, `Name`) VALUES
(1, 'storage/images/logo/logo-TS.jpg', 'Số 3 Cầu Giấy, phường Láng Thượng, quận Đống Đa, Hà Nội', 'Số 3 Cầu Giấy, phường Láng Thượng, quận Đống Đa, Hà Nội', 'Trường Sơn Laptop', 'Được thành lập vào tháng 8/2007, TS Laptop là chuỗi cửa hàng bán lẻ chuyên về các sản phẩm kỹ thuật số như Điện thoại di động, Máy tính bảng, Máy tính xách tay và phụ kiện điện tử ... TS Laptop Shop là trung tâm bán lẻ đầu tiên của Việt Nam được cấp chứng chỉ ISO 9001: 2000 quản lý chất lượng theo tiêu chuẩn quốc tế.\r\n<br>\r\n\r\nTừ ngày 25/8/2015, là đại lý ủy quyền chính thức của Apple tại Việt Nam, TS Laptop chính thức nhập khẩu trực tiếp iPhone và iPad và mở rộng thêm MacBook và Apple watch vào tháng 8/2016. Điều này đồng nghĩa với việc TS Laptop Retail đã nhập khẩu tất cả sản phẩm từ Apple.\r\n<br>\r\n\r\nBên cạnh chuỗi bán lẻ TS Laptop, công ty TS Laptop Retail còn có một chuỗi bán lẻ đạt chuẩn cao cấp nhất của Apple ở cấp độ APR (Apple Premium Reseller) với thương hiệu là F.Studio by TS Laptop, chuyên doanh các sản phẩm Apple chính hãng với dịch vụ chăm sóc khách hàng 6 sao.\r\n<br>\r\n\r\nNhư vậy, TS Laptop Retail đã trở thành công ty duy nhất có chuỗi bán lẻ với đầy đủ mô hình cửa hàng của Apple bao gồm chuỗi bán lẻ mang thương hiệu F.Studio by TS Laptop gồm 2 cấp độ APR (Apple Premium Reseller) và AAR (Apple Authorised Reseller).\r\n<br>\r\n\r\nĐịnh hướng của TS Laptop không chỉ cung cấp cho khách hàng với các sản phẩm chính hãng mới nhất, chất lượng nhất mà còn là nơi để khách hàng trải nghiệm sản phẩm thoải mái dưới sự tư vấn của đội ngũ nhân viên và kỹ thuật được tào tạo bài bản. Điểm khác biệt của TS Laptop Shop còn là các chính sách hậu mãi riêng biệt như Bảo hành Vàng: Bảo hành cho cả trường hợp bị rơi vỡ, vào nước, chính sách 1 đổi 1 trong vòng 30 ngày, ….\r\n<br>\r\n\r\nTính đến tháng 6/2016, TS Laptop đã có hơn 350 cửa hàng trên 63 tỉnh thành trong đó có 60 cửa hàng đã được Apple đưa vào danh sách đại lý Apple ủy quyền toàn cầu và chính thức được hiển thị tại trang http://www.apple.com', '0936822275', 'sonhaxp@gmail.com', 'TS Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `FeedBackId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`FeedBackId`, `UserId`, `Comment`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 1, 'Duyệt đơn hàng chậm', 1, '2022-10-24 23:50:45', NULL, 1, NULL),
(2, 7, 'Phần mềm OK', 1, '2022-11-01 09:05:55', NULL, 7, NULL),
(3, 7, 'Phần mềm tuyệt vời', 1, '2022-11-01 09:07:58', NULL, 7, NULL),
(4, 7, 'Thanh toán nhanh!', 1, '2022-11-01 09:26:38', NULL, 7, NULL),
(5, 11, 'test', 1, '2022-11-11 11:04:53', NULL, 11, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailId` bigint(20) NOT NULL,
  `OrderId` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` bigint(20) NOT NULL,
  `Discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`OrderDetailId`, `OrderId`, `ProductId`, `Quantity`, `Price`, `Discount`) VALUES
(2, 1, 2, 2, 22000000, 12),
(3, 1, 3, 2, 32000000, 14),
(4, 2, 1, 4, 23000000, 10),
(5, 2, 2, 1, 34000000, 14),
(11, 6, 1, 2, 23000000, 15),
(14, 6, 5, 2, 42000000, 14),
(15, 6, 11, 1, 53000000, 5),
(16, 1, 8, 1, 93000000, 5),
(17, 7, 1, 3, 27600000, 15),
(18, 8, 5, 1, 42000000, 14),
(19, 8, 8, 1, 93000000, 5),
(20, 9, 23, 1, 34000000, 10),
(21, 10, 3, 1, 38400000, 16),
(22, 11, 1, 4, 27600000, 15),
(23, 7, 11, 2, 53000000, 5),
(24, 7, 23, 1, 34000000, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `EmployeeId` bigint(20) DEFAULT NULL,
  `DisplayName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Receiver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` bigint(20) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrderId`, `UserId`, `EmployeeId`, `DisplayName`, `Receiver`, `Address`, `PhoneNumber`, `Email`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 4, 2, '', 'Nam', 'HN', '0936822275', 'sonhaxp@gmail.com', 17, '2022-10-29 00:18:59', NULL, 1, NULL),
(2, 4, 1, '', 'Đại', 'HN', '0321321332', 'dai@gmail.com', 18, '2022-10-29 00:19:59', '2022-11-10 06:23:10', 1, 1),
(3, 4, 1, '', 'Nam', 'HN', '0936822275', 'aaap@gmail.com', 19, '2022-10-29 00:20:59', '2022-11-09 23:57:48', 0, 1),
(4, 4, 2, '', 'Nam', 'HN', '0936822275', 'aaap@gmail.com', 18, '2022-10-29 00:21:59', NULL, 0, NULL),
(5, 4, 2, '', 'Nam', 'HN', '0936822275', 'aaap@gmail.com', 16, '2022-10-29 00:22:59', NULL, 0, NULL),
(6, 7, 1, '', 'Trần Văn Đại', 'Xuân Phương, Xuân Trường, Nam Định', '0923112342', 'dai1@gmail.com', 18, '2022-11-04 11:09:28', '2022-11-10 01:57:26', 7, 7),
(7, 7, NULL, '', NULL, NULL, NULL, NULL, 16, '2022-11-08 10:53:59', NULL, 7, NULL),
(8, 11, 2, '', 'Nguyễn Thị Nhung', 'Xuân Phương, Xuân Trường, Nam Định', '0926822275', 'nhung@gmail.com', 18, '2022-11-10 16:04:03', '2022-11-16 22:04:57', 11, 2),
(9, 6, 1, NULL, 'Nguyễn Ngọc Trường Sơn', 'Xuân Phương, Xuân Trường, Nam Định', '0936822275', 'sonhaxp1@gmail.com', 18, '2022-11-11 08:10:13', '2022-11-11 08:14:48', 6, 1),
(10, 11, 1, NULL, 'Nguyễn Thị Nhung', 'bbbbbbb', '0926822275', 'nhung@gmail.com', 18, '2022-11-11 11:03:56', '2022-11-11 11:13:37', 11, 1),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, 16, '2022-11-11 11:39:14', NULL, 11, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductId` bigint(20) NOT NULL,
  `Name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShortName` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  `CategoryId` int(11) NOT NULL,
  `BrandId` int(11) NOT NULL,
  `ProductParentId` bigint(20) DEFAULT NULL,
  `Url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Group1` bigint(20) DEFAULT NULL,
  `Group2` bigint(20) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL,
  `PeriodOfGuarantee` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductId`, `Name`, `ShortName`, `Price`, `Discount`, `CategoryId`, `BrandId`, `ProductParentId`, `Url`, `Description`, `Image`, `Group1`, `Group2`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`, `PeriodOfGuarantee`, `Quantity`) VALUES
(1, 'Laptop Acer Nitro Gaming AN515-57-54MV i5 11400H/8GB/512GB/15.6\"FHD/NVIDIA GeForce RTX 3050 4GB/Win10', 'Laptop Acer Nitro Gaming AN515-57-54MV', 27600000, 15, 1, 5, NULL, 'may-tinh-xach-tay/acer-nitro-gaming-an515-57-54mv-i5-11400h', 'Acer Nitro Gaming AN515-57-54MV là chiếc laptop gaming có mức giá vừa phải nhưng lại sở hữu cấu hình ấn tượng với bộ vi xử lý Intel thế hệ thứ 11 mạnh mẽ và card đồ họa rời RTX 30 series. Diện mạo mới, sức mạnh mới, Nitro 5 sẽ cùng bạn vươn tới những đỉnh cao.', 'images/product/637610884165519217_acer-nitro-gaming-an515-57-den-1.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', '2022-11-10 20:47:57', 1, 1, 12, 27),
(2, 'Laptop Asus TUF Gaming FX506LH-HN188W i5 10300H/8GB/512GB SSD/Nvidia GTX1650 4GB/Win11', 'Laptop Asus TUF Gaming FX506LH-HN188W', 26400000, 12, 1, 4, NULL, 'may-tinh-xach-tay/asus-tuf-gaming-fx506lh-hn188w-i5-10300h', 'Asus TUF Gaming A15 FA506IHRB-HN019W là chiếc laptop chơi game đỉnh mà học tập và làm việc cũng rất tốt nhờ cấu hình không thể chê trong tầm giá. Một chiếc laptop gaming được bán với mức giá văn phòng chắc chắn sẽ rất hấp dẫn, đặc biệt là trong mắt các bạn học sinh, sinh viên.', 'images/product/637788079927538825_asus-tuf-gaming-fx506lh-den-2022-1.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', NULL, 1, NULL, 12, 10),
(3, 'Laptop Asus Vivobook Pro M6500QC-MA005W R7 5800H/16GB/512GB/15.6\"/GeForce RTX 3050 4GB/Win11', 'Laptop Asus Vivobook Pro M6500QC-MA005W', 38400000, 16, 1, 4, NULL, 'may-tinh-xach-tay/asus-vivobook-pro-m6500qc-ma005w-r7-5800h', 'ASUS Vivobook Pro M6500QC-MA005W mang trên mình sức mạnh tối thượng của bộ vi xử lý AMD Ryzen 7 5800H và card đồ họa RTX 3050 chuyên dụng, cho phép bạn thỏa sức sáng tạo, giải trí trên màn hình 15,6 inch 2.8K OLED 120Hz đỉnh cao.', 'images/product/637962427808380328_asus-vivobook-pro-m6500-bac-1.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', '2022-11-09 22:15:42', 1, 1, 12, 11),
(4, 'Laptop Asus Vivobook D515DA-EJ1364W/R3-3250U/4GB/512GB/15.6\" FHD/Win11', 'Laptop Asus Vivobook D515DA-EJ1364W', 11000000, 10, 1, 4, NULL, 'may-tinh-xach-tay/asus-vivobook-d515da-ej1364w-r3-3250u', 'ASUS Vivobook D515DA-EJ1364W sở hữu màn hình lớn 15,6 inch Full HD sắc nét, thiết kế màu bạc thời thượng cùng ổ SSD dung lượng lên tới 512GB trong tầm giá rẻ, cho bạn phương tiện học tập và làm việc hiệu quả.', 'images/product/637503832634786560_asus-vivobook-x515-print-bac-1.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', NULL, 1, NULL, 12, 10),
(5, 'Laptop Asus Vivobook Pro N7600ZE-L2010W i7 12700H/16GB/1TB/16\"4K/GeForce RTX 3050 Ti 4GB/Win 11', 'Laptop Asus Vivobook Pro N7600ZE-L2010W', 42000000, 14, 1, 4, NULL, 'may-tinh-xach-tay/asus-vivobook-pro-n7600ze-l2010w-i7-12700h', 'ASUS Vivobook Pro N7600ZE-L2010W là một cỗ máy mạnh mẽ trong hình hài di động, thích hợp cho những người làm công việc sáng tạo nội dung chuyên nghiệp. Màn hình lớn 16 inch OLED 4K 120Hz tuyệt đẹp kết hợp cấu hình siêu khủng từ CPU Intel Core i7 12700H và GPU RTX 3050 Ti sẽ cùng bạn gặt hái những thành công.', 'images/product/637991810055139591_asus-vivobook-pro-n7600-bac-1.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', NULL, 1, NULL, 12, 14),
(6, 'MacBook Pro 16\" 2021 M1 Max 1TB', 'MacBook Pro 16\" 2021 M1 Max 1TB', 93000000, 5, 1, 3, NULL, 'may-tinh-xach-tay/macbook-pro-16-2021-m1-max', 'MacBook Pro 16 inch 2021 đích thực là một con quái vật về cấu hình với bộ vi xử lý Apple M1 Max mạnh nhất, cho bạn làm việc ở năng suất vượt trội trên màn hình Liquid Retina XDR tuyệt đẹp. Đi cùng với đó là thời lượng pin lên tới 21 giờ, hệ thống âm thanh hình ảnh chuyên nghiệp và tất cả các cổng kết nối bạn cần.', 'images/product/637702682507677814_macbook-pro-16-2021-xam-2.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', '2022-11-10 19:05:35', 1, 1, 12, 16),
(7, 'MacBook Pro 16\" 2021 M1 Max 1TB Xám', 'MacBook Pro 16\" 2021 M1 Max 1TB Xám', 93000000, 5, 1, 3, 6, 'may-tinh-xach-tay/macbook-pro-16-2021-m1-max-xam', 'Macbook', 'images/product/637702682507677814_macbook-pro-16-2021-xam-2.jpg', 1, NULL, 1, '2022-10-29 18:11:52', '2022-11-10 19:04:01', 1, 1, 12, 10),
(8, 'MacBook Pro 16\" 2021 M1 Max 1TB ', 'MacBook Pro 16\" 2021 M1 Max 1TB Bạc', 93000000, 5, 1, 3, 6, 'may-tinh-xach-tay/macbook-pro-16-2021-m1-max-bac', NULL, 'images/product/637702684259410014_macbook-pro-16-2021-bac-2.jpg', 2, NULL, 1, '2022-10-29 18:11:52', NULL, 1, NULL, 12, 9),
(9, 'MacBook Pro 14\" 2021 M1 Pro', 'MacBook Pro 14\" 2021 M1 Pro', 53000000, 5, 1, 3, NULL, 'may-tinh-xach-tay/macbook-pro-14-2021-m1-pro', 'MacBook Pro 2021 14 inch lần đầu tiên xuất hiện, mang đến cho người dùng một siêu phẩm dành cho công việc chuyên nghiệp trong một kích thước nhỏ gọn. Đặc biệt, bộ vi xử lý Apple M1 Pro với sức mạnh không tưởng cho phép bạn làm việc ở hiệu suất cao chưa từng thấy.', 'images/product/637702682507677814_macbook-pro-16-2021-xam-2.jpg', NULL, NULL, 1, '2022-10-28 23:46:15', NULL, 1, NULL, 12, 10),
(10, 'MacBook Pro 14\" 2021 M1 Pro 512GB Xám', 'MacBook Pro 14\" 2021 M1 Pro 512GB Xám', 53000000, 5, 1, 3, 9, 'may-tinh-xach-tay/macbook-pro-14-2021-512gb-m1-pro-xam', 'MacBook Pro 2021 14 inch lần đầu tiên xuất hiện, mang đến cho người dùng một siêu phẩm dành cho công việc chuyên nghiệp trong một kích thước nhỏ gọn. Đặc biệt, bộ vi xử lý Apple M1 Pro với sức mạnh không tưởng cho phép bạn làm việc ở hiệu suất cao chưa từng thấy.', 'images/product/637702682507677814_macbook-pro-16-2021-xam-2.jpg', 3, 5, 1, '2022-10-28 23:46:15', NULL, 1, NULL, 12, 11),
(11, 'MacBook Pro 14\" 2021 M1 Pro 512GB Bạc', 'MacBook Pro 14\" 2021 M1 Pro 512GB Bạc', 53000000, 5, 1, 3, 9, 'may-tinh-xach-tay/macbook-pro-14-2021-512gb-m1-pro-bac', 'MacBook Pro 2021 14 inch lần đầu tiên xuất hiện, mang đến cho người dùng một siêu phẩm dành cho công việc chuyên nghiệp trong một kích thước nhỏ gọn. Đặc biệt, bộ vi xử lý Apple M1 Pro với sức mạnh không tưởng cho phép bạn làm việc ở hiệu suất cao chưa từng thấy.', 'images/product/637702684259410014_macbook-pro-16-2021-bac-2.jpg', 3, 6, 1, '2022-10-28 23:46:15', '2022-11-10 19:48:44', 1, 1, 12, 10),
(12, 'MacBook Pro 14\" 2021 M1 Pro 1TB Xám', 'MacBook Pro 14\" 2021 M1 Pro 1TB Xám', 66000000, 5, 1, 3, 9, 'may-tinh-xach-tay/macbook-pro-14-2021-1tb-m1-pro-xam', 'MacBook Pro 2021 14 inch lần đầu tiên xuất hiện, mang đến cho người dùng một siêu phẩm dành cho công việc chuyên nghiệp trong một kích thước nhỏ gọn. Đặc biệt, bộ vi xử lý Apple M1 Pro với sức mạnh không tưởng cho phép bạn làm việc ở hiệu suất cao chưa từng thấy.', 'images/product/637702682507677814_macbook-pro-16-2021-xam-2.jpg', 4, 5, 1, '2022-10-28 23:46:15', '2022-11-10 19:50:51', 1, 1, 12, 10),
(13, 'MacBook Pro 14\" 2021 M1 Pro 1TB Bạc', 'MacBook Pro 14\" 2021 M1 Pro 1TB Bạc', 66000000, 5, 1, 3, 9, 'may-tinh-xach-tay/macbook-pro-14-2021-1tb-m1-pro-bac', 'MacBook Pro 2021 14 inch lần đầu tiên xuất hiện, mang đến cho người dùng một siêu phẩm dành cho công việc chuyên nghiệp trong một kích thước nhỏ gọn. Đặc biệt, bộ vi xử lý Apple M1 Pro với sức mạnh không tưởng cho phép bạn làm việc ở hiệu suất cao chưa từng thấy.', 'images/product/637702684259410014_macbook-pro-16-2021-bac-2.jpg', 4, 6, 1, '2022-10-28 23:46:15', '2022-11-10 19:04:44', 1, 1, 12, 10),
(19, 'Laptop HP Gaming Victus 16-e0175AX R5 5600H/8GB/512GB/16.1\"FHD/NVIDIA GeForce RTX 3050 Ti 4GB/Win 11', 'Laptop HP Gaming Victus 16-e0175AX', 26500000, 14, 1, 6, NULL, 'may-tinh-xach-tay/hp-gaming-victus-16-e0175ax-r5-5600h-rtx-3050ti', 'Cùng bạn cháy bỏng với đam mê, laptop HP Victus 16-e0175AX mang trên mình màn hình lớn 144Hz siêu mượt cho game thủ cùng hiệu năng trên cả tuyệt vời với sự kết hợp giữa AMD Ryzen 5 5600H và RTX 3050 Ti, đảm bảo chiến tốt mọi tựa game.', 'storage/images/product/637680814128749863_hp-gaming-victus-16-xam-bac-1.jpg', NULL, NULL, 1, '2022-11-09 18:39:45', NULL, 1, NULL, 12, 15),
(23, 'iPhone 13 Pro Max 128GB', 'iPhone 13 Pro Max 128GB', 34000000, 10, 2, 2, NULL, 'dien-thoai/iphone-13-pro-max', 'iPhone 13 Pro Max xứng đáng là một chiếc iPhone lớn nhất, mạnh mẽ nhất và có thời lượng pin dài nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những tác vụ bình thường cho đến các ứng dụng chuyên nghiệp.', 'storage/images/product/637859778843241685_iphone-13-pro-max-vang-1.jpg', NULL, NULL, 1, '2022-11-10 20:14:32', '2022-11-11 08:04:11', 1, 1, 12, 1),
(24, 'Xiaomi Redmi A1 2GB-32GB', 'Xiaomi Redmi A1 2GB-32GB', 2650000, 15, 2, 9, NULL, 'dien-thoai/xiaomi-redmi-a1', 'Redmi A1 tiếp tục là một chiếc điện thoại giá rẻ mang đến trải nghiệm tuyệt vời từ Xiaomi với mặt lưng da sang trọng, màn hình lớn, giao diện Android gốc dễ sử dụng, camera kép và viên pin dung lượng lên tới 5000 mAh.', 'storage/images/product/638001571506654078_xiaomi-redmi-a1-den-5.jpg', NULL, NULL, 1, '2022-11-11 11:11:18', NULL, 1, NULL, 12, 0),
(26, 'ThayDung', 'ThayDung', 26500000, 10, 1, 4, NULL, 'may-tinh-xach-tay/hp-gaming-victus-16-e0175ax-r5-5600h-rtx-3050ti1', 'Cùng bạn cháy bỏng với đam mê, laptop HP Victus 16-e0175AX mang trên mình màn hình lớn 144Hz siêu mượt cho game thủ cùng hiệu năng trên cả tuyệt vời với sự kết hợp giữa AMD Ryzen 5 5600H và RTX 3050 Ti, đảm bảo chiến tốt mọi tựa game.', 'storage/images/product/Screenshot (40).png', NULL, NULL, 1, '2022-12-29 13:38:30', '2022-12-29 13:39:08', 1, 1, 12, 0),
(27, 'Nguyễn Ngọc Trường Sơn', 'Nguyễn Ngọc Trường Sơn', 26500000, 10, 1, 4, NULL, 'may-tinh-xach-tay/hp-gaming-victus-16-e0175ax-r5-5600h-rtx-3050ti2', 'Cùng bạn cháy bỏng với đam mê, laptop HP Victus 16-e0175AX mang trên mình màn hình lớn 144Hz siêu mượt cho game thủ cùng hiệu năng trên cả tuyệt vời với sự kết hợp giữa AMD Ryzen 5 5600H và RTX 3050 Ti, đảm bảo chiến tốt mọi tựa game.', 'storage/images/product/638005617517738074_gigabyte-gaming-g5-ge-i5-12500h-rtx3050-1.jpg', NULL, NULL, 1, '2022-12-29 14:58:41', NULL, 1, NULL, 12, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productdetail`
--

CREATE TABLE `productdetail` (
  `ProductDetailId` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `PurchaseDetailId` bigint(20) DEFAULT NULL,
  `OrderDetailId` bigint(20) DEFAULT NULL,
  `STT` bigint(20) DEFAULT NULL,
  `SerialNumber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PeriodOfGuarantee` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productdetail`
--

INSERT INTO `productdetail` (`ProductDetailId`, `ProductId`, `PurchaseDetailId`, `OrderDetailId`, `STT`, `SerialNumber`, `PeriodOfGuarantee`) VALUES
(1, 1, 5, 11, 1, 'A01001', '2023-11-10 01:57:26'),
(2, 1, 6, 11, 2, 'A01002', '2023-11-10 01:57:26'),
(3, 5, 7, 14, 1, 'A05001', '2023-11-10 01:57:26'),
(4, 5, 5, 14, 2, 'A05002', '2023-11-10 01:57:26'),
(5, 11, 6, 15, 1, 'A11001', '2023-11-10 01:57:26'),
(6, 1, NULL, 4, 3, 'A01004', '2023-11-10 06:23:10'),
(7, 1, NULL, 4, 4, 'A01005', '2023-11-10 06:23:10'),
(8, 1, NULL, 4, 5, 'A01006', '2023-11-10 06:23:10'),
(9, 1, NULL, 4, 6, 'A01007', '2023-11-10 06:23:10'),
(10, 2, NULL, 5, 1, 'A02001', '2023-11-10 06:23:10'),
(11, 1, NULL, NULL, 7, 'A01006', NULL),
(12, 1, NULL, NULL, 8, 'A01007', NULL),
(13, 3, NULL, NULL, 1, 'QWERT123', NULL),
(14, 3, NULL, NULL, 2, 'QWERT124', NULL),
(15, 2, NULL, NULL, 2, 'A020213', NULL),
(16, 1, NULL, NULL, 9, 'A1110202201', NULL),
(17, 1, NULL, NULL, 10, 'A1110202202', NULL),
(18, 1, NULL, NULL, 11, 'A1110202203', NULL),
(19, 1, NULL, NULL, 12, 'A1110202204', NULL),
(20, 1, NULL, NULL, 13, 'A1110202205', NULL),
(21, 5, NULL, NULL, 3, 'B1011202201', NULL),
(22, 5, NULL, NULL, 4, 'B1011202202', NULL),
(23, 5, NULL, NULL, 5, 'B1011202203', NULL),
(24, 5, NULL, NULL, 6, 'B1011202204', NULL),
(25, 5, NULL, NULL, 7, 'B1011202205', NULL),
(26, 19, NULL, NULL, 1, 'C1011202201', NULL),
(27, 19, NULL, NULL, 2, 'C1011202202', NULL),
(28, 19, NULL, NULL, 3, 'C1011202203', NULL),
(29, 19, NULL, NULL, 4, 'C1011202204', NULL),
(30, 19, NULL, NULL, 5, 'C1011202205', NULL),
(31, 23, NULL, NULL, 1, 'D1011202201', NULL),
(32, 23, NULL, NULL, 2, 'D1011202202', NULL),
(33, 23, NULL, NULL, 3, 'D1011202203', NULL),
(34, 23, NULL, NULL, 4, 'D1011202204', NULL),
(35, 23, NULL, NULL, 5, 'D1011202205', NULL),
(36, 23, NULL, 20, 6, 'IP1111202201', '2023-11-11 08:14:48'),
(37, 3, NULL, 21, 3, 'A12345', '2023-11-11 11:13:37'),
(38, 1, NULL, NULL, 14, 'A010012312', NULL),
(39, 5, NULL, 18, 8, 'A05001123213', '2023-11-16 22:04:57'),
(40, 8, NULL, 19, 1, 'sdasd123', '2023-11-16 22:04:57'),
(41, 1, 13, NULL, 15, 'TEST27122002113', NULL),
(48, 1, 20, NULL, 16, 'TEST1234321321', NULL),
(51, 6, 23, NULL, 1, 'SAD1231231', NULL),
(52, 6, 23, NULL, 2, 'SAD1231232', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchase`
--

CREATE TABLE `purchase` (
  `PurchaseId` bigint(20) NOT NULL,
  `SupplierId` bigint(20) DEFAULT NULL,
  `EmployeeId` bigint(20) NOT NULL,
  `DisplayName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Deliver` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` bigint(20) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `purchase`
--

INSERT INTO `purchase` (`PurchaseId`, `SupplierId`, `EmployeeId`, `DisplayName`, `Deliver`, `Address`, `PhoneNumber`, `Email`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(12, 5, 1, NULL, 'caoanh', 'Hà Nội', '0936822275', 'caoanh@gmail.com', 34, '2022-11-10 14:31:57', NULL, 1, NULL),
(13, 5, 1, NULL, 'caoanh', 'Hà Nội', '0936822275', 'caoanh@gmail.com', 34, '2022-11-10 14:42:04', NULL, 1, NULL),
(16, 10, 1, NULL, 'Xiaomi', 'số 3 Cầu Giấy', '0923421123', 'xiaomi@gmail.com', 34, '2022-11-10 23:47:12', NULL, 1, NULL),
(17, 5, 1, NULL, 'caoanh', 'Hà Nội', '0936822275', 'caoanh@gmail.com', 34, '2022-11-16 21:47:06', NULL, 1, NULL),
(18, 5, 1, NULL, 'caoanh', 'Hà Nội', '0936822275', 'caoanh@gmail.com', 19, '2022-12-27 13:13:53', '2022-12-27 13:17:17', 1, 1),
(19, 5, 1, NULL, 'caoanh', 'Hà Nội', '0936822275', 'caoanh@gmail.com', 33, '2022-12-27 00:00:00', '2022-12-28 09:39:43', 1, 1),
(20, 5, 1, NULL, 'caoanh', 'Hà Nội', '0936822275', 'caoanh@gmail.com', 33, '2022-12-18 00:00:00', '2022-12-28 10:26:42', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `purchasedetail`
--

CREATE TABLE `purchasedetail` (
  `PurchaseDetailId` bigint(20) NOT NULL,
  `PurchaseId` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `purchasedetail`
--

INSERT INTO `purchasedetail` (`PurchaseDetailId`, `PurchaseId`, `ProductId`, `Quantity`, `Price`) VALUES
(5, 12, 1, 2, 23000000),
(6, 13, 3, 2, 32000000),
(7, 13, 2, 1, 22000000),
(8, 16, 1, 5, 27600000),
(9, 16, 5, 5, 42000000),
(10, 16, 19, 5, 26500000),
(11, 16, 23, 5, 34000000),
(12, 17, 1, 1, 27600000),
(13, 18, 1, 1, 27600000),
(20, 19, 1, 1, 27600000),
(23, 20, 6, 2, 93000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

CREATE TABLE `rate` (
  `RateId` bigint(20) NOT NULL,
  `ProductId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Star` tinyint(4) NOT NULL,
  `Comment` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rate`
--

INSERT INTO `rate` (`RateId`, `ProductId`, `UserId`, `Star`, `Comment`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`) VALUES
(1, 3, 4, 4, 'thanh cảm ứng Touch Bar, luôn hiểu bạn cần gì và thêm vào những thao tác làm việc nhanh chóng ở đúng nơi bạn cần.', '2022-10-30 22:08:27', NULL, 1, NULL),
(2, 3, 7, 3, 'Sản phẩm OK', '2022-10-31 23:49:35', '2022-11-01 07:00:38', 7, 7),
(3, 11, 11, 5, 'sản phẩm tuyệt vời', '2022-11-16 20:25:27', NULL, 11, NULL),
(4, 11, 7, 4, 'sản phẩm khá tốt', '2022-11-16 20:26:05', NULL, 7, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `Id` int(11) NOT NULL,
  `BannerName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slogan` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` bit(1) NOT NULL,
  `Url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sort` int(11) NOT NULL,
  `BtnText` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`Id`, `BannerName`, `Slogan`, `Image`, `Status`, `Url`, `Sort`, `BtnText`) VALUES
(1, 'Macbook pro', 'Laptop Macbook Pro 2020 (13 inch - M1 / i5) chính hãng Apple Việt Nam, bảo hành 12 tháng.', 'images/slider/macbook-pro.jpg', b'1', 'laptop/macbook-pro', 1, 'Mua ngay'),
(2, 'Ipad pro', 'iPad Pro là dòng sản phẩm cao cấp nổi tiếng của Apple với rất nhiều trang bị hiện đại. Với thiết kế nhỏ gọn, bền bỉ và sang trọng cùng hiệu năng mạnh mẽ.', 'images/slider/ipad-pro.jpg', b'1', 'ipad/ipad-pro\r\n', 1, 'Mua ngay'),
(3, 'Mac mini', 'Mua Mac mini 2020 M1 chính hãng giá rẻ - Bảo hành 12 tháng tại Apple Việt Nam, trả góp 0%, đổi mới 30 ngày.', 'images/slider/mac-mini.jpg', b'1', 'laptop/mac-mini', 1, 'Mua ngay'),
(4, 'IMac pro', 'iMac Pro và Mac Pro New là một trong những thiết bị cao cấp nhất của Apple hướng tới đối tượng người dùng cần một cấu hình cực khủng để làm việc.', 'images/slider/imac-pro.jpg', b'1', 'laptop/mac-mini', 1, 'Mua ngay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserId` bigint(20) NOT NULL,
  `UserName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birthday` datetime DEFAULT NULL,
  `Address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` bigint(20) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreateAt` datetime NOT NULL,
  `UpdateAt` datetime DEFAULT NULL,
  `CreateBy` bigint(20) NOT NULL,
  `UpdateBy` bigint(20) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `Password`, `Name`, `Email`, `PhoneNumber`, `Gender`, `Birthday`, `Address`, `Image`, `RoleId`, `Status`, `CreateAt`, `UpdateAt`, `CreateBy`, `UpdateBy`, `LastLogin`) VALUES
(1, 'sonhaxp', '$2y$10$.G.hlOmBzNl4fOTWDPwTzuS1mQK20G5Aj8ErwR7ASEeQ5b8EtZXmO', 'Nguyễn Ngọc Trường Sơn\r\n', 'sonhaxp@gmail.com', '0936822275', 'Nam', '2001-04-18 00:00:00', 'Xuân Phương, Xuân Trường, Nam Định', NULL, 12, 1, '2022-10-24 23:50:45', NULL, 12, NULL, '2022-12-29 13:37:30'),
(2, 'nam@gmail.com', '$2y$10$TCWGOhW/fGeFJ4N9Kf1jZ.UBlf/sUCPbwN.XYdMo0YLF2OBlp3TSS', 'nam', 'nam@gmail.com', '0936822275', 'Nam', '2001-04-18 00:00:00', 'Hà Nội', NULL, 13, 1, '2022-10-28 00:02:05', NULL, 1, NULL, '2022-11-16 22:04:27'),
(3, 'quang123@gmail.com', '$2y$10$OK5Uj5uxDNVHvawLtPmxLOoaFu4pCFxTGzr5v89g5bs7ug0Mt0VIe', 'quang123@gmail.com', 'quang@gmail.com', '0936822275', 'Nam', '2001-04-18 00:00:00', 'Hà Nội', NULL, 13, 1, '2022-10-28 00:02:05', '2022-11-07 05:17:54', 1, 1, NULL),
(4, 'dai@gmail.com', '$2y$10$7seGDEhWSEvZcCVOd6zMce1arwItfz5Ojcg.WFboFNFW5/tHW3iLa', 'Trần Đại', 'dai@gmail.com', '0936822275', 'Nam', '2001-04-18 00:00:00', 'Nam Định', NULL, 14, 1, '2022-10-28 00:02:05', NULL, 1, NULL, NULL),
(5, 'caoanh@gmail.com', '$2y$10$TCWGOhW/fGeFJ4N9Kf1jZ.UBlf/sUCPbwN.XYdMo0YLF2OBlp3TSS', 'caoanh', 'caoanh@gmail.com', '0936822275', 'Nam', '2001-04-18 00:00:00', 'Hà Nội', NULL, 15, 1, '2022-10-28 00:02:05', NULL, 1, NULL, NULL),
(6, 'sonhaxp1@gmail.com', '$2y$10$xN3g.H9IWiOm0k5k5pzH8.6ctqChcmqFnbyxt3tCHdmLCd7fYT/Ba', 'Nguyễn Ngọc Trường Sơn', 'sonhaxp1@gmail.com', '0936822275', 'Nam', '2001-04-18 00:00:00', NULL, NULL, 14, 1, '2022-10-31 10:08:30', NULL, 1, NULL, NULL),
(7, 'dai1@gmail.com', '$2y$10$TCWGOhW/fGeFJ4N9Kf1jZ.UBlf/sUCPbwN.XYdMo0YLF2OBlp3TSS', 'Trần Văn Đại', 'dai1@gmail.com', '0923112342', 'Nam', '2001-01-11 00:00:00', NULL, NULL, 14, 1, '2022-10-31 10:16:33', NULL, 1, NULL, NULL),
(9, 'nhung123', '$2y$10$Mx/ITGf1kqrQxk7JYWWNYOvAOsJBAliEuxRvKiPvQwOcU7m0APABG', 'nhung123', NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, '2022-11-06 23:16:16', NULL, 1, NULL, NULL),
(10, 'Xiaomi', NULL, 'Xiaomi', 'xiaomi@gmail.com', '0923421123', NULL, NULL, 'số 3 Cầu Giấy', NULL, 15, 1, '2022-11-09 09:01:54', NULL, 1, NULL, NULL),
(11, 'nhung@gmail.com', '$2y$10$jmfqBy.W98RgifExL04xoORsCdrNFj7VS5ctrJAYOV8DeTnMvUP3m', 'Nguyễn Thị Nhung', 'nhung@gmail.com', '0926822275', 'Nữ', '2001-01-01 00:00:00', 'bbbbbbb', NULL, 14, 1, '2022-11-10 16:01:21', NULL, 1, NULL, NULL),
(12, 'sonhaxp@gmail.co', '$2y$10$nC0SgxPUQFvb5V73P1GgheXz9MYN4sfODCMviQTUAJcArLljyoPHi', 'Nguyễn Ngọc Trường Sơn', 'sonhaxp@gmail.co', '0923112342', 'Nam', '2022-11-11 00:00:00', NULL, NULL, 14, 1, '2022-11-11 10:01:16', NULL, 1, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articlecategories`
--
ALTER TABLE `articlecategories`
  ADD PRIMARY KEY (`ArticleCategoriesId`),
  ADD KEY `FK_ArticleCategory_ArticleCategory` (`ArticleCategoriesParentId`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ArticlesId`),
  ADD KEY `FK_Articles_Category` (`ArticleCategoryId`),
  ADD KEY `FK_Articles_User` (`UserId`);

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`AttributeId`);

--
-- Chỉ mục cho bảng `attributecategory`
--
ALTER TABLE `attributecategory`
  ADD PRIMARY KEY (`AttributeCategoryId`),
  ADD UNIQUE KEY `UC_AttributeCategory` (`CategoryId`,`AttributeId`),
  ADD KEY `FK_AttributeCategory_Attribute` (`AttributeId`);

--
-- Chỉ mục cho bảng `attributedetail`
--
ALTER TABLE `attributedetail`
  ADD PRIMARY KEY (`AttributeDetailId`),
  ADD UNIQUE KEY `UC_AttributeDetail` (`AttributeId`,`ProductId`),
  ADD KEY `FK_AttributeDetail_Product` (`ProductId`),
  ADD KEY `FK_AttributeDetail_AttributeValue` (`ValueId`);

--
-- Chỉ mục cho bảng `attributevalue`
--
ALTER TABLE `attributevalue`
  ADD PRIMARY KEY (`AttributeValueId`),
  ADD KEY `FK_AttributeValue_Attribute` (`AttributeId`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BrandId`),
  ADD KEY `BrandParentId` (`BrandParentId`);

--
-- Chỉ mục cho bảng `brandcategory`
--
ALTER TABLE `brandcategory`
  ADD PRIMARY KEY (`BrandCategoryId`),
  ADD UNIQUE KEY `UC_BrandCategory` (`CategoryId`,`BrandId`),
  ADD KEY `FK_BrandCategory_Brand` (`BrandId`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryId`),
  ADD KEY `FK_Category_Category` (`ParentCategoryId`);

--
-- Chỉ mục cho bảng `classifygroup`
--
ALTER TABLE `classifygroup`
  ADD PRIMARY KEY (`ClassifyGroupId`),
  ADD KEY `FK_ClassifyGroup_Attribute` (`AttributeId`),
  ADD KEY `FK_ClassifyGroup_Product` (`ProductId`);

--
-- Chỉ mục cho bảng `classifygroupoption`
--
ALTER TABLE `classifygroupoption`
  ADD PRIMARY KEY (`ClassifyGroupOptionId`),
  ADD KEY `FK_ClassifyGroupOption_AttributeValue` (`ValueId`),
  ADD KEY `FK_ClassifyGroupOption_ClassifyGroup` (`ClassifyGroupId`);

--
-- Chỉ mục cho bảng `configsite`
--
ALTER TABLE `configsite`
  ADD PRIMARY KEY (`ConfigSiteId`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedBackId`),
  ADD UNIQUE KEY `UC_WishList` (`CreateAt`,`UserId`),
  ADD KEY `FK_WishList_User` (`UserId`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderDetailId`),
  ADD UNIQUE KEY `UC_OrderDetail` (`OrderId`,`ProductId`),
  ADD KEY `FK_OrderDetail_Product` (`ProductId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD UNIQUE KEY `UC_Order` (`UserId`,`CreateAt`),
  ADD KEY `FK_Order_AttributeValue` (`Status`),
  ADD KEY `FK_Order_Employee` (`EmployeeId`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD KEY `FK_Product_Brand` (`BrandId`),
  ADD KEY `FK_Product_Category` (`CategoryId`),
  ADD KEY `FK_Product_Product` (`ProductParentId`),
  ADD KEY `FK_Product_Group1` (`Group1`),
  ADD KEY `FK_Product_Group2` (`Group2`);

--
-- Chỉ mục cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`ProductDetailId`),
  ADD UNIQUE KEY `UC_ProductDetail` (`ProductId`,`STT`),
  ADD KEY `FK_ProductDetail_PurchaseDetail` (`PurchaseDetailId`),
  ADD KEY `FK_ProductDetail_OrderDetail` (`OrderDetailId`);

--
-- Chỉ mục cho bảng `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`PurchaseId`),
  ADD UNIQUE KEY `UC_Purchase` (`EmployeeId`,`CreateAt`),
  ADD KEY `FK_Purchase_Supplier` (`SupplierId`),
  ADD KEY `FK_Purchase_AttributeValue` (`Status`);

--
-- Chỉ mục cho bảng `purchasedetail`
--
ALTER TABLE `purchasedetail`
  ADD PRIMARY KEY (`PurchaseDetailId`),
  ADD UNIQUE KEY `UC_PurchaseDetail` (`PurchaseId`,`ProductId`),
  ADD KEY `FK_PurchaseDetail_Product` (`ProductId`);

--
-- Chỉ mục cho bảng `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`RateId`),
  ADD UNIQUE KEY `UC_Rate` (`ProductId`,`UserId`),
  ADD KEY `FK_Rate_User` (`UserId`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `UC_User` (`UserName`),
  ADD KEY `FK_User_AttributeValue` (`RoleId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articlecategories`
--
ALTER TABLE `articlecategories`
  MODIFY `ArticleCategoriesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `ArticlesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `AttributeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `attributecategory`
--
ALTER TABLE `attributecategory`
  MODIFY `AttributeCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `attributedetail`
--
ALTER TABLE `attributedetail`
  MODIFY `AttributeDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `attributevalue`
--
ALTER TABLE `attributevalue`
  MODIFY `AttributeValueId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `BrandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `brandcategory`
--
ALTER TABLE `brandcategory`
  MODIFY `BrandCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `classifygroup`
--
ALTER TABLE `classifygroup`
  MODIFY `ClassifyGroupId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `classifygroupoption`
--
ALTER TABLE `classifygroupoption`
  MODIFY `ClassifyGroupOptionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `configsite`
--
ALTER TABLE `configsite`
  MODIFY `ConfigSiteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedBackId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `OrderDetailId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `ProductDetailId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `purchase`
--
ALTER TABLE `purchase`
  MODIFY `PurchaseId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `purchasedetail`
--
ALTER TABLE `purchasedetail`
  MODIFY `PurchaseDetailId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `rate`
--
ALTER TABLE `rate`
  MODIFY `RateId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articlecategories`
--
ALTER TABLE `articlecategories`
  ADD CONSTRAINT `FK_ArticleCategory_ArticleCategory` FOREIGN KEY (`ArticleCategoriesParentId`) REFERENCES `articlecategories` (`ArticleCategoriesId`);

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_Articles_Category` FOREIGN KEY (`ArticleCategoryId`) REFERENCES `articlecategories` (`ArticleCategoriesId`),
  ADD CONSTRAINT `FK_Articles_User` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);

--
-- Các ràng buộc cho bảng `attributecategory`
--
ALTER TABLE `attributecategory`
  ADD CONSTRAINT `FK_AttributeCategory_Attribute` FOREIGN KEY (`AttributeId`) REFERENCES `attribute` (`AttributeId`),
  ADD CONSTRAINT `FK_AttributeCategory_Category` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`);

--
-- Các ràng buộc cho bảng `attributedetail`
--
ALTER TABLE `attributedetail`
  ADD CONSTRAINT `FK_AttributeDetail_Attribute` FOREIGN KEY (`AttributeId`) REFERENCES `attribute` (`AttributeId`),
  ADD CONSTRAINT `FK_AttributeDetail_AttributeValue` FOREIGN KEY (`ValueId`) REFERENCES `attributevalue` (`AttributeValueId`),
  ADD CONSTRAINT `FK_AttributeDetail_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`);

--
-- Các ràng buộc cho bảng `attributevalue`
--
ALTER TABLE `attributevalue`
  ADD CONSTRAINT `FK_AttributeValue_Attribute` FOREIGN KEY (`AttributeId`) REFERENCES `attribute` (`AttributeId`);

--
-- Các ràng buộc cho bảng `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`BrandParentId`) REFERENCES `brand` (`BrandId`);

--
-- Các ràng buộc cho bảng `brandcategory`
--
ALTER TABLE `brandcategory`
  ADD CONSTRAINT `FK_BrandCategory_Brand` FOREIGN KEY (`BrandId`) REFERENCES `brand` (`BrandId`),
  ADD CONSTRAINT `FK_BrandCategory_Category` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`);

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_Category_Category` FOREIGN KEY (`ParentCategoryId`) REFERENCES `category` (`CategoryId`);

--
-- Các ràng buộc cho bảng `classifygroup`
--
ALTER TABLE `classifygroup`
  ADD CONSTRAINT `FK_ClassifyGroup_Attribute` FOREIGN KEY (`AttributeId`) REFERENCES `attribute` (`AttributeId`),
  ADD CONSTRAINT `FK_ClassifyGroup_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductID`);

--
-- Các ràng buộc cho bảng `classifygroupoption`
--
ALTER TABLE `classifygroupoption`
  ADD CONSTRAINT `FK_ClassifyGroupOption_AttributeValue` FOREIGN KEY (`ValueId`) REFERENCES `attributevalue` (`AttributeValueId`),
  ADD CONSTRAINT `FK_ClassifyGroupOption_ClassifyGroup` FOREIGN KEY (`ClassifyGroupId`) REFERENCES `classifygroup` (`ClassifyGroupId`);

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FK_WishList_User` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `FK_OrderDetail_Order` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`),
  ADD CONSTRAINT `FK_OrderDetail_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_Order_AttributeValue` FOREIGN KEY (`Status`) REFERENCES `attributevalue` (`AttributeValueId`),
  ADD CONSTRAINT `FK_Order_Employee` FOREIGN KEY (`EmployeeId`) REFERENCES `users` (`UserId`),
  ADD CONSTRAINT `FK_Order_User` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Brand` FOREIGN KEY (`BrandId`) REFERENCES `brand` (`BrandId`),
  ADD CONSTRAINT `FK_Product_Category` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`),
  ADD CONSTRAINT `FK_Product_Group1` FOREIGN KEY (`Group1`) REFERENCES `classifygroupoption` (`ClassifyGroupOptionId`),
  ADD CONSTRAINT `FK_Product_Group2` FOREIGN KEY (`Group2`) REFERENCES `classifygroupoption` (`ClassifyGroupOptionId`),
  ADD CONSTRAINT `FK_Product_Product` FOREIGN KEY (`ProductParentId`) REFERENCES `product` (`ProductId`);

--
-- Các ràng buộc cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `FK_ProductDetail_OrderDetail` FOREIGN KEY (`OrderDetailId`) REFERENCES `orderdetail` (`OrderDetailId`),
  ADD CONSTRAINT `FK_ProductDetail_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`),
  ADD CONSTRAINT `FK_ProductDetail_PurchaseDetail` FOREIGN KEY (`PurchaseDetailId`) REFERENCES `purchasedetail` (`PurchaseDetailId`);

--
-- Các ràng buộc cho bảng `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK_Purchase_AttributeValue` FOREIGN KEY (`Status`) REFERENCES `attributevalue` (`AttributeValueId`),
  ADD CONSTRAINT `FK_Purchase_Employee` FOREIGN KEY (`EmployeeId`) REFERENCES `users` (`UserId`),
  ADD CONSTRAINT `FK_Purchase_Supplier` FOREIGN KEY (`SupplierId`) REFERENCES `users` (`UserId`);

--
-- Các ràng buộc cho bảng `purchasedetail`
--
ALTER TABLE `purchasedetail`
  ADD CONSTRAINT `FK_PurchaseDetail_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`),
  ADD CONSTRAINT `FK_PurchaseDetail_Purchase` FOREIGN KEY (`PurchaseId`) REFERENCES `purchase` (`PurchaseId`);

--
-- Các ràng buộc cho bảng `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `FK_Rate_Product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`ProductId`),
  ADD CONSTRAINT `FK_Rate_User` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_User_AttributeValue` FOREIGN KEY (`RoleId`) REFERENCES `attributevalue` (`AttributeValueId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
