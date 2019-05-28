/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 28/05/2019 19:32:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'ca95a7cb6dfc2a840255b7703d5a3f21');

-- ----------------------------
-- Table structure for cart_item
-- ----------------------------
DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE `cart_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_item
-- ----------------------------
INSERT INTO `cart_item` VALUES (8, 18, 1, 2, '2018-11-07 21:23:55', '2018-11-07 21:23:55');
INSERT INTO `cart_item` VALUES (9, 18, 2, 1, '2018-11-07 21:27:25', '2018-11-07 21:27:25');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_no` int(11) NULL DEFAULT NULL,
  `preview` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'php', 1, NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (2, 'java', 2, NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (3, 'javascript', 3, NULL, NULL, NULL, NULL);
INSERT INTO `category` VALUES (4, 'laravel', 1, NULL, 1, NULL, NULL);
INSERT INTO `category` VALUES (5, 'thinkphp', 2, NULL, 1, NULL, NULL);
INSERT INTO `category` VALUES (6, 'yii', 3, NULL, 1, NULL, NULL);
INSERT INTO `category` VALUES (7, 'vuejs', 1, NULL, 3, NULL, NULL);
INSERT INTO `category` VALUES (8, 'reactjs', 2, NULL, 3, NULL, NULL);
INSERT INTO `category` VALUES (9, 'angularjs', 3, NULL, 3, NULL, NULL);
INSERT INTO `category` VALUES (10, 'struts2', 1, NULL, 2, NULL, NULL);
INSERT INTO `category` VALUES (11, 'spring', 2, NULL, 2, NULL, NULL);
INSERT INTO `category` VALUES (12, 'hibernate', 3, NULL, 2, NULL, NULL);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, NULL, '13921741769', 'e10adc3949ba59abbe56e057f20f883e', '2019-05-24 14:17:43', '2019-05-24 14:17:50', '1348985957@qq.com', 0);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NULL DEFAULT NULL,
  `order_no` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `payway` int(11) NULL DEFAULT 1,
  `status` int(11) NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (21, 18, 'E154151409121', '《深入浅出Node.js》', 10.00, 1, 1, '2018-11-06 22:21:31', '2018-11-06 22:21:31');
INSERT INTO `order` VALUES (22, 18, 'E154151410822', '', 0.00, 1, 1, '2018-11-06 22:21:48', '2018-11-06 22:21:48');
INSERT INTO `order` VALUES (23, 18, 'E154151411523', '', 0.00, 1, 1, '2018-11-06 22:21:55', '2018-11-06 22:21:55');
INSERT INTO `order` VALUES (24, 18, 'E154151415224', '《深入浅出Node.js》', 10.00, 1, 1, '2018-11-06 22:22:32', '2018-11-06 22:22:32');
INSERT INTO `order` VALUES (25, 18, 'E154158210425', '《深入浅出Node.js》', 10.00, 1, 1, '2018-11-07 17:15:04', '2018-11-07 17:15:04');
INSERT INTO `order` VALUES (26, 18, 'E154158211426', '', 0.00, 1, 1, '2018-11-07 17:15:14', '2018-11-07 17:15:14');
INSERT INTO `order` VALUES (27, 18, 'E154158212027', '', 0.00, 1, 1, '2018-11-07 17:15:19', '2018-11-07 17:15:20');
INSERT INTO `order` VALUES (28, 18, 'E154158216528', '《深入浅出Node.js》', 10.00, 1, 1, '2018-11-07 17:16:05', '2018-11-07 17:16:05');
INSERT INTO `order` VALUES (29, 18, 'E154159327429', '《Node.js权威指南》', 10.00, 1, 1, '2018-11-07 20:21:14', '2018-11-07 20:21:14');
INSERT INTO `order` VALUES (30, 18, 'E154159328330', '', 0.00, 1, 1, '2018-11-07 20:21:23', '2018-11-07 20:21:23');
INSERT INTO `order` VALUES (31, 18, 'E154159328731', '', 0.00, 1, 1, '2018-11-07 20:21:27', '2018-11-07 20:21:27');
INSERT INTO `order` VALUES (32, 18, 'E154159687532', '《深入浅出Node.js》', 20.00, 1, 1, '2018-11-07 21:21:15', '2018-11-07 21:21:15');
INSERT INTO `order` VALUES (33, 18, 'E154159691433', '', 0.00, 1, 1, '2018-11-07 21:21:54', '2018-11-07 21:21:54');
INSERT INTO `order` VALUES (34, 1, 'E155867877734', '《深入浅出Node.js》', 10.00, 1, 1, '2019-05-24 14:19:37', '2019-05-24 14:19:37');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `pdt_snapshot` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (12, 9, 1, 4, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (13, 9, 2, 3, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (14, 9, 3, 2, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (15, 10, 1, 4, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (16, 10, 2, 3, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (17, 10, 3, 2, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (18, 11, 1, 4, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (19, 11, 2, 3, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (20, 11, 3, 2, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (21, 12, 1, 4, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (22, 12, 2, 3, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (23, 12, 3, 2, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (24, 13, 1, 4, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (25, 13, 2, 3, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (26, 13, 3, 2, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (27, 14, 1, 4, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (28, 14, 2, 3, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (29, 14, 3, 2, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (30, 15, 3, 1, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (31, 17, 3, 1, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (32, 18, 3, 1, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (33, 19, 3, 1, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (34, 20, 3, 1, '{\"id\":3,\"name\":\"React\",\"summary\":\"\\u8eab\\u51fa\\u540d\\u95e8\\uff0cFackbook\\u5f00\\u6e90\\u5de8\\u732e\\uff0c\\u4e00\\u7ecf\\u63a8\\u51fa\\uff0c\\u77ac\\u95f4\\u4eae\\u778e\\u5168\\u7403\\u653b\\u57ce\\u72ee,\\u4ee5BAT\\u4e3a\\u9996\\u7684\\u4e00\\u7ebf\\u56fd\\u5185\\u4e92\\u8054\\u7f51\\u4f01\\u4e1a\\u5747\\u4ee5\\u5feb\\u901f\\u8ddf\\u8fdb\\u7814\\u53d1\\u3001\\u5b9e\\u8df5React\\uff0c\\u4e0b\\u4e00\\u6b21\\u6c42\\u804c\\u4f60\\u5c31\\u4e00\\u5b9a\\u4f1a\\u88ab\\u9762\\u5230\",\"price\":\"10.00\",\"preview\":\"\\/images\\/3.jpg\",\"category_id\":8,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (35, 20, 1, 1, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (36, 21, 1, 1, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (37, 24, 1, 1, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (38, 25, 1, 1, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (39, 28, 1, 1, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (40, 29, 2, 1, '{\"id\":2,\"name\":\"Node.js\\u6743\\u5a01\\u6307\\u5357\",\"summary\":\"\\u4ee5\\u5b9e\\u8df5\\u4e3a\\u5bfc\\u5411\\uff0c\\u4e0d\\u4ec5\\u4e3a\\u6bcf\\u4e2a\\u77e5\\u8bc6\\u70b9\\u914d\\u5907\\u4e86\\u7cbe\\u5de7\\u7684\\u5c0f\\u6848\\u4f8b\\uff0c\\u800c\\u4e14\\u8fd8\\u8bbe\\u8ba1\\u4e862\\u4e2a\\u53ef\\u64cd\\u4f5c\\u6027\\u6781\\u5f3a\\u7684\\u7efc\\u5408\\u6027\\u6848\\u4f8b\",\"price\":\"10.00\",\"preview\":\"\\/images\\/2.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (41, 32, 1, 2, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');
INSERT INTO `order_item` VALUES (42, 34, 1, 1, '{\"id\":1,\"name\":\"\\u6df1\\u5165\\u6d45\\u51faNode.js\",\"summary\":\"\\u7b2c\\u4e00\\u672c\\u6df1\\u5ea6\\u8bb2\\u89e3Node\\u7684\\u56fe\\u4e66,\\u6e90\\u7801\\u7ea7\\u522b\\u63a2\\u5bfb\\u8fc7Node\\u7684\\u5b9e\\u73b0\\u539f\\u7406,\\u963f\\u91cc\\u5df4\\u5df4\\u4e00\\u7ebfNode\\u5f00\\u53d1\\u8005\\u6700\\u771f\\u5b9e\\u7684\\u7ecf\\u9a8c\",\"price\":\"10.00\",\"preview\":\"\\/images\\/1.jpg\",\"category_id\":7,\"created_at\":null,\"updated_at\":null}');

-- ----------------------------
-- Table structure for pdt_content
-- ----------------------------
DROP TABLE IF EXISTS `pdt_content`;
CREATE TABLE `pdt_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_content
-- ----------------------------
INSERT INTO `pdt_content` VALUES (1, 'Node.js实战（第2季） \n¥50.20 (8.51折)\nNode.js实战（第2季）\n吴中骅 雷宗民 赵坤 刘亚中 著\nAngularJS权威教程 “百科全书”式著作，公认的AngularJS经典。MVC教程精粹，JavaScript框架教程实例。\n¥84.00 (8.49折)\nAngularJS权威教程\n（美）勒纳　著 等\nJavaScript实战—JavaScript、jQuery、HTML5、Node.js实例大全 \n¥58.60 (8.5折)\nJavaScript实战—JavaScript、jQuery、HTML5、Node.js实例大\n张泽娜 编著\n跨终端 Web 移动优先|响应式|HTML5|Hybrid|桌面+移动应用|一线前端负责人联袂推荐\n¥46.70 (8.5折)\n跨终端 Web\n徐凯　著\nAngularJS高级程序设计 深入学习AngularJS，驾驭强大的现代Web浏览器\n¥84.20 (8.51折)\nAngularJS高级程序设计\n[美] Adam Freeman 弗里曼　著 等\nJavaScript框架设计 进入JavaScript框架设计的魔法指南。html+css+javascript教程详解，JavaScript高级程序设计精粹！\n¥75.00 (8.43折)\nJavaScript框架设计\n司徒正美　编著\n[当当自营]金龙鱼 原香稻大米5000g（限北京市购买）新老包装随机发放 自营食品 粮油 新老包装随机发货  物流原因限北京市购买\n¥61.00\n[当当自营]金龙鱼 原香稻大米5000g（限北京市购买）新老包装\n远山 白莲子 福建建宁磨皮莲子250g*2袋 口感粉面水磨通心去芯 满138-10 满228-20 满328-30\n¥36.80\n远山 白莲子 福建建宁磨皮莲子250g*2袋 口感粉面水磨通心去\n更多>>', 1, NULL, NULL);
INSERT INTO `pdt_content` VALUES (2, 'xxxxxxxxx', 2, NULL, NULL);
INSERT INTO `pdt_content` VALUES (3, '<p>111</p>', 5, '2016-02-29 02:15:37', '2016-02-29 02:15:37');
INSERT INTO `pdt_content` VALUES (4, '<p>休息休息</p>', 6, '2016-02-29 02:50:42', '2016-02-29 02:50:42');

-- ----------------------------
-- Table structure for pdt_images
-- ----------------------------
DROP TABLE IF EXISTS `pdt_images`;
CREATE TABLE `pdt_images`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_no` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdt_images
-- ----------------------------
INSERT INTO `pdt_images` VALUES (1, '/images/1.jpg', NULL, 1, NULL, NULL);
INSERT INTO `pdt_images` VALUES (2, '/images/2.jpg', NULL, 1, NULL, NULL);
INSERT INTO `pdt_images` VALUES (3, '/images/3.jpg', NULL, 1, NULL, NULL);
INSERT INTO `pdt_images` VALUES (4, '/upload/images/20160229/27edde94c996defb3e594c54d9328459.png', 1, 5, '2016-02-29 02:15:37', '2016-02-29 02:15:37');
INSERT INTO `pdt_images` VALUES (5, '/upload/images/20160229/4de6d095b3a014af4b1b2df29bde0ab5.png', 2, 5, '2016-02-29 02:15:37', '2016-02-29 02:15:37');
INSERT INTO `pdt_images` VALUES (6, '/upload/images/20160229/f46db7a5c23bc65ca2df8d6c77a38c2e.png', 1, 6, '2016-02-29 02:50:42', '2016-02-29 02:50:42');
INSERT INTO `pdt_images` VALUES (7, '/upload/images/20160229/f69a1305399e7ed2cb9cc6db79312887.png', 2, 6, '2016-02-29 02:50:42', '2016-02-29 02:50:42');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `summary` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `preview` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '深入浅出Node.js', '第一本深度讲解Node的图书,源码级别探寻过Node的实现原理,阿里巴巴一线Node开发者最真实的经验', 10.00, '/images/1.jpg', 7, NULL, NULL);
INSERT INTO `product` VALUES (2, 'Node.js权威指南', '以实践为导向，不仅为每个知识点配备了精巧的小案例，而且还设计了2个可操作性极强的综合性案例', 10.00, '/images/2.jpg', 7, NULL, NULL);
INSERT INTO `product` VALUES (3, 'React', '身出名门，Fackbook开源巨献，一经推出，瞬间亮瞎全球攻城狮,以BAT为首的一线国内互联网企业均以快速跟进研发、实践React，下一次求职你就一定会被面到', 10.00, '/images/3.jpg', 8, NULL, NULL);
INSERT INTO `product` VALUES (4, 'React Native', '如果你对开发Web端的原生移动应用感兴趣，《React Native：用JavaScript开发移动应用》就是一本不容错过的以实例代码为引导的入门书籍', 10.00, '/images/4.jpg', 8, NULL, NULL);
INSERT INTO `product` VALUES (5, 'test', 'sss', 999.00, '/upload/images/20160229/ca8fd990a0cd3c4937afd7107cf01389.png', 7, '2018-11-29 11:15:37', '2018-11-29 11:15:37');
INSERT INTO `product` VALUES (6, 'test2', 'x\'x\'x\'x', 999.00, '/upload/images/20160229/305ab8feeff80360d817e70580c6b6e6.png', 7, '2018-11-29 11:15:37', '2018-11-29 11:15:37');

-- ----------------------------
-- Table structure for temp_email
-- ----------------------------
DROP TABLE IF EXISTS `temp_email`;
CREATE TABLE `temp_email`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deadline` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temp_email
-- ----------------------------
INSERT INTO `temp_email` VALUES (2, 17, '1ece9d4717eb2a31a97967e629dbc1da', '2016-01-04 20:06:26');
INSERT INTO `temp_email` VALUES (3, 18, '64a84644cea1a63b3490091bf5946d11', '2018-11-07 19:51:02');
INSERT INTO `temp_email` VALUES (4, 19, '3feae6279b3214501bf093ff0d757ff8', '2018-11-07 20:12:45');
INSERT INTO `temp_email` VALUES (5, 20, 'c17cdce4bb9c0712e72614e118ac7581', '2018-11-07 20:15:22');
INSERT INTO `temp_email` VALUES (6, 21, '8af92b89142b28a0f6227999d79209b3', '2018-11-07 20:43:45');

-- ----------------------------
-- Table structure for temp_phone
-- ----------------------------
DROP TABLE IF EXISTS `temp_phone`;
CREATE TABLE `temp_phone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` int(11) NULL DEFAULT NULL,
  `deadline` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of temp_phone
-- ----------------------------
INSERT INTO `temp_phone` VALUES (10, '17000204093', 209649, '2016-01-10 19:45:22');

SET FOREIGN_KEY_CHECKS = 1;
