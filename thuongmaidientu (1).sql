-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2020 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuongmaidientu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh_sanpham`
--

CREATE TABLE `anh_sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anh_sanpham`
--

INSERT INTO `anh_sanpham` (`id`, `id_sanpham`, `anh`, `created_at`, `updated_at`) VALUES
(4, 19, '49678.jpg', '2019-12-14 20:53:26', '2019-12-14 20:53:26'),
(5, 19, '84970.jpg', '2019-12-14 20:53:36', '2019-12-14 20:53:36'),
(6, 20, '19712.jpg', '2019-12-15 02:57:56', '2019-12-15 02:57:56'),
(7, 20, '76828.png', '2019-12-15 02:58:10', '2019-12-15 02:58:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_nguoidung`, `id_sanpham`, `noidung`, `created_at`, `updated_at`) VALUES
(1, 2, 19, 'khanh', '2019-12-17 04:04:20', '2019-12-17 04:04:20'),
(2, 2, 19, 'khanhs', '2019-12-17 06:45:59', '2019-12-17 06:45:59'),
(3, 2, 19, 'hàng đẹp', '2019-12-17 07:37:32', '2019-12-17 07:37:32'),
(4, 2, 19, 'hàng đẹp', '2019-12-17 07:38:13', '2019-12-17 07:38:13'),
(5, 2, 19, 'được của ló', '2019-12-17 07:38:31', '2019-12-17 07:38:31'),
(6, 2, 19, 'hahaa', '2019-12-17 07:51:10', '2019-12-17 07:51:10'),
(7, 5, 19, 'đẹp', '2019-12-17 08:06:37', '2019-12-17 08:06:37'),
(8, 2, 19, 'ngon', '2019-12-17 19:07:34', '2019-12-17 19:07:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'An Giang', NULL, NULL),
(3, 'Bà Rịa Vũng Tàu', NULL, NULL),
(4, 'Bình Dương', NULL, NULL),
(5, 'Bình Phước', NULL, NULL),
(6, 'Bình Thuận', NULL, NULL),
(7, 'Bình Định', NULL, NULL),
(8, 'Bắc Giang', NULL, NULL),
(9, 'Bắc Kạn', NULL, NULL),
(10, 'Bắc Ninh', NULL, NULL),
(11, 'Bến Tre', NULL, NULL),
(12, 'Cao Bằng', NULL, NULL),
(13, 'Cà Mau', NULL, NULL),
(14, 'Cần Thơ', NULL, NULL),
(15, 'Gia Lai', NULL, NULL),
(16, 'Hà Giang', NULL, NULL),
(17, 'Hà Nam', NULL, NULL),
(18, 'Hà Nội', NULL, NULL),
(19, 'Hà Tĩnh', NULL, NULL),
(20, 'Hòa Bình', NULL, NULL),
(21, 'Hưng Yên', NULL, NULL),
(22, 'Hải Dương', NULL, NULL),
(23, 'Hải Phòng', NULL, NULL),
(24, 'Hồ Chí Minh', NULL, NULL),
(25, 'Khánh Hòa', NULL, NULL),
(26, 'Kiên Giang', NULL, NULL),
(27, 'Kon Tum', NULL, NULL),
(28, 'Lai Châu', NULL, NULL),
(29, 'Long An', NULL, NULL),
(30, 'Lào Cai', NULL, NULL),
(31, 'Lâm Đồng', NULL, NULL),
(32, 'Lạng Sơn', NULL, NULL),
(33, 'Nam Định', NULL, NULL),
(34, 'Nghệ An', NULL, NULL),
(35, 'Ninh Bình', NULL, NULL),
(36, 'Ninh Thuận', NULL, NULL),
(37, 'Phú Thọ', NULL, NULL),
(38, 'Phú Yên', NULL, NULL),
(40, 'Quảng Nam', NULL, NULL),
(41, 'Quảng Ngãi', NULL, NULL),
(42, 'Quảng Ninh', NULL, NULL),
(43, 'Quảng Trị', NULL, NULL),
(44, 'Sơn La', NULL, NULL),
(45, 'Thanh Hóa', NULL, NULL),
(46, 'Thái Bình', NULL, NULL),
(47, 'Thái Nguyên', NULL, NULL),
(48, 'Thừa Thiên Huế', NULL, NULL),
(49, 'Tiền Giang', NULL, NULL),
(50, 'Trà Vinh', NULL, NULL),
(51, 'Tuyên Quang', NULL, NULL),
(52, 'Tây Ninh', NULL, NULL),
(53, 'Vĩnh Long', NULL, NULL),
(54, 'Vĩnh Phúc', NULL, NULL),
(55, 'Yên Bái', NULL, NULL),
(56, 'Đà Nẵng', NULL, NULL),
(57, 'Đắk Lắk', NULL, NULL),
(58, 'Đồng Nai', NULL, NULL),
(59, 'Đồng Tháp', NULL, NULL),
(60, 'Bạc Liêu', NULL, NULL),
(61, 'Sóc Trăng', NULL, NULL),
(62, 'Hậu Giang', NULL, NULL),
(63, 'Đắk Nông', NULL, NULL),
(64, 'Điện Biên', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_tp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quan_huyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi_giaohang`
--

CREATE TABLE `diachi_giaohang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `email_nguoidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diachi_giaohang`
--

INSERT INTO `diachi_giaohang` (`id`, `id_nguoidung`, `email_nguoidung`, `ten`, `diachi`, `sdt`, `created_at`, `updated_at`) VALUES
(1, 3, 'khanhgiolinh1@gmail.com', 'Khanh Nguyen', '67 Bùi Thị Xuân-Quận Hải Châu-Đà Nẵng', '0914170417', '2019-12-02 20:17:16', '2019-12-02 20:17:16'),
(3, 2, 'khanhgiolinh@gmail.com', 'Khanh Nguyen', '08 Bình Kỳ-Huyện Gio Linh-Quảng Trị', '0915064899', '2019-12-02 21:12:15', '2019-12-03 01:14:30'),
(10, 4, 'khanhnguyen3984610275@gmail.com', 'Nguyễn Nhật Khánh', '25 Kim Đồng-Khu phố 4-Huyện Gio Linh-Quảng Trị-Huyện Gio Linh-Quảng Trị-Huyện Gio Linh-Quảng Trị-Huyện Gio Linh-Quảng Trị', '0914170417', '2019-12-02 22:01:13', '2019-12-02 22:01:28'),
(11, 5, 'khanhgiolinh123@gmail.com', 'Khanh Nguyen Nhat', 'KP4-Huyện Gio Linh-Quảng Trị', '0914170417', '2019-12-06 21:22:20', '2019-12-07 01:23:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `ten_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mau_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `id_sanpham`, `ten_sanpham`, `code_sanpham`, `mau_sanpham`, `size`, `gia`, `soluong`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(30, 19, 'Yezzy 350', 'yezzy-700-04', 'vàng', '39', '700', 3, 'khanhgiolinh@gmail.com', '5r75pa9LvSk5UPpQKKS06SILB7616rPXCgabHj1H', NULL, NULL),
(31, 19, 'Yezzy 350', 'yezzy-700-02', 'vàng', '42', '700', 4, 'khanhgiolinh@gmail.com', 'biEUm6ysKVnLtu38UJaegM4MmdcRXHcsf7n4xh2z', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id_loaisp` bigint(20) UNSIGNED NOT NULL,
  `parent_id_loaisp` int(11) NOT NULL DEFAULT 0,
  `tenloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mieuta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loaisp`, `parent_id_loaisp`, `tenloai`, `mieuta`, `url`, `trangthai`, `created_at`, `updated_at`) VALUES
(20, 0, 'Điện thoại-Máy tính bảng', 'Điện thoại-Máy tính bảng', 'dienthoai', 1, '2019-11-11 20:15:46', '2019-11-16 02:20:10'),
(21, 0, 'Điện tử-Điện lạnh', 'Điện tử-Điện lạnh', 'dientu', 1, '2019-11-11 20:20:19', '2019-11-16 02:20:17'),
(22, 0, 'Phụ kiện-Thiết bị số', 'Phụ kiện-Thiết bị số', 'phukien', 1, '2019-11-11 20:20:38', '2019-11-16 02:20:25'),
(23, 0, 'Laptop-Thiết bị IT', 'Laptop-Thiết bị IT', 'laptop', 1, '2019-11-11 20:21:27', '2019-11-16 02:20:33'),
(24, 0, 'Máy ảnh-Quay phim', 'Máy ảnh-Quay phim', 'mayanh', 1, '2019-11-11 20:21:55', '2019-11-16 02:20:42'),
(25, 0, 'Điện gia dụng', 'Điện gia dụng', 'diengiadung', 1, '2019-11-11 20:22:25', '2019-11-16 02:20:55'),
(26, 0, 'Nhà cửa-Đời sống', 'Nhà cửa-Đời sống', 'nhacua', 1, '2019-11-11 20:23:17', '2019-11-16 02:21:06'),
(27, 0, 'Hàng tiêu dùng-Thực phẩm', 'Hàng tiêu dùng-Thực phẩm', 'hangtieudung', 1, '2019-11-11 20:23:43', '2019-11-16 02:21:17'),
(28, 0, 'Đồ chơi-Mẹ & bé', 'Đồ chơi-Mẹ & bé', 'dochoi', 1, '2019-11-11 20:25:07', '2019-11-16 02:21:36'),
(29, 0, 'Làm đẹp-Sức khỏe', 'Làm đẹp-Sức khỏe', 'lamdep', 1, '2019-11-11 20:25:28', '2019-11-16 02:21:46'),
(30, 0, 'Thời trang-Phụ kiện', 'Thời trang-Phụ kiện', 'thoitrang', 1, '2019-11-11 20:25:51', '2019-11-16 02:21:56'),
(31, 20, 'Smart phone', 'Smart phone', 'smartphone', 1, '2019-11-11 20:26:56', '2019-11-16 02:22:42'),
(32, 20, 'Máy tính bảng', 'Máy tính bảng', 'maytinhbang', 1, '2019-11-11 20:27:17', '2019-11-16 02:22:52'),
(33, 22, 'Thiết bị âm thanh', 'Thiết bị âm thanh', 'amthanh', 1, '2019-11-11 20:29:26', '2019-11-16 02:23:03'),
(34, 22, 'Thiết bị đeo thông minh', 'Thiết bị đeo thông minh', 'koco', 1, '2019-11-11 20:29:54', '2019-11-11 20:29:54'),
(35, 22, 'Phụ kiện điện thoại', 'Phụ kiện điện thoại', 'koco', 1, '2019-11-11 20:30:42', '2019-11-11 20:30:42'),
(36, 22, 'Thiết bị game', 'Thiết bị game', 'koco', 1, '2019-11-11 20:31:00', '2019-11-11 20:31:00'),
(37, 22, 'Thiết bị mạng', 'Thiết bị mạng', 'koco', 1, '2019-11-11 20:31:23', '2019-11-11 20:31:23'),
(38, 23, 'Laptop gaming', 'Laptop gaming', 'koco', 1, '2019-11-11 20:32:19', '2019-11-11 20:32:19'),
(39, 23, 'Laptop văn phòng', 'Laptop văn phòng', 'koco', 1, '2019-11-11 20:32:57', '2019-11-11 20:32:57'),
(40, 23, 'Phụ kiện-Linh kiện máy tính', 'Phụ kiện-Linh kiện máy tính', 'koco', 1, '2019-11-11 20:34:08', '2019-11-11 20:34:08'),
(41, 30, 'Thời trang nam', 'Thời trang nam', 'koco', 1, '2019-11-11 20:35:16', '2019-11-11 20:35:16'),
(42, 30, 'Thời trang nữ', 'Thời trang nữ', 'koco', 1, '2019-11-11 20:35:40', '2019-11-11 20:35:40'),
(43, 30, 'Giày dép nam', 'Giày dép nam', 'koco', 1, '2019-11-11 20:36:16', '2019-11-11 20:36:16'),
(44, 30, 'Giày dép nữ', 'Giày dép nữ', 'koco', 1, '2019-11-11 20:36:31', '2019-11-11 20:36:31'),
(45, 20, 'điện thoại thông minh', 'koco', 'koco', 1, '2019-11-18 01:35:13', '2019-11-18 01:35:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `magiamgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sotien` int(11) NOT NULL,
  `loai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoihan` date NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `magiamgia`, `sotien`, `loai`, `thoihan`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'khanh', 10, 'ti_le', '2020-04-22', 1, '2019-12-06 06:21:45', '2019-12-06 06:21:45'),
(2, 'khanhdz', 100, 'thanh_tien', '2020-02-02', 1, '2019-12-06 20:10:05', '2019-12-06 20:10:05'),
(3, 'khanhdz01', 10, 'ti_le', '2020-02-02', 0, '2019-12-06 20:11:09', '2019-12-06 20:11:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_07_164103_loaisanpham_table', 2),
(5, '2019_11_07_165616_create_table_loaisanpham_table', 3),
(6, '2019_11_09_021657_create_sanpham_table', 4),
(7, '2019_11_10_093518_create_table_thuoctinh', 5),
(8, '2019_11_13_130541_create_table_thuoctinh', 6),
(9, '2019_11_20_084135_create_table_giohang_table', 7),
(10, '2019_11_23_104334_create_table_magiamgia', 8),
(11, '2019_11_29_085039_create_countries_table', 9),
(12, '2019_11_29_085142_create_cities_table', 9),
(13, '2019_11_29_091835_create_country_state_table', 10),
(14, '2019_12_01_094259_create_table_dathang', 11),
(15, '2019_12_03_021625_create_table_diachi_giaohang', 12),
(16, '2019_12_05_133442_create_table_order', 13),
(17, '2019_12_05_133542_create_table_order_sanpham', 13),
(18, '2019_12_15_030108_create_anhsanpham', 14),
(19, '2019_12_17_101033_create_binhluan', 15),
(20, '2019_12_30_062217_create_table_thongke', 16),
(21, '2019_12_31_021047_create_social_accounts', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `email_nguoidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tienship` double(8,2) NOT NULL,
  `magiamgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sotien` double(8,2) NOT NULL,
  `trangthai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuongthuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `id_nguoidung`, `email_nguoidung`, `ten`, `diachi`, `sdt`, `tienship`, `magiamgia`, `sotien`, `trangthai`, `phuongthuc`, `tongtien`, `created_at`, `updated_at`) VALUES
(1, 3, 'khanhgiolinh1@gmail.com', 'Khanh Nguyen', '67 Bùi Thị Xuân-Quận Hải Châu-Đà Nẵng', '0914170417', 30.00, 'khanh', 770.00, 'Đã nhận hàng', 'COD', 6960.00, '2019-12-08 03:15:17', '2019-12-27 21:14:21'),
(2, 3, 'khanhgiolinh1@gmail.com', 'Khanh Nguyen', '67 Bùi Thị Xuân-Quận Hải Châu-Đà Nẵng', '0914170417', 30.00, 'khanh', 280.00, 'Đã nhận hàng', 'COD', 2550.00, '2019-12-10 09:38:36', '2019-12-27 21:18:43'),
(3, 2, 'khanhgiolinh@gmail.com', 'Khanh Nguyen', '08 Bình Kỳ-Huyện Gio Linh-Quảng Trị', '0915064899', 30.00, 'khanh', 770.00, 'Chờ lấy hàng', 'COD', 6960.00, '2019-12-15 02:39:48', '2019-12-15 02:41:15'),
(4, 2, 'khanhgiolinh@gmail.com', 'Khanh Nguyen', '08 Bình Kỳ-Huyện Gio Linh-Quảng Trị', '0915064899', 30.00, 'khanh', 140.00, 'Mới đặt hàng', 'COD', 1290.00, '2019-12-15 03:14:28', '2019-12-15 03:14:28'),
(7, 2, 'khanhgiolinh@gmail.com', 'Khanh Nguyen', '08 Bình Kỳ-Huyện Gio Linh-Quảng Trị', '0915064899', 30.00, 'khanh', 280.00, 'Mới đặt hàng', 'COD', 2550.00, '2019-12-16 09:45:33', '2019-12-16 09:45:33'),
(9, 5, 'khanhgiolinh123@gmail.com', 'Khanh Nguyen Nhat', 'KP4-Huyện Gio Linh-Quảng Trị', '0914170417', 30.00, 'khanh', 280.00, 'Mới đặt hàng', 'COD', 2550.00, '2019-12-17 10:00:36', '2019-12-17 10:00:36'),
(10, 5, 'khanhgiolinh123@gmail.com', 'Khanh Nguyen Nhat', 'KP4-Huyện Gio Linh-Quảng Trị', '0914170417', 30.00, 'khanh', 280.00, 'Mới đặt hàng', 'COD', 2550.00, '2019-12-17 10:01:09', '2019-12-17 10:01:09'),
(12, 2, 'khanhgiolinh@gmail.com', 'Khanh Nguyen', '08 Bình Kỳ-Huyện Gio Linh-Quảng Trị', '0915064899', 30.00, 'khanh', 350.00, 'Mới đặt hàng', 'COD', 3180.00, '2019-12-27 21:16:08', '2019-12-27 21:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_sanpham`
--

CREATE TABLE `order_sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dathang` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `ma_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_sanpham`
--

INSERT INTO `order_sanpham` (`id`, `id_dathang`, `id_nguoidung`, `id_sanpham`, `ma_sanpham`, `ten_sanpham`, `size`, `gia`, `soluong`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 19, 'yezzy-700-01', 'Yezzy 350', '40', '700', '5', '2019-12-08 03:15:17', '2019-12-08 03:15:17'),
(2, 1, 3, 19, 'yezzy-700-02', 'Yezzy 350', '42', '700', '3', '2019-12-08 03:15:17', '2019-12-08 03:15:17'),
(3, 1, 3, 19, 'yezzy-700-03', 'Yezzy 350', '41', '700', '1', '2019-12-08 03:15:17', '2019-12-08 03:15:17'),
(4, 1, 3, 19, 'yezzy-700-01', 'Yezzy 350', '40', '700', '2', '2019-12-08 03:15:17', '2019-12-08 03:15:17'),
(5, 2, 3, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '4', '2019-12-10 09:38:37', '2019-12-10 09:38:37'),
(6, 3, 2, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '4', '2019-12-15 02:39:48', '2019-12-15 02:39:48'),
(7, 3, 2, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '5', '2019-12-15 02:39:48', '2019-12-15 02:39:48'),
(8, 3, 2, 19, 'yezzy-700-01', 'Yezzy 350', '40', '700', '2', '2019-12-15 02:39:49', '2019-12-15 02:39:49'),
(9, 4, 2, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '2', '2019-12-15 03:14:28', '2019-12-15 03:14:28'),
(10, 5, 2, 20, 'IPHONE11_xanh', 'Iphone 11 Pro Max', 'xanh', '25000', '3', '2019-12-15 03:23:29', '2019-12-15 03:23:29'),
(11, 6, 2, 20, 'IPHONE11_den', 'Iphone 11 Pro Max', 'đen', '25000', '10', '2019-12-15 03:24:55', '2019-12-15 03:24:55'),
(12, 7, 2, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '4', '2019-12-16 09:45:34', '2019-12-16 09:45:34'),
(13, 8, 2, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '3', '2019-12-16 21:28:38', '2019-12-16 21:28:38'),
(14, 8, 2, 19, 'yezzy-700-02', 'Yezzy 350', '42', '700', '8', '2019-12-16 21:28:38', '2019-12-16 21:28:38'),
(15, 9, 5, 19, 'yezzy-700-01', 'Yezzy 350', '40', '700', '4', '2019-12-17 10:00:36', '2019-12-17 10:00:36'),
(16, 11, 5, 19, 'yezzy-700-02', 'Yezzy 350', '42', '700', '4', '2019-12-23 20:14:34', '2019-12-23 20:14:34'),
(17, 12, 2, 19, 'yezzy-700-04', 'Yezzy 350', '39', '700', '5', '2019-12-27 21:16:08', '2019-12-27 21:16:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `id_loaisp` int(11) NOT NULL,
  `ten_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mau_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mieuta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `id_loaisp`, `ten_sanpham`, `code_sanpham`, `mau_sanpham`, `mieuta`, `price`, `anh`, `created_at`, `updated_at`) VALUES
(7, 20, 'Iphone 11', 'iphone11', 'black', 'Hàng chính hãng', 21000.00, '13963.jpg', '2019-11-11 20:45:50', '2019-12-16 01:09:48'),
(8, 20, 'Iphone 11 Pro', '11pro', 'Trắng', 'hàng chính hãng', 29000.00, '83373.jpg', '2019-11-11 21:03:05', '2019-11-11 21:03:05'),
(9, 20, 'Iphone 11 Pro Max', 'promax', 'Xám', 'Hàng chính hãng', 30000.00, '1356.jpg', '2019-11-11 21:04:31', '2019-11-11 21:04:31'),
(13, 20, 'Ipad', 'koco', 'black', 'koco', 10.00, '17633.jpg', '2019-11-12 19:04:21', '2019-11-12 19:04:21'),
(14, 43, 'Converse', 'converse', 'black', 'koco', 2000.00, '82013.JPG', '2019-11-13 09:02:57', '2019-11-13 09:02:57'),
(19, 30, 'Yezzy 350', 'yezzy700', 'vàng', 'hàng rep 1:1', 700.00, '44508.jpg', '2019-11-19 21:25:17', '2019-11-20 00:26:44'),
(20, 20, 'Iphone 11 Pro Max', 'IPHONE11', 'black', 'Hàng lock', 25000.00, '8876.jpg', '2019-12-15 02:44:34', '2019-12-15 02:44:34'),
(21, 20, 'SamSung Galaxy ford', 'ss', '', 'hàng chính hãng', 50000.00, '12281.jpg', '2019-12-16 00:52:49', '2019-12-16 00:52:49'),
(22, 20, 'Oppo Reno', '', '', '', 15000.00, '44076.jpg', '2019-12-16 01:00:10', '2019-12-16 01:00:10'),
(23, 20, 'Oppo Reno 10x Zoom', '', '', '', 19000.00, '31415.jpg', '2019-12-16 01:00:52', '2019-12-16 01:00:52'),
(24, 20, 'SamSung Galaxy Note 10', '', '', '', 20000.00, '4419.jpg', '2019-12-16 01:01:33', '2019-12-16 01:01:33'),
(25, 30, 'Áo Gucci', '', '', '', 1000.00, '94407.jpg', '2019-12-16 01:02:09', '2019-12-16 01:02:09'),
(26, 30, 'Áo Gucci', '', '', '', 1000.00, '24720.jpg', '2019-12-16 01:02:47', '2019-12-16 01:02:47'),
(27, 30, 'Cặp Gucci', '', '', '', 10000.00, '74137.jpg', '2019-12-16 01:03:26', '2019-12-16 01:03:26'),
(28, 30, 'Ví LV', '', '', '', 30000.00, '81819.jpg', '2019-12-16 01:06:42', '2019-12-16 01:06:42'),
(29, 30, 'Áo Gucci', '', '', '', 1000.00, '87541.jpg', '2019-12-16 01:07:09', '2019-12-16 01:07:09'),
(30, 30, 'Áo sơ mi Flanel', '', '', '', 2000.00, '47085.jpg', '2019-12-16 01:08:33', '2019-12-16 01:08:33'),
(31, 26, 'Chổi lau nhà', 'koco', 'đen', 'hàng tốt', 1000.00, '9281.jpg', '2019-12-16 01:18:10', '2019-12-16 01:28:36'),
(32, 26, 'Bình nước', 'koco', 'xám', 'hàng tốt', 100.00, '61772.jpg', '2019-12-16 01:18:45', '2019-12-16 01:27:31'),
(33, 26, 'Nồi thủy tinh', 'noithuytinh', 'Trắng', 'hàng tốt', 200.00, '32031.jpg', '2019-12-16 01:19:25', '2019-12-16 01:26:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_country` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `states`
--

INSERT INTO `states` (`id`, `name`, `id_country`, `created_at`, `updated_at`) VALUES
(2, 'Thành phố Đông Hà', 43, NULL, NULL),
(3, 'Thị xã Quảng Trị', 43, NULL, NULL),
(4, 'Huyện Cam Lộ', 43, NULL, NULL),
(5, 'Huyện Cồn Cỏ', 43, NULL, NULL),
(6, 'Huyện Đa Krông', 43, NULL, NULL),
(7, 'Huyện Gio Linh', 43, NULL, NULL),
(8, 'Huyện Hải Lăng', 43, NULL, NULL),
(9, 'Huyện Hướng Hóa', 43, NULL, NULL),
(10, 'Huyện Triệu Phong', 43, NULL, NULL),
(11, 'Huyện Vĩnh Linh', 43, NULL, NULL),
(12, 'Quận Hải Châu', 56, NULL, NULL),
(13, 'Quận Thanh Khê', 56, NULL, NULL),
(14, 'Quận Sơn Trà', 56, NULL, NULL),
(15, 'Quận Ngũ Hành Sơn', 56, NULL, NULL),
(16, 'Quận Liên Chiểu', 56, NULL, NULL),
(17, 'Huyện Hòa Vang', 56, NULL, NULL),
(18, 'Quận Cẩm Lệ', 56, NULL, NULL),
(19, 'Huyện Hoàng Sa', 56, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongke`
--

CREATE TABLE `thongke` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tháng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doanhthu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongke`
--

INSERT INTO `thongke` (`id`, `tháng`, `doanhthu`, `created_at`, `updated_at`) VALUES
(1, '1', 0, NULL, NULL),
(2, '2', 0, NULL, NULL),
(3, '3', 0, NULL, NULL),
(4, '4', 0, NULL, NULL),
(5, '5', 0, NULL, NULL),
(6, '6', 0, NULL, NULL),
(7, '7', 0, NULL, NULL),
(8, '8', 0, NULL, NULL),
(9, '9', 0, NULL, NULL),
(10, '10', 0, NULL, NULL),
(11, '11', 0, NULL, NULL),
(12, '12', 28590, NULL, '2019-12-30 00:42:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoctinh`
--

CREATE TABLE `thuoctinh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `ma_sanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` double(8,2) NOT NULL,
  `soluong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `anh` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoctinh`
--

INSERT INTO `thuoctinh` (`id`, `id_sanpham`, `ma_sanpham`, `size`, `giatien`, `soluong`, `created_at`, `updated_at`, `anh`) VALUES
(3, 19, 'yezzy-700-02', '42', 700.00, 20, '2019-11-19 21:26:38', '2019-11-19 21:26:38', NULL),
(4, 19, 'yezzy-700-03', '41', 700.00, 20, '2019-11-19 21:26:38', '2019-11-19 21:26:38', NULL),
(6, 19, 'yezzy-700-04', '39', 900.00, 30, '2019-11-20 05:37:08', '2019-11-20 05:37:08', NULL),
(7, 20, 'IPHONE11_den', 'đen', 31000.00, 100, '2019-12-15 02:46:47', '2019-12-15 02:46:47', NULL),
(8, 20, 'IPHONE11_trang', 'trắng', 31000.00, 100, '2019-12-15 02:46:47', '2019-12-15 02:46:47', NULL),
(9, 20, 'IPHONE11_xanh', 'xanh', 32000.00, 50, '2019-12-15 02:46:47', '2019-12-15 02:46:47', NULL),
(10, 20, 'IPHONE11_do', 'đỏ', 31000.00, 100, '2019-12-15 02:46:47', '2019-12-15 02:46:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_tp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quan_huyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `tinh_tp`, `quan_huyen`, `diachi`, `sdt`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Khanh Nguyen', '43', '7', '08 Bình Kỳ-Huyện Gio Linh-Quảng Trị', '0915064899', 'khanhgiolinh@gmail.com', NULL, '$2y$10$1uN2ev8hjZD5OByyVhgKe.oATh47rtW08yS1p.1h9YzKPNTHou1w6', 1, NULL, '2019-11-26 00:11:23', '2019-12-14 02:13:58'),
(3, 'Khanh Nguyen', '56', '12', '67 Bùi Thị Xuân', '0914170417', 'khanhgiolinh1@gmail.com', NULL, '$2y$10$TsRsEFqAfcM1.8KNgfwNRuJgPwoy5iD9TVSdKe2V5NfJzYfyLyKd2', NULL, NULL, '2019-11-27 06:32:40', '2019-12-01 03:28:31'),
(4, 'Nguyễn Nhật Khánh', '43', '7', '25 Kim Đồng-Khu phố 4-Huyện Gio Linh-Quảng Trị-Huyện Gio Linh-Quảng Trị-Huyện Gio Linh-Quảng Trị-Huyện Gio Linh-Quảng Trị', '0914170417', 'khanhnguyen3984610275@gmail.com', NULL, '$2y$10$ezyRYlceyM29ue0wn6hnde5DUTcUOc8deD7y9wimDAB/kOe1Ch4vi', NULL, NULL, '2019-11-27 06:37:21', '2019-12-02 22:01:28'),
(5, 'Khanh Nguyen Nhat', '43', '7', 'KP4-Huyện Gio Linh-Quảng Trị', '0914170417', 'khanhgiolinh123@gmail.com', NULL, '$2y$10$CztoBN0RP.pcHTSBsZwclOZNr9QZmRB9NT33pVJKd58ru.qZcq8Ly', NULL, NULL, '2019-12-06 07:12:12', '2019-12-07 01:23:16'),
(6, 'KHANH NGUYEN', '43', '7', '25 Kim Đồng', '0914170417', 'khanhgiolinh1234@gmail.com', NULL, '$2y$10$mA1vRKb2DMq5Auy.2MqyN.AussYSV3F/sIniAO5.awCBIgqZk9chO', NULL, NULL, '2019-12-06 21:30:19', '2019-12-06 21:32:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh_sanpham`
--
ALTER TABLE `anh_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diachi_giaohang`
--
ALTER TABLE `diachi_giaohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_sanpham`
--
ALTER TABLE `order_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_id_country_foreign` (`id_country`);

--
-- Chỉ mục cho bảng `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoctinh`
--
ALTER TABLE `thuoctinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh_sanpham`
--
ALTER TABLE `anh_sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diachi_giaohang`
--
ALTER TABLE `diachi_giaohang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id_loaisp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `order_sanpham`
--
ALTER TABLE `order_sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `thongke`
--
ALTER TABLE `thongke`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `thuoctinh`
--
ALTER TABLE `thuoctinh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_id_country_foreign` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
