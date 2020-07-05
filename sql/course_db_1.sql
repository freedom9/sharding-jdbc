/*
 Navicat Premium Data Transfer

 Source Server         : 自己的服务器
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : course_db_1

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 05/07/2020 22:26:44
*/

CREATE DATABASE IF NOT EXISTS course_db_1;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course_1
-- ----------------------------
DROP TABLE IF EXISTS `course_1`;
CREATE TABLE `course_1`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '发布状态：0：未发布  1：已发布',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_1
-- ----------------------------
INSERT INTO `course_1` VALUES (1273235107671658498, 'java', 428, 1);
INSERT INTO `course_1` VALUES (1273235118664929282, 'java', 348, 0);
INSERT INTO `course_1` VALUES (1273235120699166722, 'java', 310, 0);
INSERT INTO `course_1` VALUES (1273235122087481345, 'java', 222, 0);
INSERT INTO `course_1` VALUES (1273601366007459842, 'java', NULL, 0);
INSERT INTO `course_1` VALUES (1274602465615118338, 'java', 1274602458971340801, 0);
INSERT INTO `course_1` VALUES (1279397269884575746, 'java', 1279397265111457794, 1);

-- ----------------------------
-- Table structure for course_2
-- ----------------------------
DROP TABLE IF EXISTS `course_2`;
CREATE TABLE `course_2`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '发布状态：0：未发布  1：已发布',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_2
-- ----------------------------
INSERT INTO `course_2` VALUES (1272516343682535425, 'java', 841, 0);
INSERT INTO `course_2` VALUES (1273235119654785025, 'java', 382, 0);
INSERT INTO `course_2` VALUES (1273235121085042689, 'java', 378, 0);
INSERT INTO `course_2` VALUES (1273235122087481345, 'java', 222, 0);
INSERT INTO `course_2` VALUES (1273601016508641281, 'java', 1273601011542585346, 1);

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES (1, 'test');
INSERT INTO `t_test` VALUES (2, 'test');
INSERT INTO `t_test` VALUES (3, 'test');
INSERT INTO `t_test` VALUES (4, 'test');

-- ----------------------------
-- Table structure for t_udict
-- ----------------------------
DROP TABLE IF EXISTS `t_udict`;
CREATE TABLE `t_udict`  (
  `dict_id` bigint(20) NOT NULL,
  `u_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `u_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_udict
-- ----------------------------
INSERT INTO `t_udict` VALUES (1274610198103896065, 'a', '已启用');

SET FOREIGN_KEY_CHECKS = 1;
