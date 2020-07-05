/*
 Navicat Premium Data Transfer

 Source Server         : 自己的服务器
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : user_db

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 05/07/2020 22:27:05
*/

CREATE DATABASE IF NOT EXISTS user_db;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_status` tinyint(4) NULL DEFAULT NULL COMMENT '用户状态：0：不可用  1：可用',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (480481021700079617, 'lucy', 1);
INSERT INTO `t_user` VALUES (1273601011542585346, 'lucy', 0);
INSERT INTO `t_user` VALUES (1274602458971340801, 'lucy', 0);
INSERT INTO `t_user` VALUES (1279397265111457794, 'lucy1', 1);
INSERT INTO `t_user` VALUES (1279667702471028738, 'lucy', 1);

SET FOREIGN_KEY_CHECKS = 1;
