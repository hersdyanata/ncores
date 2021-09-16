/*
 Navicat Premium Data Transfer

 Source Server         : localhost_73
 Source Server Type    : MySQL
 Source Server Version : 100140
 Source Host           : localhost:3306
 Source Schema         : csscore

 Target Server Type    : MySQL
 Target Server Version : 100140
 File Encoding         : 65001

 Date: 16/09/2021 22:05:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for biodata
-- ----------------------------
DROP TABLE IF EXISTS `biodata`;
CREATE TABLE `biodata`  (
  `dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dt_alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dt_phone` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dt_kodepos` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dt_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biodata
-- ----------------------------

-- ----------------------------
-- Table structure for dev_mapping_permission_ke_menu
-- ----------------------------
DROP TABLE IF EXISTS `dev_mapping_permission_ke_menu`;
CREATE TABLE `dev_mapping_permission_ke_menu`  (
  `map_menu_id` int(11) NULL DEFAULT NULL,
  `map_perm_nama` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dev_mapping_permission_ke_menu
-- ----------------------------
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (8, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (8, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (8, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (10, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (10, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (10, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (1, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (1, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (1, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (2, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (2, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (2, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (4, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (4, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (4, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (5, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (5, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (5, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (6, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (6, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (6, 'delete');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (7, 'create');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (7, 'update');
INSERT INTO `dev_mapping_permission_ke_menu` VALUES (7, 'delete');

-- ----------------------------
-- Table structure for dev_menu
-- ----------------------------
DROP TABLE IF EXISTS `dev_menu`;
CREATE TABLE `dev_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_div_id` int(11) NULL DEFAULT NULL,
  `menu_parent_id` int(11) NULL DEFAULT NULL,
  `menu_nama_ina` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_nama_eng` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_route_name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `menu_folder_view` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_icon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_level` int(11) NULL DEFAULT NULL,
  `menu_publish_ke_user` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_order` int(11) NULL DEFAULT NULL,
  `menu_createdat` datetime(0) NULL DEFAULT NULL,
  `menu_createdby` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE INDEX `index_dev_menu`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dev_menu
-- ----------------------------
INSERT INTO `dev_menu` VALUES (1, 1, NULL, 'Group Pengguna', 'User Group', 'UsergroupController', 'usergroup', 'usergroup', 'icon-users', 1, 'Y', 1, '2021-03-17 15:37:37', '1');
INSERT INTO `dev_menu` VALUES (2, 1, NULL, 'Pengguna', 'Users', 'UserController', 'user', 'user', 'icon-users4', 1, 'Y', 1, '2021-03-17 15:42:56', '1');
INSERT INTO `dev_menu` VALUES (3, 2, NULL, 'Masterdata', 'Masterdata', '#', '#', NULL, 'icon-database', 1, 'Y', 1, '2021-03-17 15:54:27', '1');
INSERT INTO `dev_menu` VALUES (4, 2, 3, 'Pemasok', 'Vendor', 'MstVendorController', 'mst_vendor', 'mst_vendor', 'icon-collaboration', 2, 'Y', 3, '2021-03-17 15:59:23', '1');
INSERT INTO `dev_menu` VALUES (5, 2, 3, 'Produk', 'Product', 'MstProdukController', 'mst_produk', 'mst_produk', 'icon-stack2', 2, 'Y', 1, '2021-03-17 16:05:55', '1');
INSERT INTO `dev_menu` VALUES (6, 2, 3, 'Pelanggan', 'Customer', 'MstCustomerController', 'mst_customer', 'mst_customer', 'icon-user-tie', 2, 'Y', 1, '2021-03-17 17:30:48', '1');
INSERT INTO `dev_menu` VALUES (7, 2, NULL, 'Pengaturan Global', 'Global Configuration', 'ParGlobalSettingController', 'global_setting', 'par_global_setting', 'icon-equalizer', 1, 'Y', 2, '2021-03-17 17:55:24', '1');
INSERT INTO `dev_menu` VALUES (8, 2, NULL, 'Menu Level 1', 'Menu Level 1', '#', '#', NULL, 'icon-newspaper', 1, 'Y', 4, '2021-03-18 16:36:39', '1');
INSERT INTO `dev_menu` VALUES (9, 2, 8, 'Menu Level 2', 'Menu Level 2', '#', '#', NULL, 'icon-blog', 2, 'Y', 4, '2021-03-18 16:37:34', '1');
INSERT INTO `dev_menu` VALUES (10, 2, 9, 'Menu Level 3', 'Menu Level 3', 'MenuLevelController', 'level3', 'level3', 'icon-gradient', 3, 'Y', 1, '2021-03-18 16:48:56', '1');
INSERT INTO `dev_menu` VALUES (11, 2, 8, 'Menu Level Up', 'Menu Level Up', 'LevelUpController', 'level-up', 'level-up', 'icon-pencil5', 2, 'Y', 5, '2021-03-18 17:13:54', '1');

-- ----------------------------
-- Table structure for dev_menu_divider
-- ----------------------------
DROP TABLE IF EXISTS `dev_menu_divider`;
CREATE TABLE `dev_menu_divider`  (
  `div_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_nama_ina` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `div_nama_eng` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `div_order` int(11) NULL DEFAULT NULL,
  `div_publish_ke_user` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`div_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dev_menu_divider
-- ----------------------------
INSERT INTO `dev_menu_divider` VALUES (1, 'Manajemen User', 'User Management', 1, 'Y');
INSERT INTO `dev_menu_divider` VALUES (2, 'Masterdata & Setting', 'Masterdata & Setting', 2, 'Y');

-- ----------------------------
-- Table structure for dev_permissions
-- ----------------------------
DROP TABLE IF EXISTS `dev_permissions`;
CREATE TABLE `dev_permissions`  (
  `perm_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'permission read tidak masuk kedalam list ini, karena asumsinya ketika menu_id ada di dalam table usergroup maka dia sudah bisa masuk kedalam menu tersebut',
  `perm_type` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'type ini bisa saja button, chart, table, atau yang lainnya',
  `perm_deskripsi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `perm_nama`(`perm_nama`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of dev_permissions
-- ----------------------------
INSERT INTO `dev_permissions` VALUES ('create', 'btn', 'Membuat data baru');
INSERT INTO `dev_permissions` VALUES ('update', 'btn', 'Mengubah data');
INSERT INTO `dev_permissions` VALUES ('delete', 'btn', 'Menghapus data');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 2);
INSERT INTO `migrations` VALUES (6, '2020_12_19_093100_create_sessions_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('YpB99syzolIkT1QWhMhtnZIrfQN37FBI1H6SHEBR', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IjFVcGU2cUY4V3BpbHhKcXhmdGQ2Q1JPWjlROFE2Q05ZZkRVQWl5SjgiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAva2FzaXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6NzoidXNlcl9pZCI7aTo1O3M6NDoibmFtYSI7czoxMzoiRWtreSBQcmFkaXB0YSI7czo1OiJlbWFpbCI7czoyMDoiZXFwcmFkaXB0YUBnbWFpbC5jb20iO3M6NToidGhlbWUiO3M6ODoibWF0ZXJpYWwiO3M6ODoiZ3JvdXBfaWQiO2k6MjtzOjEwOiJncm91cF9uYW1hIjtzOjU6Ikthc2lyIjt9', 1611066051);

-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup`  (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `group_deskripsi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `group_menu_permission` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT 'berisi list menu yang dapat diakses dan dari setiap menu memiliki array permission apa saja. data pada kolom ini berupa json.',
  `group_default_menu` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE,
  UNIQUE INDEX `index_usergroup`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of usergroup
-- ----------------------------
INSERT INTO `usergroup` VALUES (1, 'Administrator', 'Privileges tertinggi di sisi user', '[{\"menu_id\":1,\"permissions\":[]},{\"menu_id\":9,\"permissions\":[]},{\"menu_id\":2,\"permissions\":[\"create\",\"update\"]},{\"menu_id\":3,\"permissions\":[\"create\",\"update\",\"delete\"]},{\"menu_id\":4,\"permissions\":[\"create\",\"update\",\"delete\"]},{\"menu_id\":5,\"permissions\":[\"create\",\"update\"]},{\"menu_id\":6,\"permissions\":[\"update\"]},{\"menu_id\":7,\"permissions\":[\"create\",\"update\",\"delete\"]},{\"menu_id\":8,\"permissions\":[\"create\",\"update\",\"delete\"]},{\"menu_id\":10,\"permissions\":[\"create\",\"update\",\"delete\"]}]', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `parent_user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `theme` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'hersdyanata', 0, NULL, 'Hermansyah Handya Pranata', 'apocalypsix@gmail.com', '2021-08-26 23:28:02', '$2y$10$LYbZGX1cWPDKo/QVoRbOFuuA3VwOvHFc/23IZYIlRRN7Cop48xh0S', NULL, NULL, 'csZTIhRvyNXKOesWGEoXetuoc9DJ5Hpk8IwwL9oRIOIxdjIOzGRJgRGwUfUG', 'dark', '2020-12-19 09:33:18', '2021-08-26 23:28:02');
INSERT INTO `users` VALUES (4, 'johndoe', 1, NULL, 'John Doe', 'johndoe@gmail.com', '2020-12-19 09:33:18', '$2y$10$hHPUYxBxKsP78eln15w/He3JyRzHDjPPrYl429OcdE8vWKggmJac.', NULL, NULL, NULL, 'material', '2021-01-16 16:26:41', '2021-01-16 16:38:33');
INSERT INTO `users` VALUES (6, 'janedoe', 1, NULL, 'Jane Doe', 'janedoe@gmail.com', NULL, '$2y$10$.B99py5y1rz/jw6fhDsNIO12qDU2bCSK1tgkl.98yfzStMLH/r6j2', NULL, NULL, NULL, 'light', '2021-01-17 05:11:27', '2021-01-17 05:11:27');

SET FOREIGN_KEY_CHECKS = 1;
