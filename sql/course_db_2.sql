/*
 Navicat Premium Data Transfer

 Source Server         : 自己的服务器
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : course_db_2

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 05/07/2020 22:26:52
*/

CREATE DATABASE IF NOT EXISTS course_db_2;

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
INSERT INTO `course_1` VALUES (1273235119164051458, 'java', 513, 0);
INSERT INTO `course_1` VALUES (1273235122544660482, 'java', 757, 0);

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
INSERT INTO `course_2` VALUES (1273234532624195585, 'java', 175, 1);
INSERT INTO `course_2` VALUES (1273235120229404673, 'java', 177, 0);
INSERT INTO `course_2` VALUES (1273235121638690817, 'java', 435, 1);

SET FOREIGN_KEY_CHECKS = 1;
