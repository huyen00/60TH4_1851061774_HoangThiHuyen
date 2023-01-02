-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 02, 2023 lúc 07:43 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acl_rules`
--

CREATE TABLE `acl_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_hotspots`
--

CREATE TABLE `category_hotspots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_hotspots`
--

INSERT INTO `category_hotspots` (`id`, `name`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'skin_hotspotstyle', 'default', '1', '2022-12-11 08:15:04', '2022-12-11 08:15:04'),
(2, 'skin_hotspotstyle_move', 'move', '1', '2022-12-11 08:15:04', '2022-12-11 08:15:04'),
(3, 'skin_hotspotstyle_ani', 'circle animation', '1', '2022-12-11 08:15:04', '2022-12-11 08:15:04'),
(4, 'hs_flycam', 'flycam', '1', '2022-12-11 08:15:04', '2022-12-11 08:15:04'),
(5, 'hotspot_ide', 'ide', '1', '2022-12-11 08:15:04', '2022-12-11 08:15:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_news`
--

CREATE TABLE `category_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_news`
--

INSERT INTO `category_news` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thông báo', 'thong-bao', '2022-12-29 07:50:22', '2022-12-29 07:50:22'),
(2, 'Công Văn', 'cong-van', '2022-12-29 07:50:38', '2022-12-29 07:50:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_panos`
--

CREATE TABLE `category_panos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_pano_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_priority` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_panos`
--

INSERT INTO `category_panos` (`id`, `name`, `tour_id`, `category_pano_id`, `id_priority`, `created_at`, `updated_at`) VALUES
(1, 'Cổng trường', 1, NULL, NULL, '2022-12-29 07:34:33', '2022-12-29 07:34:33'),
(2, 'Tòa A1', 1, NULL, NULL, '2022-12-29 07:34:40', '2022-12-29 07:34:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotspot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_priority` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fonts`
--

CREATE TABLE `fonts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hots_pots`
--

CREATE TABLE `hots_pots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ath` double(8,2) DEFAULT NULL,
  `atv` double(8,2) DEFAULT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distorted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` double(8,2) DEFAULT NULL,
  `y` double(8,2) DEFAULT NULL,
  `z` double(8,2) DEFAULT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scale` double(8,2) DEFAULT NULL,
  `alpha` double(8,2) DEFAULT NULL,
  `onload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onloaded` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onhover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onclick` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedscene` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pano_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_hotspot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_priority` bigint(20) DEFAULT NULL,
  `icon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hots_pots`
--

INSERT INTO `hots_pots` (`id`, `name`, `html`, `ath`, `atv`, `style`, `distorted`, `zoom`, `url`, `x`, `y`, `z`, `renderer`, `scale`, `alpha`, `onload`, `onloaded`, `onhover`, `onclick`, `linkedscene`, `pano_id`, `category_hotspot_id`, `id_priority`, `icon_id`, `created_at`, `updated_at`) VALUES
(1, 'spot1', NULL, 0.61, 9.57, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_4', 2, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(2, 'spot2', NULL, 88.72, 6.07, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_3', 2, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(3, 'spot3', NULL, 179.83, 5.18, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_1', 2, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(4, 'spot1', NULL, -88.40, 7.55, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_27', 3, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(5, 'spot2', NULL, 87.86, 8.26, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_2', 3, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(6, 'spot3', NULL, -177.48, 8.31, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_4', 3, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(7, 'spot4', NULL, -2.92, 2.28, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_28', 3, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(8, 'spot1', NULL, 3.31, 6.99, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_6', 4, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(9, 'spot2', NULL, 128.45, 12.03, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_3', 4, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(10, 'spot3', NULL, -121.01, 17.16, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_2', 4, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(11, 'spot1', NULL, -91.51, 15.52, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_7', 5, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(12, 'spot2', NULL, 85.04, 18.56, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_4', 5, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(13, 'spot1', NULL, 88.70, 5.31, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_6', 6, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(14, 'spot2', NULL, -14.19, 4.77, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_8', 6, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(15, 'spot3', NULL, -88.17, 4.73, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_9', 6, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(16, 'spot1', NULL, 4.49, 5.21, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_9', 7, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(17, 'spot2', NULL, -125.35, 9.79, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_7', 7, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(18, 'spot3', NULL, 132.43, 7.92, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_27', 7, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(19, 'spot1', NULL, 8.63, 2.86, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_10', 8, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(20, 'spot2', NULL, 67.76, 4.23, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_11', 8, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(21, 'spot3', NULL, -168.14, 13.29, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_13', 8, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(22, 'spot4', NULL, -84.25, 5.48, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_8', 8, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(23, 'spot1', NULL, 21.09, -1.45, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_16', 10, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(24, 'spot2', NULL, -119.89, 9.41, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_12', 10, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(25, 'spot3', NULL, 171.62, 7.94, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_9', 10, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(26, 'spot4', NULL, 83.05, 6.34, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_13', 10, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(27, 'spot1', NULL, 80.50, 8.35, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_11', 12, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(28, 'spot2', NULL, -8.38, 3.05, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_3', 12, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(29, 'spot3', NULL, 171.24, 8.33, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_14', 12, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(30, 'spot1', NULL, -5.88, 1.24, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_15', 13, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(31, 'spot2', NULL, -121.00, 7.38, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_13', 13, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(32, 'spot3', NULL, 125.85, 14.08, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_18', 13, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(33, 'spot1', NULL, 79.42, 5.53, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_14', 16, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(34, 'spot2', NULL, -8.58, 8.11, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_21', 16, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(35, 'spot3', NULL, -102.31, 2.85, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_25', 16, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(36, 'spot1', NULL, 112.24, 46.53, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_19', 18, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(37, 'spot2', NULL, -110.49, 20.58, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_21', 18, NULL, NULL, NULL, '2022-12-29 08:13:00', '2022-12-29 08:13:00'),
(38, 'spot1', NULL, 89.60, 35.87, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_18', 19, NULL, NULL, NULL, '2022-12-29 08:13:01', '2022-12-29 08:13:01'),
(39, 'spot2', NULL, -6.37, 17.93, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_20', 19, NULL, NULL, NULL, '2022-12-29 08:13:01', '2022-12-29 08:13:01'),
(40, 'spot3', NULL, -169.63, 22.18, 'skin_hotspotstyle_move', 'false', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scene_22', 19, NULL, NULL, NULL, '2022-12-29 08:13:01', '2022-12-29 08:13:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `icon_tours`
--

CREATE TABLE `icon_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `icon_tours`
--

INSERT INTO `icon_tours` (`id`, `name`, `icon`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, 'hs_flycam', 'Tour/dhtl2-1672324022/skin/hs_flycam.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(2, 'skin_hotspotstyle_move', 'Tour/dhtl2-1672324022/skin/hs_dichuyen1.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(3, 'skin_hotspotstyle_move_prev', 'Tour/dhtl2-1672324022/skin/hs_dichuyen1.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(4, 'skin_hotspotstyle_youtube', 'Tour/dhtl2-1672324022/assets/img/iconyoutube.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(5, 'skin_hotspotstyle_point2', 'Tour/dhtl2-1672324022/skin/hotspot_ani_black_64x64x20.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(6, 'skin_hotspotstyle', 'Tour/dhtl2-1672324022/assets/img/new_spotd7_gif.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(7, 'skin_hotspotstyle_prev', 'Tour/dhtl2-1672324022/assets/img/new_spotd7_gif.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(8, 'hs_image_text', 'Tour/dhtl2-1672324022/skin/hs_text2.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(9, 'skin_hotspotstyle_info', 'Tour/dhtl2-1672324022/skin/icon_info1.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(10, 'show_hide_polygo', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(11, 'skin_hotspotstyle_pointaddress', 'Tour/dhtl2-1672324022/skin/arrow_down.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(12, 'skin_hotspotstyle_pointaddress_nau', 'Tour/dhtl2-1672324022/skin/arrow_down_nau.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(13, 'callout_top', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(14, 'call_out_titles2callout_line', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(15, 'call_out_titles2callout_line_vertical', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(16, 'call_out_titles2callout_title', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(17, 'hotspot_point_address', 'Tour/dhtl2-1672324022/skin/arrow_down.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(18, 'callout_bottom', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(19, 'call_out_titles3callout_line', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(20, 'call_out_titles3callout_line_vertical', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(21, 'call_out_titles3callout_title', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(22, 'callout_right', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(23, 'call_out_titles4callout_line', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(24, 'call_out_titles4callout_line_vertical', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(25, 'call_out_titles4callout_title', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(26, 'callout_pano_left', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(27, 'call_out_titles7callout_line', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(28, 'call_out_titles7callout_line_vertical', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(29, 'call_out_titles7callout_title', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(30, 'callout_point_straight_brown', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(31, 'brown_callout_pulse', 'Tour/dhtl2-1672324022/skin/arrow_down_nau.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(32, 'call_out_titles8callout_line', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(33, 'call_out_titles8callout_line_vertical', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(34, 'call_out_titles8callout_title', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(35, 'callout_point_straight_blue', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(36, 'brown_callout_pulse_blue', 'Tour/dhtl2-1672324022/skin/arrow_down.png', 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(37, 'call_out_titles8callout_line_blue', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(38, 'call_out_titles8callout_line_vertical_blue', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(39, 'call_out_titles8callout_title_blue', NULL, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_priority` bigint(20) DEFAULT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infor_tours`
--

CREATE TABLE `infor_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_priority` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vn` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infor_tours`
--

INSERT INTO `infor_tours` (`id`, `id_priority`, `title`, `description_vn`, `description_en`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Đại Học Thủy Lợi', 'Được thành lập năm 1969', 'Được thành lập năm 1969', 1, '2022-12-29 07:35:21', '2022-12-29 07:35:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languageable_id` int(11) DEFAULT NULL,
  `languageable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`id`, `key`, `en`, `vn`, `languageable_id`, `languageable_type`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', 'Trang Chủ', 1, 'App\\Models\\Page', '2022-12-11 08:15:55', '2022-12-11 08:15:55'),
(2, 'description1670771755', ' ', ' ', 1, 'App\\Models\\Page', '2022-12-11 08:15:55', '2022-12-11 08:15:55'),
(3, 'title1670772205', 'News', 'Tin Tức', 1, 'App\\Models\\Section', '2022-12-11 08:23:25', '2022-12-11 08:23:25'),
(4, 'description1670772205', '<p>Qu&aacute;n Qu&acirc;n SV7 H&agrave; Nội &ndash; Đại học Thủy lợi chạm ch&aacute;n &Aacute; qu&acirc;n SV7 Tp Hồ Ch&iacute; Minh &ndash; Đại học T&ocirc;n Đức Thắng trong trận b&aacute;n kết được cho l&agrave; một trận chung kết sớm của giải đấu, khi m&agrave; đội chủ nh&agrave; T&ocirc;n Đức Thắng quyết t&acirc;m gi&agrave;nh chiến thắng tr&ecirc;n s&acirc;n nh&agrave; để tri &acirc;n h&agrave;ng ngh&igrave;n cổ động vi&ecirc;n đồng h&agrave;nh c&ugrave;ng đội b&oacute;ng.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk1.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 diễn ra từ ng&agrave;y 09 đến ng&agrave;y 11/12/2022 đ&atilde; x&aacute;c định được 4 đội b&oacute;ng tham dự xuất sắc nhất của H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh. Đội tuyển b&oacute;ng đ&aacute; sinh vi&ecirc;n của Trường Đại học Thủy lợi l&agrave; đương kim v&ocirc; địch giải s&acirc;n 7 sinh vi&ecirc;n H&agrave; Nội sẽ đại diện cho Thủ đ&ocirc; H&agrave; Nội tranh t&agrave;i tại Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 được tổ chức tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, Tp. Hồ Ch&iacute; Minh với sự g&oacute;p mặt của 4 đội b&oacute;ng. Trong đ&oacute;, 2 đại diện đến từ Thủ đ&ocirc; v&agrave; 2 đại diện của Th&agrave;nh phố Hồ Ch&iacute; Minh.&nbsp;Giải được chia th&agrave;nh 2 bảng, mỗi bảng 2 đội, thi đấu đ&aacute; loại trực tiếp. Hai đội thắng mỗi bảng sẽ v&agrave;o trận chung kết tranh ng&ocirc;i v&ocirc; địch.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk2.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Trận b&aacute;n kết giữa ĐH Thủy lợi v&agrave; ĐH T&ocirc;n Đức Thắng diễn ra v&agrave;o chiều ng&agrave;y 09/12/2022 tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, th&agrave;nh phố Hồ Ch&iacute; Minh.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk3.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Ngay từ những ph&uacute;t đầu ti&ecirc;n, đội chủ nh&agrave; tấn c&ocirc;ng dồn dập với những đường l&ecirc;n b&oacute;ng sắc n&eacute;t v&agrave; c&oacute; độ nguy hiểm cao. Về ph&iacute;a ĐH Thủy lợi sau &iacute;t ph&uacute;t thăm d&ograve; ban đầu đ&atilde; c&oacute; nhiều hơn những pha b&oacute;ng nguy hiểm về ph&iacute;a đối thủ.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk4.jpg?ver=2022-12-10-004258-387\" /></p>\n\n<p>Với lối đ&aacute; chắc chắn v&agrave; những đường l&ecirc;n b&oacute;ng c&oacute; n&eacute;t, đa dạng biến h&oacute;a đ&atilde; tạo ra v&ocirc; số cơ hội ngon ăn. Phải chờ đến ph&uacute;t thứ 17 tiền đạo Văn Dũng (số 9) b&ecirc;n ph&iacute;a Đại học Thủy lợi đ&atilde; c&oacute; pha xử l&yacute; kh&eacute;o l&eacute;o đưa b&oacute;ng v&agrave;o lưới đội ĐH T&ocirc;n Đức Thắng gi&uacute;p Đại học Thủy lợi dẫn trước 1-0.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk5.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Bước sang Hiệp 2, vẫn duy tr&igrave; lối đ&aacute; chắc chắn, đội tuyển của ch&uacute;ng ta đ&atilde; c&oacute; nhiều hơn những cơ hội để n&acirc;ng tỷ số l&ecirc;n 2-0. Điều g&igrave; đến cũng phải đến, ph&uacute;t thứ 7 của hiệp thứ 2, tiếp tục l&agrave; Văn Dũng (số 9) c&oacute; một pha leo bi&ecirc;n kh&eacute;o l&eacute;o b&ecirc;n ph&iacute;a c&aacute;nh tr&aacute;i căng ngang cho Ho&agrave;ng Danh (số 11) s&uacute;t ch&eacute;o g&oacute;c n&acirc;ng tỷ số l&ecirc;n 2-0. Ngay sau b&agrave;n thua thứ 2, ĐH T&ocirc;n Đức Thắng dồn to&agrave;n lực mặt trận tấn c&ocirc;ng nhằm t&igrave;m kiếm b&agrave;n thắng. Tuy nhi&ecirc;n, đội bạn kh&ocirc;ng g&acirc;y ra qu&aacute; nhiều kh&oacute; khăn cho h&agrave;ng thủ của ĐH Thủy lợi. Đến ph&uacute;t b&ugrave; giờ thứ 3, một si&ecirc;u phẩm tr&ecirc;n SVĐ TĐH T&ocirc;n Đức Thắng, Ho&agrave;ng Danh (số 11) của ĐH Thủy lợi sau pha đ&aacute; phạt g&oacute;c, từ khoảng c&aacute;ch 7m n&atilde; một c&uacute; tr&aacute;i ph&aacute; v&agrave;o khung th&agrave;nh ĐH T&ocirc;n Đức Thắng, đ&atilde; dập tắt ho&agrave;n to&agrave;n hy vọng c&oacute; b&agrave;n thắng của đội bạn.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk6.jpg?ver=2022-12-10-003725-520\" /></p>\n\n<p>H&agrave;ng trăm kh&aacute;n giả l&agrave; c&aacute;c thầy c&ocirc; gi&aacute;o, c&aacute;n bộ vi&ecirc;n chức v&agrave; sinh vi&ecirc;n ph&acirc;n hiệu tại Th&agrave;nh phố Hồ Ch&iacute; Minh đ&atilde; đến tiếp sức cho đội tuyển. Sự cổ vũ đ&ocirc;ng đảo, nhiệt t&igrave;nh &aacute;p đảo cả đội cổ động vi&ecirc;n của đội chủ nh&agrave; cũng l&agrave; điểm nổi bật g&acirc;y sự bất ngờ cho Ban tổ chức giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 .</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk7.jpg?ver=2022-12-10-003725-537\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk8.jpg?ver=2022-12-10-003725-597\" /></p>\n\n<p>Với chiến thắng 3-0 cho thấy sức hủy diệt của ĐH Thủy lợi trước một đội b&oacute;ng mạnh như ĐH T&ocirc;n Đức Thắng. Với lối chơi mạnh mẽ, tấn c&ocirc;ng đa dạng, ĐH Thủy lợi đ&atilde; xứng đ&aacute;ng c&oacute; mặt trong trận chung kết với ĐH Sư phạm Thể dục thể thao TPHCM. Trận chung kết sẽ diễn ra v&agrave;o l&uacute;c 15h30 Chủ nhật ng&agrave;y 11/12/2022 tr&ecirc;n s&acirc;n vận động ĐH T&ocirc;n Đức Thắng, trực tiếp tr&ecirc;n k&ecirc;nh truyền h&igrave;nh FPT Play v&agrave; tr&ecirc;n fanpage Đại học Thủy lợi.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk9.jpg?ver=2022-12-10-003725-630\" />​</p>\n\n<p><strong>Video dấu ấn của Đại học Thủy lợi tại trận b&aacute;n kết&nbsp;</strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>B&igrave;nh Dương</strong></p>', '<p>Qu&aacute;n Qu&acirc;n SV7 H&agrave; Nội &ndash; Đại học Thủy lợi chạm ch&aacute;n &Aacute; qu&acirc;n SV7 Tp Hồ Ch&iacute; Minh &ndash; Đại học T&ocirc;n Đức Thắng trong trận b&aacute;n kết được cho l&agrave; một trận chung kết sớm của giải đấu, khi m&agrave; đội chủ nh&agrave; T&ocirc;n Đức Thắng quyết t&acirc;m gi&agrave;nh chiến thắng tr&ecirc;n s&acirc;n nh&agrave; để tri &acirc;n h&agrave;ng ngh&igrave;n cổ động vi&ecirc;n đồng h&agrave;nh c&ugrave;ng đội b&oacute;ng.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk1.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 diễn ra từ ng&agrave;y 09 đến ng&agrave;y 11/12/2022 đ&atilde; x&aacute;c định được 4 đội b&oacute;ng tham dự xuất sắc nhất của H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh. Đội tuyển b&oacute;ng đ&aacute; sinh vi&ecirc;n của Trường Đại học Thủy lợi l&agrave; đương kim v&ocirc; địch giải s&acirc;n 7 sinh vi&ecirc;n H&agrave; Nội sẽ đại diện cho Thủ đ&ocirc; H&agrave; Nội tranh t&agrave;i tại Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 được tổ chức tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, Tp. Hồ Ch&iacute; Minh với sự g&oacute;p mặt của 4 đội b&oacute;ng. Trong đ&oacute;, 2 đại diện đến từ Thủ đ&ocirc; v&agrave; 2 đại diện của Th&agrave;nh phố Hồ Ch&iacute; Minh.&nbsp;Giải được chia th&agrave;nh 2 bảng, mỗi bảng 2 đội, thi đấu đ&aacute; loại trực tiếp. Hai đội thắng mỗi bảng sẽ v&agrave;o trận chung kết tranh ng&ocirc;i v&ocirc; địch.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk2.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Trận b&aacute;n kết giữa ĐH Thủy lợi v&agrave; ĐH T&ocirc;n Đức Thắng diễn ra v&agrave;o chiều ng&agrave;y 09/12/2022 tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, th&agrave;nh phố Hồ Ch&iacute; Minh.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk3.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Ngay từ những ph&uacute;t đầu ti&ecirc;n, đội chủ nh&agrave; tấn c&ocirc;ng dồn dập với những đường l&ecirc;n b&oacute;ng sắc n&eacute;t v&agrave; c&oacute; độ nguy hiểm cao. Về ph&iacute;a ĐH Thủy lợi sau &iacute;t ph&uacute;t thăm d&ograve; ban đầu đ&atilde; c&oacute; nhiều hơn những pha b&oacute;ng nguy hiểm về ph&iacute;a đối thủ.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk4.jpg?ver=2022-12-10-004258-387\" /></p>\n\n<p>Với lối đ&aacute; chắc chắn v&agrave; những đường l&ecirc;n b&oacute;ng c&oacute; n&eacute;t, đa dạng biến h&oacute;a đ&atilde; tạo ra v&ocirc; số cơ hội ngon ăn. Phải chờ đến ph&uacute;t thứ 17 tiền đạo Văn Dũng (số 9) b&ecirc;n ph&iacute;a Đại học Thủy lợi đ&atilde; c&oacute; pha xử l&yacute; kh&eacute;o l&eacute;o đưa b&oacute;ng v&agrave;o lưới đội ĐH T&ocirc;n Đức Thắng gi&uacute;p Đại học Thủy lợi dẫn trước 1-0.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk5.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Bước sang Hiệp 2, vẫn duy tr&igrave; lối đ&aacute; chắc chắn, đội tuyển của ch&uacute;ng ta đ&atilde; c&oacute; nhiều hơn những cơ hội để n&acirc;ng tỷ số l&ecirc;n 2-0. Điều g&igrave; đến cũng phải đến, ph&uacute;t thứ 7 của hiệp thứ 2, tiếp tục l&agrave; Văn Dũng (số 9) c&oacute; một pha leo bi&ecirc;n kh&eacute;o l&eacute;o b&ecirc;n ph&iacute;a c&aacute;nh tr&aacute;i căng ngang cho Ho&agrave;ng Danh (số 11) s&uacute;t ch&eacute;o g&oacute;c n&acirc;ng tỷ số l&ecirc;n 2-0. Ngay sau b&agrave;n thua thứ 2, ĐH T&ocirc;n Đức Thắng dồn to&agrave;n lực mặt trận tấn c&ocirc;ng nhằm t&igrave;m kiếm b&agrave;n thắng. Tuy nhi&ecirc;n, đội bạn kh&ocirc;ng g&acirc;y ra qu&aacute; nhiều kh&oacute; khăn cho h&agrave;ng thủ của ĐH Thủy lợi. Đến ph&uacute;t b&ugrave; giờ thứ 3, một si&ecirc;u phẩm tr&ecirc;n SVĐ TĐH T&ocirc;n Đức Thắng, Ho&agrave;ng Danh (số 11) của ĐH Thủy lợi sau pha đ&aacute; phạt g&oacute;c, từ khoảng c&aacute;ch 7m n&atilde; một c&uacute; tr&aacute;i ph&aacute; v&agrave;o khung th&agrave;nh ĐH T&ocirc;n Đức Thắng, đ&atilde; dập tắt ho&agrave;n to&agrave;n hy vọng c&oacute; b&agrave;n thắng của đội bạn.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk6.jpg?ver=2022-12-10-003725-520\" /></p>\n\n<p>H&agrave;ng trăm kh&aacute;n giả l&agrave; c&aacute;c thầy c&ocirc; gi&aacute;o, c&aacute;n bộ vi&ecirc;n chức v&agrave; sinh vi&ecirc;n ph&acirc;n hiệu tại Th&agrave;nh phố Hồ Ch&iacute; Minh đ&atilde; đến tiếp sức cho đội tuyển. Sự cổ vũ đ&ocirc;ng đảo, nhiệt t&igrave;nh &aacute;p đảo cả đội cổ động vi&ecirc;n của đội chủ nh&agrave; cũng l&agrave; điểm nổi bật g&acirc;y sự bất ngờ cho Ban tổ chức giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 .</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk7.jpg?ver=2022-12-10-003725-537\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk8.jpg?ver=2022-12-10-003725-597\" /></p>\n\n<p>Với chiến thắng 3-0 cho thấy sức hủy diệt của ĐH Thủy lợi trước một đội b&oacute;ng mạnh như ĐH T&ocirc;n Đức Thắng. Với lối chơi mạnh mẽ, tấn c&ocirc;ng đa dạng, ĐH Thủy lợi đ&atilde; xứng đ&aacute;ng c&oacute; mặt trong trận chung kết với ĐH Sư phạm Thể dục thể thao TPHCM. Trận chung kết sẽ diễn ra v&agrave;o l&uacute;c 15h30 Chủ nhật ng&agrave;y 11/12/2022 tr&ecirc;n s&acirc;n vận động ĐH T&ocirc;n Đức Thắng, trực tiếp tr&ecirc;n k&ecirc;nh truyền h&igrave;nh FPT Play v&agrave; tr&ecirc;n fanpage Đại học Thủy lợi.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk9.jpg?ver=2022-12-10-003725-630\" />​</p>\n\n<p><strong>Video dấu ấn của Đại học Thủy lợi tại trận b&aacute;n kết&nbsp;</strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>B&igrave;nh Dương</strong></p>', 1, 'App\\Models\\Section', '2022-12-11 08:23:25', '2022-12-11 08:23:25'),
(5, 'sub_title1670772205', 'ĐH Thủy lợi vào chung kết giải bóng đá sinh viên Toàn quốc 2022', 'ĐH Thủy lợi vào chung kết giải bóng đá sinh viên Toàn quốc 2022', 1, 'App\\Models\\Section', '2022-12-11 08:23:25', '2022-12-11 08:23:25'),
(6, 'title1670772269', 'News', 'Tin Tức', 1, 'App\\Models\\PageContent', '2022-12-11 08:24:29', '2022-12-11 08:24:29'),
(7, 'description1670772269', '<p>Qu&aacute;n Qu&acirc;n SV7 H&agrave; Nội &ndash; Đại học Thủy lợi chạm ch&aacute;n &Aacute; qu&acirc;n SV7 Tp Hồ Ch&iacute; Minh &ndash; Đại học T&ocirc;n Đức Thắng trong trận b&aacute;n kết được cho l&agrave; một trận chung kết sớm của giải đấu, khi m&agrave; đội chủ nh&agrave; T&ocirc;n Đức Thắng quyết t&acirc;m gi&agrave;nh chiến thắng tr&ecirc;n s&acirc;n nh&agrave; để tri &acirc;n h&agrave;ng ngh&igrave;n cổ động vi&ecirc;n đồng h&agrave;nh c&ugrave;ng đội b&oacute;ng.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk1.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 diễn ra từ ng&agrave;y 09 đến ng&agrave;y 11/12/2022 đ&atilde; x&aacute;c định được 4 đội b&oacute;ng tham dự xuất sắc nhất của H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh. Đội tuyển b&oacute;ng đ&aacute; sinh vi&ecirc;n của Trường Đại học Thủy lợi l&agrave; đương kim v&ocirc; địch giải s&acirc;n 7 sinh vi&ecirc;n H&agrave; Nội sẽ đại diện cho Thủ đ&ocirc; H&agrave; Nội tranh t&agrave;i tại Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 được tổ chức tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, Tp. Hồ Ch&iacute; Minh với sự g&oacute;p mặt của 4 đội b&oacute;ng. Trong đ&oacute;, 2 đại diện đến từ Thủ đ&ocirc; v&agrave; 2 đại diện của Th&agrave;nh phố Hồ Ch&iacute; Minh.&nbsp;Giải được chia th&agrave;nh 2 bảng, mỗi bảng 2 đội, thi đấu đ&aacute; loại trực tiếp. Hai đội thắng mỗi bảng sẽ v&agrave;o trận chung kết tranh ng&ocirc;i v&ocirc; địch.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk2.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Trận b&aacute;n kết giữa ĐH Thủy lợi v&agrave; ĐH T&ocirc;n Đức Thắng diễn ra v&agrave;o chiều ng&agrave;y 09/12/2022 tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, th&agrave;nh phố Hồ Ch&iacute; Minh.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk3.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Ngay từ những ph&uacute;t đầu ti&ecirc;n, đội chủ nh&agrave; tấn c&ocirc;ng dồn dập với những đường l&ecirc;n b&oacute;ng sắc n&eacute;t v&agrave; c&oacute; độ nguy hiểm cao. Về ph&iacute;a ĐH Thủy lợi sau &iacute;t ph&uacute;t thăm d&ograve; ban đầu đ&atilde; c&oacute; nhiều hơn những pha b&oacute;ng nguy hiểm về ph&iacute;a đối thủ.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk4.jpg?ver=2022-12-10-004258-387\" /></p>\n\n<p>Với lối đ&aacute; chắc chắn v&agrave; những đường l&ecirc;n b&oacute;ng c&oacute; n&eacute;t, đa dạng biến h&oacute;a đ&atilde; tạo ra v&ocirc; số cơ hội ngon ăn. Phải chờ đến ph&uacute;t thứ 17 tiền đạo Văn Dũng (số 9) b&ecirc;n ph&iacute;a Đại học Thủy lợi đ&atilde; c&oacute; pha xử l&yacute; kh&eacute;o l&eacute;o đưa b&oacute;ng v&agrave;o lưới đội ĐH T&ocirc;n Đức Thắng gi&uacute;p Đại học Thủy lợi dẫn trước 1-0.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk5.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Bước sang Hiệp 2, vẫn duy tr&igrave; lối đ&aacute; chắc chắn, đội tuyển của ch&uacute;ng ta đ&atilde; c&oacute; nhiều hơn những cơ hội để n&acirc;ng tỷ số l&ecirc;n 2-0. Điều g&igrave; đến cũng phải đến, ph&uacute;t thứ 7 của hiệp thứ 2, tiếp tục l&agrave; Văn Dũng (số 9) c&oacute; một pha leo bi&ecirc;n kh&eacute;o l&eacute;o b&ecirc;n ph&iacute;a c&aacute;nh tr&aacute;i căng ngang cho Ho&agrave;ng Danh (số 11) s&uacute;t ch&eacute;o g&oacute;c n&acirc;ng tỷ số l&ecirc;n 2-0. Ngay sau b&agrave;n thua thứ 2, ĐH T&ocirc;n Đức Thắng dồn to&agrave;n lực mặt trận tấn c&ocirc;ng nhằm t&igrave;m kiếm b&agrave;n thắng. Tuy nhi&ecirc;n, đội bạn kh&ocirc;ng g&acirc;y ra qu&aacute; nhiều kh&oacute; khăn cho h&agrave;ng thủ của ĐH Thủy lợi. Đến ph&uacute;t b&ugrave; giờ thứ 3, một si&ecirc;u phẩm tr&ecirc;n SVĐ TĐH T&ocirc;n Đức Thắng, Ho&agrave;ng Danh (số 11) của ĐH Thủy lợi sau pha đ&aacute; phạt g&oacute;c, từ khoảng c&aacute;ch 7m n&atilde; một c&uacute; tr&aacute;i ph&aacute; v&agrave;o khung th&agrave;nh ĐH T&ocirc;n Đức Thắng, đ&atilde; dập tắt ho&agrave;n to&agrave;n hy vọng c&oacute; b&agrave;n thắng của đội bạn.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk6.jpg?ver=2022-12-10-003725-520\" /></p>\n\n<p>H&agrave;ng trăm kh&aacute;n giả l&agrave; c&aacute;c thầy c&ocirc; gi&aacute;o, c&aacute;n bộ vi&ecirc;n chức v&agrave; sinh vi&ecirc;n ph&acirc;n hiệu tại Th&agrave;nh phố Hồ Ch&iacute; Minh đ&atilde; đến tiếp sức cho đội tuyển. Sự cổ vũ đ&ocirc;ng đảo, nhiệt t&igrave;nh &aacute;p đảo cả đội cổ động vi&ecirc;n của đội chủ nh&agrave; cũng l&agrave; điểm nổi bật g&acirc;y sự bất ngờ cho Ban tổ chức giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 .</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk7.jpg?ver=2022-12-10-003725-537\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk8.jpg?ver=2022-12-10-003725-597\" /></p>\n\n<p>Với chiến thắng 3-0 cho thấy sức hủy diệt của ĐH Thủy lợi trước một đội b&oacute;ng mạnh như ĐH T&ocirc;n Đức Thắng. Với lối chơi mạnh mẽ, tấn c&ocirc;ng đa dạng, ĐH Thủy lợi đ&atilde; xứng đ&aacute;ng c&oacute; mặt trong trận chung kết với ĐH Sư phạm Thể dục thể thao TPHCM. Trận chung kết sẽ diễn ra v&agrave;o l&uacute;c 15h30 Chủ nhật ng&agrave;y 11/12/2022 tr&ecirc;n s&acirc;n vận động ĐH T&ocirc;n Đức Thắng, trực tiếp tr&ecirc;n k&ecirc;nh truyền h&igrave;nh FPT Play v&agrave; tr&ecirc;n fanpage Đại học Thủy lợi.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk9.jpg?ver=2022-12-10-003725-630\" />​</p>\n\n<p><strong>Video dấu ấn của Đại học Thủy lợi tại trận b&aacute;n kết&nbsp;</strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>B&igrave;nh Dương</strong></p>', '<p>Qu&aacute;n Qu&acirc;n SV7 H&agrave; Nội &ndash; Đại học Thủy lợi chạm ch&aacute;n &Aacute; qu&acirc;n SV7 Tp Hồ Ch&iacute; Minh &ndash; Đại học T&ocirc;n Đức Thắng trong trận b&aacute;n kết được cho l&agrave; một trận chung kết sớm của giải đấu, khi m&agrave; đội chủ nh&agrave; T&ocirc;n Đức Thắng quyết t&acirc;m gi&agrave;nh chiến thắng tr&ecirc;n s&acirc;n nh&agrave; để tri &acirc;n h&agrave;ng ngh&igrave;n cổ động vi&ecirc;n đồng h&agrave;nh c&ugrave;ng đội b&oacute;ng.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk1.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 diễn ra từ ng&agrave;y 09 đến ng&agrave;y 11/12/2022 đ&atilde; x&aacute;c định được 4 đội b&oacute;ng tham dự xuất sắc nhất của H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh. Đội tuyển b&oacute;ng đ&aacute; sinh vi&ecirc;n của Trường Đại học Thủy lợi l&agrave; đương kim v&ocirc; địch giải s&acirc;n 7 sinh vi&ecirc;n H&agrave; Nội sẽ đại diện cho Thủ đ&ocirc; H&agrave; Nội tranh t&agrave;i tại Giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 được tổ chức tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, Tp. Hồ Ch&iacute; Minh với sự g&oacute;p mặt của 4 đội b&oacute;ng. Trong đ&oacute;, 2 đại diện đến từ Thủ đ&ocirc; v&agrave; 2 đại diện của Th&agrave;nh phố Hồ Ch&iacute; Minh.&nbsp;Giải được chia th&agrave;nh 2 bảng, mỗi bảng 2 đội, thi đấu đ&aacute; loại trực tiếp. Hai đội thắng mỗi bảng sẽ v&agrave;o trận chung kết tranh ng&ocirc;i v&ocirc; địch.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk2.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Trận b&aacute;n kết giữa ĐH Thủy lợi v&agrave; ĐH T&ocirc;n Đức Thắng diễn ra v&agrave;o chiều ng&agrave;y 09/12/2022 tr&ecirc;n s&acirc;n vận động Trường Đại học T&ocirc;n Đức Thắng, th&agrave;nh phố Hồ Ch&iacute; Minh.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk3.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Ngay từ những ph&uacute;t đầu ti&ecirc;n, đội chủ nh&agrave; tấn c&ocirc;ng dồn dập với những đường l&ecirc;n b&oacute;ng sắc n&eacute;t v&agrave; c&oacute; độ nguy hiểm cao. Về ph&iacute;a ĐH Thủy lợi sau &iacute;t ph&uacute;t thăm d&ograve; ban đầu đ&atilde; c&oacute; nhiều hơn những pha b&oacute;ng nguy hiểm về ph&iacute;a đối thủ.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk4.jpg?ver=2022-12-10-004258-387\" /></p>\n\n<p>Với lối đ&aacute; chắc chắn v&agrave; những đường l&ecirc;n b&oacute;ng c&oacute; n&eacute;t, đa dạng biến h&oacute;a đ&atilde; tạo ra v&ocirc; số cơ hội ngon ăn. Phải chờ đến ph&uacute;t thứ 17 tiền đạo Văn Dũng (số 9) b&ecirc;n ph&iacute;a Đại học Thủy lợi đ&atilde; c&oacute; pha xử l&yacute; kh&eacute;o l&eacute;o đưa b&oacute;ng v&agrave;o lưới đội ĐH T&ocirc;n Đức Thắng gi&uacute;p Đại học Thủy lợi dẫn trước 1-0.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk5.jpg?ver=2022-12-10-003725-443\" /></p>\n\n<p>Bước sang Hiệp 2, vẫn duy tr&igrave; lối đ&aacute; chắc chắn, đội tuyển của ch&uacute;ng ta đ&atilde; c&oacute; nhiều hơn những cơ hội để n&acirc;ng tỷ số l&ecirc;n 2-0. Điều g&igrave; đến cũng phải đến, ph&uacute;t thứ 7 của hiệp thứ 2, tiếp tục l&agrave; Văn Dũng (số 9) c&oacute; một pha leo bi&ecirc;n kh&eacute;o l&eacute;o b&ecirc;n ph&iacute;a c&aacute;nh tr&aacute;i căng ngang cho Ho&agrave;ng Danh (số 11) s&uacute;t ch&eacute;o g&oacute;c n&acirc;ng tỷ số l&ecirc;n 2-0. Ngay sau b&agrave;n thua thứ 2, ĐH T&ocirc;n Đức Thắng dồn to&agrave;n lực mặt trận tấn c&ocirc;ng nhằm t&igrave;m kiếm b&agrave;n thắng. Tuy nhi&ecirc;n, đội bạn kh&ocirc;ng g&acirc;y ra qu&aacute; nhiều kh&oacute; khăn cho h&agrave;ng thủ của ĐH Thủy lợi. Đến ph&uacute;t b&ugrave; giờ thứ 3, một si&ecirc;u phẩm tr&ecirc;n SVĐ TĐH T&ocirc;n Đức Thắng, Ho&agrave;ng Danh (số 11) của ĐH Thủy lợi sau pha đ&aacute; phạt g&oacute;c, từ khoảng c&aacute;ch 7m n&atilde; một c&uacute; tr&aacute;i ph&aacute; v&agrave;o khung th&agrave;nh ĐH T&ocirc;n Đức Thắng, đ&atilde; dập tắt ho&agrave;n to&agrave;n hy vọng c&oacute; b&agrave;n thắng của đội bạn.</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk6.jpg?ver=2022-12-10-003725-520\" /></p>\n\n<p>H&agrave;ng trăm kh&aacute;n giả l&agrave; c&aacute;c thầy c&ocirc; gi&aacute;o, c&aacute;n bộ vi&ecirc;n chức v&agrave; sinh vi&ecirc;n ph&acirc;n hiệu tại Th&agrave;nh phố Hồ Ch&iacute; Minh đ&atilde; đến tiếp sức cho đội tuyển. Sự cổ vũ đ&ocirc;ng đảo, nhiệt t&igrave;nh &aacute;p đảo cả đội cổ động vi&ecirc;n của đội chủ nh&agrave; cũng l&agrave; điểm nổi bật g&acirc;y sự bất ngờ cho Ban tổ chức giải b&oacute;ng đ&aacute; 7 người sinh vi&ecirc;n to&agrave;n quốc năm 2022 .</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk7.jpg?ver=2022-12-10-003725-537\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk8.jpg?ver=2022-12-10-003725-597\" /></p>\n\n<p>Với chiến thắng 3-0 cho thấy sức hủy diệt của ĐH Thủy lợi trước một đội b&oacute;ng mạnh như ĐH T&ocirc;n Đức Thắng. Với lối chơi mạnh mẽ, tấn c&ocirc;ng đa dạng, ĐH Thủy lợi đ&atilde; xứng đ&aacute;ng c&oacute; mặt trong trận chung kết với ĐH Sư phạm Thể dục thể thao TPHCM. Trận chung kết sẽ diễn ra v&agrave;o l&uacute;c 15h30 Chủ nhật ng&agrave;y 11/12/2022 tr&ecirc;n s&acirc;n vận động ĐH T&ocirc;n Đức Thắng, trực tiếp tr&ecirc;n k&ecirc;nh truyền h&igrave;nh FPT Play v&agrave; tr&ecirc;n fanpage Đại học Thủy lợi.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/Portals/0/2022/Thang12/bk9.jpg?ver=2022-12-10-003725-630\" />​</p>\n\n<p><strong>Video dấu ấn của Đại học Thủy lợi tại trận b&aacute;n kết&nbsp;</strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><strong>B&igrave;nh Dương</strong></p>', 1, 'App\\Models\\PageContent', '2022-12-11 08:24:29', '2022-12-11 08:24:29'),
(8, 'sub_title1670772269', 'ĐH Thủy lợi vào chung kết giải bóng đá sinh viên Toàn quốc 2022', 'ĐH Thủy lợi vào chung kết giải bóng đá sinh viên Toàn quốc 2022', 1, 'App\\Models\\PageContent', '2022-12-11 08:24:29', '2022-12-11 08:24:29'),
(9, 'title1672324788', 'Virtual Tour', 'Virtual Tour', 2, 'App\\Models\\Section', '2022-12-29 07:39:48', '2022-12-29 07:39:48'),
(10, 'description1672324788', ' ', ' ', 2, 'App\\Models\\Section', '2022-12-29 07:39:48', '2022-12-29 07:39:48'),
(11, 'sub_title1672324788', 'Virtual Reality Expe', 'Virtual Reality Expe', 2, 'App\\Models\\Section', '2022-12-29 07:39:48', '2022-12-29 07:39:48'),
(15, 'title1672325000', 'Virtual Tour', 'Virtual Tour', 3, 'App\\Models\\PageContent', '2022-12-29 07:43:20', '2022-12-29 07:43:20'),
(16, 'description1672325000', ' ', ' ', 3, 'App\\Models\\PageContent', '2022-12-29 07:43:20', '2022-12-29 07:43:20'),
(17, 'sub_title1672325000', 'Virtual Tour', 'Virtual Tour', 3, 'App\\Models\\PageContent', '2022-12-29 07:43:20', '2022-12-29 07:43:20'),
(18, 'title1672325108', 'Tin Tức', 'Tin Tức', 3, 'App\\Models\\Section', '2022-12-29 07:45:08', '2022-12-29 07:45:38'),
(19, 'description1672325108', ' ', ' ', 3, 'App\\Models\\Section', '2022-12-29 07:45:08', '2022-12-29 07:45:08'),
(20, 'sub_title1672325108', 'Tin Tức', 'Tin Tức', 3, 'App\\Models\\Section', '2022-12-29 07:45:08', '2022-12-29 07:45:38'),
(21, 'title1672325204', 'Đào Tạo - Tuyển Sinh', 'Đào Tạo - Tuyển Sinh', 4, 'App\\Models\\Section', '2022-12-29 07:46:44', '2022-12-29 07:46:44'),
(22, 'description1672325204', ' ', ' ', 4, 'App\\Models\\Section', '2022-12-29 07:46:44', '2022-12-29 07:46:44'),
(23, 'sub_title1672325204', 'Đào Tạo - Tuyển Sinh', 'Đào Tạo - Tuyển Sinh', 4, 'App\\Models\\Section', '2022-12-29 07:46:44', '2022-12-29 07:46:44'),
(24, 'title1672325251', 'Hợp Tác Đối Ngoại', 'Hợp Tác Đối Ngoại', 5, 'App\\Models\\Section', '2022-12-29 07:47:31', '2022-12-29 07:47:31'),
(25, 'description1672325251', ' ', ' ', 5, 'App\\Models\\Section', '2022-12-29 07:47:31', '2022-12-29 07:47:31'),
(26, 'sub_title1672325251', 'Hợp Tác Đối Ngoại', 'Hợp Tác Đối Ngoại', 5, 'App\\Models\\Section', '2022-12-29 07:47:31', '2022-12-29 07:47:31'),
(27, 'title1672325273', 'Cựu sinh Viên', 'Cựu sinh Viên', 6, 'App\\Models\\Section', '2022-12-29 07:47:53', '2022-12-29 07:47:53'),
(28, 'description1672325273', ' ', ' ', 6, 'App\\Models\\Section', '2022-12-29 07:47:53', '2022-12-29 07:47:53'),
(29, 'sub_title1672325273', 'Cựu sinh Viên', 'Cựu sinh Viên', 6, 'App\\Models\\Section', '2022-12-29 07:47:53', '2022-12-29 07:47:53'),
(30, 'title1672325786', 'Thông báo tuyển sinh đại học chính quy năm 2023 (TLA)', 'Thông báo tuyển sinh đại học chính quy năm 2023 (TLA)', 1, 'App\\Models\\News', '2022-12-29 07:56:26', '2022-12-29 07:56:26');
INSERT INTO `languages` (`id`, `key`, `en`, `vn`, `languageable_id`, `languageable_type`, `created_at`, `updated_at`) VALUES
(31, 'content1672325786', '<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>24/12/2022 10:09</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;941</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o dự kiến tuyển sinh tr&igrave;nh độ đại học hệ ch&iacute;nh quy năm 2023 như sau:</p>\r\n\r\n<p><strong>Ng&agrave;nh v&agrave; chỉ ti&ecirc;u tuyển sinh</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n			<p><strong>TT</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>M&atilde; tuyển sinh</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>T&ecirc;n ng&agrave;nh/Nh&oacute;m ng&agrave;nh</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>Tổ hợp x&eacute;t tuyển</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>Chỉ ti&ecirc;u</strong></p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>I</strong></p>\r\n			</td>\r\n			<td colspan=\"4\">\r\n			<p><strong>&nbsp;C&aacute;c ng&agrave;nh, nh&oacute;m ng&agrave;nh đ&agrave;o tạo bằng Tiếng Việt&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA101</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA104</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng d&acirc;n dụng v&agrave; c&ocirc;ng nghiệp (Kỹ thuật x&acirc;y dựng)&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA111</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ kỹ thuật x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>140</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA113</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>5</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA114</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản l&yacute; x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>270</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>6</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA102</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật t&agrave;i nguy&ecirc;n nước (Quy hoạch, thiết kế v&agrave; quản l&yacute; c&ocirc;ng tr&igrave;nh thủy lợi)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA107</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật cấp tho&aacute;t nước</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA110</p>\r\n			</td>\r\n			<td>\r\n			<p>X&acirc;y dựng v&agrave; quản l&yacute; hạ tầng đ&ocirc; thị (Kỹ thuật cơ sở hạ tầng)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>9</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA103</p>\r\n			</td>\r\n			<td>\r\n			<p>T&agrave;i nguy&ecirc;n nước v&agrave; m&ocirc;i trường (Thủy văn học)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>70</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA119</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ sinh học</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A02, B00, D08</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>11</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA109</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật m&ocirc;i trường</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, B00, D01</p>\r\n			</td>\r\n			<td>\r\n			<p>80</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>12</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA118</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật h&oacute;a học</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, B00, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>80</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>13</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA106</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ th&ocirc;ng tin&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>340</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>14</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA116</p>\r\n			</td>\r\n			<td>\r\n			<p>Hệ thống th&ocirc;ng tin&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>15</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA117</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật phần mềm&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>16</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA126</p>\r\n			</td>\r\n			<td>\r\n			<p>Tr&iacute; tuệ nh&acirc;n tạo v&agrave; khoa học dữ liệu&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>17</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA127</p>\r\n			</td>\r\n			<td>\r\n			<p>An ninh mạng&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA105</p>\r\n			</td>\r\n			<td>\r\n			<p>Nh&oacute;m ng&agrave;nh Kỹ thuật cơ kh&iacute; (gồm c&aacute;c ng&agrave;nh: Kỹ thuật cơ kh&iacute;, C&ocirc;ng nghệ chế tạo m&aacute;y)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>270</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>19</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA123</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật &Ocirc; t&ocirc;&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>20</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA120</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật cơ điện tử&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>21</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA112</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điện&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>22</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA121</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điều khiển v&agrave; tự động h&oacute;a&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>23</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA124</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điện tử - viễn th&ocirc;ng&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>140</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>24</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA128</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật Robot v&agrave; Điều khiển th&ocirc;ng minh</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>70</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>25</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA401</p>\r\n			</td>\r\n			<td>\r\n			<p>Kinh tế</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>26</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA402</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản trị kinh doanh</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>27</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA403</p>\r\n			</td>\r\n			<td>\r\n			<p>Kế to&aacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>28</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA404</p>\r\n			</td>\r\n			<td>\r\n			<p>Kinh tế x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>29</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA407</p>\r\n			</td>\r\n			<td>\r\n			<p>Logistics v&agrave; quản l&yacute; chuỗi cung ứng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>30</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA406</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>31</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA405</p>\r\n			</td>\r\n			<td>\r\n			<p>Thương mại điện tử</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>110</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>32</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA203</p>\r\n			</td>\r\n			<td>\r\n			<p>Ng&ocirc;n ngữ Anh</p>\r\n			</td>\r\n			<td>\r\n			<p>A01, D01, D07, D08</p>\r\n			</td>\r\n			<td>\r\n			<p>140</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>33</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA408</p>\r\n			</td>\r\n			<td>\r\n			<p>T&agrave;i ch&iacute;nh &ndash; Ng&acirc;n h&agrave;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>110</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>34</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA409</p>\r\n			</td>\r\n			<td>\r\n			<p>Kiểm to&aacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>110</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>35</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA410</p>\r\n			</td>\r\n			<td>\r\n			<p>Kinh tế số</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>36</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA301</p>\r\n			</td>\r\n			<td>\r\n			<p>Luật</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, C00, D01</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>37</p>\r\n			</td>\r\n			<td>\r\n			<p><em>TLA204</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>Ng&ocirc;n ngữ H&agrave;n (Dự kiến)</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>A01, D01, D07, D08</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>50</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>38</p>\r\n			</td>\r\n			<td>\r\n			<p><em>TLA205</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>Ng&ocirc;n ngữ Trung (Tiếng Trung)</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>A01, D01, D07, D04</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>50</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>II</strong></p>\r\n			</td>\r\n			<td colspan=\"4\">\r\n			<p><strong>Chương tr&igrave;nh ti&ecirc;n tiến đ&agrave;o tạo bằng tiếng Anh</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA201</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng&nbsp;(**)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>60</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>Tổng chỉ ti&ecirc;u</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>5500</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>24/12/2022 10:09</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;941</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trường Đại học Thủy lợi th&ocirc;ng b&aacute;o dự kiến tuyển sinh tr&igrave;nh độ đại học hệ ch&iacute;nh quy năm 2023 như sau:</p>\r\n\r\n<p><strong>Ng&agrave;nh v&agrave; chỉ ti&ecirc;u tuyển sinh</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n			<p><strong>TT</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>M&atilde; tuyển sinh</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>T&ecirc;n ng&agrave;nh/Nh&oacute;m ng&agrave;nh</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>Tổ hợp x&eacute;t tuyển</strong></p>\r\n			</th>\r\n			<th>\r\n			<p><strong>Chỉ ti&ecirc;u</strong></p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>I</strong></p>\r\n			</td>\r\n			<td colspan=\"4\">\r\n			<p><strong>&nbsp;C&aacute;c ng&agrave;nh, nh&oacute;m ng&agrave;nh đ&agrave;o tạo bằng Tiếng Việt&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA101</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA104</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng d&acirc;n dụng v&agrave; c&ocirc;ng nghiệp (Kỹ thuật x&acirc;y dựng)&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA111</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ kỹ thuật x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>140</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA113</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>5</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA114</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản l&yacute; x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>270</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>6</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA102</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật t&agrave;i nguy&ecirc;n nước (Quy hoạch, thiết kế v&agrave; quản l&yacute; c&ocirc;ng tr&igrave;nh thủy lợi)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>7</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA107</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật cấp tho&aacute;t nước</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA110</p>\r\n			</td>\r\n			<td>\r\n			<p>X&acirc;y dựng v&agrave; quản l&yacute; hạ tầng đ&ocirc; thị (Kỹ thuật cơ sở hạ tầng)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>9</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA103</p>\r\n			</td>\r\n			<td>\r\n			<p>T&agrave;i nguy&ecirc;n nước v&agrave; m&ocirc;i trường (Thủy văn học)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>70</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA119</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ sinh học</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A02, B00, D08</p>\r\n			</td>\r\n			<td>\r\n			<p>90</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>11</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA109</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật m&ocirc;i trường</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, B00, D01</p>\r\n			</td>\r\n			<td>\r\n			<p>80</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>12</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA118</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật h&oacute;a học</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, B00, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>80</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>13</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA106</p>\r\n			</td>\r\n			<td>\r\n			<p>C&ocirc;ng nghệ th&ocirc;ng tin&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>340</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>14</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA116</p>\r\n			</td>\r\n			<td>\r\n			<p>Hệ thống th&ocirc;ng tin&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>15</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA117</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật phần mềm&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>16</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA126</p>\r\n			</td>\r\n			<td>\r\n			<p>Tr&iacute; tuệ nh&acirc;n tạo v&agrave; khoa học dữ liệu&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>17</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA127</p>\r\n			</td>\r\n			<td>\r\n			<p>An ninh mạng&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>18</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA105</p>\r\n			</td>\r\n			<td>\r\n			<p>Nh&oacute;m ng&agrave;nh Kỹ thuật cơ kh&iacute; (gồm c&aacute;c ng&agrave;nh: Kỹ thuật cơ kh&iacute;, C&ocirc;ng nghệ chế tạo m&aacute;y)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>270</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>19</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA123</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật &Ocirc; t&ocirc;&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>20</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA120</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật cơ điện tử&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>21</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA112</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điện&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>22</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA121</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điều khiển v&agrave; tự động h&oacute;a&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>23</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA124</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật điện tử - viễn th&ocirc;ng&nbsp;(*)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>140</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>24</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA128</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật Robot v&agrave; Điều khiển th&ocirc;ng minh</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>70</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>25</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA401</p>\r\n			</td>\r\n			<td>\r\n			<p>Kinh tế</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>26</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA402</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản trị kinh doanh</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>27</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA403</p>\r\n			</td>\r\n			<td>\r\n			<p>Kế to&aacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>28</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA404</p>\r\n			</td>\r\n			<td>\r\n			<p>Kinh tế x&acirc;y dựng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>210</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>29</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA407</p>\r\n			</td>\r\n			<td>\r\n			<p>Logistics v&agrave; quản l&yacute; chuỗi cung ứng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>30</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA406</p>\r\n			</td>\r\n			<td>\r\n			<p>Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>180</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>31</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA405</p>\r\n			</td>\r\n			<td>\r\n			<p>Thương mại điện tử</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>110</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>32</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA203</p>\r\n			</td>\r\n			<td>\r\n			<p>Ng&ocirc;n ngữ Anh</p>\r\n			</td>\r\n			<td>\r\n			<p>A01, D01, D07, D08</p>\r\n			</td>\r\n			<td>\r\n			<p>140</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>33</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA408</p>\r\n			</td>\r\n			<td>\r\n			<p>T&agrave;i ch&iacute;nh &ndash; Ng&acirc;n h&agrave;ng</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>110</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>34</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA409</p>\r\n			</td>\r\n			<td>\r\n			<p>Kiểm to&aacute;n</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>110</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>35</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA410</p>\r\n			</td>\r\n			<td>\r\n			<p>Kinh tế số</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>100</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>36</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA301</p>\r\n			</td>\r\n			<td>\r\n			<p>Luật</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, C00, D01</p>\r\n			</td>\r\n			<td>\r\n			<p>120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>37</p>\r\n			</td>\r\n			<td>\r\n			<p><em>TLA204</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>Ng&ocirc;n ngữ H&agrave;n (Dự kiến)</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>A01, D01, D07, D08</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>50</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>38</p>\r\n			</td>\r\n			<td>\r\n			<p><em>TLA205</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>Ng&ocirc;n ngữ Trung (Tiếng Trung)</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>A01, D01, D07, D04</em></p>\r\n			</td>\r\n			<td>\r\n			<p><em>50</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>II</strong></p>\r\n			</td>\r\n			<td colspan=\"4\">\r\n			<p><strong>Chương tr&igrave;nh ti&ecirc;n tiến đ&agrave;o tạo bằng tiếng Anh</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>TLA201</p>\r\n			</td>\r\n			<td>\r\n			<p>Kỹ thuật x&acirc;y dựng&nbsp;(**)</p>\r\n			</td>\r\n			<td>\r\n			<p>A00, A01, D01, D07</p>\r\n			</td>\r\n			<td>\r\n			<p>60</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>Tổng chỉ ti&ecirc;u</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>5500</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 'App\\Models\\News', '2022-12-29 07:56:26', '2022-12-29 07:56:26'),
(32, 'slug1672325786', 'thong-bao-tuyen-sinh-dai-hoc-chinh-quy-nam-2023-tla', 'thong-bao-tuyen-sinh-dai-hoc-chinh-quy-nam-2023-tla', 1, 'App\\Models\\News', '2022-12-29 07:56:26', '2022-12-29 07:56:26'),
(33, 'title1672325918', 'CHƯƠNG TRÌNH ĐÀO TẠO', 'CHƯƠNG TRÌNH ĐÀO TẠO', 4, 'App\\Models\\PageContent', '2022-12-29 07:58:38', '2022-12-29 07:58:38'),
(34, 'description1672325918', '<p>Trường hiện đang cung cấp hơn 20 chương tr&igrave;nh đ&agrave;o tạo chất lượng cao thuộc 3 hệ đại học, ThS v&agrave; TS; trong đ&oacute;, c&oacute; chương tr&igrave;nh được thị trường lao động quốc tế đ&oacute;n nhận với hơn 60% sinh vi&ecirc;n tốt nghiệp l&agrave;m việc ở nước ngo&agrave;i. C&aacute;c chương tr&igrave;nh đ&agrave;o tạo thuộc v&agrave;o 3 nh&oacute;m ng&agrave;nh ch&iacute;nh: Khoa học M&aacute;y t&iacute;nh, Kỹ thuật M&aacute;y t&iacute;nh, v&agrave; Khoa học Dữ liệu v&agrave; Tr&iacute; tuệ Nh&acirc;n tạo</p>', '<p>Trường hiện đang cung cấp hơn 20 chương tr&igrave;nh đ&agrave;o tạo chất lượng cao thuộc 3 hệ đại học, ThS v&agrave; TS; trong đ&oacute;, c&oacute; chương tr&igrave;nh được thị trường lao động quốc tế đ&oacute;n nhận với hơn 60% sinh vi&ecirc;n tốt nghiệp l&agrave;m việc ở nước ngo&agrave;i. C&aacute;c chương tr&igrave;nh đ&agrave;o tạo thuộc v&agrave;o 3 nh&oacute;m ng&agrave;nh ch&iacute;nh: Khoa học M&aacute;y t&iacute;nh, Kỹ thuật M&aacute;y t&iacute;nh, v&agrave; Khoa học Dữ liệu v&agrave; Tr&iacute; tuệ Nh&acirc;n tạo</p>', 4, 'App\\Models\\PageContent', '2022-12-29 07:58:38', '2022-12-29 07:58:38'),
(35, 'sub_title1672325918', ' ', ' ', 4, 'App\\Models\\PageContent', '2022-12-29 07:58:38', '2022-12-29 07:58:38'),
(36, 'title1672326019', 'Các chương trình đào tạo trình độ đại học hệ CQ cho khóa tuyển sinh năm 2022 (K64) về sau', 'Các chương trình đào tạo trình độ đại học hệ CQ cho khóa tuyển sinh năm 2022 (K64) về sau', 5, 'App\\Models\\PageContent', '2022-12-29 08:00:19', '2022-12-29 08:00:19'),
(37, 'description1672326019', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>16/12/2022 08:22</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;75</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>C&Aacute;C CHƯƠNG TR&Igrave;NH Đ&Agrave;O TẠO TR&Igrave;NH ĐỘ ĐẠI HỌC HỆ CH&Iacute;NH QUY THEO TỪNG KHOA &Aacute;P DỤNG CHO KH&Oacute;A TUYỂN SINH NĂM 2022&nbsp;(K64&nbsp;VỀ SAU)</p>\r\n\r\n<ol>\r\n	<li><strong>Khoa C&ocirc;ng tr&igrave;nh</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ kỹ thuật x&acirc;y dựng</li>\r\n	<li>Kỹ thuật x&acirc;y dựng</li>\r\n	<li>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</li>\r\n	<li>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng&nbsp;</li>\r\n	<li>Quản l&yacute; x&acirc;y dựng</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Cơ kh&iacute;</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ chế tạo m&aacute;y</li>\r\n	<li>Kỹ thuật cơ kh&iacute;&nbsp;</li>\r\n	<li>Kỹ thuật cơ điện tử&nbsp;</li>\r\n	<li>Kỹ thuật &ocirc; t&ocirc;&nbsp;</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa C&ocirc;ng nghệ th&ocirc;ng tin</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ th&ocirc;ng tin</li>\r\n	<li>Hệ thống th&ocirc;ng tin&nbsp;</li>\r\n	<li>Kỹ thuật phần mềm</li>\r\n	<li>An ninh mạng</li>\r\n	<li>Tr&iacute; tuệ nh&acirc;n tạo v&agrave; khoa học dữ liệu</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Điện &ndash; Điện tử</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kỹ thuật điện</li>\r\n	<li>Kỹ thuật điều khiển v&agrave; tự động h&oacute;a</li>\r\n	<li>Kỹ thuật điện tử - viễn th&ocirc;ng</li>\r\n	<li>Kỹ thuật robot v&agrave; điều khiển th&ocirc;ng minh</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa H&oacute;a v&agrave; M&ocirc;i trường</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ sinh học&nbsp;</li>\r\n	<li>Kỹ thu&acirc;t h&oacute;a học&nbsp;</li>\r\n	<li>Kỹ thuật m&ocirc;i trường</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Kinh tế v&agrave; Quản l&yacute;</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kinh tế&nbsp;</li>\r\n	<li>Kinh tế số</li>\r\n	<li>Kế to&aacute;n</li>\r\n	<li>Quản trị kinh doanh</li>\r\n	<li>Kinh tế x&acirc;y dựng</li>\r\n	<li>Thương mại điện tử</li>\r\n	<li>Logistics v&agrave; chuỗi cung ứng</li>\r\n	<li>Quản trị du lịch v&agrave; lữ h&agrave;nh</li>\r\n	<li>T&agrave;i ch&iacute;nh - Ng&acirc;n h&agrave;ng</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Kỹ thuật t&agrave;i nguy&ecirc;n nư&oacute;c</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kỹ thuật cấp tho&aacute;t nước&nbsp;</li>\r\n	<li>Kỹ thuật cơ sở hạ tầng&nbsp;</li>\r\n	<li>Kỹ thuật t&agrave;i nguy&ecirc;n nước</li>\r\n	<li>Thủy văn học&nbsp;</li>\r\n</ul>\r\n\r\n<p>8.&nbsp;<strong>Khoa L&yacute; luận ch&iacute;nh trị</strong></p>\r\n\r\n<ul>\r\n	<li>Luật</li>\r\n</ul>\r\n\r\n<p><strong>​</strong>​​9.&nbsp;<strong>Trung t&acirc;m Đ&agrave;o tạo quốc tế</strong></p>\r\n\r\n<ul>\r\n	<li>Ng&ocirc;n ngữ anh</li>\r\n	<li>Ng&agrave;nh kỹ thuật x&acirc;y dựng (Chương tr&igrave;nh ti&ecirc;n tiến)</li>\r\n</ul>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>16/12/2022 08:22</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;75</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>C&Aacute;C CHƯƠNG TR&Igrave;NH Đ&Agrave;O TẠO TR&Igrave;NH ĐỘ ĐẠI HỌC HỆ CH&Iacute;NH QUY THEO TỪNG KHOA &Aacute;P DỤNG CHO KH&Oacute;A TUYỂN SINH NĂM 2022&nbsp;(K64&nbsp;VỀ SAU)</p>\r\n\r\n<ol>\r\n	<li><strong>Khoa C&ocirc;ng tr&igrave;nh</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ kỹ thuật x&acirc;y dựng</li>\r\n	<li>Kỹ thuật x&acirc;y dựng</li>\r\n	<li>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh thủy</li>\r\n	<li>Kỹ thuật x&acirc;y dựng c&ocirc;ng tr&igrave;nh giao th&ocirc;ng&nbsp;</li>\r\n	<li>Quản l&yacute; x&acirc;y dựng</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Cơ kh&iacute;</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ chế tạo m&aacute;y</li>\r\n	<li>Kỹ thuật cơ kh&iacute;&nbsp;</li>\r\n	<li>Kỹ thuật cơ điện tử&nbsp;</li>\r\n	<li>Kỹ thuật &ocirc; t&ocirc;&nbsp;</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa C&ocirc;ng nghệ th&ocirc;ng tin</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ th&ocirc;ng tin</li>\r\n	<li>Hệ thống th&ocirc;ng tin&nbsp;</li>\r\n	<li>Kỹ thuật phần mềm</li>\r\n	<li>An ninh mạng</li>\r\n	<li>Tr&iacute; tuệ nh&acirc;n tạo v&agrave; khoa học dữ liệu</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Điện &ndash; Điện tử</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kỹ thuật điện</li>\r\n	<li>Kỹ thuật điều khiển v&agrave; tự động h&oacute;a</li>\r\n	<li>Kỹ thuật điện tử - viễn th&ocirc;ng</li>\r\n	<li>Kỹ thuật robot v&agrave; điều khiển th&ocirc;ng minh</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa H&oacute;a v&agrave; M&ocirc;i trường</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng nghệ sinh học&nbsp;</li>\r\n	<li>Kỹ thu&acirc;t h&oacute;a học&nbsp;</li>\r\n	<li>Kỹ thuật m&ocirc;i trường</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Kinh tế v&agrave; Quản l&yacute;</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kinh tế&nbsp;</li>\r\n	<li>Kinh tế số</li>\r\n	<li>Kế to&aacute;n</li>\r\n	<li>Quản trị kinh doanh</li>\r\n	<li>Kinh tế x&acirc;y dựng</li>\r\n	<li>Thương mại điện tử</li>\r\n	<li>Logistics v&agrave; chuỗi cung ứng</li>\r\n	<li>Quản trị du lịch v&agrave; lữ h&agrave;nh</li>\r\n	<li>T&agrave;i ch&iacute;nh - Ng&acirc;n h&agrave;ng</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong>Khoa Kỹ thuật t&agrave;i nguy&ecirc;n nư&oacute;c</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Kỹ thuật cấp tho&aacute;t nước&nbsp;</li>\r\n	<li>Kỹ thuật cơ sở hạ tầng&nbsp;</li>\r\n	<li>Kỹ thuật t&agrave;i nguy&ecirc;n nước</li>\r\n	<li>Thủy văn học&nbsp;</li>\r\n</ul>\r\n\r\n<p>8.&nbsp;<strong>Khoa L&yacute; luận ch&iacute;nh trị</strong></p>\r\n\r\n<ul>\r\n	<li>Luật</li>\r\n</ul>\r\n\r\n<p><strong>​</strong>​​9.&nbsp;<strong>Trung t&acirc;m Đ&agrave;o tạo quốc tế</strong></p>\r\n\r\n<ul>\r\n	<li>Ng&ocirc;n ngữ anh</li>\r\n	<li>Ng&agrave;nh kỹ thuật x&acirc;y dựng (Chương tr&igrave;nh ti&ecirc;n tiến)</li>\r\n</ul>', 5, 'App\\Models\\PageContent', '2022-12-29 08:00:19', '2022-12-29 08:00:19'),
(38, 'sub_title1672326019', 'Các chương trình đào tạo trình độ đại học hệ CQ cho khóa tuyển sinh năm 2022 (K64) về sau', 'Các chương trình đào tạo trình độ đại học hệ CQ cho khóa tuyển sinh năm 2022 (K64) về sau', 5, 'App\\Models\\PageContent', '2022-12-29 08:00:19', '2022-12-29 08:00:19'),
(39, 'title1672326671', 'Thông tin Tuyển sinh - Điểm Chuẩn', 'Thông tin Tuyển sinh - Điểm Chuẩn', 7, 'App\\Models\\Section', '2022-12-29 08:11:11', '2022-12-29 08:11:11'),
(40, 'description1672326671', ' ', ' ', 7, 'App\\Models\\Section', '2022-12-29 08:11:11', '2022-12-29 08:11:11'),
(41, 'sub_title1672326671', 'Thông tin tuyển sinh và điểm chuẩn các khoa qua các năm', 'Thông tin tuyển sinh và điểm chuẩn các khoa qua các năm', 7, 'App\\Models\\Section', '2022-12-29 08:11:11', '2022-12-29 08:11:11'),
(42, 'title1672326755', 'Đề án tuyển sinh năm 2022', 'Đề án tuyển sinh năm 2022', 6, 'App\\Models\\PageContent', '2022-12-29 08:12:35', '2022-12-29 08:12:35'),
(43, 'description1672326755', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>30/05/2022 10:10</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;1590</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trường Đại học Thủy lợi c&ocirc;ng bố Đề &aacute;n tuyển sinh đại học ch&iacute;nh quy năm 2022, xem chi tiết link sau</p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2022/DeAn_TS 2022-TLA.pdf?ver=2022-08-30-100948-757\">Xem Đề &aacute;n tuyển sinh tại H&agrave; Nội</a></p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2022/TLS_PH_DeAnTS_2022.pdf?ver=2022-08-30-100854-790\">Xem Đề &aacute;n tuyển sinh tại Ph&acirc;n Hiệu Miền Nam</a></p>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>30/05/2022 10:10</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;1590</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Trường Đại học Thủy lợi c&ocirc;ng bố Đề &aacute;n tuyển sinh đại học ch&iacute;nh quy năm 2022, xem chi tiết link sau</p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2022/DeAn_TS 2022-TLA.pdf?ver=2022-08-30-100948-757\">Xem Đề &aacute;n tuyển sinh tại H&agrave; Nội</a></p>\r\n\r\n<p><a href=\"/Portals/4/P3/Tuyen sinh/2022/TLS_PH_DeAnTS_2022.pdf?ver=2022-08-30-100854-790\">Xem Đề &aacute;n tuyển sinh tại Ph&acirc;n Hiệu Miền Nam</a></p>', 6, 'App\\Models\\PageContent', '2022-12-29 08:12:35', '2022-12-29 08:12:35'),
(44, 'sub_title1672326755', 'Đề án tuyển sinh năm 2022', 'Đề án tuyển sinh năm 2022', 6, 'App\\Models\\PageContent', '2022-12-29 08:12:35', '2022-12-29 08:12:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maps`
--

CREATE TABLE `maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longtitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maps`
--

INSERT INTO `maps` (`id`, `name`, `address`, `latitude`, `longtitude`, `image`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, 'Đại Học Thủy Lợi', '175 Tây sơn đống đa Hfa nội', '21.00771122625893', '105.82464758052322', 'Tour/1/map/16723244531_banner1jpg.jpg', 1, '2022-12-29 07:34:13', '2022-12-29 07:34:13');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_29_050722_create_permission_tables', 1),
(6, '2022_08_02_085035_create_acl_rules_table', 1),
(7, '2022_08_11_013253_create_tours_table', 1),
(8, '2022_08_11_015132_create_category_panos_table', 1),
(9, '2022_08_11_015135_create_panos_table', 1),
(10, '2022_08_11_015710_create_setting_tours_table', 1),
(11, '2022_08_12_073042_create_icon_tours_table', 1),
(12, '2022_08_15_023421_create_category_hotspots_table', 1),
(13, '2022_08_15_080040_create_maps_table', 1),
(14, '2022_08_16_070055_create_hots_pots_table', 1),
(15, '2022_08_16_073728_create_contents_table', 1),
(16, '2022_08_17_074725_create_fonts_table', 1),
(17, '2022_08_18_020050_create_setting_displays_table', 1),
(18, '2022_08_18_064905_create_setting_colors_table', 1),
(19, '2022_08_25_042143_create_infor_tours_table', 1),
(20, '2022_08_25_042152_create_voice_contents_table', 1),
(21, '2022_08_26_042656_create_images_table', 1),
(22, '2022_09_05_012148_create_templates_table', 1),
(23, '2022_10_10_013028_create_sounds_table', 1),
(24, '2022_11_23_072324_create_pages_table', 1),
(25, '2022_11_23_072404_create_themes_table', 1),
(26, '2022_11_23_072436_create_sections_table', 1),
(27, '2022_11_23_072525_create_page_contents_table', 1),
(28, '2022_11_23_072842_create_pictures_table', 1),
(29, '2022_11_23_072926_create_category_news_table', 1),
(30, '2022_11_23_072948_create_news_table', 1),
(31, '2022_11_23_073014_create_tags_table', 1),
(32, '2022_11_23_073142_create_tag_new_table', 1),
(33, '2022_11_23_073247_create_languages_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outstanding` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `content`, `image`, `outstanding`, `view`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'title1672325786', 'slug1672325786', 'content1672325786', 'images/tintuc/16723257861_1jpg.jpg', 0, 0, 1, '2022-12-29 07:56:26', '2022-12-29 07:56:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_priority` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `id_priority`, `title`, `description`, `sub_title`, `created_at`, `updated_at`) VALUES
(1, NULL, 'home', 'description1670771755', NULL, '2022-12-11 08:15:55', '2022-12-11 08:15:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_contents`
--

CREATE TABLE `page_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_priority` int(11) DEFAULT NULL,
  `page_contentable_id` int(11) NOT NULL,
  `page_contentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_contents`
--

INSERT INTO `page_contents` (`id`, `title`, `sub_title`, `description`, `video`, `image`, `link`, `id_priority`, `page_contentable_id`, `page_contentable_type`, `created_at`, `updated_at`) VALUES
(3, 'title1672325000', 'sub_title1672325000', 'description1672325000', NULL, NULL, 'https://neyuh.online/index', NULL, 2, 'App\\Models\\Section', '2022-12-29 07:43:20', '2022-12-29 07:43:20'),
(4, 'title1672325918', 'sub_title1672325918', 'description1672325918', NULL, NULL, NULL, NULL, 4, 'App\\Models\\Section', '2022-12-29 07:58:38', '2022-12-29 07:58:38'),
(5, 'title1672326019', 'sub_title1672326019', 'description1672326019', NULL, NULL, NULL, NULL, 4, 'App\\Models\\Section', '2022-12-29 08:00:19', '2022-12-29 08:00:19'),
(6, 'title1672326755', 'sub_title1672326755', 'description1672326755', NULL, NULL, NULL, NULL, 7, 'App\\Models\\Section', '2022-12-29 08:12:35', '2022-12-29 08:12:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `panos`
--

CREATE TABLE `panos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_onstart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_pano_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id_priority` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `panos`
--

INSERT INTO `panos` (`id`, `name`, `thumb_img`, `id_thumb`, `path_onstart`, `tour_id`, `category_pano_id`, `id_priority`, `created_at`, `updated_at`) VALUES
(1, 'Cổng vào trường', 'Tour/dhtl2-1672324022/panos/1.tiles/thumb.jpg', 'scene_1', 'Tour/dhtl2-1672324022/', 1, 1, NULL, '2022-12-29 07:27:06', '2022-12-29 07:35:25'),
(2, 'Trước tòa nhà A1', 'Tour/dhtl2-1672324022/panos/2.tiles/thumb.jpg', 'scene_2', 'Tour/dhtl2-1672324022/', 1, 2, NULL, '2022-12-29 07:27:06', '2022-12-29 07:35:28'),
(3, 'Tòa nhà A2', 'Tour/dhtl2-1672324022/panos/3.tiles/thumb.jpg', 'scene_3', 'Tour/dhtl2-1672324022/', 1, 2, NULL, '2022-12-29 07:27:06', '2022-12-29 07:35:29'),
(4, 'Bên ngoài tòa A1', 'Tour/dhtl2-1672324022/panos/4.tiles/thumb.jpg', 'scene_4', 'Tour/dhtl2-1672324022/', 1, 2, NULL, '2022-12-29 07:27:06', '2022-12-29 07:35:31'),
(5, 'Sảnh tòa A1', 'Tour/dhtl2-1672324022/panos/6.tiles/thumb.jpg', 'scene_6', 'Tour/dhtl2-1672324022/', 1, 2, NULL, '2022-12-29 07:27:06', '2022-12-29 07:35:35'),
(6, 'Khu vực khuôn viên trường 1', 'Tour/dhtl2-1672324022/panos/7.tiles/thumb.jpg', 'scene_7', 'Tour/dhtl2-1672324022/', 1, 1, NULL, '2022-12-29 07:27:06', '2022-12-29 07:35:39'),
(7, 'Khu vực khuôn viên trường 1', 'Tour/dhtl2-1672324022/panos/8.tiles/thumb.jpg', 'scene_8', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(8, 'Trước tòa T45', 'Tour/dhtl2-1672324022/panos/9.tiles/thumb.jpg', 'scene_9', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(9, 'Sảnh T45', 'Tour/dhtl2-1672324022/panos/10.tiles/thumb.jpg', 'scene_10', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(10, 'Tòa K1 - Thư Viện', 'Tour/dhtl2-1672324022/panos/11.tiles/thumb.jpg', 'scene_11', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(11, 'Thư Viện', 'Tour/dhtl2-1672324022/panos/12.tiles/thumb.jpg', 'scene_12', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(12, 'Lối vào tòa nhà K1', 'Tour/dhtl2-1672324022/panos/13.tiles/thumb.jpg', 'scene_13', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(13, 'Nhà Ăn của trường', 'Tour/dhtl2-1672324022/panos/14.tiles/thumb.jpg', 'scene_14', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(14, 'Bên trong nhà ăn 1', 'Tour/dhtl2-1672324022/panos/15.tiles/thumb.jpg', 'scene_15', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(15, 'Bên trong nhà ăn 2', 'Tour/dhtl2-1672324022/panos/16.tiles/thumb.jpg', 'scene_16', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(16, 'Tòa nhà C5', 'Tour/dhtl2-1672324022/panos/18.tiles/thumb.jpg', 'scene_18', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(17, 'Phòng Lab Sam Sung', 'Tour/dhtl2-1672324022/panos/19.tiles/thumb.jpg', 'scene_19', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(18, 'Lab Sam Sung 1', 'Tour/dhtl2-1672324022/panos/20.tiles/thumb.jpg', 'scene_20', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(19, 'Sảnh C5', 'Tour/dhtl2-1672324022/panos/21.tiles/thumb.jpg', 'scene_21', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(20, 'Phòng Thực Hành', 'Tour/dhtl2-1672324022/panos/22.tiles/thumb.jpg', 'scene_22', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(21, 'Bể Bơi', 'Tour/dhtl2-1672324022/panos/23.tiles/thumb.jpg', 'scene_23', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(22, 'Bể Bơi 1', 'Tour/dhtl2-1672324022/panos/24.tiles/thumb.jpg', 'scene_24', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(23, 'Sân Bóng', 'Tour/dhtl2-1672324022/panos/25.tiles/thumb.jpg', 'scene_25', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(24, 'Sân Bóng Rổ', 'Tour/dhtl2-1672324022/panos/26.tiles/thumb.jpg', 'scene_26', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(25, 'Tòa B5', 'Tour/dhtl2-1672324022/panos/27.tiles/thumb.jpg', 'scene_27', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06'),
(26, 'Phòng Học', 'Tour/dhtl2-1672324022/panos/28.tiles/thumb.jpg', 'scene_28', 'Tour/dhtl2-1672324022/', 1, NULL, NULL, '2022-12-29 07:27:06', '2022-12-29 07:27:06');

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
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'users-manager', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(2, 'create-project', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(3, 'create-user', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(4, 'delete-user', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(5, 'view-tour', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(6, 'create-tour', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(7, 'edit-tour', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(8, 'delete-tour', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `element` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_priority` int(11) DEFAULT NULL,
  `page_content_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pictures`
--

INSERT INTO `pictures` (`id`, `name`, `image`, `element`, `embed`, `id_priority`, `page_content_id`, `created_at`, `updated_at`) VALUES
(1, '2.jpg', 'images/page_contents/16723259181_2jpg.jpg', NULL, NULL, NULL, 4, '2022-12-29 07:58:38', '2022-12-29 07:58:38'),
(2, '3.jpg', 'images/page_contents/16723260191_3jpg.jpg', NULL, NULL, NULL, 5, '2022-12-29 08:00:19', '2022-12-29 08:00:19'),
(3, '4.jpg', 'images/page_contents/16723267551_4jpg.jpg', NULL, NULL, NULL, 6, '2022-12-29 08:12:35', '2022-12-29 08:12:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03'),
(2, 'content-creator', 'web', '2022-12-11 08:15:03', '2022-12-11 08:15:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_priority` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `theme_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sections`
--

INSERT INTO `sections` (`id`, `title`, `sub_title`, `description`, `id_priority`, `active`, `page_id`, `theme_id`, `created_at`, `updated_at`) VALUES
(2, 'title1672324788', 'sub_title1672324788', 'description1672324788', 0, 1, 1, 2, '2022-12-29 07:39:48', '2022-12-29 08:11:30'),
(4, 'title1672325204', 'sub_title1672325204', 'description1672325204', 2, 1, 1, 4, '2022-12-29 07:46:44', '2022-12-29 08:11:30'),
(5, 'title1672325251', 'sub_title1672325251', 'description1672325251', 3, 1, 1, 5, '2022-12-29 07:47:31', '2022-12-29 08:11:30'),
(6, 'title1672325273', 'sub_title1672325273', 'description1672325273', 4, 1, 1, 6, '2022-12-29 07:47:53', '2022-12-29 08:11:30'),
(7, 'title1672326671', 'sub_title1672326671', 'description1672326671', 1, 1, 1, 3, '2022-12-29 08:11:11', '2022-12-29 08:11:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_colors`
--

CREATE TABLE `setting_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_icon_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_color_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_bg_icon_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_icon_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_bg_icon_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_menu_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_color_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_color_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_displays`
--

CREATE TABLE `setting_displays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sound` tinyint(1) DEFAULT 1,
  `share` tinyint(1) DEFAULT 1,
  `back_scene` tinyint(1) DEFAULT 1,
  `fullscreen` tinyint(1) DEFAULT 1,
  `infor` tinyint(1) DEFAULT 1,
  `setting_map` tinyint(1) DEFAULT 1,
  `guide` tinyint(1) DEFAULT 1,
  `show_hotspot` tinyint(1) DEFAULT 1,
  `rotate` tinyint(1) DEFAULT 1,
  `setting_vr` tinyint(1) DEFAULT 1,
  `contact` tinyint(1) DEFAULT 1,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting_displays`
--

INSERT INTO `setting_displays` (`id`, `sound`, `share`, `back_scene`, `fullscreen`, `infor`, `setting_map`, `guide`, `show_hotspot`, `rotate`, `setting_vr`, `contact`, `tour_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-12-29 07:27:06', '2022-12-29 07:27:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_tours`
--

CREATE TABLE `setting_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sounds`
--

CREATE TABLE `sounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sound` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) DEFAULT 1,
  `id_priority` bigint(20) DEFAULT NULL,
  `tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Đào Tạo', 'dao-tao', '2022-12-29 07:49:35', '2022-12-29 07:49:35'),
(2, 'Tuyển sinh', 'tuyen-sinh', '2022-12-29 07:49:47', '2022-12-29 07:49:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag_new`
--

CREATE TABLE `tag_new` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `new_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tag_new`
--

INSERT INTO `tag_new` (`id`, `new_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_js` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `templates`
--

INSERT INTO `templates` (`id`, `name`, `image`, `link_code`, `link_css`, `link_js`, `responsive`, `created_at`, `updated_at`) VALUES
(1, 'template1', 'Template/16723240911_banner0jpg.jpg', 'template1', 'Template/1/css/style.css', 'Template/1/js/main.js', 'Template/1/css/responsive.css', '2022-12-29 07:28:11', '2022-12-29 07:28:11'),
(2, 'template2', 'Template/1672324191-banner0jpg.jpg', 'template2', 'Template/2/css/style.css', 'Template/2/js/main.js', 'Template/2/css/responsive.css', '2022-12-29 07:28:32', '2022-12-29 07:29:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `themes`
--

INSERT INTO `themes` (`id`, `title`, `image_template`, `link_code`, `type`, `created_at`, `updated_at`) VALUES
(1, 'News', 'images/theme/16698043131_newspng.PNG', 'landingpage.theme.new', 0, '2022-12-11 08:15:04', NULL),
(2, 'Tour', 'images/theme/16698044281_tourpng.PNG', 'landingpage.theme.page_tour', 0, '2022-12-11 08:15:04', NULL),
(3, 'Event', 'images/theme/16698045341_eventpng.PNG', 'landingpage.theme.page_event', 0, '2022-12-11 08:15:04', NULL),
(4, 'Page_Admissions', 'images/theme/16698046181_page-admissionspng.PNG', 'landingpage.theme.page_Admissions', 0, '2022-12-11 08:15:04', NULL),
(5, 'Page_Cooperate', 'images/theme/16698047051_hoptacdoingoaipng.PNG', 'landingpage.theme.page_cooperate', 0, '2022-12-11 08:15:04', NULL),
(6, 'Page_Alumni', 'images/theme/16698047891_page-alumnipng.PNG', 'landingpage.theme.page_alumni', 0, '2022-12-11 08:15:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `name`, `path`, `code`, `template_id`, `created_at`, `updated_at`) VALUES
(1, 'Tour VR Đại Học Thủy Lợi', 'Tour/dhtl2-1672324022', '1dZGCVmNK5HNINei', 2, '2022-12-29 07:27:06', '2022-12-29 07:27:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_byId` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `created_byId`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, NULL, '$2y$10$Zp1l01f.Rptw3vulan6lNu4H8KAAxyH8qGavbq27o/VYhUKZ7CzpG', NULL, '2022-12-11 08:15:04', '2022-12-11 08:15:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voice_contents`
--

CREATE TABLE `voice_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_voice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) DEFAULT 0,
  `content_id` bigint(20) UNSIGNED DEFAULT NULL,
  `infor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `acl_rules`
--
ALTER TABLE `acl_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acl_rules_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `category_hotspots`
--
ALTER TABLE `category_hotspots`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_panos`
--
ALTER TABLE `category_panos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_panos_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_hotspot_id_foreign` (`hotspot_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fonts_tour_id_unique` (`tour_id`);

--
-- Chỉ mục cho bảng `hots_pots`
--
ALTER TABLE `hots_pots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hots_pots_pano_id_foreign` (`pano_id`);

--
-- Chỉ mục cho bảng `icon_tours`
--
ALTER TABLE `icon_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icon_tours_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `infor_tours`
--
ALTER TABLE `infor_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infor_tours_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maps_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `panos`
--
ALTER TABLE `panos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `panos_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pictures_page_content_id_foreign` (`page_content_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_page_id_foreign` (`page_id`),
  ADD KEY `sections_theme_id_foreign` (`theme_id`);

--
-- Chỉ mục cho bảng `setting_colors`
--
ALTER TABLE `setting_colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_colors_tour_id_unique` (`tour_id`);

--
-- Chỉ mục cho bảng `setting_displays`
--
ALTER TABLE `setting_displays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_displays_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `setting_tours`
--
ALTER TABLE `setting_tours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_tours_thumb_unique` (`thumb`),
  ADD KEY `setting_tours_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `sounds`
--
ALTER TABLE `sounds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sounds_tour_id_foreign` (`tour_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tag_new`
--
ALTER TABLE `tag_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_new_new_id_foreign` (`new_id`),
  ADD KEY `tag_new_tag_id_foreign` (`tag_id`);

--
-- Chỉ mục cho bảng `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_title_unique` (`title`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `voice_contents`
--
ALTER TABLE `voice_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voice_contents_content_id_foreign` (`content_id`),
  ADD KEY `voice_contents_infor_id_foreign` (`infor_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `acl_rules`
--
ALTER TABLE `acl_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category_hotspots`
--
ALTER TABLE `category_hotspots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `category_panos`
--
ALTER TABLE `category_panos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hots_pots`
--
ALTER TABLE `hots_pots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `icon_tours`
--
ALTER TABLE `icon_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `infor_tours`
--
ALTER TABLE `infor_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `maps`
--
ALTER TABLE `maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `panos`
--
ALTER TABLE `panos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `setting_colors`
--
ALTER TABLE `setting_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_displays`
--
ALTER TABLE `setting_displays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `setting_tours`
--
ALTER TABLE `setting_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sounds`
--
ALTER TABLE `sounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tag_new`
--
ALTER TABLE `tag_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `voice_contents`
--
ALTER TABLE `voice_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `acl_rules`
--
ALTER TABLE `acl_rules`
  ADD CONSTRAINT `acl_rules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `category_panos`
--
ALTER TABLE `category_panos`
  ADD CONSTRAINT `category_panos_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_hotspot_id_foreign` FOREIGN KEY (`hotspot_id`) REFERENCES `hots_pots` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `fonts`
--
ALTER TABLE `fonts`
  ADD CONSTRAINT `fonts_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hots_pots`
--
ALTER TABLE `hots_pots`
  ADD CONSTRAINT `hots_pots_pano_id_foreign` FOREIGN KEY (`pano_id`) REFERENCES `panos` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `icon_tours`
--
ALTER TABLE `icon_tours`
  ADD CONSTRAINT `icon_tours_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `infor_tours`
--
ALTER TABLE `infor_tours`
  ADD CONSTRAINT `infor_tours_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `maps_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category_news` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `panos`
--
ALTER TABLE `panos`
  ADD CONSTRAINT `panos_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `pictures_page_content_id_foreign` FOREIGN KEY (`page_content_id`) REFERENCES `page_contents` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `setting_colors`
--
ALTER TABLE `setting_colors`
  ADD CONSTRAINT `setting_colors_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `setting_displays`
--
ALTER TABLE `setting_displays`
  ADD CONSTRAINT `setting_displays_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `setting_tours`
--
ALTER TABLE `setting_tours`
  ADD CONSTRAINT `setting_tours_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sounds`
--
ALTER TABLE `sounds`
  ADD CONSTRAINT `sounds_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tag_new`
--
ALTER TABLE `tag_new`
  ADD CONSTRAINT `tag_new_new_id_foreign` FOREIGN KEY (`new_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_new_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `voice_contents`
--
ALTER TABLE `voice_contents`
  ADD CONSTRAINT `voice_contents_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voice_contents_infor_id_foreign` FOREIGN KEY (`infor_id`) REFERENCES `infor_tours` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
