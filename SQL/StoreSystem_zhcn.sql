/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80404
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 80404
 File Encoding         : 65001

 Date: 29/08/2026 15:32:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for store_categories
-- ----------------------------
DROP TABLE IF EXISTS `store_categories`;
CREATE TABLE `store_categories`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `requiredRank` int(0) NULL DEFAULT NULL,
  `flags` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `enabled` int(0) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_categories
-- ----------------------------
INSERT INTO `store_categories` (`id`, `name`, `icon`, `requiredRank`, `flags`, `enabled`) VALUES
(1, '精选', 'inv_helmet_96', 0, 2, 1),
(2, '头衔', 'inv_scroll_11', 0, 0, 1),
(3, '物品', 'ability_warrior_challange', 0, 0, 1),
(4, '坐骑与宠物', 'inv_box_petcarrier_01', 0, 0, 1),
(5, '提升', 'spell_holy_surgeoflight', 0, 0, 1),
(6, '服务', 'vas_charactertransfer', 0, 0, 1),
(7, '增益效果', 'spell_holy_holynova', 0, 0, 1),
(8, '特惠', 'inv_misc_toy_07', 0, 1, 1),
(9, '贵宾', 'inv_misc_note_03', 4, 0, 1);

-- ----------------------------
-- Table structure for store_category_service_link
-- ----------------------------
DROP TABLE IF EXISTS `store_category_service_link`;
CREATE TABLE `store_category_service_link`  (
  `category` int(0) UNSIGNED NOT NULL,
  `service` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`category`, `service`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_category_service_link
-- ----------------------------
INSERT INTO `store_category_service_link` (`category`, `service`) VALUES 
(2, 16),
(3, 5),
(3, 12),
(3, 18),
(4, 8),
(4, 13),
(5, 1),
(5, 14),
(5, 17),
(6, 2),
(6, 3),
(6, 4),
(7, 15);

-- ----------------------------
-- Table structure for store_currencies
-- ----------------------------
DROP TABLE IF EXISTS `store_currencies`;
CREATE TABLE `store_currencies`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` int(0) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `data` int(0) NOT NULL DEFAULT 0,
  `tooltip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_currencies
-- ----------------------------
INSERT INTO `store_currencies` (`id`, `type`, `name`, `icon`, `data`, `tooltip`) VALUES
(1, 1, '金币', 'Gold', 0, '这是普通金币。'),
(2, 2, '代币', 'Token', 4540, '这是一种物品货币。');

-- ----------------------------
-- Table structure for store_logs
-- ----------------------------
DROP TABLE IF EXISTS `store_logs`;
CREATE TABLE `store_logs`  (
  `account` int(0) NULL DEFAULT NULL,
  `guid` int(0) NULL DEFAULT NULL,
  `serviceId` int(0) NULL DEFAULT NULL,
  `currencyId` int(0) NULL DEFAULT NULL,
  `cost` int(0) NULL DEFAULT NULL,
  `time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_logs
-- ----------------------------
INSERT INTO `store_logs` (`account`, `guid`, `serviceId`, `currencyId`, `cost`, `time`) VALUES
(1, 1, 12, 1, 10, '2023-04-07 11:03:06'),
(1, 1, 12, 1, 5, '2023-04-07 11:04:23'),
(1, 1, 13, 1, 10, '2023-04-07 11:20:42'),
(1, 1, 8, 1, 30, '2023-04-07 11:25:36'),
(1, 1, 12, 2, 5, '2023-04-08 04:04:22'),
(1, 1, 12, 2, 5, '2023-04-08 04:07:47'),
(1, 1, 12, 2, 5, '2023-04-08 04:07:50'),
(1, 1, 12, 2, 5, '2023-04-08 04:10:04'),
(1, 1, 12, 2, 5, '2023-04-08 04:21:48'),
(1, 1, 12, 2, 5, '2023-04-08 04:22:01'),
(1, 1, 12, 2, 5, '2023-04-08 04:22:38'),
(1, 1, 12, 2, 5, '2023-04-08 04:23:45'),
(1, 1, 12, 2, 5, '2023-04-08 04:26:19'),
(1, 1, 13, 1, 10, '2023-04-08 09:14:35'),
(1, 1, 1, 1, 10, '2023-04-08 09:22:52'),
(1, 1, 1, 1, 10, '2023-04-08 09:24:07'),
(1, 1, 1, 1, 10, '2023-04-08 09:25:51'),
(1, 1, 4, 1, 5, '2023-04-08 09:35:36'),
(1, 1, 16, 1, 10, '2023-04-08 09:41:41'),
(1, 1, 16, 1, 10, '2023-04-08 09:44:49'),
(1, 1, 5, 1, 10, '2023-04-08 12:45:17'),
(1, 1, 1, 1, 10, '2023-04-09 03:50:20'),
(1, 1, 1, 1, 10, '2023-04-09 03:51:13'),
(1, 1, 12, 1, 5, '2023-04-09 03:52:20'),
(1, 1, 12, 1, 5, '2023-04-09 03:55:03'),
(1, 1, 12, 1, 5, '2023-04-09 06:23:33'),
(1, 1, 12, 1, 5, '2023-04-09 07:19:16'),
(1, 1, 1, 1, 10, '2023-04-09 10:02:07'),
(1, 1, 1, 2, 10, '2023-04-09 10:06:11'),
(1, 1, 5, 1, 10, '2023-04-09 10:34:41'),
(1, 1, 15, 1, 1, '2023-04-09 11:01:37'),
(1, 1, 18, 1, 50, '2023-04-09 11:29:32'),
(1, 1, 12, 1, 10, '2023-04-07 11:03:06'),
(1, 1, 12, 1, 5, '2023-04-07 11:04:23'),
(1, 1, 13, 1, 10, '2023-04-07 11:20:42'),
(1, 1, 8, 1, 30, '2023-04-07 11:25:36'),
(1, 1, 12, 2, 5, '2023-04-08 04:04:22'),
(1, 1, 12, 2, 5, '2023-04-08 04:07:47'),
(1, 1, 12, 2, 5, '2023-04-08 04:07:50'),
(1, 1, 12, 2, 5, '2023-04-08 04:10:04'),
(1, 1, 12, 2, 5, '2023-04-08 04:21:48'),
(1, 1, 12, 2, 5, '2023-04-08 04:22:01'),
(1, 1, 12, 2, 5, '2023-04-08 04:22:38'),
(1, 1, 12, 2, 5, '2023-04-08 04:23:45'),
(1, 1, 12, 2, 5, '2023-04-08 04:26:19'),
(1, 1, 13, 1, 10, '2023-04-08 09:14:35'),
(1, 1, 1, 1, 10, '2023-04-08 09:22:52'),
(1, 1, 1, 1, 10, '2023-04-08 09:24:07'),
(1, 1, 1, 1, 10, '2023-04-08 09:25:51'),
(1, 1, 4, 1, 5, '2023-04-08 09:35:36'),
(1, 1, 16, 1, 10, '2023-04-08 09:41:41'),
(1, 1, 16, 1, 10, '2023-04-08 09:44:49'),
(1, 1, 5, 1, 10, '2023-04-08 12:45:17'),
(1, 1, 1, 1, 10, '2023-04-09 03:50:20'),
(1, 1, 1, 1, 10, '2023-04-09 03:51:13'),
(1, 1, 12, 1, 5, '2023-04-09 03:52:20'),
(1, 1, 12, 1, 5, '2023-04-09 03:55:03'),
(1, 1, 12, 1, 5, '2023-04-09 06:23:33'),
(1, 1, 12, 1, 5, '2023-04-09 07:19:16'),
(1, 1, 1, 1, 10, '2023-04-09 10:02:07'),
(1, 1, 1, 2, 10, '2023-04-09 10:06:11'),
(1, 1, 5, 1, 10, '2023-04-09 10:34:41'),
(1, 1, 15, 1, 1, '2023-04-09 11:01:37'),
(1, 1, 18, 1, 50, '2023-04-09 11:29:32'),
(1, 1, 12, 1, 10, '2023-04-07 11:03:06'),
(1, 1, 12, 1, 5, '2023-04-07 11:04:23'),
(1, 1, 13, 1, 10, '2023-04-07 11:20:42'),
(1, 1, 8, 1, 30, '2023-04-07 11:25:36'),
(1, 1, 12, 2, 5, '2023-04-08 04:04:22'),
(1, 1, 12, 2, 5, '2023-04-08 04:07:47'),
(1, 1, 12, 2, 5, '2023-04-08 04:07:50'),
(1, 1, 12, 2, 5, '2023-04-08 04:10:04'),
(1, 1, 12, 2, 5, '2023-04-08 04:21:48'),
(1, 1, 12, 2, 5, '2023-04-08 04:22:01'),
(1, 1, 12, 2, 5, '2023-04-08 04:22:38'),
(1, 1, 12, 2, 5, '2023-04-08 04:23:45'),
(1, 1, 12, 2, 5, '2023-04-08 04:26:19'),
(1, 1, 13, 1, 10, '2023-04-08 09:14:35'),
(1, 1, 1, 1, 10, '2023-04-08 09:22:52'),
(1, 1, 1, 1, 10, '2023-04-08 09:24:07'),
(1, 1, 1, 1, 10, '2023-04-08 09:25:51'),
(1, 1, 4, 1, 5, '2023-04-08 09:35:36'),
(1, 1, 16, 1, 10, '2023-04-08 09:41:41'),
(1, 1, 16, 1, 10, '2023-04-08 09:44:49'),
(1, 1, 5, 1, 10, '2023-04-08 12:45:17'),
(1, 1, 1, 1, 10, '2023-04-09 03:50:20'),
(1, 1, 1, 1, 10, '2023-04-09 03:51:13'),
(1, 1, 12, 1, 5, '2023-04-09 03:52:20'),
(1, 1, 12, 1, 5, '2023-04-09 03:55:03'),
(1, 1, 12, 1, 5, '2023-04-09 06:23:33'),
(1, 1, 12, 1, 5, '2023-04-09 07:19:16'),
(1, 1, 1, 1, 10, '2023-04-09 10:02:07'),
(1, 1, 1, 2, 10, '2023-04-09 10:06:11'),
(1, 1, 5, 1, 10, '2023-04-09 10:34:41'),
(1, 1, 15, 1, 1, '2023-04-09 11:01:37'),
(1, 1, 18, 1, 50, '2023-04-09 11:29:32'),
(74, 1024, 8, 1, 30, '2025-08-07 14:57:09'),
(74, 1024, 13, 1, 10, '2025-08-07 14:57:56'),
(74, 1024, 15, 1, 1, '2025-08-07 14:58:31'),
(74, 1024, 12, 1, 5, '2025-08-07 14:58:44'),
(57, 552, 12, 1, 5, '2026-08-29 11:25:36'),
(57, 552, 12, 1, 5, '2026-08-29 11:26:28');

-- ----------------------------
-- Table structure for store_services
-- ----------------------------
DROP TABLE IF EXISTS `store_services`;
CREATE TABLE `store_services`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` int(0) UNSIGNED NULL DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tooltipName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tooltipType` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tooltipText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `icon` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` int(0) NULL DEFAULT NULL,
  `currency` int(0) NULL DEFAULT NULL,
  `hyperlinkId` int(0) NULL DEFAULT NULL,
  `creatureEntry` int(0) NULL DEFAULT NULL,
  `discountAmount` int(0) NULL DEFAULT NULL,
  `flags` int(0) NULL DEFAULT NULL,
  `reward_1` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_2` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_3` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_4` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_5` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_6` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_7` int(0) UNSIGNED NULL DEFAULT NULL,
  `reward_8` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_1` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_2` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_3` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_4` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_5` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_6` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_7` int(0) UNSIGNED NULL DEFAULT NULL,
  `rewardcount_8` int(0) UNSIGNED NULL DEFAULT NULL,
  `new` int(0) UNSIGNED NOT NULL DEFAULT 0,
  `enabled` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_services
-- ----------------------------
INSERT INTO `store_services` (`id`, `type`, `name`, `tooltipName`, `tooltipType`, `tooltipText`, `icon`, `price`, `currency`, `hyperlinkId`, `creatureEntry`, `discountAmount`, `flags`, `reward_1`, `reward_2`, `reward_3`, `reward_4`, `reward_5`, `reward_6`, `reward_7`, `reward_8`, `rewardcount_1`, `rewardcount_2`, `rewardcount_3`, `rewardcount_4`, `rewardcount_5`, `rewardcount_6`, `rewardcount_7`, `rewardcount_8`, `new`, `enabled`) VALUES
(1, 8, '等级提升\r\n+10级', '等级提升', '', '将你的角色等级提升10级。', 'achievement_level_10', 10, 2, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 7, '阵营转换', ' 阵营转换', '', '允许你更改角色的阵营。重新登录后生效。', 'vas_factionchange', 5, 1, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(3, 7, '种族转换', ' 种族转换', '', '允许你更改角色的种族。重新登录后生效。', 'vas_racechange', 10, 1, 0, 0, 5, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(4, 7, '名称更改', ' 名称更改', '', '允许你更改角色的名称。重新登录后生效。', 'vas_namechange', 5, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 1, '泡沫剑\r\n（双手剑）', '', '物品', '|cff00FFFF点击预览！|r', 'inv_sword_22', 10, 1, 45061, 45061, 0, 1, 45061, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(8, 3, '迅捷幽灵虎\r\n（坐骑）', '', '技能', '|cff00FFFF点击预览！|r', 'ability_mount_spectraltiger', 30, 1, 42777, 24004, 0, 0, 42777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(12, 1, '史诗紫色衬衫\r\n（衬衫）', '', '物品', '|cff00FFFF点击预览！|r', 'inv_shirt_purple_01', 10, 1, 45037, 45037, 5, 1, 45037, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(13, 4, '草原鸡\r\n（宠物）', '', '技能', '|cff00FFFF点击预览！|r', 'spell_magic_polymorphchicken', 10, 1, 10686, 7392, 0, 0, 10686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, 8, '等级提升\r\n+20 级', '等级提升', '', '将你的角色等级提升20级。', 'achievement_level_20', 20, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(15, 5, '增益效果\r\n力量祝福', '增益效果', '', '为你施加力量祝福。', 'spell_holy_fistofjustice', 1, 1, 0, 0, 0, 0, 27140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(16, 9, '头衔\r\n纳鲁的勇士', '头衔', '', '授予你 “纳鲁的勇士” 头衔。', 'inv_mace_51', 10, 1, 0, 0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(17, 8, '60级提升', '等级提升', '', '将你的角色等级提升至60级！', 'achievement_level_60', 40, 1, 0, 0, 0, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(18, 1, '礼服套装', '礼服套装', '', '用这套完整的礼服套装展现你的绝佳时尚品味！\r\n\r\n 包含以下物品：\r\n\r\n1x礼服外套\r\n1x礼服衬衫\r\n1x礼服长裤。', 'inv_shirt_black_01', 50, 1, 0, 0, 0, 1, 10036, 10035, 10034, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
