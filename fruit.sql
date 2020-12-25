/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : fruit

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 17/12/2020 23:35:37
*/

SET NAMES utf8mb4;
DROP DATABASE IF EXISTS fruit;
CREATE DATABASE fruit CHARSET=UTF8;
USE fruit;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fruit_ad
-- ----------------------------
DROP TABLE IF EXISTS `fruit_ad`;
CREATE TABLE `fruit_ad`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_ad
-- ----------------------------
INSERT INTO `fruit_ad` VALUES (1, 'img/index/ad_1.png', 'https://ai.taobao.com/?spm=a231o.7076277.1998549672.1.460772c1rpoH7n&prepvid=200_11.229.92.182_176_1503287550439&extra=&pid=mm_26866744_2384196_22160019&clk1=&unid=&source_id=&app_pvid=200_11.229.92.182_176_1503287550439');
INSERT INTO `fruit_ad` VALUES (2, 'img/index/ad_2.png', 'http://www.sfbest.com/#trackref=sfbest_hp_hp_head_logo');
INSERT INTO `fruit_ad` VALUES (3, 'img/index/ad_3.png', 'http://www.xianfengsg.com/');
INSERT INTO `fruit_ad` VALUES (4, 'img/index/ad_4.png', 'https://www.tmall.com/?spm=a3204.9536420.a2226n0.1.4d863345ymkMrR');
INSERT INTO `fruit_ad` VALUES (5, 'img/index/ad_5.png', 'http://www.fruitday.com/');
INSERT INTO `fruit_ad` VALUES (6, 'img/index/ad_6.png', 'http://www.guo68.com/');

-- ----------------------------
-- Table structure for fruit_brand
-- ----------------------------
DROP TABLE IF EXISTS `fruit_brand`;
CREATE TABLE `fruit_brand`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_brand
-- ----------------------------
INSERT INTO `fruit_brand` VALUES (1, '更多', '品质齐全', 'img/index/bra_1.png');
INSERT INTO `fruit_brand` VALUES (2, '更快', '快速配送', 'img/index/bra_2.png');
INSERT INTO `fruit_brand` VALUES (3, '更好', '汇聚品牌', 'img/index/bra_3.png');
INSERT INTO `fruit_brand` VALUES (4, '更省', '天天优惠', 'img/index/bra_4.png');

-- ----------------------------
-- Table structure for fruit_carousel
-- ----------------------------
DROP TABLE IF EXISTS `fruit_carousel`;
CREATE TABLE `fruit_carousel`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_carousel
-- ----------------------------
INSERT INTO `fruit_carousel` VALUES (1, 'img/index/banner1.png');
INSERT INTO `fruit_carousel` VALUES (2, 'img/index/banner2.png');
INSERT INTO `fruit_carousel` VALUES (3, 'img/index/banner3.png');

-- ----------------------------
-- Table structure for fruit_cart
-- ----------------------------
DROP TABLE IF EXISTS `fruit_cart`;
CREATE TABLE `fruit_cart`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `ischeck` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_cart
-- ----------------------------
INSERT INTO `fruit_cart` VALUES (1, '阖家欢乐水果礼盒包装', 'img/products/pid1.png', '198', 10, 1, 1);
INSERT INTO `fruit_cart` VALUES (3, '整箱包邮中粮精选悦活U格', 'img/products/pid4.png', '59', 5, 1, 1);
INSERT INTO `fruit_cart` VALUES (6, '海南小青柠2斤 小青柠檬', 'img/products/pid15.png', '49', 10, 2, 1);
INSERT INTO `fruit_cart` VALUES (7, 'Limobar新品苹果浓缩糖原浆果', 'img/products/pid2.png', '59', 4, 2, 1);
INSERT INTO `fruit_cart` VALUES (8, '海南小青柠2斤 小青柠檬', 'img/products/pid15.png', '49', 5, 3, 1);
INSERT INTO `fruit_cart` VALUES (9, '优选新疆库尔勒香梨2kg', 'img/products/pid17.png', '58', 4, 3, 1);
INSERT INTO `fruit_cart` VALUES (10, '新疆阿克苏冰糖心苹果', 'img/products/pid19.png', '99', 2, 3, 1);
INSERT INTO `fruit_cart` VALUES (11, '台湾正宗水仙芒礼盒箱装5-10个', 'img/products/pid27.png', '108', 1, 4, 1);
INSERT INTO `fruit_cart` VALUES (12, '智利莱尼尔樱桃车厘子2kg果径', 'img/products/pid28.png', '488', 3, 4, 1);
INSERT INTO `fruit_cart` VALUES (13, '新西兰佳沛绿奇异果16粒', 'img/products/pid31.png', '139', 2, 4, 1);
INSERT INTO `fruit_cart` VALUES (22, '新疆阿克苏冰糖心苹果', 'img/products/pid19.png', '99', 9, 4, 1);

-- ----------------------------
-- Table structure for fruit_details
-- ----------------------------
DROP TABLE IF EXISTS `fruit_details`;
CREATE TABLE `fruit_details`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `sold_count` int(11) NULL DEFAULT NULL,
  `pic` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `des` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_details
-- ----------------------------
INSERT INTO `fruit_details` VALUES (1, '阖家欢乐水果礼盒包装', 198, 14, '[\"img/products/pid1.png\"]', '[\"img/details/pid1_2.png\",\"img/details/pid1_3.png\",\"img/details/pid1_4.png\",\"img/details/pid1_5.png\",\"img/details/pid1_6.png\"]');
INSERT INTO `fruit_details` VALUES (2, 'Limobar新品苹果浓缩糖原浆果', 59, 6, '[\"img/products/pid2.png\",\"img/details/pid2_2.png\",\"img/details/pid2_3.png\"]', '[\"img/details/pid2_4.png\",\"img/details/pid2_5.png\",\"img/details/pid2_6.png\",\"img/details/pid2_7.png\",\"img/details/pid2_8.png\",\"img/details/pid2_9.png\",\"img/details/pid2_10.png\",\"img/details/pid2_11.png\",\"img/details/pid2_12.png\"]');
INSERT INTO `fruit_details` VALUES (3, '12瓶装山西特产吕梁野山坡沙棘', 72, 14, '[\"img/products/pid3.png\",\"img/details/pid3_2.png\",\"img/details/pid3_3.png\"]', '[\"img/details/pid3_4.png\"]');
INSERT INTO `fruit_details` VALUES (4, '整箱包邮中粮精选悦活U格', 59, 9, '[\"img/products/pid4.png\",\"img/details/pid4_2.png\",\"img/details/pid4_3.png\"]', '[\"img/details/pid4_4.png\"]');
INSERT INTO `fruit_details` VALUES (5, '广禧草莓果酱2kg含果肉果粒酱', 29, 2, '[\"img/products/pid5.png\",\"img/details/pid5_2.png\",\"img/details/pid5_3.png\"]', '[\"img/details/pid5_4.png\"]');
INSERT INTO `fruit_details` VALUES (6, '百香果酱广西新鲜百香果果酱非', 31, 1, '[\"img/products/pid6.png\",\"img/details/pid6_2.png\",\"img/details/pid6_3.png\"]', '[\"img/details/pid6_4.png\",\"img/details/pid6_5.png\",\"img/details/pid6_6.png\",\"img/details/pid6_7.png\",\"img/details/pid6_8.png\",\"img/details/pid6_9.png\",\"img/details/pid6_10.png\",\"img/details/pid6_11.png\",\"img/details/pid6_12.png\",\"img/details/pid6_13.png\",\"img/details/pid6_14.png\"]');
INSERT INTO `fruit_details` VALUES (7, '冰糖雪梨汁包邮冰糖炖梨果汁冰', 72, 1, '[\"img/products/pid7.png\",\"img/details/pid7_2.png\",\"img/details/pid7_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (8, '菌动力液体肥', NULL, NULL, '[\"img/products/pid8.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (9, '果树专用肥', NULL, NULL, '[\"img/products/pid9.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (10, '生物有机肥', NULL, NULL, '[\"img/products/pid10.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (11, '蓝莓果汁生产线', NULL, NULL, '[\"img/products/pid11.png\"]', '[\"img/details/pid11_1.png\"]');
INSERT INTO `fruit_details` VALUES (12, '果汁饮料组合机', NULL, NULL, '[\"img/products/pid12.png\"]', '[\"img/details/pid12_1.png\"]');
INSERT INTO `fruit_details` VALUES (13, '四川不知火丑柑 粑粑柑5斤', 59, 3, '[\"img/products/pid13.png\",\"img/details/pid13_2.png\",\"img/details/pid13_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (14, '重庆万州血橙5斤装 约130g/个', 59, 5, '[\"img/products/pid14.png\",\"img/details/pid14_2.png\",\"img/details/pid14_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (15, '海南小青柠2斤 小青柠檬', 49, 8, '[\"img/products/pid15.png\",\"img/details/pid15_2.png\",\"img/details/pid15_3.png\"]', '[\"img/details/pid15_4.png\",\"img/details/pid15_5.png,\"\"img/details/pid15_6.png\",\"img/details/pid15_7.png\"]');
INSERT INTO `fruit_details` VALUES (16, '河北泊头特产皇冠梨5斤装', 49, 3, '[\"img/products/pid16.png\"]', '[\"img/details/pid16_2.png\",\"img/details/pid16_3.png\",\"img/details/pid16_4.png\",\"img/details/pid16_5.png\",\"img/details/pid16_6.png\"]');
INSERT INTO `fruit_details` VALUES (17, '优选新疆库尔勒香梨2kg', 58, 4, '[\"img/products/pid17.png\",\"img/details/pid17_2.png\",\"img/details/pid17_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (18, '丰水梨12个（约300g/个）', 59, 0, '[\"img/products/pid18.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (19, '新疆阿克苏冰糖心苹果', 99, 3, '[\"img/products/pid19.png\"]', '[\"img/details/pid19_2.png\",\"img/details/pid19_3.png\",\"img/details/pid19_4.png\",\"img/details/pid19_5.png\",\"img/details/pid19_6.png\",\"img/details/pid19_7.png\"]');
INSERT INTO `fruit_details` VALUES (20, '新疆阿克苏冰糖心苹果2kg果径', 59, 0, '[\"img/products/pid20.png\",\"img/details/pid20_2.png\",\"img/details/pid20_3.png\",\"img/details/pid20_4.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (21, '陕西精品红富士苹果2.5kg果径', 59, 0, '[\"img/products/pid21.png\",\"img/details/pid21_2.png\",\"img/details/pid21_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (22, '泰国金枕头榴莲 1个装(5斤左右)', 198, 12, '[\"img/products/pid22.png\"]', '[\"img/details/pid22_2.png\",\"img/details/pid22_3.png\",\"img/details/pid22_4.png\",\"img/details/pid22_5.png\",\"img/details/pid22_6.png\",\"img/details/pid22_7.png\",\"img/details/pid22_8.png\",\"img/details/pid22_9.png\",\"img/details/pid22_10.png\",\"img/details/pid22_11.png\",\"img/details/pid22_12.png\",\"img/details/pid22_13.png\",\"img/details/pid22_14.png\",\"img/details/pid22_15.png\",\"img/details/pid22_16.png\",\"img/details/pid22_17.png\",\"img/details/pid22_18.png\",\"img/details/pid22_19.png\",\"img/details/pid22_20.png\",\"img/details/pid22_21.png\",\"img/details/pid22_22.png\",\"img/details/pid22_23.png\",\"img/details/pid22_24.png\",\"img/details/pid22_25.png\",\"img/details/pid22_26.png\",\"img/details/pid22_27.png\",\"img/details/pid22_28.png\",\"img/details/pid22_29.png\"]');
INSERT INTO `fruit_details` VALUES (23, '泰国特产冷冻金枕头榴莲果肉', 79, 10, '[\"img/products/pid23.png\"]', '[\"img/details/pid23_2.png\"]');
INSERT INTO `fruit_details` VALUES (24, '泰国进口金枕头榴莲9-10斤', 298, 5, '[\"img/products/pid24.png\",\"img/details/pid24_2.png\",\"img/details/pid24_3.png\"]', '[\"img/details/pid24_4.png\",\"img/details/pid24_5.png\",\"img/details/pid24_6.png\",\"img/details/pid24_7.png\",\"img/details/pid24_8.png\",\"img/details/pid24_9.png\"]');
INSERT INTO `fruit_details` VALUES (25, '泰国南多美芒果1.2KG', 69, 1, '[\"img/products/pid25.png\",\"img/details/pid25_2.png\",\"img/details/pid25_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (26, '进口越南青芒5斤', 59, 5, '[\"img/products/pid26.png\",\"img/details/pid26_2.png\",\"img/details/pid26_3.png\"]', '[\"img/details/pid26_4.png\",\"img/details/pid26_5.png\",\"img/details/pid26_6.png\",\"img/details/pid26_7.png\"]');
INSERT INTO `fruit_details` VALUES (27, '台湾正宗水仙芒礼盒箱装5-10个', 108, 1, '[\"img/products/pid27.png\",\"img/details/pid27_2.png\",\"img/details/pid27_3.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (28, '智利莱尼尔樱桃车厘子2kg果径', 488, 4, '[\"img/products/pid28.png\"]', '[\"img/details/pid28_2.png\",\"img/details/pid28_3.png\",\"img/details/pid28_4.png\"]');
INSERT INTO `fruit_details` VALUES (29, '智利金车厘子 智利莱尼尔樱桃', 498, 1, '[\"img/products/pid29.png\",\"img/details/pid29_2.png\",\"img/details/pid29_3.png\",\"img/details/pid29_4.png\"]', NULL);
INSERT INTO `fruit_details` VALUES (30, '美国进口水果车厘子2磅908克', 138, 6, '[\"img/products/pid30.png\",\"img/details/pid30_2.png\",\"img/details/pid30_3.png\",\"img/details/pid30_4.png\"]', '[\"img/details/pid30_5.png\",\"img/details/pid30_6.png\",\"img/details/pid30_7.png\",\"img/details/pid30_8.png\",\"img/details/pid30_9.png\",\"img/details/pid30_10.png\",\"img/details/pid30_11.png\",\"img/details/pid30_12.png\",\"img/details/pid30_13.png\"]');
INSERT INTO `fruit_details` VALUES (31, '新西兰佳沛绿奇异果16粒', 139, 1, '[\"img/products/pid31.png\"]', '[\"img/details/pid31_2.png\",\"img/details/pid31_3.png\",\"img/details/pid31_4.png\",\"img/details/pid31_5.png\",\"img/details/pid31_6.png\",\"img/details/pid31_7.png\",\"img/details/pid31_8.png\",\"img/details/pid31_9.png\",\"img/details/pid31_10.png\",\"img/details/pid31_11.png\",\"img/details/pid31_12.png\",\"img/details/pid31_13.png\",\"img/details/pid31_14.png\"]');
INSERT INTO `fruit_details` VALUES (32, '佳沛新西兰鸭嘴金奇异果8粒', 96, 0, '[\"img/products/pid32.png\"]', '[\"img/details/pid32_2.png\",\"img/details/pid32_3.png\",\"img/details/pid32_4.png\",\"img/details/pid32_5.png\",\"img/details/pid32_6.png\",\"img/details/pid32_7.png\",\"img/details/pid32_8.png\",\"img/details/pid32_9.png\",\"img/details/pid32_10.png\",\"img/details/pid32_11.png\",\"img/details/pid32_12.png\",\"img/details/pid32_13.png\"]');
INSERT INTO `fruit_details` VALUES (33, '新西兰佳沛Zespri阳光金奇异果', 128, 0, '[\"img/products/pid33.png\",\"img/details/pid33_2.png\",\"img/details/pid33_3.png\"]', '[\"img/details/pid33_4.png\"]');

-- ----------------------------
-- Table structure for fruit_dom
-- ----------------------------
DROP TABLE IF EXISTS `fruit_dom`;
CREATE TABLE `fruit_dom`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_dom
-- ----------------------------
INSERT INTO `fruit_dom` VALUES (1, NULL, 'img/index/dom_1.png', NULL, '/products');
INSERT INTO `fruit_dom` VALUES (2, NULL, 'img/index/dom_2.png', NULL, NULL);
INSERT INTO `fruit_dom` VALUES (3, '新疆阿克苏冰糖心苹果 阿克苏苹果8斤装', 'img/index/dom_3.png', 99.00, '/details/19');
INSERT INTO `fruit_dom` VALUES (4, '新疆阿克苏冰糖心苹果 阿克苏苹果8斤装', 'img/index/dom_4.png', 99.00, '/details/19');
INSERT INTO `fruit_dom` VALUES (5, '优选新疆库尔勒香梨2kg 120g以上/个', 'img/index/dom_5.png', 58.00, '/details/17');
INSERT INTO `fruit_dom` VALUES (6, '海南小青柠2斤 小青柠檬', 'img/index/dom_6.png', 49.00, '/details/15');
INSERT INTO `fruit_dom` VALUES (7, '新疆阿克苏冰糖心苹果2kg果径80-85mm', 'img/index/dom_7.png', 59.00, '/details/20');

-- ----------------------------
-- Table structure for fruit_hot
-- ----------------------------
DROP TABLE IF EXISTS `fruit_hot`;
CREATE TABLE `fruit_hot`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_hot
-- ----------------------------
INSERT INTO `fruit_hot` VALUES (1, '12瓶装山西特产吕梁野山坡沙棘', 'img/index/hot_1.png', 72.00, '/details/3');
INSERT INTO `fruit_hot` VALUES (2, '美国进口水果车厘子2磅908克', 'img/index/hot_2.png', 138.00, '/details/30');
INSERT INTO `fruit_hot` VALUES (3, '泰国特产冷冻金枕头榴莲果肉300g', 'img/index/hot_3.png', 79.00, '/details/23');
INSERT INTO `fruit_hot` VALUES (4, '进口越南青芒5斤', 'img/index/hot_4.png', 59.00, '/details/26');
INSERT INTO `fruit_hot` VALUES (5, '新疆阿克苏冰糖心苹果2kg果径80-85mm', 'img/index/hot_5.png', 59.00, '/details/20');
INSERT INTO `fruit_hot` VALUES (6, '四川不知火丑柑 粑粑柑5斤约220g/个', 'img/index/hot_6.png', 59.00, '/details/13');
INSERT INTO `fruit_hot` VALUES (7, '重庆万州血橙5斤装 约130g/个', 'img/index/hot_7.png', 59.00, '/details/14');
INSERT INTO `fruit_hot` VALUES (8, '海南小青柠2斤 小青柠檬װ', 'img/index/hot_8.png', 49.00, '/details/15');
INSERT INTO `fruit_hot` VALUES (9, '泰国特产冷冻金枕头榴莲果肉300g', 'img/index/hot_9.png', 79.00, '/details/23');

-- ----------------------------
-- Table structure for fruit_jui
-- ----------------------------
DROP TABLE IF EXISTS `fruit_jui`;
CREATE TABLE `fruit_jui`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_jui
-- ----------------------------
INSERT INTO `fruit_jui` VALUES (1, NULL, 'img/index/jui_1.png', NULL, '/products');
INSERT INTO `fruit_jui` VALUES (2, NULL, 'img/index/jui_2.png', NULL, NULL);
INSERT INTO `fruit_jui` VALUES (3, '百香果酱广西新鲜百香果果酱非糖桂花酱百香果原浆果肉果汁', 'img/index/jui_3.png', 31.00, '/details/6');
INSERT INTO `fruit_jui` VALUES (4, 'Limobar新品苹果浓缩糖原浆果汁苏打汽水气泡碳酸饮料', 'img/index/jui_4.png', 59.00, '/details/2');
INSERT INTO `fruit_jui` VALUES (5, '12瓶装山西特产吕梁野山坡沙棘汁饮料300ml野生果汁饮料整箱', 'img/index/jui_5.png', 72.00, '/details/3');
INSERT INTO `fruit_jui` VALUES (6, '整箱包邮中粮精选悦活U格350ml广西芒果口味乳酸菌果汁饮料15瓶装', 'img/index/jui_6.png', 59.00, '/details/4');
INSERT INTO `fruit_jui` VALUES (7, '冰糖雪梨汁包邮冰糖炖梨果汁冰糖炖雪梨果粒15*100ml送1瓶', 'img/index/jui_7.png', 72.00, '/details/7');

-- ----------------------------
-- Table structure for fruit_leftnav
-- ----------------------------
DROP TABLE IF EXISTS `fruit_leftnav`;
CREATE TABLE `fruit_leftnav`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_leftnav
-- ----------------------------
INSERT INTO `fruit_leftnav` VALUES (1, '苹果', 'img/leftNav/1.png', '/productsname/apple', 'apple');
INSERT INTO `fruit_leftnav` VALUES (2, '香梨', 'img/leftNav/2.png', '/productsname/pears', 'pears');
INSERT INTO `fruit_leftnav` VALUES (3, '车厘子', 'img/leftNav/3.png', '/productsname/cherry', 'cherry');
INSERT INTO `fruit_leftnav` VALUES (4, '芒果', 'img/leftNav/4.png', '/productsname/mongo', 'mongo');
INSERT INTO `fruit_leftnav` VALUES (5, '榴莲', 'img/leftNav/5.png', '/productsname/durian', 'durian');
INSERT INTO `fruit_leftnav` VALUES (6, '奇异果', 'img/leftNav/6.png', '/productsname/kiwi', 'kiwi');
INSERT INTO `fruit_leftnav` VALUES (7, '坚果', 'img/leftNav/7.png', '/productsname/nut', 'nut');
INSERT INTO `fruit_leftnav` VALUES (8, '礼盒包装', 'img/leftNav/8.png', '/productsname/pack', 'pack');

-- ----------------------------
-- Table structure for fruit_messages
-- ----------------------------
DROP TABLE IF EXISTS `fruit_messages`;
CREATE TABLE `fruit_messages`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tim` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_messages
-- ----------------------------
INSERT INTO `fruit_messages` VALUES (1, 'aaaa', '2020-11-14', '12345', NULL);
INSERT INTO `fruit_messages` VALUES (2, NULL, '2020-09-08', '水果果果锅', '<p>网友 的回复:</p><p>09-28 19:09</p><br>666');
INSERT INTO `fruit_messages` VALUES (3, NULL, '2020-07-03', '傻子', '<p>网友 的回复:</p><p>09-28 19:10</p><br>666');
INSERT INTO `fruit_messages` VALUES (4, '李鹏君', '2020-07-02', '我们这里产冬枣，黄金蟠桃，甜瓜', '<p>网友 的回复:</p><p>9-15 16:30<p><br>哦');
INSERT INTO `fruit_messages` VALUES (5, NULL, '2020-07-01', 'ff', NULL);
INSERT INTO `fruit_messages` VALUES (6, '石先生', '2020-07-01', '你好呀', '<p>网友 的回复:</p><p>07-01 11:16</p><br>我很好<br>网友 的回复:</p><p>07-01 11:17</p><br>老板有新茶吗<br>老板有水果吗，有多少要多少');
INSERT INTO `fruit_messages` VALUES (7, '何洋', '2020-06-10', '我们公司针对越南，泰国的进口水果有一手货源，期待与您们的合作', '<p>网友 的回复:</p><p>06-24 23:00</p><br>好的');
INSERT INTO `fruit_messages` VALUES (8, '周少庞', '2020-06-08', '我是湖北秭归人，家里种了很多橙子，请问可以入驻商城吗', NULL);
INSERT INTO `fruit_messages` VALUES (9, 'AMC麦白', '2020-03-28', 'A好贵啊', NULL);
INSERT INTO `fruit_messages` VALUES (10, '1234', '2019-12-17', '12345', NULL);
INSERT INTO `fruit_messages` VALUES (11, NULL, '2019-12-16', '昂贵的', '<p>网友 的回复:</p><p>12-17 16:03</p><br>?');
INSERT INTO `fruit_messages` VALUES (12, '顾春', '2019-11-10', '期待', NULL);
INSERT INTO `fruit_messages` VALUES (13, NULL, '2019-11-01', '窝窝头，一块钱四个。哎嘿', NULL);
INSERT INTO `fruit_messages` VALUES (14, NULL, '2019-11-01', '?', NULL);
INSERT INTO `fruit_messages` VALUES (15, '倪新亮', '2019-08-08', '我公司主要产品类目：生鲜水果 粮油米面 肉干肉脯。期待与您的合作。', '<p>网友 的回复:</p><p>08-11 09:15</p><br>瓦罗兰大陆由我来守护<br><p>网友 的回复:</p><p>08-29 14:54</p><br>哈哈<br><p>网友 的回复:</p><p>12-02 19:32</p><br>来吧来吧');
INSERT INTO `fruit_messages` VALUES (16, '老啊毒', '2019-03-18', '一giao我里giao', '<p>网友 的回复:</p><p>03-18 10:43</p><br>玩堡垒我就没被死神偷过屁股');
INSERT INTO `fruit_messages` VALUES (17, '张浩然', '2019-03-18', '如果我是DJ你会爱我吗', NULL);
INSERT INTO `fruit_messages` VALUES (18, '水儿', '2019-03-12', '兄弟萌 吧保护打到公屏上好吗', NULL);
INSERT INTO `fruit_messages` VALUES (19, '小小啊毒', '2019-03-11', 'MC老毒在线毒人', '<p>网友 的回复:</p><p>03-12 11:22</p><br>把灯光打到公屏上<br>保护');

-- ----------------------------
-- Table structure for fruit_newscenter
-- ----------------------------
DROP TABLE IF EXISTS `fruit_newscenter`;
CREATE TABLE `fruit_newscenter`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_newscenter
-- ----------------------------
INSERT INTO `fruit_newscenter` VALUES (1, '你喜欢的水果珍珠怎么做，看这一篇就够了，包学包会', '  你喜欢的水果珍珠怎么做，看这一篇就够了，包学包会<br>\n这个季节最好的零食应该是水果了，我们可以把水果做成沙拉，做成拼盘，做成果冻，做成冰棒，当然了，还可以做成珍珠。夏天马上就要到了，奶香味的水果珍珠要吃起来吗？说到水果的话，最近有没有很喜欢吃的水果呢，我们一起来做一个水果珍珠吧！没错，就是喝奶茶里面的那个珍珠，你喜欢的水果珍珠怎么做，看这一篇就够了，包学包会<br>\n材料：首先是准备自己喜欢的水果了，小编很喜欢芒果，就准备了半个芒果，还有红心火龙果一片，外加草莓四颗，蓝莓15颗，水果的食材都是随便你来选择了。还需要准备木薯粉200克，可以根据你准备的水果的量适当添加。牛奶肯定是一定要的了，可以是纯牛奶，无糖的有糖的都可以。最后就是蜂蜜了，如果没有蜂蜜也可以用白糖代替，只是口感没有辣么好而已。<br>\n然后我们开始做了1.将所有水果去皮的去皮，洗干净的洗干净，最后切成一小块，分别打成水果泥，分别放到干净的锅里小火加热到冒小泡就好了。2.将木薯粉分别分成四分，每份五十克，将烧开的果汁泥迅速倒入五十克木薯粉中，迅速搅拌，最后成团。（这个可能就需要几个人一起完成会更好）<br>\n3.变成的面团，可以开始揉搓成小丸子了，这个时候可以再粘一点生的木薯粉，防止它太黏了，挤到一堆了。4.开火煮适量的水，将小丸子都下到锅里煮，煮到小丸子都漂浮在上层就可以放牛奶和蜂蜜了，牛奶和蜂蜜都是根据你的珍珠量加入的，不停的搅拌不要让珍珠粘锅就可以了。<br>\n煮好的珍珠可以做水果奶茶喝，也可以直接就着牛奶一起喝，小编喜欢把它那一部分出来放冰箱冷冻，有的时候冻好的珍珠再加上常温的一点点牛奶可以变成小零食，还挺好吃的，你也可以试一试噢。水果里面的水分是很多的，我们夏天可以多吃一点它噢<br>\n还有一种是可以做成芋圆汤，夏天喝芋圆汤也是一种消暑解渴的办法。<br>\n这个时候做好的水果珍珠可以加一些酸奶，果冻，牛奶，按照一比一的比例调出来就可以了，再加上一些新鲜的水果，一道好吃的芋圆汤就成了。<br>\n你喜不喜欢这样的水果珍珠呢？一起做给家里的孩子们吃吧，甜甜的，孩子们肯定都爱吃的。');
INSERT INTO `fruit_newscenter` VALUES (2, '这9种奇形怪状的蔬菜水果，你见过几种？', '  生活中常见的蔬菜水果都是“规规矩矩”的，长得奇形怪状的蔬菜水果你见过多少？<br>\n1.鸡蛋茄<br>\n<br>\n<br>\n看起来像是鸡蛋，长在树上的鸡蛋？其实它是鸡蛋茄，就是茄子，比起普通的茄子是不是很不一样，这种茄子营养价值比普通的茄子要高很多。种在自家阳台上，也是很有面子很上档次的。<br>\n<br>\n<br>\n2.“白雪公主”草莓<br>\n<br>\n<br>\n一提到草莓，你想到的肯定是红色的，白色的草莓你见过吗？这个白雪公主是草莓的一个新品种，至于味道怎么样，我也不知道，毕竟没有吃过。<br>\n<br>\n<br>\n3.“贼不偷”西红柿<br>\n<br>\n<br>\n在农村的菜地里，西红柿熟了变红的时候，总有路过的或者是村里的小孩顺手摘去几个。可是种上这样的西红柿后，基本上没有人轻易去偷了，因为大家都以为这西红柿还没有熟。所以，大家把这个西红柿品种叫做“贼不偷”是不是很贴切呢。<br>\n4.香蕉西葫芦<br>\n<br>\n<br>\n外形看起来是不是很像香蕉，但是它是西葫芦。果皮为黄色的西葫芦，是美洲南瓜的一个黄色果皮新品种，主要食用的是嫩果，嫩果肉质细嫩，味道微甜有股清香，适合生吃，它的嫩茎还可以当做菜吃。<br>\n<br>\n<br>\n5.抱子甘蓝<br>\n一株上长出了二十几个甘蓝，每个比大拇指稍大一点点，真是开眼了，不知道这样的“抱子甘蓝”是不是有多子多福的寓意。<br>\n<br>\n<br>\n6.白玉樱桃<br>\n<br>\n<br>\n白玉樱桃是毛樱桃的芽变品种，果实是白色的，晶莹剔透，看上去非常好看，它的形状近乎圆形，比普通的樱桃稍大一点，果肉硬而脆，味道甘甜，比较耐贮藏和运输。\n<br>\n<br>\n7.冰菜\n<br>\n<br>\n看上去有点像茼蒿，但是浑身又有“冰珠子”，用手摸上去是硬硬凉凉的，所以它的名字有冰菜、冰草、冰柱子等。常见的吃法是凉拌食用，吃一口，嚼在嘴里有很多水分，外表的冰珠子的液体是粘稠的，除了咸味之外还有点生菜的味道，含在嘴里软软的，冰冰爽爽，口感十分独特。它本身是含有盐分的所以烹制时不需要放盐了。\n<br>\n<br>\n8.飞碟瓜\n<br>\n<br>\n它是美洲南瓜的一个变种，果实既可以观赏又可以食用，又叫碟瓜、齿缘瓜。这是一种难得的可食用兼园艺的植物。\n<br>\n<br>\n9.猫屎瓜\n<br>\n<br>\n这是一种长在深山里的野生灌木结出来的果实，成熟后，是蓝紫色的，汁很多，形状很像猫儿拉的屎。是不是感觉像是磨砂版的茄子。\n<br>\n<br>\n这9种奇特的蔬菜水果，你见过几种，又吃过几种呢？');
INSERT INTO `fruit_newscenter` VALUES (3, '用水果来做菜对身体非常有好处 好吃易学的水果菜', '很多的人习惯用水果做菜，说是美味又减肥。高校食堂的黑暗料理名气由来已久，近日又爆出一道新品：苹果炒肉。西南政法大学东苑食堂继“冰镇麻辣烫”后又推出新品“苹果炒肉”，但虽听起来奇葩，据了解这道菜却很受学生欢迎，短短半个小时便售空。用水果做的菜简单的方法有哪些呢？水果是我们平时生活中常吃的食物，但是作为菜品却不是家常烹饪食材。实际上，用水果来做菜不仅不奇葩，而且对身体非常有好处的。<br>\n<br>\n<br>\n桂花雪梨明虾球\n<br>\n<br>\n<br>\n清淡的雪梨用香料和红酒稍微浸泡，让其偏清淡的甜香变得更加的雍容华贵，经过油炸而味道趋于浓郁的明虾——两者都是本质清淡再以重手法烹制，让本身味道披上一丝艳丽的外衣，在嘴里细嚼又会逐渐体验其悠长的回味，搭配同样有着丰富梨香的白诗南自然是“同声同气”，加上平衡的酸度会解除炸虾多余的油腻，同时更会让虾肉的鲜味无限地放大。\n<br>\n<br>\n<br>\n凤梨珊瑚鱼\n<br>\n<br>\n<br>\n用刀切花的桂鱼，再用菠萝汁腌制，因为切成条网状的桂鱼能最大程度地将味道吸收，所以用油炸透的桂鱼肉里充满着浓郁的菠萝香气，而菠萝天然的酵素会让鱼肉出乎意料地柔软外，更将鱼肉的肉汁完全保存在其中。\n<br>\n<br>\n<br>\n火龙果彩虹带子\n<br>\n<br>\n<br>\n火龙果与带子在热锅上快速爆炒，其间不需要太过复杂的调味，有趣的是在碟上尽管热气腾腾，但在口中仿佛从来没有经过烹调，因为火龙果还是依然那么爽脆，带子的鲜甜更是无法以笔墨形容。\n<br>\n<br>\n<br>\n草莓猪棒骨\n<br>\n<br>\n<br>\n猪棒骨卤过后晾干，再用油炸香，最后以新鲜草莓调成的汁慢慢熬煮入味，整个过程除了繁复无比外，其中所花的心思更是一丝不苟，吃起来的味道自然是超过了所谓外酥里嫩，因为在脆脆的口感后就是酥化的肉质，加上浓烈的草莓果香做整体的背景，你会不由自主地对完成这道菜产生自豪感。\n<br>\n<br>\n<br>\n香芒雪花牛柳\n<br>\n<br>\n<br>\n普通的牛柳猛火快炒后再拌入新鲜的芒果丁就变得完全不平凡了，由于芒果事先没有参与烹调过程，芒果的香味在牛柳的余温下慢慢渗透到肉质里面，让牛柳多了一阵丰满艳丽的浓香。\n<br>\n<br>\n<br>\n菠萝咕噜肉\n<br>\n<br>\n<br>\n原料：五花夹层肉350克，菠萝肉150克，盐2/3茶匙，玉米淀粉3大匙，青椒1个，蕃茄酱4大匙，白糖1/2大匙，淀粉1大匙。\n<br>\n<br>\n<br>\n做法：1、五花肉先用2/3茶匙盐腌制十五分钟。加入3大匙玉米淀粉，用手抓拌至表面都均匀的裹上玉米淀粉。2、锅内热油至160度，放入裹好粉的五花猪肉，保持大火，炸至表面呈金黄色，即可捞出即干油备用。3、锅内放少许油，投入青红椒，放少许盐炒至断生，盛起备用。4、将调味料倒入一只碗内调和均匀。5、锅内再热一大匙油，将调料倒入锅内。用小火一直煮至浓稠，浆汁能挂在锅铲上，放入菠萝块，翻炒几下。6、再放入炸好的肉块，迅速翻炒至肉块和菠萝块都均匀的裹上浆汁，最后投入炒好的青椒即可。\n<br>\n<br>\n<br>\n榴莲炖鸡\n<br>\n<br>\n<br>\n原料：榴莲300克，鸡1只(约重600克)，姜片10克，核桃仁50克，红枣50克，清水约用1500克，盐少许。做法：1、鸡洗干净去皮，放入滚水中，浸约5分钟，斩成大块。2、核桃仁用水浸泡，去除油味;红枣洗净去核;榴莲去嫩皮，榴莲壳取里面白囊部分，切成块。3、把鸡、姜片、核桃仁、枣、榴莲皮与榴莲肉同放入锅内滚开水中，加姜片，用猛火滚起后，大火烧开，小火熬煮2个小时。4、枸杞子最后十分钟加。汤好后放盐调味即可饮用。\n<br>\n<br>\n<br>\n木瓜鲫鱼汤\n<br>\n<br>\n<br>\n原料：鲫鱼1条，木瓜30g，生姜3g，料酒2g，白醋1g，热开水适量，盐适量，葱2根。做法：1、鲫鱼剖好洗净，腮边和尾部各切一刀抽出筋，两面都抽。2、生姜切丝放进鱼肚和鱼身上，抹上适量盐，腌制一小时。3、热锅放油，将腌制好的鱼放入油锅内两面煎一会儿。4、鱼煎好后装入砂锅中，倒入适量热开水、料酒、醋，腌鱼的生姜丝放进去，大火煮开后小火煮。5、木瓜去皮去籽切小块，煮至汤色变白后倒入木瓜继续煮15分钟左右关火，根据口味加入适量盐拌均匀即可。\n<br>\n<br>\n<br>\n用水果做的菜简单的方法就是这些了，平时喜欢吃水果的人不防试试以上的一些菜式，相信会让你的餐桌从此多了一道亮丽的风景，同时也会让你的肠胃爱上这些美味');
INSERT INTO `fruit_newscenter` VALUES (4, '皮肤偏黄的女生，多吃这4种水果，比敷面膜有用！', '水果是非常健康的，并且包含了很多营养的一种食物，并且某些水果对美容养颜还是非常的有功效的。就比如俗话常说的“一天一苹果，医生远离我”这样的俗语，可见水果的营养是非常的高的。今天小编就给大家介绍4种对美白皮肤比较好是水果。\n<br>\n<br>\n<br>\n第一种：柠檬\n<br>\n很多人都知道，柠檬是比较酸的，单独直接吃是比较难以接受的，所以很多朋友都会榨成汁加上一些糖水一起喝。\n<br>\n虽然，柠檬是酸的，但也正因为它的酸，对人体是非常有好处的，它是具有延缓衰老印制色素的沉着，所以，常吃柠檬是非常好的，最好还是直接吃别榨汁效果会更好。\n<br>\n第二种：金桔\n<br>\n金桔和柠檬有一点相似，也有些是酸的，但是成熟的金桔是非常甜的很好吃。并且，金桔对增进皮肤光泽与弹性、减缓衰老、避免肌肤松弛生皱有非常好的效果，想要美白皮肤、抗衰老可以常吃些金桔。\n<br>\n第三种：猕猴桃\n<br>\n猕猴桃的营养相信大家都知道，被称为是“水果之王”并且中国还是猕猴桃的源产地。猕猴桃的食疗价值是非常的高的。对美白皮肤也是很有用处的。\n<br>\n第四种：葡萄柚\n<br>\n葡萄柚也就是我们平常说的西柚，它包含着非常丰富的营养成分，并且它包含的微量元素是具有广泛的医疗保健的作用的。对皮肤也是非常的好的，所以常常吃一些这样的水果，可比经常敷面膜有用多了。');
INSERT INTO `fruit_newscenter` VALUES (5, '你爱吃水果吗？知道它们都有哪些营养价值吗？', '不知道大家喜不喜欢吃水果？我想大多数朋友都是喜欢的吧？常吃水果对人体好处很多哦，一起来看看吧！\n<br>\n菠萝蜜，说起菠萝蜜，简直让我又爱又恨，菠萝蜜脆甜可口，但是杀菠萝蜜却让我头疼，它有一种黏黏糊糊的东西黏住刀和手，很难把它果肉分离来，吃的时候也必须要带一次性手套，不然吃了以后整个手都是黏黏糊糊的，菠萝蜜性干香，止渴解烦。具有健体，延年益寿的功效。\n<br>\n车厘子，说起车厘子，不得不让我们觉得，这个小不点的东西，价格着实贵，特别是进口的车厘子，价格高达上百块钱一斤，当然，我买过最贵的进口车厘子是120块钱一斤，是智利车里子，但是口感非常棒，吃了还想吃，车里子含铁丰富，是一种很好的补血水果。\n<br>\n奶油草莓，奶油草莓相对于普通草莓来说，口感和甜度上是远远高于普通草莓的，奶油草莓吃起来很香甜，微微的带点奶油的味道，奶油草莓性味甘，可以润肺生津，清热解毒。奶油草莓很娇气，不易存放，买了最好当天吃完。对于奶油草莓来说，我对它是没有抵抗力的，看到它就想吃，完全没有抵抗力。\n<br>\n<br>\n西梅，西梅是一种非常甜的水果，要熟了软了才好吃，脆的西梅是带点酸味的，所以我是比较喜欢吃软一点的西梅，美国加州的西梅最好吃，清甜可口，美味多汁，西梅很适合老人和小孩吃，它富含着丰富的维生素A及纤维素，含有铁和钾矿物质，它不含脂肪和胆固醇，可以更好的为老人小孩补充铁锌钾，更好的补充各种维生素。\n<br>\n<br>\n怎么样？上述这几种水果有你喜欢的吗？这几种水果都十分的有营养，遇到的话一定不要错过哦！');
INSERT INTO `fruit_newscenter` VALUES (6, '这种水果在树上没人摘，掉在地上抢着捡，营养高，口感好！', '现在我们的生活水平提高了，所以说在日常生活当中，人们越来越讲究合理膳食，营养搭配，现在的一日三餐已经完全满足不了我们日常的需求，所以好多人喜欢时常的吃一些水果，当然吃水果对我们的身体健康非常有利，水果当中含有丰富的膳食纤维，经常吃能够帮助我们肠胃蠕动，促进消化吸收，而且还能够缓解便秘的现象，并且现在水果的种类变得越来越多，像一些热带水果或者是进口的水果我们也可以买到。但是在日常生活当中却仍然有一些水果，由于自身的原因可能只有在当地才能够吃到，在其他的地方是很难会见到的，今天小编给大家介绍一种果子，可能在日常生活当中好多人都没有见过，就是鼻涕果。\n<br>\n<br>\n这种水果在树上没人摘，掉在地上抢着捡，营养高，口感好！\n<br>\n其实这种鼻涕果在农村大部分都叫他南酸枣，可能说到南酸枣，大家应该都非常的熟悉了，尤其是对于北方农村的人们来说，在路边就能够经常见到这种小野果的身影，其实它吃起来的口感还算是非常不错的酸甜可口，而且以前好多农村人他们干农活的时候，可能路边碰上了会摘上一两颗。是南酸枣，可不是酸枣，它的个头要比酸枣大许多，而且它的味道和酸枣差别也比较大一些，那么为什么他会取这样的一个名字呢？这主要是因为它完全成熟好之后非常的软，就像鼻涕一样。\n<br>\n<br>\n虽然说我们听到这个名字感觉非常的恶心，但是这种水果的味道还是非常不错的，最关键的是这种水果它的营养价值也是非常高的，它含有丰富的维生素c而且它其中维生素c的含量要比苹果高出好几倍，并且含有多种微量元素，所以说在日常生活当中适当的吃点鼻涕果对我们的身体健康非常有帮助。并且它还属于一种药食同源的水果，可以入药，对于心神不宁，气滞血瘀都有着非常不错的疗效。\n<br>\n<br>\n但是这种果子却有一种非常奇怪的现象，就是这种果子并不是被人们摘下来的，它在树上的时候是很少有人去摘的，但是等它成熟之后自然的掉落在地上之后，大家却抢着捡。这是因为这种果子在树上的时候是没有成熟的，没有成熟的鼻涕，果吃起来非常的酸涩，所以说很少有人会去采摘，但是当他成熟之后就会自然的掉落在地上，所以说等到它掉落在地上之后，一般懂行的人就会抢着捡了。并且在日常生活当中，好多人还喜欢将它捡回家之后做成酸枣糕，非常的美味。');
INSERT INTO `fruit_newscenter` VALUES (7, '迪拜这种水果，营养价值高，“有钱人”抢着买，“穷人”却看不上', '说起迪拜这个国家相信大家一定想到的是迪拜特别的油钱，可以说迪拜遍地都是“黄金”，迪拜是非常富有的，他们平时所吃的东西也都是一些山珍海味，甚至有一些食物是让我们想都没有想过的，就比如在迪拜的宴席上，一些土豪们就会吃烤骆驼，真的是让人感觉非常的匪夷所思，这样的骆驼在我们中国，可是国家的保护动物怎么可以用来吃的呢？可是在迪拜因为他们当地的骆驼是非常多的，所以对于一些富人来说，就有了烤骆驼这样的美食。迪拜这种水果，营养价值高，“有钱人”抢着买，“穷人”却看不上。\n<br>\n<br>\n今天我给大家说的是迪拜的一种水果，这个水果对于很多迪拜的富人来说都是特别喜欢吃的，可是穷人却不稀罕这到底是怎么回事呢？这样的水果就是椰枣椰枣，这样的水果在我们中国的北方地区像是青枣一样，他被当地人称之为“沙漠的面包”，因为它吃上去的口感不仅酸甜适中，而且一点都不腻，甚至还有一些椰子的味道。同时这样的椰枣，它的营养价值是非常高的，富含多种维生素，它是在沙漠地区的迪拜人们补充维生素的一种重要的途径，因此在当地是非常受人喜欢的。\n<br>\n<br>\n对于很多去过迪拜的游客来说，他们都会发现一个非常有趣的事情，那就是在当地他们的经济条件是非常发达的，而在当地对于很多穷人来说这样的也找他们是根本看不上的，可是对于很多富人来说却是成堆成堆的强制买，这到底是为什么呢？因为这样的椰枣的营养价值是非常高的，这样的果实长在树上，在以前有一些迪拜的人们，他们的收入并不是特别的高，但是为了生活就会爬到椰枣的树上摘下几颗这样的果实来填肚子，所以等到经济条件好的时候，这样的果子也就不怎么吃了。\n<br>\n<br>\n椰枣它果实的颗粒是非常大的，而且也是特别保护的，对于很多有钱人来说，觉得这样的果实确实是非常的稀奇，而且也是特别好吃的，所以在迪拜这样的也早就被贵族当做成非常好的一种水果，它的外观像是蜜枣一样，没有太大的不同，但是它的糖分含量却是非常多的，而且当地人也经常把这样的椰枣进行加工之后做成糖浆或者是椰枣汁。这样的椰枣它的保存期是非常长的不容易腐坏，同时它含的营养特别的高，因此对于很多人来说，即便是在出门的时候也会随身携带上这样的叶子，这样的话在何时何地都能够给我们补充更多的营养。\n<br>\n<br>\n而这样的椰枣也只是在迪拜这样的国家会如此的受人，喜欢在其他国家人们都是不稀罕的，因为这样的水果它的产量也是非常大的，一棵树上就能够长好多这样的果子呢。很多人即便是在吃这样的果子的时候，也会只是选择性的吃上一些，但是不会把它当作非常美味的一种水果来怼待的，这也许就是因为人们的生活环境不同，所以导致了饮食习惯有着很大不同的吧');
INSERT INTO `fruit_newscenter` VALUES (8, '这2种水果春天要让孩子吃，能促进消化，增强免疫力', '随着春天来临，温度也渐渐回暖，人们也从冬天的少有应季水果可吃到现在都不知道该买什么水果，因为春天的应季水果非常多。妈妈们一般会根据孩子自己的喜好，或者是由家长自己来选择来给家里购买一些水果，水果的作用如我们所知的是非常多的，有些水果可以为我们补充微量元素，提高身体的免疫力，而且众所周知对人体很好的维生素c，主要存在的地方就是水果中。所以为了给孩子解馋，也为了让孩子的身体变得更好，妈妈们总是会买各种各样的水果给孩子吃，但是有时候水果买的多了，妈妈们也会头疼哪一种水果适合孩子，家里再穷，这2种水果春天也要让孩子吃，能促进消化，增强免疫力。\n<br>\n<br>\n第一种水果自然就是菠萝了，想必在近一段时间，妈妈们总是会看见大街小巷的水果车上都拉满了菠萝，当妈妈们不知道该买什么水果的时候，就可以考虑一下菠萝了。众所周知，菠萝的味道非常好，酸酸甜甜的味道不论是大人还是小孩，都会非常喜欢吃这种水果。而且菠萝还能为人体补充许多维生素B以及维生素C等等人体所需要的东西，能促进消化，有利于孩子发育。但是如果吃太多的话，人们的嘴巴就可能会起泡，所以家长们在买菠萝给孩子们吃的时候，一定要注意不要让孩子吃太多。\n<br>\n<br>\n另外在食用菠萝的时候，家长们也可以提前进行一些处理，比如将菠萝泡在盐水里面，可以有效的减少菠萝对嘴巴的伤害，另外经过盐水浸泡的菠萝，味道上面也会变得更加甜一些，孩子们也会因此而更加喜欢吃的。另外一种和菠萝长得很像的水果叫做凤梨，二者最大的差别就是口感上的差距，相比起菠萝会蛰嘴，凤梨就不会有这方面的担心了。\n<br>\n<br>\n第二种水果就是草莓，草莓一直因为它红彤彤的外表以及酸甜可口的口感而广受小孩子们的欢迎。许多小孩在平时吃不到草莓的时候，也会非常喜欢吃草莓味的东西，因为对于小朋友来说，这种酸甜的味道真的是非常具有吸引力。另外草莓的营养价值也非常的高，对于小孩子来说，这除了会增加他们的免疫力还可以提高他们的消化能力，是家长给孩子购买水果时的不二之选。但是草莓也有一个明显的缺点，那就是价格比一般水果要贵很多，但是这种贵也处于很多家庭的承受范围之内，因此妈妈们要经常买草莓给孩子吃！');
INSERT INTO `fruit_newscenter` VALUES (9, '草莓竟然能减肥！19个水果的真相让你惊掉下巴', '  春天来了，各种新鲜水果又要上市了。吃货们又要蠢蠢欲动啦。\n<br>\n今天，就让我们先看看水果们的小秘密，再决定吃什么吧！\n<br>\n1. 草莓是减肥水果\n<br>\n如果你想吃甜食又怕长胖，那草莓简直就是完美的选择！\n<br>\n草莓的果糖含量较高，可以说是「最甜的水果」。不过，草莓虽甜热量却不高，只要你不吃多，完全算得上「减肥食品」。\n<br>\n<br>\n2. 柠檬清洁能力强\n<br>\n柠檬的 VC 真的不多，还比不过大白菜啊。\n<br>\n想光靠吃柠檬补充维生素 C，那每天要吃七八个，维 C 没补起来，牙齿先酸没了。\n<br>\n不过它有一个别的水果都没有的能力：去除电冰箱和微波炉的臭味，还能擦亮铝制厨具。\n<br>\n3. 黄瓜 90% 以上都是水\n<br>\n在爬山、春游这样的活动中，黄瓜是超棒的小零食。吃它，既能提升饱腹感，又能补充流失的水分。\n<br>\n要是因为黄瓜水多拿来敷脸补水，你的脸是不会答应的。\n<br>\n<br>\n4. 榴莲不要放在冰箱里\n<br>\n当然不是因为气味大！\n<br>\n除了榴莲，像芒果、香蕉、菠萝这样的热带水果，不要放进冰箱，最好是放在 12℃ 左右室内阴凉处。\n<br>\n这些水果没熟就放冰箱，那再也不熟了；熟了放冰箱，容易提前变质。\n<br>\n5. 牛油果热量比猪肉高\n<br>\n100 克瘦猪肉 143 大卡，100 克牛油果 160 大卡，还有人要宣扬牛油果是减肥水果吗？\n<br>\n如果你要吃牛油果，那就少吃油。因为牛油果脂肪含量高达 15%～30%，是一般水果的几十倍呢！\n<br>\n6. 冬枣是真正的 VC 之王\n<br>\n虽然身材矮、小、圆，但就在冬枣圆滚滚的小身子里，含有高达 243 mg / 100 g 的维生素 C（VC），差不多是苹果的 60 倍、柠檬的 10 倍、猕猴桃的 4 倍，算是水果中的 VC 之王了。\n<br>\n知道谁才是维 C 大补丸了吧？\n<br>\n7. 有白霜的葡萄更新鲜\n<br>\n白霜是葡萄自身分泌的糖醇类物质，对人体无害。\n<br>\n有白霜的葡萄就是在告诉你：我很新鲜，快来吃我！\n<br>\n<br>\n8. 吃水果不喝果汁\n<br>\n记住，浓缩的都是精华。拿橙子举例， 1 杯橙汁能顶将近 5 个橙子的糖和热量。\n<br>\n而且吃 5 个橙子容易饱，橙汁喝一杯怎么够？\n<br>\n所以建议大家还是多吃水果，少榨果汁。\n<br>\n9. 便秘不要吃香蕉\n<br>\n香蕉虽然好吃，但它并不能缓解便秘。\n<br>\n因为香蕉的纤维素含量并不高，无法有效刺激肠道蠕动，达不到通便的效果。\n<br>\n如果吃了不太熟的香蕉，反而可能因为含有较多的鞣酸，更容易导致便秘。\n<br>\n10. 香蕉皮营养丰富\n<br>\n香蕉皮确实含有丰富的维生素：膳食纤维、维生素 C、维生素 B6、钾……\n<br>\n每 100 克香蕉皮含 240 毫克的钙和镁，比 100 克牛奶的含量都高。\n<br>\n是不是把你说心动了？别闹，香蕉皮都是拿去喂鸡的！\n<br>\n<br>\n11. 苹果不削皮也能吃\n<br>\n无论是苹果自带的「天然果蜡」，还是果农打的食品级果蜡，都是安全的，直接吃没问题。\n<br>\n12. 车厘子就是樱桃\n<br>\n论好名字的重要性。\n<br>\n中国产的樱桃，它的英文名叫 cherries，音译过来就是车厘子。无论是樱桃还是车厘子，都含有丰富的胡萝卜素和花青素，是很好的补钾水果。\n<br>\n购买时别看名字，看价格。\n<br>\n13. 经期也可以吃芒果\n<br>\n芒果并没有什么奇怪的功效，不会影响大姨妈。只要没有不舒服，对芒果也不过敏，想吃就吃。\n<br>\n14. 桃仁有毒，不建议吃\n<br>\n桃仁类似于苦杏仁，含有一种剧毒的物质：苦杏仁苷。\n<br>\n通常，桃仁中的苦杏仁苷含量约为 1%～3%，有些含量高的品种，差不多 100～200 g，就能达到致死的剂量。\n<br>\n也就是说，如果不小心吃了一颗桃仁，不用惊慌；但千万别攒起来当坚果吃……\n<br>\n15. 吃荔枝「被酒驾」是一个误会\n<br>\n荔枝成熟后会产生少量酒精，可能引起酒精测试的误报。吃完漱漱口，或者等几分钟，就没事了。\n<br>\n如果真被查出酒驾，荔枝可不背这个锅。\n<br>\n<br>\n16. 越重的柚子越新鲜\n<br>\n挑柚子就 1 个终极技巧：个头一样的柚子，重量越重的越新鲜且含水量高。\n<br>\n17. 杨梅里的虫子也可以吃\n<br>\n杨梅里确实可能有小白虫，因此它也是世间少有的「荤素搭配」的水果。\n<br>\n杨梅里的小虫子是果蝇幼虫。这是杨梅的传统栽种中很正常的自然现象，而且幼虫期的果蝇，吃下去对人体是没有危害的，完全不用惊慌。\n<br>\n如果实在是食欲受影响、心里有坎过不去，用盐水浸泡下。\n<br>\n<br>\n18. 石榴籽吃下肚能拉出来\n<br>\n石榴籽外部有硬硬的种皮，能让它顺利通过肠道，和你在厕所 see you tomorrow（明天见）。\n<br>\n所以根本不要担心它在肚子里发芽。\n<br>\n19. 橘子吃多了会变小黄人\n<br>\n橘子之所以是橙黄色，主要原因是胡萝卜素含量比较高。\n<br>\n如果橘子吃太多，胡萝卜素过量，就可能「染黄」皮肤，出现手掌、脚、前胸皮肤发黄，变身成为小黄人。\n<br>\n不过变黄了也别太担心，只要停止吃橘子，身体将多余的胡萝卜素慢慢代谢掉，皮肤就会恢复正常了。\n<br>\n知道了这么多水果的小秘密，有没有很开心？\n<br>\n你今天准备 Pick 哪一个呀？');
INSERT INTO `fruit_newscenter` VALUES (10, '泰国举办“榴莲及水果自助狂欢节”', '  泰国政府和企业合办的第四届“榴莲及水果自助狂欢节”19日起在尚泰世界购物中心举行，主办方希望活动能吸引外国游客参与，打出泰国榴莲等水果在海外的知名度。\n<br>\n2019“榴莲及水果自助狂欢节”由泰国商业部、旅游局和尚泰集团主办，于4月19日至25日在尚泰世界购物中心外广场举行，分为自助餐区和展销区。\n<br>\n记者在现场看到，自助餐区的榴莲多以常见的金枕头榴莲为主，此外还配有山竹、红毛丹、椰子等水果；展销区集中销售泰国其他品种的榴莲，如长柄、差尼等，还有榴莲加工品。为吸引中国游客参与，自助餐区和展览区都设有中文的标识和商品信息。\n<br>\n泰国商业部国内贸易厅厅长威猜日前在此活动的新闻发布会上表示，此活动有助于将泰国打造为“热带水果大国”和发展美食旅游，商业部期望榴莲水果狂欢节能促进泰国新鲜水果和水果加工产业发展，帮扶泰国果农。泰国旅游局活动推广处处长威拉蓬说，过去几年的活动中吸引了不少外国游客参与，希望今年继续吸引外国游客，这是丰富外国游客旅游体验的一种方式。');
INSERT INTO `fruit_newscenter` VALUES (11, '科学认识反季节水果', '  生活中，关于反季节水果的谣言流传已久，不少人对其食用安全性心存疑虑。那么，反季节水果真如流传所说，营养差甚至还有害健康吗？让我们先从反季节水果到底是怎么来的说起。\n<br>\n“反季节水果”通常有3种形式。一是长期保存。随着果蔬的长期保鲜、保存技术迅速发展，把“应季”的果蔬保存到冬季是非常容易实现的。比如在温暖的季节，利用冷藏等保鲜技术，将一部分香蕉、葡萄、苹果、柑橘、菠萝等常见水果保存到冬季，几乎可以满足全年的供应。二是“大棚种植”。在寒冷的冬天，大棚里依然温暖如春，果蔬可以正常生长结果，满足人们的需要。这也是目前非常普遍的一种做法。三是异地种植。植物在某地是反季节的，在另一个地方却正当时。比如很多蔬菜在冬季的北京都过时了，而在广东、海南等南方地区却生机盎然。这些地方由于气候温暖，即使在冬天依然有很多果蔬可以种植，都属于当地的应季果蔬。\n<br>\n还有些人会说，反季节水果培育中用了很多农药，因此有害健康。其实，即使是应季水果，在种植过程中也会使用农药，这并不能说明反季节水果更有害。而且，只要是规范种植的，正常食用不会对人体健康产生危害。\n<br>\n还有人认为，反季水节果需要用植物激素，吃了会使人性早熟。其实，不论是反季还是应季水果，现代种植过程中都会用到一定量的植物生长调节剂，也就是大家所说的植物激素。除此之外，所有水果也都天然含有一定量的植物激素。\n<br>\n不过，植物激素的效力一般都很低，且与人体激素的分子结构和作用机理都不一样，并不会对人体产生不良影响。由于植物激素具有很强的自限性，正常种植的水果都不会过多加入。\n<br>\n而大众对于反季节水果的另外一个疑虑是：担心反季节水果的营养差。\n<br>\n诚然，反季水果与应季水果的营养价值的确可能存在一定差异。不过，这些差异并不意味着它们没有营养，更不意味着它们有害。并且，从营养供应角度来看，人们在寒冷的冬季如果没有水果摄入，对人体健康的影响更大。因此，冬天吃反季的葡萄，也远比“没有葡萄吃”要有营养得多。\n<br>\n还有不少人认为反季节水果口感不好。由于反季水果和应季水果的某些营养成分含量可能有差异，味道口感的差别还是有的。此外，大棚种植的果蔬在日照时长和强度上，均比不上自然条件下生长的果蔬。而日照会影响果蔬中糖分和维生素的合成，因此，反季节果蔬的糖分和维生素含量会比同类的应季果蔬略低，这也是为什么大多数反季节果蔬吃起来口感较淡的原因。不过，这种口味的差别其实对整体的影响不大，也不会使水果有害健康，还是可以放心食用的。\n<br>\n其实，植物生长无非光温水肥4个条件，只要条件适合，无论什么季节都一样生长。反季节果蔬其实没有那么不好，相比没有果蔬的冬天，反季节水果对人们营养的获取和补充，尤其是维生素和矿物质的获取，还是有很大帮助的。');
INSERT INTO `fruit_newscenter` VALUES (12, '怀孕吃水果好，但有的水果吃多了对宝妈和孩子都没好处', '  怀孕之后，准妈妈们对营养都是非常重视的，很多孕妇在怀孕的前三周，即使吃了都吐，还是会逼着自己吃下去，就是为了给孩子充足的营养。在怀孕过了三个月之后，宝妈的胃口就变得比较好了，而且因为一个人要供给两个人的营养，宝妈的饮食就会比从前多了许多。\n<br>\n<br>\n很多准妈妈都认为，怀孕的时候能吃就多吃这样对腹中的胎儿好。但是，今天小编要提醒大家的是，这或许是个误会。因为在怀孕的时候，假如吃的不对，很可能会对腹中的胎儿有不好的影响。例如很多准妈妈认为在怀孕的时候应该多吃水果，水果吃的多对胎儿的皮肤好。但是，准妈妈们不知道的是，在孕期吃水果也是有讲究的。\n<br>\n小编的朋友娟姐在怀孕的时候，吃了很多桃子。原因就是她老公的皮肤很黑，他不知道从哪听说吃桃子对胎儿的皮肤好，能让孩子的皮肤变白。于是，在娟姐怀孕的时候，就整筐整筐地给老婆买桃子。但是，孩子出生之后，皮肤依旧很黑，像极了娟姐的老公。娟姐的老公就有点沮丧，苦笑着说：“桃子白吃了！”\n<br>\n不过呢，吃桃子对孕妇来说确实是比较好的，桃子中有丰富的蛋白质、脂肪、铁、磷、钙等，孕妇吃了能防止贫血。但是，需要注意的是，桃子吃多了会上火，并且因为其中糖含量过高，吃多了也有可能会导致孕妇患上妊娠糖尿病。\n<br>\n<br>\n记得前几天看到的一个新闻，某王姓孕妇在怀孕的后期，因为觉得胎儿有点大，就控制了肉和和主食的量，但是她觉得吃水果没事，于是每天就吃了大量的香蕉和苹果等，最后也导致腹中的胎儿长得过大。由于孕妇的子宫的空间限制，导致胎儿在宫内出现生长受限的状况，并且羊水也出现了浑浊，胎儿的呼吸受到影响。这位准妈妈在发现胎动异常之后就赶紧到了医院，剖腹产后生下了十斤多的宝宝。\n<br>\n不仅如此，这位孕妇因为吃了大量的水果，导致自己还得上了妊娠期糖尿病，需要到医院治疗，否则很可能会变成要终生以来胰岛素治疗的普通型的糖尿病。\n<br>\n因此说，准妈妈在怀孕的时候，饮食一定要注意，吃水果对准妈妈和腹中的胎儿是比较好，但是有的水果绝对是不能多吃的。特别是那些糖分含量比较高的水果，例如葡萄、苹果、香蕉等，最好少吃点，避免妊娠糖尿病以及巨大儿的产生。而含糖量较少的蔬菜例如西红柿、黄瓜等可以适量多吃。\n<br>\n<br>\n其实小编觉得，怀孕时，准妈妈们也不要太紧张，基本上来说，什么东西都能吃。但是在吃的时候要注意，不能过量，因为过犹不及。另外，小编也要提醒准妈妈的是，大家不要觉得胎儿在腹中长的越大就越好，只要胎儿发育正常，胎儿小一些，还有利于顺产哦！');
INSERT INTO `fruit_newscenter` VALUES (13, '把水果当晚餐，是不是更容易减肥？', '  我国超重及肥胖人口越来越多，因肥胖而引发的各种慢性病的概率也在不断增长，减肥已逐渐成为了超重、肥胖及爱美人士的共意。“民以食为天”，减肥也一样。\n<br>\n<br>\n减肥讲究的是对于热量的摄入，所以，要怎样在有限的食物中最有效的控制热量呢，那就是需要选择一些低卡路里且饱腹感强的食物。因此，水果因其热量较低，饱腹感较强成为不少减肥人士的首选食物之一。\n<br>\n<br>\n水果为什么有利于我们减肥呢？\n<br>\n首先，水果的含水量大，一般水果当中含水量高达90%；其次，水果的脂肪含量少，水果的脂肪含量通常在1%~2%左右，甚至更低；除了那些含糖量高的水果，普通水果的含糖量一般在10%左右，所以100g的水果的热量大约是在50~60kcal，相对于100g中有350千卡左右的大米白面和100g当中热量为400~600千卡的饼干蛋糕要低很多。\n<br>\n因此会有不少人会觉得水果能量低又好吃，且易于消化，比较适合晚上吃，不少减肥人士很乐于把水果列入晚餐的行列。\n<br>\n<br>\n那么，把水果当晚餐，是不是更容易减肥呢？\n<br>\n首先需要说明的是，无论你什么时候吃水果，水果的热量就在那里，并不存在着因为你哪餐吃而更容易减肥的说法。\n<br>\n其次，吃水果减肥时并不是什么水果都可以多吃的，水果当中也存在着让人忽略的高热量水果巨头，像榴莲、牛油果、青枣、龙眼、荔枝等水果我们就不太建议当晚饭吃太多了。\n<br>\n<br>\n再次，如果吃水果代餐只是一周中某1、2餐的代替（轻断食）还好，若是每餐或大多数餐次均只用水果代餐，那么会出现很多问题，水果当中的营养素并不齐全，缺乏优质蛋白、维生素B、铁、锌等含量很低，如果长期用其代替正餐，久而久之就会容易出现浮肿、掉头发、皮肤松弛、月经量减少，这对于特别是爱美的女孩子来说，无疑是巨大的打击，所以只吃水果来减肥是万万不可的。\n<br>\n晚餐若想吃水果，至少早餐和午餐需做到均衡饮食；晚餐除去水果，最好再补充一杯酸奶或者牛奶来弥补水果中蛋白质的不足。\n<br>\n<br>\n减肥是一个长期坚持的项目，真正健康有效的方式是科学饮食加合理运动，还是那句：管住嘴，迈开腿！');
INSERT INTO `fruit_newscenter` VALUES (14, '  江西省宜春市：高安市3月下旬水果市场呈强势运行分析', '2019年3月25日到高安市鹏泰百货及各水果店、菜市场水果摊现场调查了解，我市3月下旬水果市场品种比较丰富，市场供应水果61个品种，同比2月下旬67个品种减少6个品种，高安市民俗有“春节过后接岳父、岳母和接嫂子或弟媳到家作客”的习俗，众多居民购买水果，为接客而用，水果市场呈繁荣景象。市场重点监测30个水果品种，其中4个已下架，其市场价格运行情况8涨7跌11持平，同比2月中旬水果平均价格上涨1.48%，这是水果市场连续两个月平均价格上涨。到3月下旬许多水果品种是储存保鲜的，保鲜成本的增加影响水果的价格，加上水果储存数量有限导致进货地水果价格上涨，这是我市3月下旬水果平均价格小幅上涨的主要因素。我市3月下旬水果市场平均价格呈上涨态势运行，我市3月中旬水果市场呈强势运行，具体情况分析如下：\n<br>\n（一）价格上涨8个品种，占比26.67%。其中：圣女果5.98元/市斤，上涨20.08%；新疆香梨9.80元/市斤，上涨9.03%；鸭梨4.58元/市斤，上涨15.08%；红心火龙果10.80元/市斤，上涨10.20%；板栗9.80元/市斤，上涨63.88%；猕猴桃6.98元/市斤，上涨16.72%；巨峰葡萄10.80元/市斤，上涨35.34%；碭山梨3.98元/市斤，上涨11.17%。\n<br>\n原因：一是新疆香梨、鸭梨、碭山梨、红心火龙果这四种水果都有清热解毒的效果，春天换季气温变化较大，很多老人小孩容易咳嗽，所以这几种水果比较受市场欢迎，这是四种水果价格上涨的主要因素。二是圣女果、巨峰葡萄、猕猴桃这三种水果价格上涨主要是供货地价格上涨导致水果进价高，影响在本市的价格。三是板栗上涨63.88%，主要是最近两个星期天气较好，许多人去春游，糖炒板栗的销量大幅上升，导致价格上涨。\n<br>\n（二）价格下跌7个品种，占比23.33%。其中：红提15.80元/市斤，下跌5.95%；贡梨5.80元/市斤，下跌25.64%；特级水晶红富士苹果7.50元/市斤，下跌6.02%；小台芒8.80元/市斤，下跌10.20%；特级红富士苹果6.80元/市斤，下跌2.58%；金枕榴莲25.80元/市斤，下跌10.42%；小密瓜6.98元/市斤，下跌10.51%。\n<br>\n原因：一是贡梨、特级水晶红富士苹果、特级红富士苹果、小密瓜这4个水果品种在春节期间其零售价格较高，春节过后这3个品种水果逐步回归到正常零售价格水平上来，是这3个品种水果价格稍有下跌的主要因素。二是金枕榴莲和小台芒在超市作为促销产品，以较低的价格推动销量。三是红提跌幅5.95%，主要是储存的红提品相不太好，价格也就自然下降了一些。\n<br>\n（三）价格持平11个品种，占比36.67%。其零售价格：蛇果7.80元/市斤，西瓜3.58元/市斤，金桔7.80元/市斤，精品香蕉3.98元/市斤，蜜枣8.80元/市斤，龙眼11.80元/市斤，雪莲果3.98元/市斤，菠萝2.38元/市斤，特级火龙果6.98元/市斤，芦柑2.98元/市斤，特小凤4.50元/市斤。\n<br>\n原因：这11种水果是居民常食用的，销量大且比较稳定；而且大多数水果品种是去年储存保鲜，其数量有限，进价影响也不大，进入3月中旬是这类水果的巩固和平稳运行期，所以是这11个品种水果价格环比持平的主要因素。\n<br>\n（四）下架4个品种，新上架4个品种。下架商品零售价格：砂糖桔3.98元/市斤，精品脐橙2.98元/市斤，尖栗14.80元/市斤，蜜柚2.98元/市斤。上架商品零售价格：青芒9.80元/市斤，油桃16.80元/市斤，赣南脐橙5.98元/市斤，马水桔5.98元/市斤。\n<br>\n（五）后期市场价格走势及预测。进入2019年3月下旬至4月中旬，将有部分水果上市，如枇杷、早熟李和桃，刚上市期价格就好，以后逐步下降。进入4月初是清明节，在清明节前夕和期间，在外地工作和学习的人员一般都会回乡祭祖，将迎来商业的小旺季，水果市场也迎来小高潮。后期预计我市水果市场将呈强势运行，水果市场中期呈小幅上涨态势，前期呈平均态势后期零售价格呈小幅下跌态势运行，但整体零售价格呈小幅上涨态势运行');
INSERT INTO `fruit_newscenter` VALUES (15, '春季多吃6种时令水果 既尝鲜还养生', '     惊蛰过后，春季时令水果陆续新鲜上市。春季养生多吃水果不仅能缓解春燥，而且还能促进新陈代谢，增加抵抗力和免疫力。春季吃什么水果最健康？下面，经济日报-中国经济网健康频道为您总结。\n<br>\n　　草莓：清热润肺 去火解毒\n<br>\n　　草莓俗称“春天第一果”，含丰富的维生素C，其含量比苹果、葡萄都高7-10倍。所含的苹果酸、柠檬酸、维生素B1、维生素B2，以及胡萝卜素、钙、磷、铁的含量也比苹果、梨、葡萄高3到4倍。草莓有去火、解暑、清热、润肺生津的作用，春季人的肝火较旺，口干舌燥，咽喉不舒服，吃点草莓可以起到缓解作用。另外，草莓最好在饭后吃，因其含有大量果胶及纤维素，可促进胃肠蠕动、帮助消化、改善便秘，并预防痔疮、肠癌的发生。\n<br>\n　　芒果：保护视力 提高免疫力\n<br>\n　　芒果的营养价值非常高，100克的芒果含胡萝卜素高达2080毫克，对视力的提高很有好处，比如经常用电脑的上班族、上学的孩子们、常常看书报的老年朋友，都应该多吃芒果，体弱老生病的人常吃芒果还能增强免疫力。芒果中所含的钾元素对高血压的人也很有益处。大家以为吃芒果易发胖，其实，100克的芒果能量很低只有55千卡，还不到半碗米饭的能量。\n<br>\n　　菠萝：帮助消化 预防便秘\n<br>\n　　菠萝味甘性温，具有解暑止渴、消食止泻之功。菠萝是膳食纤维的上好来源，特别是菠萝芯富含纤维素，对于预防便秘极有好处。菠萝中富含菠萝蛋白酶，，餐后适量食用可帮助消化，尤其是吃了油腻的食物后更适合。如果孩子不爱吃饭，胃口不好，也可将菠萝煮到稀饭里，或与酸奶一起吃。\n<br>\n　　樱桃：促进血红蛋白再生\n<br>\n　　春末夏初，樱桃“先百果而熟”，它营养丰富，丰含碳水化合物、蛋白质，也含有钙、磷、铁和多种维生素。尤其是铁的含量，每百克高达6至8毫克，比苹果、桔子、梨高20至30倍，维生素A的含量比苹果、桔子、葡萄高4至5倍，食用樱桃具有促进血红蛋白再生及防癌的功效。\n<br>\n　　枇杷：预防感冒 润泽皮肤\n<br>\n　　枇杷是比较常见的食物，并且在春季的时候多吃枇杷可以帮助预防感冒，枇杷有岭南开春第一果之称，味道清甜，吃下去嗓子感觉很舒服。枇杷胡萝卜素含量丰富，在水果中排在前三名。还含有丰富的B族维生素、钾元素等，适当吃些对保护视力、润泽皮肤、控制血压等有好处。果实中富含苹果酸、柠檬酸等有机酸，能刺激消化腺分泌，增进食欲。吃点枇杷不仅能令胃口大开，还能有助于预防感冒。\n<br>\n　　桑葚：延缓衰老 促进消化\n<br>\n　　桑葚是桑树的果实，春天正是它成熟的季节。成熟的桑葚质油润，酸甜适口，以个大、肉厚、色紫红、糖分足者为佳。桑葚有改善皮肤（包括头皮）血液供应，营养肌肤、生津止渴、促进消化、帮助排便等作用等作用，并能延缓衰老。\n<br>\n');
INSERT INTO `fruit_newscenter` VALUES (16, '开江县组织召开全县水果产业发展推进会', '为深入贯彻落实党的十九大精神，全面落实乡村振兴战略，推动全县水果产业发展，3月26日，开江县农业农村局按照县政府领导的要求，组织全县各乡镇站长及水果种植大户等100余人，在永兴镇龙头桥村琯溪蜜柚基地成功举行了全县蜜柚苗种植现场培训会。\n　<br>　\n　　现场培训会由开江县农业农村局副局长唐高德主持。他要求全体参会人员要善于把握此次培训机会，以饱满的激情、求真务实的态度，学会融会贯通，科学掌握水果种植相关技术，用以指导生产实践；要深刻吸取过去产业发展失败的经验教训，努力克服薄弱短板，扬长避短，积极推进全县“果林+”优势产业得到高质量发展；同时要求各位种植大户代表要充分利用本次培训会契机，共同添加联系方式，积极主动认真开展好学习交流，相互取长补短，共同探讨解决种植过程中面临的所有疑点与难点问题，配合搞好“院县结对”联系工作，努力推进全县10万亩“果林+”产业再上新台阶。\n　<br>　\n　　会上，来自新街乡竹儿坪的梨子、柑橘种植大户代表龙关富结合自生20余年的水果种植从业经历与经验，从如何率先带头流转农户撂荒土地规模成片种植果苗，到后期田间如何施肥、除草、修枝、防病等管理技术要点进行了指导发言。期间，他还针对参会人员的提问，进行了耐心细致地的释疑解惑。最后，他还就如何进行进行线上线下销售产品问题进行了分享，赢得了与会人员的认可和热烈掌声。\n　　<br>\n　　随后，琯溪蜜柚基地的负责人之一，来自达州日好农业发展有限公司的技术总监吴清旗围绕在永兴镇龙头桥村发展琯溪蜜柚的前景与意义进行了分享。他说，公司历经5年左右的考察，最后将琯溪蜜柚基地落地在永兴镇，除了气候、地理环境条件等适合该项目发展外，真正还与获得了当地政府的大力支持与群众的积极配合分不开。据介绍，基地前期已经改土改造达5000亩，将按照技术要求如期完成蜜柚栽植目标，下步力争辐射扩展到1万亩以上，积极推动全县“果林+”产业，促进全县水果产业步入健康有序发展轨道。同时，他还结合如何配施底肥、果树栽植注意事项及配套开挖水沟进行有效排湿等技术要点进行了现场指导。\n　　<br>\n　　最后，全体参会人员在该县农业农村局会议室集中参加了“开江县果品协会筹备工作推进会”。会上，大家学习讨论了果品协会章程（讨论稿），民主推荐产生了开江县果品协会会长及组成成员，同时创建了“开江果林+”微信群，为开江“果林+”产业的发展壮大奠定了基础。');
INSERT INTO `fruit_newscenter` VALUES (17, '开江县组织召开全县水果产业发展推进会', '为深入贯彻落实党的十九大精神，全面落实乡村振兴战略，推动全县水果产业发展，3月26日，开江县农业农村局按照县政府领导的要求，组织全县各乡镇站长及水果种植大户等100余人，在永兴镇龙头桥村琯溪蜜柚基地成功举行了全县蜜柚苗种植现场培训会。\n　　<br>\n　　现场培训会由开江县农业农村局副局长唐高德主持。他要求全体参会人员要善于把握此次培训机会，以饱满的激情、求真务实的态度，学会融会贯通，科学掌握水果种植相关技术，用以指导生产实践；要深刻吸取过去产业发展失败的经验教训，努力克服薄弱短板，扬长避短，积极推进全县“果林+”优势产业得到高质量发展；同时要求各位种植大户代表要充分利用本次培训会契机，共同添加联系方式，积极主动认真开展好学习交流，相互取长补短，共同探讨解决种植过程中面临的所有疑点与难点问题，配合搞好“院县结对”联系工作，努力推进全县10万亩“果林+”产业再上新台阶。\n　　<br>\n　　会上，来自新街乡竹儿坪的梨子、柑橘种植大户代表龙关富结合自生20余年的水果种植从业经历与经验，从如何率先带头流转农户撂荒土地规模成片种植果苗，到后期田间如何施肥、除草、修枝、防病等管理技术要点进行了指导发言。期间，他还针对参会人员的提问，进行了耐心细致地的释疑解惑。最后，他还就如何进行进行线上线下销售产品问题进行了分享，赢得了与会人员的认可和热烈掌声。\n　　<br>\n　　随后，琯溪蜜柚基地的负责人之一，来自达州日好农业发展有限公司的技术总监吴清旗围绕在永兴镇龙头桥村发展琯溪蜜柚的前景与意义进行了分享。他说，公司历经5年左右的考察，最后将琯溪蜜柚基地落地在永兴镇，除了气候、地理环境条件等适合该项目发展外，真正还与获得了当地政府的大力支持与群众的积极配合分不开。据介绍，基地前期已经改土改造达5000亩，将按照技术要求如期完成蜜柚栽植目标，下步力争辐射扩展到1万亩以上，积极推动全县“果林+”产业，促进全县水果产业步入健康有序发展轨道。同时，他还结合如何配施底肥、果树栽植注意事项及配套开挖水沟进行有效排湿等技术要点进行了现场指导。\n　　<br>\n　　最后，全体参会人员在该县农业农村局会议室集中参加了“开江县果品协会筹备工作推进会”。会上，大家学习讨论了果品协会章程（讨论稿），民主推荐产生了开江县果品协会会长及组成成员，同时创建了“开江果林+”微信群，为开江“果林+”产业的发展壮大奠定了基础。');
INSERT INTO `fruit_newscenter` VALUES (18, '连续11年位列第一 台湾水果“登陆”厦门口岸最便捷', '       昨日，中埔台湾水果销售集散中心，琳琅满目、果香四溢的台湾水果在这里集结，并分拨前往大陆各地。\n<br>\n　　“厦门是台湾水果‘登陆’的第一站，也是最便捷的一站。早上在台湾摘的水果，当天下午就可以装上货船，第二天就可以抵达厦门口岸，快捷又方便。”从事台湾水果进口十多年的台湾农业整合行销发展协会厦门办事处主任温仁德告诉记者，厦门得天独厚的对台区位优势以及便捷的通关服务保障，拉近了两岸距离，助推了经贸合作，也使得台湾水果和水产品在大陆遍地开花。\n<br>\n　　记者从厦门东渡海关了解到，台湾水果进口量从最初2005年的207吨，逐年快速增长，2018年厦门口岸年进口台湾水果量已达4.8万吨、5.7亿元人民币，吨数较2005年增长200多倍。厦门口岸占大陆进口台湾水果总量比重也从最初的14.5%提升至90%，已连续11年位列大陆最大台湾水果进口口岸。今年1至2月，厦门口岸自台湾进口水果0.99万吨，同比增长1.2倍，金额1.4亿元人民币，同比增长84.2%。\n<br>\n　　同样，得益于天然的地理位置优势，厦门口岸自台湾进口水海产品也在不断增长。2018年全年，厦门口岸自台湾进口水海产品5.9万吨，同比增长1.4倍，金额4.4亿元人民币，同比增长1.5倍。\n<br>\n　　长期以来，厦门市高度重视推动两岸经贸交流合作，实现互通共赢。在市委市政府领导下，在厦门海关等口岸监管部门支持下，厦门持续推动两岸经贸交流合作、推动加强口岸便利化，持续保持相关政策的稳定性，不断提升台湾农水产品输大陆口岸地位。厦门海关针对性实施快速验放便利化措施，提供“提前申报、船边验放”等便捷通关措施，将台湾水果和水产品优先列入“一次查验”目录，缩短通关时间，实现台湾农产品到港“零滞留”，助力台湾优质产品顺利抵达厦门分拨到大陆各地。');
INSERT INTO `fruit_newscenter` VALUES (19, '春季养生 这些水果别忘了吃', '　春季养生离不开健康的饮食。现如今人们的生活水平普遍提升,对于生活质量的要求也越来越高了,特别是健康方面。饮食与生活息息相关,春天万物复苏,就更不能不注重养生了。水果是春季健康饮食中不可缺少的一部分,多吃水果,不仅能补充水分,还能为身体提供所需的维生素和矿物质。\n<br>\n　　春季养生应该吃哪些水果呢?下面,随经济日报-中国经济网时尚频道一起来了解一下吧。\n<br>\n　　菠萝\n<br>\n　　菠萝的果肉甜而不腻,不但好吃还很开胃,并且有种特殊的香气。菠萝中含有一种叫“菠萝朊酶”的物质,它能分解蛋白质,帮助消化,溶解阻塞于组织中的纤维蛋白和血凝块,改善局部的血液循环,稀释血脂,消除炎症和水肿。尤其是过多食用肉类及油腻食物之后,吃些菠萝可预防脂肪沉积。春季适合吃些菠萝,促进身体的血液循环。\n<br>\n<br>\n<br>\n　　杨桃\n<br>\n　　杨桃中含有充沛的果汁和纤维质,能生津止渴,迅速补充身体所需水分,有利于清燥润肠、消除疲劳感。杨桃果汁中含有大量的草酸、柠檬酸、苹果酸等,能提高胃液的酸度,促进食物的消化。并且,还有降血脂、降胆固醇的作用,可保护肝脏,降低血糖,是春季极好的保健食品。\n<br>\n<br>\n<br>\n　　桑葚\n<br>\n　　桑葚果实中含有丰富的活性蛋白、维生素、氨基酸等营养物质,常吃桑葚能显著提高人体免疫力,具有延缓衰老,美容养颜的功效。春天天气多变,易出现食欲不振的情况,而桑葚中含有鞣酸、脂肪酸、苹果酸等营养物质,能帮助食物的消化,其味酸甜可口,有改善食欲、健脾胃、助消化的功效。\n<br>\n<br>\n<br>\n　　梨\n<br>\n　　梨是初春水果中的首选,含有苹果酸、柠檬酸、葡萄糖、钙、铁、磷及多种维生素,并且具有润喉生津、润肺止咳等功效,适宜春季嗓子干涩、有内热疾病的人服用。');
INSERT INTO `fruit_newscenter` VALUES (20, '探访厦门同益码头：台湾水果主要“登陆”地', '       台湾高雄市市长韩国瑜厦门之行再签大单：厦门企业将向高雄采购价值3000万美元的农渔产品。而台湾销往大陆的水果从哪“登陆”呢？27日，中新网记者来到台湾水果“登陆”的主要码头——厦门同益码头一探究竟。\n<br>\n　　昔日并不太起眼的这个码头，如今“鱼跃龙门”，发展成为两岸经贸往来的重要码头。官方统计数据显示，台湾销往大陆的水果约85%是从厦门口岸入境的，其中大部分是通过同益码头“登陆”的，厦门已成了台湾水果销往大陆最主要的中转地。\n<br>\n　　同益码头有限公司书记杨东方告诉记者，自同益码头被批准作为两岸直航货物进出口码头以来，从同益码头进出的货物以台湾水果、海产品和大陆蔬菜为主，它们都有一个明显的特点，就是对时间的要求特别高。\n<br>\n　　厦门市对进口的台湾水果提出了24小时内必须上超市货架的要求，从台湾进口的海产品和水果被卸下船后要尽快销往大陆各地，大陆出口台湾的蔬菜从原产地运到同益码头需要有便捷的交通。杨东方说，同益码头完全符合这一条件，出了大门就是319国道的始发点，从这里到机场只需10分钟左右的车程，从这里到高速公路的入口处同样只需十几分钟的车程。\n<br>\n　　“这些便利的交通网络，有效地保证了从台湾进口的海产品和新鲜水果能够以最快的速度销往大陆各地。”他说。\n<br>\n　　厦门同益码头有限公司总经理汤艺仁告诉记者，同益码头是厦门重要的台轮主要停靠码头，近年来，每年都有大约1500艘次载运台湾水果、水产品、高粱酒和大陆蔬菜的两岸直航船舶靠离泊同益码头。\n<br>\n　　今年2月，从台湾高雄起航、载有1200吨台湾农产品的三艘台轮，运输货物到厦门，靠泊地就是同益码头。这些台湾农渔产品包括释迦、莲雾、凤梨等台湾水果和午仔鱼、中华鳖、冻鱿鱼等台湾水产，是2019年以来厦门口岸进口的最大一批台湾农产品，实现了新年的“开门红”。\n<br>\n　　对于船上货物的装卸，同益码头装卸工人既讲究装卸速度，尽量为船方和货主赢得宝贵时间；也十分注重装卸质量，尽量做到轻装轻放、不损坏货物。汤艺仁说，这些装卸工人“服务质量是台湾船员一致公认的”。\n<br>\n　　厦门出入境边防检查总站东渡边检站相关人士对记者说，为了让载运水果等台湾农水产品的台轮能够尽快通关，该边检站多措并举，全力提升边检通关速度。\n<br>\n     “让数据多跑路，让服务对象少跑腿。”东渡边检站探索建立多网多平台联动的工作机制，利用“国际贸易单一窗口”平台和船讯网、AIS系统，及时接收并核实船舶申报信息，实时跟进船舶动态信息，提前办理“预报预检”手续，通过预检的台轮靠泊后第一时间即可装卸货物；船舶到港办理边检手续实施一站式报检，对在港不超过二十四小时的台轮推行一次性办妥出入境手续的举措。\n<br>\n　　这些便利措施大大缩短台轮在港停留时间，实现台轮边检通关零等待，为船方节约了宝贵的时间成本和经济成本。而且，针对两岸直航的台湾船员对大陆出入境法律法规了解不深入的实际情况，东渡边检站通过代理培训、送法上船等方式，向台湾船员普及大陆出入境法律法规、便利政策措施，为台湾船方及船员解决实际困难。\n<br>\n　　在厦门经营台湾水果的台商温仁得接受记者采访时说，台湾水果通常早上采摘后，下午装柜，晚上开船，隔天一早就能运到同益码头，在厦门上架和销往大陆各地。');
INSERT INTO `fruit_newscenter` VALUES (21, '卖水果的自己还用去买水果吃吗？', '大家都觉得自己是卖水果的，吃水果就都不用钱了吧。我原来也是这样想的。结果发现，这几年，卖水果挣来的钱，都用来买水果吃了……\n<br>\n<br>\n卖水果的其实分很多种的，我们分别从产地到小微商看看大家是不是都能免费吃到果。\n<br>\n<br>\n桂林兴安葡萄园\n首先是产地的种植户，2017年的时候跑了很多基地，也去吃了很多水果。基地基本是种植单品的，比如葡萄园、荔枝园、芒果园，所以单品种植户们，基本就只能吃到自己种的那个品种。有的综合的果园就可以多种些其他品种。比如葡萄园隔壁可能也种了甜瓜或者无花果。\n<br>\n<br>\n葡萄园\n做大单品的电商微商供货商，这类卖水果的就是果园种植户的下一级，一般谈好一两个果园，然后收了果之后打包寄出，给电商微商类提供一件代发的业务。这种大供货商，一般也就做什么单品吃什么果。一般在果园验货和到货验货的时候吃个一个半个也就很饱了。\n<br>\n<br>\n桂林巨峰葡萄\n批发市场二级批发商和水果店铺，这两类老板吃到的水果就相对比较多一些，就是属于你们所说的，卖水果的吃水果不用钱那种。因为到货的品种种类比较多，可以每款都去试一下。贵的品种和新品也不怎么舍得吃太多，一般是处理果损的时候，可以吃到饱。\n<br>\n<br>\n我家楼下的水果铺\n电商微商们，大的电商一般上单品前会收到些样品，所以也就会有样品果吃。小微商们，因为货基本都是产地直发的，所以也不存在卖啥吃啥的可能。最多就是自己买水果可以拿到比较优惠的价格而已。像我这种小微商典型，卖水果挣的零用钱，基本也就贡献给了自己的供货商了。\n<br>\n<br>\n卖水果的小姑娘\n所有的水果圈的人，大多都是为了生计在劳苦奔波的，凌晨验货，大年三十的发货的，都是做水果的。做生鲜微商的，可能没什么要求，但是估计也都是爱吃水果的。生鲜行业真的不是大家想象中的暴利行业，但是所有卖水果的，都是为了改善自己生活的勤劳搬砖的小蜜蜂。\n<br>\n<br>\n贺州富川脐橙果园\n仅以此文致敬所有还在生鲜行业奋斗的水果人~');
INSERT INTO `fruit_newscenter` VALUES (22, '张文堂代表：建议国家免征水果流通环节增值税', '水果大省陕西在2017年的园林水果产量达1801.02万吨，果业增加值432.5亿元，但陕西仍然是农村贫困面较大的省份。今年全国两会期间，来自陕西代表团的全国人大代表张文堂提交了《关于国家免征水果流通环节增值税的建议》，建议国家免征水果流通环节增值税，以此减轻农民和企业负担。\n<br>\n张文堂说，近年来，我国通过对蔬菜、肉蛋产品免征流通环节增值税，有效降低与人民生活紧密相关的农产品流通环节税负，平抑了物价，为农民种养殖和企业经营减轻了负担，让人民群众吃上平价菜，让消费者得到了实惠。\n<br>\n“做为水果大省的陕西，不论规模、数量，还是产量、品牌，陕西果业都稳居全国第一。”其中，陕西苹果产量占全国1/4和世界的1/7，苹果汁产量占世界1/3，猕猴桃产量占世界1/3。\n<br>\n张文堂表示，陕西地理环境优越，自然气候条件独特，水果生产规模大，2017年，陕西省园林水果产量达1801.02万吨，较上年增长5.1%。\n<br>\n经过二十多年的发展，陕西省从事果业种植的农民200万户，涉及农村人口800万人；果业合作社3714家，果业家庭农场4778个，种植大户18149户，全产业链从业人员近1000万。2017年全省果业增加值432.5亿元，比上年增长5.5%。因此，水果种植已经成为陕西省农民家庭经营性收入的主要来源。\n<br>\n但陕西仍然是农村贫困面较大的省份，张文堂认为，免征水果流通环节增值税，可为当地贫困户发展种植业、开展产业扶贫、增加贫困户收入提供有力支撑，将成为脱贫攻坚的重要手段。\n<br>\n因此，他建议，鉴于国家规定自2012年1月1日起免征蔬菜流通环节增值税，自2012年10月1日起免征部分鲜活肉蛋产品流通环节增值税，水果作为农产品的一部分，与蔬菜、肉蛋同样是生活必需品，是群众餐桌的必备品，建议国家免征水果流通环节增值税。');
INSERT INTO `fruit_newscenter` VALUES (23, '这3种水果界的“爱马仕”，车厘子只能靠边站，网友：我只看看', '对于现在的人们来说，生活水平也是在不断的提高当中，但是在平常的生活方式方面也是更加注重享受了，而且现在的人们不仅要吃饱穿的，甚至要追求一种健康的饮食生活方式，所以水果也是成为了很多人必不可少的一种美食了，水果里面的维生素含量是比较高的，经常吃一些水果的话，对于我们的身体也是有很多好处，而且平常除了我们的一日三餐之外，生活中的任何一个人也是离不开水果的。\n<br>\n<br>\n但是说到水果的话，我们平常生活中水果的种类也是比较多，大部分都是一些常见的水果，就比如说苹果，香蕉，梨，橘子这些水果，但是他们的价钱也确实是比较便宜，营养价值比较高，味道也是非常不错的，对于很多人来说也都是比较喜欢吃的，但是有一些我水果它的口感同样也是非常不错的，可是看到价钱就让人觉得有些望而却步了，就比如说今天我们要说的世界上三种最贵的水果，甚至被评为了水果界的爱马仕。\n<br>\n<br>\n对于很多人在看到车厘子的时候，都觉得车厘子也是比较贵的一种水果了，有时候一斤就要六七十块钱了，这对于很多普通人来说也确实是比较贵的一种水果，但是如果拿车厘子和其他的这三种水果相比的话，也确实是让人觉得相当便宜了，那么这三种水果到底是什么呢？接下来我们来一起看一看。\n<br>\n<br>\n第1种是日本的黑皮西瓜，这个西瓜一个就可以卖到700多块钱，他是属于日本北部岛屿，北海道的一种特色水果，而且一年就只有100多个，这种西瓜在平常人来说也是绝对吃不到的，只有在拍卖会上可以看得到，甚至最贵的一个西瓜被拍到了4万元的人民币，对于很多人来说4万块钱去买这样的一个西瓜也确实是不敢想象呀，也就只有土豪才可以有这么大的手笔吧。\n<br>\n<br>\n第2种是白色草莓，其实现在也是属于草莓，大量上市的季节在平常生活中爱吃草莓的人也是大有人在，这个时候也是相当有口福了，但是现在的草莓价钱差不多也就是十几块钱就可以买上一斤，其实也并不算是特别便宜，可是我们平常生活中吃的草莓大部分都是红色的，如果说买的不太红的草莓可能还会觉得不太新鲜，可是无独有偶，就有一种草莓，它的颜色是白色的，可是这种草莓也确实是长熟了，是属于日本培育出来的一个稀有的草莓品种被称为白色珍珠，但是他的价钱确实是太贵了，对于普通人来说也是绝对吃不起的，只有那些根本就不在乎钱的人才能够在平常的生活中经常吃到。\n<br>\n<br>\n最后一种是红宝石罗马葡萄的价钱也确实是更贵了，而且卖到了4万块钱一串，很多网友看到之后就觉得吃一口这样的葡萄就直接吃掉了两平米的房子，该是有多么奢侈呀，其实这种葡萄个头是比较大的，就像是一个大乒乓球一样，而且里边的含糖量也是比较高，但是实际上这些水果也并不是说任何人都可以买得到，也就只能在一些拍卖场上才可以进行拍卖了，但是是属于有价无市的状态，所以这样的话才会显得更加珍贵。但是对于普通人来说也是绝对吃不起的，偶尔看看解解馋就行了。');
INSERT INTO `fruit_newscenter` VALUES (24, '甜过初恋，水果市场上的一匹“黑马”，卖到40元一斤', '现在的人们都很喜欢吃新鲜的水果，水果里维生素高，口感好，美容有养颜，大人小孩都喜欢吃，今天给您介绍的这种水果不知道您有没有听说过。\n<br>\n<br>\n这是一种在我国黑龙江附近分布很广的水果，生长在水分充足的林间，营养价值很高，它就是一种叫做软枣猕猴桃的水果，也叫奇异莓，叫它软枣猕猴桃是因为它的外形长得像桃子但是比普通的猕猴桃小一些，现在各地已经开始人工栽种这种果树了，软枣猕猴桃和普通的猕猴桃相比味道更好一些，会比较甜，维C的含量也高，而且软枣猕猴桃没有普通猕猴桃的毛绒绒的外表，是不用剥皮就可以食用的，很方便。\n<br>\n<br>\n因为果实小巧经常被用来制作果脯和罐头，新鲜食用口感也是很好的，甜甜的汁水很充足，带着一股淡淡的果香很是好闻，新鲜食用的时候如果果子是硬的可以放软了食用，口感更好一些，软枣猕猴桃还可以入药，可以清热止渴，生理期不规律也可以进行缓解，食欲不振的朋友可以尝试吃一些软枣猕猴桃，也可以得到缓解。\n<br>\n<br>\n软枣猕猴桃是近几年的才在市场上出现的物种，因此现在种植人不是很多现在市场上的软枣猕猴桃的供应很少，可以说是供不应求，所以这是一个不错的商机，软枣猕猴桃是一种比较耐寒的植物，但是在选择地点的时候也不要随便选择一些强风肆意的地方哦，这种植物很喜欢湿润的环境，软枣猕猴桃在种植的时候不需要种植的很深，这是一种浅根的植物，不需要很厚实的种植。\n<br>\n<br>\n在种植的时候需要注意修剪果树保持一个合适的疏密程度，大棚种植的时候需要注意通风，软枣猕猴桃的产量还是比较高的，而且修剪下来的枝条还可以作为扦插树苗去卖，这也是一笔收入啊；现在市场的软枣猕猴桃大概在四五十块钱一斤左右，如果您打算大面积种植的话是不错的选择，在选择种植点的时候要不要选择黏土地种植，可以选择在一些缓坡、排水良好的地点。\n<br>\n<br>\n软枣猕猴桃的种植方便，打理起来也比较容易，还有就是在授粉的时候可以自己进行，不需要人工授粉，节省了一部分的人工物力。您觉得种植软枣猕猴桃是不是一个好的商机呢？\n<br>\n');
INSERT INTO `fruit_newscenter` VALUES (25, '外表奇丑 却成了网红水果', '水果市场上有很多水果，最常见的就是橘子，橘子拥有着多汁甘甜的口感，总能给人们带来不一样的美味，因此大家都会买上一些，橙子和橘子是相似的水果，味道也一样，但橘子更甜。在农村还有一种水果相貌长得丑，却成了“网红水果”，现在种植的人并不多。在今年的市场上，丑橘很受欢迎，它比橙子更甜更多汁，比起橘子来更加的酥软。\n<br>\n<br>\n这种水果，食用价值较高，因此也成为网红水果。事实上，三年前大家都不认识它。当时，2元每斤都没有多少人购买。但是现在价格已经涨到了每斤9元，很多人却表示贵也要买上一些。\n<br>\n在批发市场上，丑橘无疑受到人们的喜爱，有着相当甜的味道，多吃上一些还不会上火，所以可以在家里多储存几天，这样就可以熟得更彻底一些，味道更甜，不用费太多力气就可以把果皮撕掉。这样你就能感受到美味的果皮肉了，吃起来更有食欲感。\n<br>\n<br>\n它的原产地是在日本，是一种杂交育成的水果，虽然它属于柑橘家族，却不需要担心吃多了会上火。三年前它不是很受欢迎，但随着独特的口感获得了更多人的喜爱。所以它的价格在飙升。想想以前种植的农民，卖不出去，不得不丢在河边，以至于大多数人转而种植其他水果，但如今它却受到了认可。\n<br>\n<br>\n农村这种水果长得丑，丑橘的产量也不是太高，别是很多地区都推出了适应当地生长的品种，这样一来产量减产更严重。在购买时，我们还需要区分丑橘和其他柑橘品种，不能盲目购买，否则很容易买到假货。');
INSERT INTO `fruit_newscenter` VALUES (26, '稳居水果连锁行业第一 百果园发力线上', '近日，前瞻产业研究院发布了《生鲜企业排行榜》，榜单综合考量了企业销售额，产品品质、门店数量、品牌价值等多个指标并进行量化打分。在“中国水果连锁企业排行榜TOP 20”中，2001年在深圳成立的水果连锁企业百果园位居第一，果多美排名第二。\n<br>\n　　生鲜产品是全球消费品市场中最重要的品类之一，与其他品类相比，生鲜品类的复购率更高。其中，水果和水产品是生鲜中规模最大的品类，尤其是水果，其市场份额逐年上升。 据《中国食物与营养发展纲要 ( 2014-2020 年 ) 》预测，2020 年我国人均水果年消费将达到 60kg。目前，百果园在全国布局了3600+门店，2018年销售额破100亿元，其中线上销售额破20亿元。\n<br>\n　　波士顿咨询在《中国生鲜消费趋势报告》中预测，到2020年，中国的生鲜消费市场仍将以线下为主，占据75%-85%的市场份额，而线上生鲜品类增长势头迅猛。作为一家起步线下的水果连锁企业，百果园在稳固线下水果零售市场的龙头地位后，于2016年正式布局线上，生鲜电商“一米鲜”受让人员、资产及技术等为百果园服务，让百果园转型为线上线下一体化的新业态；2017年，百果园线上业务实现规模化盈利；2018年，百果园上线微信小程序，目前小程序用户数已达1300万，日活用户数突破 50 万，日订单量突破6万单。\n<br>\n　　随着国内经济水平的提升，人们对优质产品的需求与日俱增，无论是线上还是线下，消费者更信赖专业的生鲜品牌。在企业产品品质把控上，百果园深入供应链上游，在上游布局230多个特约供货基地，并创建了业内首个全品类果品标准体系??四度一味一安全，从上游到下游严控产品品质。\n<br>\n　　严格的品质管理增强了消费者与品牌的相互信任。这也与百果园的信任文化不谋而合，2013年百果园率先在行业内实行”不好吃三无退货“服务(无实物、无小票、无理由)，完全信任顾客，带给顾客愉悦体验。信任还会反应在经营数据上，截至目前，百果园建设了规模达4000多万人的会员体系，会员以 25-40 岁的女性白领为主 ，同时在全国运营近400 万人的微信群成员，依托社群助力拼团销售额达 2 亿元以上');
INSERT INTO `fruit_newscenter` VALUES (27, '严朝君到我州调研水果产业发展情况', '2月25日至26日，省委常委、省委统战部部长、省水果产业发展领导小组组长严朝君到我州就水果产业发展情况进行实地调研，现场办公，并于26日下午在凯里市召开工作座谈会，研究推动水果产业发展相关事宜。省委统战部副部长、省工商联党组书记、省水果产业发展领导小组副组长李岳德，省农业农村厅副厅长级干部、省水果产业发展领导小组副组长向青云参加相关活动。\n<br>\n州委书记桑维亮，州委副书记、州长罗强，州委常委、州委统战部长潘玉凤，副州长吴坦等陪同调研或出席座谈会。罗强主持座谈会，吴坦代表我州作水果产业发展情况汇报。\n<br>\n<br>\n<br>\n<br>\n<br>\n在听取黔东南州水果产业发展情况汇报和与会同志的发言后，严朝君强调，推动水果产业发展，一是要务必高度重视。产业振兴是我省实施乡村振兴的重要抓手，水果产业作为农村产业革命的重要组成部分和省委、省政府深入推进农村产业革命的12个产业之一，跟脱贫攻坚、乡村振兴等紧密相连，要因地制宜推动发展。二是要项目化推进。根据省里明确优先发展的水果树种，聚力重点树种和地方特色规模树种，列出具体项目，细化项目内容，制定工作方案，加快推进实施。三是要抓紧成立地方工作专班。做好上下对接，形成推动水果产业发展的整体合力。四是要研究制定关于水果产业的政策扶持措施。省级有关部门要研究出台具体扶持政策措施，州、县也要研究制定相应的扶持发展指施，共同推动我省水果产业加快发展。\n<br>\n<br>\n<br>\n调研期间，调研组到凯里市龙场镇对当地水果产业发展情况进行了调研；到麻江县对蓝莓产业发展项目、蓝莓创意工坊建设项目进行了考察，现场听取了项目建设情况介绍，并对当地的蓝莓产业发展等提出了具体要求。\n<br>\n州直有关部门负责同志，各县（市）政府分管同志参加座谈会。');
INSERT INTO `fruit_newscenter` VALUES (28, '这种水果原产西藏，营养丰富口感好，产量稀少市场上一个能卖50元', '不少农民希望通过自己独到的眼光能让年收入增长，而选择市场上较罕见的品种来种植，那么它一定可以成为你的首选！原产于西藏林芝的黑钻苹果，也叫黑色使命，因物以稀为贵，在市场中一个能卖50左右，不仅好吃还富含多种人体维生素！\n<br>\n<br>\n黑色使命这种苹果非转基因，抗病害能力很强，很多苹果常见病害，在黑色使命身上都不会发生，果树从开花到果子成熟，几乎不需要喷洒任何农药，真正的可以做到无公害。好养程度和绿萝差不多，粘土就活，就算是新手种植，也能种植的很好，保持硕果累累！\n<br>\n<br>\n值得一提的是，黑钻苹果既能盆栽，也能地栽。它生长速度快，结果快，结果期长达120天！一棵成年树苗，能产100-300斤的果子。苹果含有锌、镁元素，能增强记忆力，促进人体大脑生长发育！非常适合读书用脑过度的孩子吃！\n<br>\n<br>\n果肉中所含的多酚天然化学抗氧化物质，可及时清除体内的代。谢“垃圾”，含有的磷和铁等元素，易被肠壁吸收，有补脑养血、宁神安眠作用！最适合老人和孩子吃了！');
INSERT INTO `fruit_newscenter` VALUES (29, '这几种水果很受欢迎，营养健康，怎么吃都好吃！', '这几种水果很受欢迎，营养健康，怎么吃都好吃！ 首先要说的是菠萝，它尝起来又甜又酸，特别好吃。小编建议，菠萝等水果应该放在一起，适度食用，这样维生素的摄入会更全面，减肥的效果会更好！你们喜欢菠萝吗？\n<br>\n<br>\n<br>\n香蕉也要说，因为香蕉会润滑肠道，方便大便。吃了香蕉后，他们仍然觉得很饱。一般来说，他们吃了两个香蕉后不会感到饿。它在我们减肥的原因中起着非常重要的作用，特别是许多上班族经常坐下来吃更多的香蕉来帮助消化。小朋友们明白吗？但不要吃得太多。这几种水果很受欢迎，营养健康，怎么吃都好吃！\n<br>\n<br>\n<br>\n火龙果是小编最喜欢的水果！但如果你在减肥期间吃火龙果，你最好选择白心的，这更有利于减肥。而火龙果能减少人体对脂肪的吸收，同时也能解毒美容！这几种水果很受欢迎，营养健康，怎么吃都好吃！\n<br>\n<br>\n<br>\n番茄既是蔬菜又是水果。许多人在减肥时选择吃番茄，因为番茄的脂肪含量比苹果低，所以更容易促进消化和排泄。所以小编超级推荐番茄，毕竟番茄也有美白的效果！这几种水果很受欢迎，营养健康，怎么吃都好吃！\n<br>\n<br>\n<br>\n猕猴桃还有很好的降脂作用！长期以来，它一直是减肥者的最爱，因为它含有丰富的维生素C和膳食纤维，可以增加进食后的饱腹感，美化皮肤，帮助消化，防止便秘，从而达到减肥的效果！小编极力推荐这种水果，不要错过！这几种水果很受欢迎，营养健康，怎么吃都好吃！\n<br>\n<br>\n<br>\n最后，推荐的水果是苹果，它不仅降低胆固醇和血压，而且还含有非常低的品质。苹果富含膳食纤维，但也可以刮油帮助消化。吃苹果不仅不必担心发胖，而且有两倍的减肥效果。春节过后多吃水果，少吃零食，以确保你不会发胖。这几种水果很受欢迎，营养健康，怎么吃都好吃！');
INSERT INTO `fruit_newscenter` VALUES (30, '它5年才开花结果，不好吃但价值极高，素有“水果皇后”之美誉', '提到风味独特的热带水果，人们第一个想到的肯定就是榴莲和菠萝蜜了。榴莲不仅外形独特，味道也是很特殊的，闻起来臭臭的。菠萝蜜和榴莲差不多，爱它们的人简直就是爱的疯狂，不爱的人绝对不会吃一口。今天要说的这种水果和菠萝蜜非常像，5年才开花结果一次，虽然不好吃，但是营养价值却是很高的，还素有“水果皇后”的美誉，它就是尖蜜拉。\n<br>\n<br>\n<br>\n尖蜜拉其实还有一个名字叫做小木菠萝，这个名字正是因为它的外型和菠萝蜜（木菠萝）非常相似而得名。尖蜜拉是一种一年四季常绿的乔木，它的叶片和果实和菠萝蜜非常相像，唯一不同的就是尖蜜拉的叶片都长着很密的刚毛，并不像菠萝蜜那般光滑，比较粗糙。尖蜜拉的植株比较矮小，正因如此它不是很耐寒，一旦气温低于5摄氏度就很容易冻伤。\n<br>\n尖蜜拉的果实是不规则的椭圆形，比菠萝蜜的果实稍微小一些。它的果皮上面有软刺，这一点和菠萝蜜非常像。果瓤里包裹着几百个淡黄色的肉包，味道很香甜。不过它的味道和菠萝蜜一样独特，并不是所有人都喜欢吃。爱它的人会觉得它是人间美味，不爱它的人会觉得简直就是太难吃了。\n<br>\n<br>\n<br>\n虽然尖蜜拉不好吃，但是它的观赏价值和营养价值却是非常高的。尖蜜拉的树形非常美观，而且即使在冬天里也不凋谢，是一种优美的风景树，现在经常被人当做盆景放在屋里做装饰。尖蜜拉含有丰富的糖分、蛋白质、维生素和矿物质，素有“水果皇后”的美誉，它对维持人体的正常生理机能有一定作用。研究证明尖蜜拉中的蛋白质是一种水解毒，具有抗水肿、消炎的作用。适当的食用尖蜜拉能够促进血液循环，对脑血栓和其他血栓疾病有很好的治疗作用。除此以外，尖蜜拉对支气管炎、哮喘、肺炎、溃疡也有很好的疗效。如果家里有产妇乳汁不畅也可以食用一些尖蜜拉，有很好的通乳效果，而且还没有任何副作用。\n<br>\n<br>\n<br>\n尖蜜拉虽然功效很多，但是容易发生过敏反应。为了避免发生过敏，在吃尖蜜拉以前要先将它的果肉放在淡盐水里浸泡半个小时，这样不仅能够避免发生过敏反应，而且还能让果肉变得更加鲜美。看到这里的小伙伴们是不是有了一饱口福的冲动呢，快去看看附近的水果店里有没有尖蜜拉，如果有你可有福了');
INSERT INTO `fruit_newscenter` VALUES (31, '5种学生党吃不起的水果，黑皮西瓜上榜，吃过一种都算土豪', '5种学生党吃不起的水果，黑皮西瓜上榜，吃过一种都算土豪\n<br>\n水果是大家经常吃的食物，营养丰富，价格一般也是大众都能接受的。比如大家常吃的水果：苹果、香蕉、橘子、西瓜，然而有几种水果别说普通人不能接受了，就是土豪也要考虑考虑了，学生党更是压根就不会买，因为太贵了。今天我们就一起来看看5种学生党吃不起的水果吧，吃过一种都算土豪，来看看你吃过没有。\n<br>\n<br>\n<br>\n1.黄龙果\n<br>\n这个在一般超市也是不经常见到的。其实黄龙果也是一种火龙果，属于火龙果的高级品种，表皮虽然是黄色的，但是打开里面和普通的火龙果颜色是一样的。不过黄龙果的甜度比普通火龙果要高很多，肉质细腻，还有些香香的浪漫的味道。\n<br>\n<br>\n<br>\n2.黑皮西瓜\n<br>\n一般的西瓜都是青绿色的，有少许是偏暗绿色，但是你见过纯黑色的西瓜吗？远看跟个大个铅球一样。十年前拍卖曾经拍出3万多人民的天价，也是令人咂舌了。这种黑皮西瓜产自日本的北方地区，每个大概在8-10斤，产量也是非常低的。物以稀为贵，这也是天价黑皮西瓜产生的社会原因。\n<br>\n<br>\n<br>\n3. 红宝石罗马葡萄\n<br>\n一个葡萄的大小大约是常见羽毛球头的大小。这个品种来自日本， 17000多串是它一年的大概产量。红宝石罗马葡萄曾经在2011年拍出4万元每串的天价，相当于5口就要吃掉一个iphone，这也是让人惊掉大牙的事情了。\n<br>\n<br>\n<br>\n4.指橙\n<br>\n指橙原产于南半球的澳洲，市场售价大约是500元一公斤，与一般的水果比起来价格也是非常昂贵了。形如其名，它长得非常非常的小，就像手指一样。指橙里面是一粒一粒的，活像鱼子一样，其营养价值也是非常丰富的，说起来也是值他的价格了。指橙也有非常大的药用价值，性属寒，可以驱风行气；一般人喝酒多了，吃上几个，也有非常好的解酒的功效。\n<br>\n<br>\n<br>\n5.夕张王甜瓜\n<br>\n这种水果也是来自日本的。有两个夕张王西瓜在一次拍卖中曾经卖出15万元的高价，可见这种水果的奢华。在日本的奢侈水果店，夕张王甜瓜每个都有自己的独立的标签，就像选美小姐一样静静的站立在那里，等待着人们的挑拣。之所以这么贵，与他的种植规范和要求也是离不开的，无论是种子的选择还是土壤ph的矫正以及种植间距和果实的挑拣都是非常苛刻的，这也是为什么一个甜瓜能卖出这个价格。');
INSERT INTO `fruit_newscenter` VALUES (32, '它是水果也是菜 口感微甜脆爽 一家老小都喜欢', '炒菜是老百姓餐桌上必不可缺的，家常的炒菜种类非常的多，每一种都能够吃出来不一样的美味以及营养，像黑木耳就是经常会被用于炒菜的一种食材，黑木耳经过泡发之后，凉拌或者是炒菜吃都是非常美味营养的，我要教大家做的这道菜也是用黑木耳炒制出来的，加上了一种口味似白萝卜的食材“雪莲果”，口感微甜脆爽，雪莲果既能够生吃，同样也能用于炒菜或者是烹煮，下面我就把这道雪莲果炒木耳的做法分享给大家\n<br>\n<br>\n<br>\n雪莲果炒木耳的做法：\n<br>\n备用食材：雪莲果1个，黑木耳150克，猪里脊肉100克，菜籽油适量，盐2克，胡椒粉适量，姜粉适量，鲜酱油适量，大蒜适量\n<br>\n<br>\n<br>\n制作过程：第一步，将雪莲果去皮后，清洗干净，然后切成片备用\n<br>\n<br>\n<br>\n第二步，干木耳在水中泡发后，去掉蒂，清洗干净后盛在盘子中备用，同时将大蒜剥皮切片\n<br>\n<br>\n<br>\n第三步，买回来的猪里脊，用清水冲洗干净后，切成片\n<br>\n<br>\n<br>\n第四步，锅中加上油，烧热后，放入切好的猪肉片\n<br>\n<br>\n<br>\n第五步，炒至猪肉变色后，加上胡椒粉、姜粉、蒜片和鲜酱油，翻炒均匀\n<br>\n<br>\n<br>\n第六步，再加上雪莲果，大火翻炒均匀后，最后放上木耳，翻炒熟之后，加上一点盐调味，就可以盛出来开吃了\n<br>\n烹饪小贴士：1、炒制这道菜之前，需要将木耳提前在水中泡发好，在需要用的时候也会方便一些，这道菜最好是用猪里脊来炒制，里脊肉的肉质比较鲜嫩，比较容易炒熟，这几种食材都是老少皆宜的，一家老少都非常适合吃\n<br>\n2、雪莲果是一种既是水果又是菜的食材，清洗干净削去皮之后，便可以直接拿着生吃，另外雪莲果即使经过爆炒，还是能够保持脆爽感，吃起来非常的美味可口，在日常饮食中，我们也经常会见到将水果用于烹饪的，像水梨、苹果、菠萝等，都是非常常见用于烹饪的，有了这些水果的加入，会将整道菜的口感以及味道都提升好多，所以大家平时在家做饭的时候也可以选择这样做\n<br>\n3、我平时也会买上些雪莲果，家人便很喜欢吃，后来学着做了这道雪莲果炒木耳后，做给家人吃，没想到受到了一家老小的喜欢，这道菜一上桌，便被家里的老人和小孩抢着吃，就上碗白米饭，真的是特别的美味下饭。');
INSERT INTO `fruit_newscenter` VALUES (33, '这种水果和虾仁搭配，清爽不油腻，营养丰富又瘦身，你吃过吗？', '在我们日常生活中，火龙果是比较常见的一种水果，它的营养价值是非常的高的，是一种低能量、高纤维的水果，具有减肥、去火、降低胆固醇、预防便秘等功效。而且火龙果中花青素含量较高。花青素是一种效用明显的抗氧化剂，它具有抗氧化、抗自由基、抗衰老的作用，火龙果的吃法有很多，可以当水果直接吃的，可以加酸奶做沙拉吃的，可以榨汁当果汁吃的。但你们吃过用火龙果炒来当菜吃的吗？今天就和大家介绍一款用火龙果加虾仁炒的菜，味道都能鲜掉眉毛！\n<br>\n<br>\n<br>\n这道一道简单、美味、清爽怡人的菜肴，也是既简单又上台面的快手菜。火龙果与虾仁的搭配，无需过多调味就很美味呢，鲜艳的颜色、爽脆的口感和丰富的营养，不仅孩子喜欢，再加上这道菜的热量较低，含有丰富的维生素C和蛋白质，所以这也是女性喜欢的减肥菜肴，即满足了胃口，又美容养颜，快来试试这道果香浓郁的快手菜吧～\n<br>\n<br>\n<br>\n【材料】：鲜虾 150克、胡萝卜 少许、青红椒 少许、杏仁 20颗左右、盐 半茶匙、柠檬汁 几滴\n<br>\n<br>\n<br>\n【做法】：1、把鲜虾剥掉虾头虾壳，把虾头扭一下再扯掉的时候就可以顺势把虾线扯出来，全部虾仁取出后冲洗一下沥干水，滴几滴柠檬汁抓匀腌制一下；\n<br>\n<br>\n<br>\n2、火龙果去皮，切成小方块；\n<br>\n<br>\n<br>\n3、胡萝卜，青红椒切成小块；\n<br>\n<br>\n<br>\n4、锅内放入适量油，放入胡萝卜，青红椒翻炒片刻；\n<br>\n<br>\n<br>\n5、倒入虾仁翻炒到虾仁变色；\n<br>\n<br>\n<br>\n\n\n6、倒入火龙果和杏仁翻拌均匀；\n<br>\n<br>\n<br>\n\n\n7、最后放入适量盐调味即可，这是一道比较清淡的菜，所以并没有其他调味料；\n\n<br>\n<br>\n<br>\n\n好看好吃，营养健康，水果的清甜味搭配虾的鲜味，深得孩子喜欢！\n\n<br>\n<br>\n<br>\n\n【小提示】：\n<br>\n1、用果皮作为容器，色彩搭配也很漂亮。\n<br>\n2、坚果和火龙果要在最后放入，并小心翻炒，避免火龙果碎掉。\n<br>\n3、火龙果不能炒的时间长，否则火龙果出水多，破坏菜式的口感和美观哦!!!');
INSERT INTO `fruit_newscenter` VALUES (34, '它是水果也是菜，润肺止咳最厉害，一斤只要3块钱，别错过！', '最近南方都在下雨，已经快下了半个月的雨了，天气又冷又潮湿，这种天气孩子是最容易感冒生病了！我家女儿最近也感冒了发高烧，咳嗽流鼻涕，吃了好几天药都不见的好。孩子生病我们做大人也跟着辛苦，怕孩子半夜发高烧晚上都不敢睡隔1个小时量一次体温，怕孩子突然发高烧，烧坏脑子。而且过年期间抵抗力差的孩子还特别容易传染了感冒，发烧咳嗽，药吃多了孩子还不爱吃饭，而且每次给孩子喂药跟打仗似的，所以我最怕孩子生病了。毕竟是药三分毒，特别是孩子我们更要注意。孩子咳嗽有痰我们不要只依靠吃药去治疗，其实我们还可以通过食疗的方法来缓解病情，毕竟食材的治疗方法更安全，没有任何副作用。所以孩子咳嗽严重我们可以给孩子吃些润肺止咳的食材。说到润肺止咳的食材，很多人想到是梨，枇杷，橙子，萝卜确实这几种都有润肺止咳的功效。但说到清热解毒，润肺止咳的食材，不得不提马蹄，相信大家对马蹄应该都不陌生，也吃过不少，但很多人却不知道马蹄的功效\n<br>\n<br>\n<br>\n马蹄它是水果也是菜，它润肺止咳最厉害，一斤却只要3块钱，冬天不懂得吃它就太可惜了！因为马蹄甘，寒能清肺热，又富含黏液质，可以生津润肺化痰等功效。而且马蹄不但可以润肺止咳还可以补充人体所需的营养，最适合感冒发烧咳嗽的人吃。而且近年研究发现马蹄含有一种抗病毒物质，可以抑制流脑，流感病毒，能有效的用于流感个流脑的传播。马蹄含磷量是蔬菜中含量最高的，常吃可以促进人体生长发育，而且对牙齿骨骷的发育有很大的好处。同时还可以促进人体糖，脂肪，蛋白质三大物质的代谢，调节酸碱平衡，因此马蹄还特别适合儿童食用。所以每过年我都会去市场买一大袋马蹄放家里慢慢吃，马蹄的吃法也很多，可以削皮当水果直接吃，还可以拿来煲汤，做饼或直接切片和肉一起炒味道都特别棒！今天给大家介绍这道马蹄肉馅饼，就好吃的不得了，我家过年时常做，好吃又营养。下面我详细给大家介绍下这道马蹄饼的做法。\n<br>\n食材：肉末30克、蹄11粒、洋葱一个、鸡蛋一个、红萝卜半根、适量的盐、胡椒粉、蚝油、生粉\n<br>\n<br>\n<br>\n步骤一：食材备好后，先将马蹄和胡萝卜洗干净去皮切小细丁，洋葱洗干净切成细条，备用。\n<br>\n<br>\n<br>\n\n\n步骤二：炒锅里放入适量的食用油，油热后转小中火，倒入切好的洋葱丝。再用小火把洋葱煎至微微焦黄关火（注意洋葱不要煎过火了，容易致口感发苦）\n<br>\n<br>\n<br>\n\n\n步骤三：肉末倒入碗中，再倒入胡萝卜粒和马蹄粒和煎好的洋葱。然后按个人口味倒入适量的盐，蚝油，胡椒粉。\n<br>\n<br>\n<br>\n\n\n步骤四：打入一个鸡蛋，放入2勺生粉，添加肉末的黏稠性。然后按顺时针把所以食材搅拌均匀。\n\n<br>\n<br>\n<br>\n\n步骤五：锅里倒入适量的油，油烧热后，将搅拌好的马蹄肉泥捏成饼状，轻轻的放入锅里小火慢煎。\n<br>\n<br>\n<br>\n\n\n步骤六：将马蹄肉饼小火慢煎至两面金黄后，即可关火。\n<br>\n<br>\n<br>\n\n\n把煎好的马蹄肉饼，放到厨房用厨房纸上控油后，即可开吃啦！马蹄肉饼Q弹又甜脆还有洋葱的香，咬一口又香又好吃，回味无穷！');
INSERT INTO `fruit_newscenter` VALUES (35, '食材安全是食品卫生的前提，虾秘水果龙虾的出现意义重大', '　餐饮行业的低门槛和整体规模不断扩大，导致食品安全问题频发。尤其在外卖服务兴起后，食品安全问题的形势愈发严峻。以至引起央视媒体的关注，并在此前派记者到多地暗访。而在之后播出的节目中，央视媒体提出这样一个疑问，如何才能彻底避免食品安全问题的出现？\n<br>\n<br>\n<br>\n\n\n　　违反自然规律后 食材无法保证安全\n<br>\n　　对此，一些行业专家此前曾表示，食品在加工过程中的安全及卫生问题好解决，难的是食品原材料的品质保证。例如，上世纪八十年代在英国首次出现的疯牛病，就是因为肉牛的饲养者，出于降低养殖成本的考虑，用粉碎后的鸡骨、牛骨喂牛。无独有偶，时间进入21世纪后，美国玉米年产量每年相较上年均有大幅增长。而玉米价格的持续走低，导致美国农场主将玉米作为牛的主饲料。然而，牛本是食草动物，玉米虽然营养价值高，但却并不适合养牛。结果是，牛的生长速度虽然相比以往快了不少，但其自身的免疫力，却大不如前。以至于，各类原本在牛肉中含量不高的病菌，得以大量繁殖，而人在食用后，100%会出现食物中毒的症状，并且多数会因此丧命。\n<br>\n<br>\n<br>\n　　品牌参与食材生产 虾秘的做法值得学习\n<br>\n　　食材的安全、靠谱，既然如此重要，那么该怎样做才能确保食材不出问题呢？简单讲，由餐饮品牌出面，监督食材的生产、运输，是为最具效率的解决办法。而遍寻国内餐饮消费市场，只有虾秘水果龙虾就此做的颇为到位。\n<br>\n<br>\n<br>\n　　众所周知，小龙虾在肮脏的环境下生长速度更快，但长成的小龙虾中，难免会有大量的重金属及其他有毒有害物质。围绕这点，虾秘水果龙虾为确保小龙虾食材符合检验检疫标准，主动与一些地方政府及小龙虾养殖户接触，三方就小龙虾的养殖，明确环境要求与饲养标准。值得注意的是，针对小龙虾的饲养，虾秘水果龙虾要求养殖户全程用水果，且对于水果的采购、运输，愿提供力所能及的帮助。\n<br>\n<br>\n<br>\n　　而为进一步调动养殖户的积极性，避免他们就“水果龙虾饲养”心存疑虑，虾秘水果龙虾早前还与太平洋保险合作，由后者承保虾秘水果龙虾所采购的每只小龙虾。\n<br>\n<br>\n<br>\n　　食品安全，重于泰山。而虾秘水果龙虾的种种做法，无疑给确保食材安全及尽早解决食品安全问题提供了一个非常好的思路。再有，鉴于目前国内餐饮消费市场中专售小龙虾美食的餐饮品牌数量稀少，相信虾秘水果龙虾在接下来可依凭“水果养殖”的独特卖点，在行业市场实现又好又快的发展。');
INSERT INTO `fruit_newscenter` VALUES (36, '漫谈|曾经的高端水果为啥越来越便宜？', ' 据中国乡村之声《三农中国》报道，随着人们生活水平的不断提高，消费者在购买水果时都愿意选择高端一些的品种。但是，近些年，一些高端水果已经慢慢走下“神坛”，变得不那么稀奇了。为什么这些高端水果会贬值呢？记者韩晓和您说一说。\n<br>\n　　韩晓：以前，对很多人来说，买车厘子、牛油果等高端水果是一件奢侈的事情，但最近几年，一些高价位水果已经开始变成老百姓餐桌上的常客。\n<br>\n　　举个例子，牛油果是一种原产于墨西哥和中美洲的水果，对牛油果熟悉的人都知道，这种水果进入中国时，被称为“鳄鱼梨”，国内基本没有种植，全靠进口。牛油果单价最高时，曾经卖到每个80到100元。不过，近两年，这种水果的价格已经出现了明显下跌，便宜些的，每个8元钱就可以买到。\n<br>\n　　除了牛油果，车厘子也是众多降价的高端水果之一，以前，一斤车厘子的价格高达200元，现在，市场上车厘子的价格也就是每斤40元到50元。除此以外，广西的“沃柑”、浙江的“红美人”、云南四川的“软籽石榴”，以及蔓延全国的“阳光玫瑰”，都曾经营造过中国果业的财富神话，不过，这两年也都走进了大家常去的超市和菜市场。\n<br>\n　　这些高端水果到底为什么变得越来越便宜呢？这其中有很多原因。最主要的是和老百姓的经济收入增长有关。近些年，国内市场对高端水果的需求和消费量翻倍增长，面对中国这个潜在消费能力巨大的市场，各国进口到我国的水果数量逐年增加。原来稀罕的高端水果也就变得不再稀奇，市场价格自然降低了。\n<br>\n　　另外，在市场消费量连年上涨的形势下，国内的种植户也变得积极起来，在环境适宜的地区，果农们引进了国外的水果品种进行种植，也增大了水果的上货量，使得高端水果的价格进一步降低。\n<br>\n　　除此以外，为了能让中国老百姓吃上更多国外的水果，近些年，我国对进口水果的关税也连年降低，甚至，有的国家水果进口还享受零关税优惠，这进一步拉低了市场价格。\n<br>\n　　不过，高端水果的更新换代始终没有停歇，当一批高端水果走下“神坛”后，另一批高端水果又悄然卖出了高价。比如网红水果“白草莓”、非洲角瓜、蛇皮果、泰国椰皇等，又在国内市场卖出了不菲的价格。\n<br>\n　　有人认为，高端水果最终一定会走向跌价的命运，但实际上，目前市场上仍然有很多持续高价的水果，比如山竹、榴莲等。因此，如果条件允许，农民朋友在搞农业种植的时候，依然可以适当转变思维，转向高端水果的特色种植。\n<br>\n　　当然，并不是越稀奇的水果就越有市场，任何种植都是有风险的，尤其是新奇品种，所以，大家在种植前一定要做好准备，不要被当前销售“火爆”所蒙蔽，一定要了解可能存在的风险，再慎重进行种植。');
INSERT INTO `fruit_newscenter` VALUES (37, '它是水果更是药，每天吃俩，血栓全不见，多吃抗疲劳', '　　2月11日，过年相信家家户户都会放几包红枣在家里，真是又解馋还喜庆。其实红枣不仅是一种水果，也是一种营养丰富的药材，它有降脂降糖，保肝补血，降肝护心等功效。将红枣与糯米结合，甜而不腻，简直妙哉!营养师大乔力荐药膳——糯米枣，软软的糯米配上甜甜的红枣，不仅可以活血养颜，补充维生素，防止骨质疏松，还能补血益气，缓解压力。它是水果更是药，每天吃俩，血栓全不见，工作压力大，多吃抗疲劳。此等美容佳品只需30分钟左右即可制成，既便宜又实惠，爱吃甜食的你还等什么，快来收获年轻好气色吧!\n<br>\n<br>\n<br>\n　　糯米枣\n<br>\n　　配料：\n<br>\n　　阿胶枣 10粒、糯米粉 30克、冰糖 4粒\n<br>\n　　烹饪步骤：\n<br>\n　　1.红枣洗净泡20分钟左右\n<br>\n　　2.糯米粉一点点加入适量清水揉成面团\n<br>\n　　3.红枣从中间切开去核\n<br>\n　　4.糯米面团揪下一点，搓成圆柱状\n<br>\n　　5.把糯米面团塞在红枣中间\n<br>\n　　6.锅中烧水，加入冰糖\n<br>\n　　7.水开后放入糯米枣，中小火煮15分钟即可');
INSERT INTO `fruit_newscenter` VALUES (38, '塔吉克斯坦暂停进口中国水果', ' 据塔吉克斯坦政府粮食完全委员会植物检疫监督部门官网信息 该部门负责人JAMSHID NASIROV称，因中国水果中存在有害健康的成分，2018年该国未从中国进口任何水果。\n<br>\n <br>\n        塔吉克斯坦农业专家LEonID KHOLOD解释说：“尽管中国水果的外观漂亮，但它们的口味远不如塔吉克产品。此外，中国水果的安全性不符合塔吉克斯坦采用的安全标准，中国水果使用的杀虫剂不会分解，不能从蔬菜和水果中除去。”\n <br>\n        “除了花大力气检验中国劣质甚至有害的水果外，更有效的方法便是禁止从这个国家进口所有水果，这样更有利于发展本国果木业”，该国有关当局官员称。\n <br>\n        截止2018年，塔吉克斯坦每年从中国进口水果的数量约为250吨。自2018年以来，该国主要从土耳其、俄罗斯、厄瓜多尔、巴基斯坦及吉尔吉斯斯坦进口水果。\n');
INSERT INTO `fruit_newscenter` VALUES (39, '健康吃水果大有讲究 避免这些吃水果误区', '1、水果拼盘\n<br>\n有一部分的人群喜欢在超市购买水果拼盘，能够一次性吃到多种多样的水果，但是水果拼盘里面会让大量的细菌生长和繁殖。因为水果会直接接触刀具、保鲜膜以及器皿等，做出来的水果拼盘如果没有立即食用的话，长时间在超市里面摆放会让大量细菌滋生，对于消化系统不好以及体质虚弱的人群来说，尽量不要吃水果拼盘，如果吃的话要自己做。\n<br>\n2、冰镇的水果\n<br>\n在冬季水果比较少有一部分人群会选择反季的水果，反季的水果一般是在冰柜里面存放，虽然爽口，但是会导致营养物质的流失以及不卫生。如果长时间放在冰箱里进行冰镇，会流失大量的维生素。另外在低温的环境中只是延缓了细菌生长和繁殖的速度，并没有完全抑制细菌以及杀菌。如果冰柜里面含有大量细菌的话，在存放的过程中可能会增加水果表面的一些细菌。\n<br>\n3、烂水果\n<br>\n腐烂的水果有可能是受到了大量的微生物的入侵，比如黄曲霉或者青霉等都有可能会导致水果的果皮变得软化，从而产生大量的致癌物质，比如黄曲霉毒素以及青霉素等会增加致癌可能性。即使把腐烂的一部分去掉，也有可能会污染一些其他部位，这是我们肉眼所看不到的，所以当水果烂了之后就直接扔掉。\n<br>\n4、用水浸泡的水果\n<br>\n用水浸泡过的水果虽然看起来非常的新鲜，但是会流失大量的水溶性维生素，有一些不良商家会直接加入粗盐以及明矾，让切块的水果变得保鲜不变色，这些东西会直接危害到人们的大脑神经以及骨骼。');
INSERT INTO `fruit_newscenter` VALUES (40, '多吃蔬菜水果 打好“保胃战”', '  连着好些天大鱼大肉伺候着，假期结束，不少市民又驮着满满一后备箱的土特产从老家归来。载着家人沉甸甸的爱，不少人感觉自己灵活的身子也开始“沉甸甸”起来。节后肠胃不适、肥胖、精神疲惫等问题纷纷出现。而昨（11）日是春节长假后上班的第一天，市民在收假收心的同时，还要注意调节肠胃，消除疲劳。\n<br>\n    假期结束 收假应收心\n<br>\n　“每逢佳节胖三斤，过年肉长得更多了。”市民陈先生说，半个月前，他就频繁地参与各种聚餐，放假前先是同事、朋友陆续聚会，放假后回到蓬安老家，肠胃也没轻松， 亲戚家端出来的也都是大鱼大肉。这连着7天假，算起来就没在家里好好吃过几顿饭， 而且一些席间难免觥筹交错，推杯换盏，天天胃里都是翻江倒海的感觉。\n<br>\n　“现在是到饭点都没啥胃口。”市民张女士说， 她平时比较喜欢吃干果、甜食， 过年期间家里准备了不少糖果、零食。 有时候坐在电视机前不知不觉就吃了一大堆，到了饭点肚子都是饱的。\n<br>\n　市民杨女士说，过年期间大部分时间天气比较给力，他们一家四口在农村过了几天田园生活，自创的萝卜舞自娱自乐之余， 在朋友圈还小小地火了一把。昨日开始上班了，老感觉疲乏困倦，提不起精神，工作效率低。大家说这是“节后综合征”，也不知道该如何调节。\n<br>\n    调节肠胃 饮食需清淡\n<br>\n　据市中心医院急诊科主任张应宏介绍，春节长假期间，大家在享受热闹喜庆的节气气氛之余，仍有一些市民因为吃喝无度被送进了急诊科。该院每天都能接到因为酒精中毒或者食物中毒、胃炎、肠炎等原因送进急诊室的患者，基本都是因为团年聚会中席间饮食不卫生或者饮酒无度造成的，有些患者到医院后持续上吐下泻，症状严重。\n<br>\n　目前春节长假已经结束，节后应该如何调节肠胃，改善饮食，以良好的状态投入到工作中呢？据市中心医院营养科副主任营养师陈显荣介绍， 长达7天时间的胡吃海喝，不规律的饮食以及过量摄入高油、多脂类食物，人体就会造成消化功能紊乱，出现腹胀、腹泻等症状，导致吃东西没有胃口，也就是市民口中所谓的“闷油”，更严重的会出现重症胰腺炎等。为了节后尽快全身心地投入工作，保养肠胃，可以适当从饮食上进行调理，对肠胃进行“减负”，多吃一些清淡的食物。陈显荣说，节后肠胃清理， 可以多吃一些新鲜蔬菜和水果，按时饮食、饭菜清淡，适当喝些粥、吃点五谷杂粮。\n<br>\n　此外，节后上班还要调整好心情，恢复良好的生活习惯，调整作息时间，早睡早起。晚上最好提前两小时躺在床上，不在床上玩手机，定好闹钟按时起床。参加自己喜欢的运动，如步行、慢跑、跳舞等，做一些使自己心跳加快、出汗的运动。身体的状况也会慢慢调整到正常状态上来。上班可以喝点咖啡或者茶来提提神，有条件的话，中午可以休息一会儿，下午精力更充沛。最后，可制定工作计划，提前将工作量化安排，明确每天的任务，保持正常的生活和工作节奏， 抛开对工作的厌倦情绪。');
INSERT INTO `fruit_newscenter` VALUES (41, '湖北市民春节网购花了近10亿 高档水果俏 智利车厘子受热捧', '11日，省商务部门通报我省春节消费市场情况。长假期间，全省消费市场年味浓、销售旺，网购年货、网上订餐、定制出游等新消费业态备受青睐。其中，武汉五大商业集团春节长假累计销售额超过21亿元，略高于去年。电商网络零售额涨势惊人，较去年增长了1/4。\n<br>\n　　高档水果紧俏\n<br>\n　　据省商务厅监测，除夕至正月初六（2月4日至10日），全省零售和餐饮企业销售额约274.3亿元，比去年春节黄金周增长10.6%，重点监测零售企业销售额同比增长10.5%。年俗商品、绿色食品、珠宝首饰、应季服装、智能家电、数码产品等销售增长较快。有机杂粮、绿色蔬菜、时令水果、保健品礼盒等绿色健康类食品销售红火。在武汉，进口红酒、水产，高端洗护礼盒、水果礼盒、蔬菜礼盒等颇受市民欢迎，智利车厘子、泰国榴莲等高档水果十分紧俏。\n<br>\n　　京东苏宁照常送货\n<br>\n　　苏宁易购、京东等电商企业推出年货节专场，“春节不打烊、物流照样送”。据市电子商务协会统计，长假7天，全市电子商务网络零售额（网络订单额）达9.81亿元，同比增长25.3%。其中京东金德等4家重点监测电商企业销售额达18300万元，同比增长23.6%。\n<br>\n　　年夜饭、团圆饭、亲朋宴是今年春节餐饮市场主角。全省各地年夜饭异常火爆，我省重点监测餐饮企业营业收入同比增长10.8%。其中，武汉市重点监测的五家大型餐饮企业累计营业额超过5000万元，基本与去年持平。市民年夜饭选择较往年更加丰富。各大超市纷纷推出新鲜食材、半成品、成品年饭套餐，满足了市民在家吃饭需求。其中盒马鲜生推出不同价位海鲜家宴春节定制版，波士顿龙虾、鲍鱼等高档海鲜丰富了年夜饭餐桌。\n<br>\n　　冰雪游温泉游火爆\n<br>\n　　旅游消费尤其是冰雪游、温泉游十分火爆。武汉郊外自驾游、休闲游等个性化活动成出游首选，神农架生态游游客接待量较平时增长三成以上，襄阳赏雪、玩雪、泡温泉受到追捧，成为新亮点。\n<br>\n　　学习充电也成了百姓过节新选择。春节7天，武汉图书馆读者比平时多了五成以上，省博物馆系列大型展览每天吸引观众近万人次。\n<br>\n　　全省生活必需品价格总体平稳。与节前一周比较，粮食价格略有上涨，其中大米价格上涨4.3%，面粉价格上涨8.3%；食用油价格小幅上涨，其中大豆油价格上涨17.0%；30种蔬菜价格上涨10.9%。肉、禽、蛋、奶价格基本平稳。\n<br>\n　　春节送货量武汉位列第八城\n<br>\n　　长江日报讯（记者孙珺）日前，阿里巴巴集团发布《2019春节经济报告》，展现了融合传统佳节意趣和数字经济势能的新图景。“春节不打烊”，网购年货送到家，已经成为农历己亥春节的新年俗。春节期间，菜鸟平台上有数万名配送小哥在给千家万户送达年货包裹。\n<br>\n　　菜鸟数据显示，今年春节期间，天猫“春节不打烊”送货量最多的十大城市分别是上海、北京、杭州、广州、深圳、成都、苏州、武汉、天津和宁波。\n<br>\n　　菜鸟数据显示，今年春节期间，参与“春节不打烊”配送的配送员收入是平常的三倍左右，在特别繁忙站点收入还要更高一些，春节不回家也能保证不错的收入。\n<br>\n　　“春节团聚，用户家里吃饭用度较多，天猫超市的米面粮油、牛奶，都是必需物资，送货上门，也让大家过一个方便、开心的团圆节日。”快递员陈俊说。\n<br>\n　　“用户过年收到货都很开心。”在他看来，过年期间网购，很多都是生活必需品，满足了很多用户的需求。\n<br>\n　　春节期间，他还收到不少消费者发来的祝福信息，“特别暖心”。\n<br>\n　　假期,餐饮住宿投诉最多');
INSERT INTO `fruit_newscenter` VALUES (42, '武汉市民春节线上消费近10亿元 车厘子等高档水果受青睐', '11日，省商务部门通报我省春节消费市场情况。长假期间，全省消费市场年味浓、销售旺，网购年货、网上订餐、定制出游等新消费业态备受青睐。其中，武汉五大商业集团春节长假累计销售额超过21亿元，略高于去年。电商网络零售额涨势惊人，较去年增长了1/4。\n<br>\n　　高档水果紧俏\n<br>\n　　据省商务厅监测，除夕至正月初六（2月4日至10日），全省零售和餐饮企业销售额约274.3亿元，比去年春节黄金周增长10.6%，重点监测零售企业销售额同比增长10.5%。年俗商品、绿色食品、珠宝首饰、应季服装、智能家电、数码产品等销售增长较快。有机杂粮、绿色蔬菜、时令水果、保健品礼盒等绿色健康类食品销售红火。在武汉，进口红酒、水产，高端洗护礼盒、水果礼盒、蔬菜礼盒等颇受市民欢迎，智利车厘子、泰国榴莲等高档水果十分紧俏。\n<br>\n　　京东苏宁照常送货\n<br>\n　　苏宁易购、京东等电商企业推出年货节专场，“春节不打烊、物流照样送”。据市电子商务协会统计，长假7天，全市电子商务网络零售额（网络订单额）达9.81亿元，同比增长25.3%。其中京东金德等4家重点监测电商企业销售额达18300万元，同比增长23.6%。\n<br>\n　　年夜饭、团圆饭、亲朋宴是今年春节餐饮市场主角。全省各地年夜饭异常火爆，我省重点监测餐饮企业营业收入同比增长10.8%。其中，武汉市重点监测的五家大型餐饮企业累计营业额超过5000万元，基本与去年持平。市民年夜饭选择较往年更加丰富。各大超市纷纷推出新鲜食材、半成品、成品年饭套餐，满足了市民在家吃饭需求。其中盒马鲜生推出不同价位海鲜家宴春节定制版，波士顿龙虾、鲍鱼等高档海鲜丰富了年夜饭餐桌。\n<br>\n　　冰雪游温泉游火爆\n<br>\n　　旅游消费尤其是冰雪游、温泉游十分火爆。武汉郊外自驾游、休闲游等个性化活动成出游首选，神农架生态游游客接待量较平时增长三成以上，襄阳赏雪、玩雪、泡温泉受到追捧，成为新亮点。\n<br>\n　　学习充电也成了百姓过节新选择。春节7天，武汉图书馆读者比平时多了五成以上，省博物馆系列大型展览每天吸引观众近万人次。\n<br>\n　　全省生活必需品价格总体平稳。与节前一周比较，粮食价格略有上涨，其中大米价格上涨4.3%，面粉价格上涨8.3%；食用油价格小幅上涨，其中大豆油价格上涨17.0%；30种蔬菜价格上涨10.9%。肉、禽、蛋、奶价格基本平稳。\n<br>\n　　春节送货量武汉位列第八城\n<br>\n　　长江日报讯（记者孙珺）日前，阿里巴巴集团发布《2019春节经济报告》，展现了融合传统佳节意趣和数字经济势能的新图景。“春节不打烊”，网购年货送到家，已经成为农历己亥春节的新年俗。春节期间，菜鸟平台上有数万名配送小哥在给千家万户送达年货包裹。\n<br>\n　　菜鸟数据显示，今年春节期间，天猫“春节不打烊”送货量最多的十大城市分别是上海、北京、杭州、广州、深圳、成都、苏州、武汉、天津和宁波。\n<br>\n　　菜鸟数据显示，今年春节期间，参与“春节不打烊”配送的配送员收入是平常的三倍左右，在特别繁忙站点收入还要更高一些，春节不回家也能保证不错的收入。\n<br>\n　　“春节团聚，用户家里吃饭用度较多，天猫超市的米面粮油、牛奶，都是必需物资，送货上门，也让大家过一个方便、开心的团圆节日。”快递员陈俊说。\n<br>\n　　“用户过年收到货都很开心。”在他看来，过年期间网购，很多都是生活必需品，满足了很多用户的需求。\n<br>\n　　春节期间，他还收到不少消费者发来的祝福信息，“特别暖心”。\n<br>\n　　假期,餐饮住宿投诉最多\n<br>\n　　长江日报讯（通讯员童颖 实习生关心仪 记者马辉）2月4日至2月10日春节假期，湖北省市场监管局12315平台共接到消费者诉求3516件，日均约502件。\n<br>\n　　2月5日武汉一消费者投诉称，其前期团购了某餐厅的年夜饭，就餐前已经电话确认过，商家承诺交押金后，可以送轰叭馆赠券，但消费者就餐后，商家并未提供赠券，而且也不承认有这个促销活动。类似餐饮住宿服务的投诉，省12315平台春节期间共受理92件，主要是反映餐饮行业假期服务质量差、服务态度恶劣、商家设最低消费、充值不退余额、优惠不履行、进行强制消费、拒不开发票等等。据介绍，餐饮住宿服务投诉量已连续四年位居湖北省春节假期服务类投诉首位。\n<br>\n　　统计还显示，春节期间，商品类投诉量居前五位的依次是服装鞋帽、首饰、通讯产品、家电、食品。服务类投诉量居前五位的依次是餐饮住宿服务、文体服务、电信服务、互联网服务、美容美发等。');
INSERT INTO `fruit_newscenter` VALUES (43, '节后水果销量“骤降” 有蔬菜价格翻了一番', '春节后，郑州农贸市场渐次开市，蔬菜、水果、水产品也出现一些不同于节前的变化。\n<br>\n　　有水果批发商称，节前一天能卖四五挂车（一挂30吨重），节后跌至一挂，销量只及节前的五分之一。此外，圣女果、砂糖橘、龙豆出现热销，长豆角价跌。业内预测，元宵节将是农产品销售变化的一个节点。\n<br>\n　　节前一天能卖出四五挂车水果，现在一天只卖出一挂\n<br>\n　　今年春节，水果批发商周强压根儿就没休息，“做这个行业，一年365天都要有货。”\n<br>\n　　虽然春节期间没停工，但他明显感觉到水果的销量大不如节前，“差距大得很，节前一天能卖四五挂车水果（一挂30吨重），现在一天只卖一挂。”\n<br>\n　　据周强介绍，春节期间的销量只有节前的五分之一，甚至不到，其中一个原因是下雪天气冷，影响销量。初七太阳出来后，客户增多，销量有所上升。\n<br>\n　　周强称，国产水果中，销量最好的当数圣女果、砂糖橘、丑橘、甘蔗、西瓜，原因是“春节期间吃多了大鱼大肉，吃这些水果解腻”。\n<br>\n　　其中，西瓜迎来节后大涨价，麒麟瓜批发价卖到一斤4.3~4.5元，产地收购价一斤3.5~3.6元。\n<br>\n　　圣女果、砂糖橘价格则与春节前保持平衡。圣女果批发价一斤5元，砂糖橘一斤3~4元不等。\n<br>\n　　进口水果中，仍以车厘子最为紧俏。\n<br>\n　　河南万邦国际农产品物流城2月11日公布的价格显示，一公斤车厘子价格为60~68元。节前车厘子也是这个价格，节后车厘子价格并未变化。\n<br>\n　　节前批发价一斤70~80元的龙豆，如今卖到140元\n<br>\n　　相对于年前，蔬菜交易量略有下降，但整体仍处于平稳状态，无太明显变化。万邦蔬菜市场经理康昊称，“目前，因为节假日及风雪天气关系，市场内相对来说仍处于交易旺季，各种蔬菜都比较畅销。”\n<br>\n　　价格波动较为明显的当数龙豆。年前批发价一斤70~80元，如今卖到140元，涨了一倍。康昊解释称，年前很多菜农看到龙豆收益不成比例，没人愿意打理，从而造成年后货源不足。上涨的还有蒜苗、白菜、菠菜、大葱等。这些蔬菜价格上涨的主要原因，一是春节期间，市场无工人加工，二是产地货源紧张，加之雨雪天气造成价格上涨，预计初十以后价格会有所回落。\n<br>\n　　相反，长豆角则出现价格下降。年前一斤8~9元，年后降至4元。西红柿也出现价格回落。土豆因为囤货充足，保持一斤1.8元不变。黄洋葱年前一斤0.5元，年后0.4元，价格波动不明显。\n<br>\n　　天气预报显示周三、周四将下雪，如果成真，那么这个价格还将持续一段时间。至于何时蔬菜价格会有变动，康昊称需要看天气。\n<br>\n　　节后海鲜价格稳中有降，正月十五前后还将迎销售高峰\n<br>\n　　过年期间，不少家庭的餐桌上都有海鲜的身影，节后海鲜价格如何呢？\n<br>\n　　万邦市场新鸿宇海鲜店老板宁波说，大部分的海鲜都降价了。“像澳洲龙虾年前最高的时候一斤400元，现在跌到一斤320元，跌了将近20%。主要是因为年后这些高档海鲜的需求量小了，价位就低了。”\n<br>\n　　经营海鲜批发生意的商户刘先生说，过年期间，他家卖得最好的海鲜是帝王蟹、面包蟹等高档海鲜。“帝王蟹年前需求量很大，我家最好的时候一天能卖三四十只。节后销量明显下降，初五、初六每天卖了五六只，初七只卖了一只。”\n<br>\n　　多位海鲜批发商表示，节后海鲜价格稳中有降，正月十五前后还将迎来销售高峰。过完正月十五，价格和销量都将趋于平稳。');
INSERT INTO `fruit_newscenter` VALUES (44, '做水果沙拉要什么配料', '1、水果沙拉配料一\n<br>\n维C王水果沙拉\n<br>\n材料:甜橙2个,苹果1个,樱桃6个,柠檬片3片,草莓3个,酸奶50毫升。\n<br>\n制作:将以上水果摆在盘内,淋上酸奶即可。\n<br>\n功效分析:以上水果均是水果当中名副其实的维C王,兼具减肥和美容的两大效果,抗氧化、防衰老、美白效果卓越,其中草莓和苹果里面都含有大量果胶,可以清洁肠胃;柠檬可以消脂,常吃一定可以拥有杨柳扶风小蛮腰!由于沙拉中有柠檬,柠檬是一种感光水果,所以白天不能吃。\n<br>\n<br>\n2、水果沙拉配料二\n<br>\n材料:小番茄60克,苹果丁65克,加州葡萄30克,新鲜樱桃20克,草莓15克;\n<br>\n配料:酸奶50毫升;\n<br>\n制作:将以上水果摆在盘内,淋上酸奶即可。\n<br>\n特点:甜酸可口,红白相映。\n<br>\n3、水果沙拉配料三\n<br>\n材料:菠萝50克,苹果50克,猕猴桃50克,香蕉50克,小西红柿8个,樱桃若干;\n<br>\n配料:红葡萄酒1杯,白糖少许;\n<br>\n制作:将菠萝、苹果、猕猴桃、香蕉切成方糖大小的丁,小西红柿1分为4;2、加入白糖和红葡萄酒拌匀腌1个小时,同时放入冰箱;3、1个小时从冰箱取出,将樱桃去蒂放入,即可。\n<br>\n特点:爽口、消暑;红、黄、绿、白色均有。\n<br>\n<br>\n4、水果沙拉配料四\n<br>\n材料:苹果1个,鸭梨1个,桔子8瓣,荔枝2个,菠萝8块,樱桃2个;\n<br>\n配料:白糖1汤匙,白兰地酒1汤匙,碎杏仁、芹菜末、鲜奶油各1茶匙。\n<br>\n制作:将苹果、鸭梨洗净削皮、挖核,切成厚片;桔子一切2半;荔枝切小块;菠萝切厚片。2、将以上原料与芹菜一起放在瓷盘内,加白糖、白兰地酒拌匀,撒上碎杏仁,挤上奶油花,点缀樱桃即可。\n<br>\n贴士:可根据实际情况选择原料,除主料外一般均可用罐头代替,但须控干水分。\n<br>\n特点:香味浓郁,具别国风味。\n<br>\n水果沙拉营养价值\n<br>\n研究表明,同样的分量,如果能搭配不同种类的水果吃,比吃单一的水果摄取的营养素更丰富、吸收效果更好。因此,做水果沙拉不失为一个让人千方百计吃更多水果的好方法。水果沙拉低脂、低热量却富含维生素和果胶,而且吃完后有饱腹感,被人们奉为减肥圣品。\n<br>\n水果的纤维质为果胶物质,有益排便;纤维成分另外还可以促进身体的代谢功能。因为水果可以增加人体的排泄和代谢,因此有益瘦身。\n<br>\n水果主要供给的营养素是维生素,其中以维生素C和维生素A最为重要,水果的维生素C不像烹煮蔬菜时会大量流失,因此是维生素C的天然补充食品。维生素C能延缓老化,是美容不可缺乏的营养素。\n<br>\n<br>\n水果中含有天然色素,能有效预防癌症,而含有β胡萝卜素的部分水果,在吃进人体内会转变成维生素A,可以防止细胞遭受自由基的伤害。\n<br>\n但是,水果沙拉一般含糖量较高,糖尿病人不宜食用。沙拉偏凉,肠胃不适者不宜食用。\n<br>\n水果沙拉酱制作方法\n<br>\n一般我们所购买的瓶装沙拉酱的主要原料是植物油、鸡蛋黄和酿造醋,再加上调味料和香辛料等调制而成。其中植物油在欧洲多是用橄榄油,而在亚洲一般是使用大豆色拉油。油类与鸡蛋黄经充分搅拌后,发生乳化作用,就成了味美可口的沙拉酱。而少量醋主要起抗菌作用,因而沙拉酱中一般不含防腐剂,可算做一种“绿色食品”。\n<br>\n沙拉酱也可以在家里自制,方法是取色拉油500克,鸡蛋黄1个,将蛋黄放入干燥容器中,用打蛋器抽打起泡,再不断加入色拉油继续抽打搅拌,使油和蛋黄完全融和成粘稠状,再加适量的盐和白糖即可。制作的秘诀是油一定要慢慢加入,否则很容易失败。');

-- ----------------------------
-- Table structure for fruit_newscentershow
-- ----------------------------
DROP TABLE IF EXISTS `fruit_newscentershow`;
CREATE TABLE `fruit_newscentershow`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tim` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_newscentershow
-- ----------------------------
INSERT INTO `fruit_newscentershow` VALUES (1, '你喜欢的水果珍珠怎么做，看这一篇就够了，包学包会', '2019-05-08', '/newsCenter/1');
INSERT INTO `fruit_newscentershow` VALUES (2, '这9种奇形怪状的蔬菜水果，你见过几种？', '2019-05-08', '/newsCenter/2');
INSERT INTO `fruit_newscentershow` VALUES (3, '用水果来做菜对身体非常有好处 好吃易学的水果菜', '2019-05-08', '/newsCenter/3');
INSERT INTO `fruit_newscentershow` VALUES (4, '皮肤偏黄的女生，多吃这4种水果，比敷面膜有用！', '2019-05-08', '/newsCenter/4');
INSERT INTO `fruit_newscentershow` VALUES (5, '你爱吃水果吗？知道它们都有哪些营养价值吗？', '2019-05-08', '/newsCenter/5');
INSERT INTO `fruit_newscentershow` VALUES (6, '这种水果在树上没人摘，掉在地上抢着捡，营养高，口感好！', '2019-04-23', '/newsCenter/6');
INSERT INTO `fruit_newscentershow` VALUES (7, '迪拜这种水果，营养价值高，“有钱人”抢着买，“穷人”却看不上', '2019-04-23', '/newsCenter/7');
INSERT INTO `fruit_newscentershow` VALUES (8, '这2种水果春天要让孩子吃，能促进消化，增强免疫力', '2019-04-23', '/newsCenter/8');
INSERT INTO `fruit_newscentershow` VALUES (9, '草莓竟然能减肥！19个水果的真相让你惊掉下巴', '2019-04-23', '/newsCenter/9');
INSERT INTO `fruit_newscentershow` VALUES (10, '泰国举办“榴莲及水果自助狂欢节”', '2019-04-23', '/newsCenter/10');
INSERT INTO `fruit_newscentershow` VALUES (11, '科学认识反季节水果', '2019-04-23', '/newsCenter/11');
INSERT INTO `fruit_newscentershow` VALUES (12, '怀孕吃水果好，但有的水果吃多了对宝妈和孩子都没好处', '2019-04-23', '/newsCenter/12');
INSERT INTO `fruit_newscentershow` VALUES (13, '把水果当晚餐，是不是更容易减肥？', '2019-04-23', '/newsCenter/13');
INSERT INTO `fruit_newscentershow` VALUES (14, '江西省宜春市：高安市3月下旬水果市场呈强势运行分析', '2019-03-28', '/newsCenter/14');
INSERT INTO `fruit_newscentershow` VALUES (15, '春季多吃6种时令水果 既尝鲜还养生', '2019-03-28', '/newsCenter/15');
INSERT INTO `fruit_newscentershow` VALUES (16, '开江县组织召开全县水果产业发展推进会', '2019-03-28', '/newsCenter/16');
INSERT INTO `fruit_newscentershow` VALUES (17, '连续11年位列第一 台湾水果“登陆”厦门口岸最便捷', '2019-03-28', '/newsCenter/17');
INSERT INTO `fruit_newscentershow` VALUES (18, '春季养生 这些水果别忘了吃', '2019-03-28', '/newsCenter/18');
INSERT INTO `fruit_newscentershow` VALUES (19, '探访厦门同益码头：台湾水果主要“登陆”地', '2019-03-28', '/newsCenter/19');
INSERT INTO `fruit_newscentershow` VALUES (20, '卖水果的自己还用去买水果吃吗？', '2019-03-08', '/newsCenter/20');
INSERT INTO `fruit_newscentershow` VALUES (21, '张文堂代表：建议国家免征水果流通环节增值税', '2019-03-08', '/newsCenter/21');
INSERT INTO `fruit_newscentershow` VALUES (22, '这3种水果界的“爱马仕”，车厘子只能靠边站，网友：我只看看', '2019-03-08', '/newsCenter/22');
INSERT INTO `fruit_newscentershow` VALUES (23, '甜过初恋，水果市场上的一匹“黑马”，卖到40元一斤', '2019-03-08', '/newsCenter/23');
INSERT INTO `fruit_newscentershow` VALUES (24, '外表奇丑 却成了网红水果', '2019-03-08', '/newsCenter/24');
INSERT INTO `fruit_newscentershow` VALUES (25, '稳居水果连锁行业第一 百果园发力线上', '2019-03-08', '/newsCenter/25');
INSERT INTO `fruit_newscentershow` VALUES (26, '严朝君到我州调研水果产业发展情况', '2019-03-08', '/newsCenter/26');
INSERT INTO `fruit_newscentershow` VALUES (27, '这种水果原产西藏，营养丰富口感好，产量稀少市场上一个能卖50元', '2019-03-08', '/newsCenter/27');
INSERT INTO `fruit_newscentershow` VALUES (28, '这几种水果很受欢迎，营养健康，怎么吃都好吃！', '2019-02-22', '/newsCenter/28');
INSERT INTO `fruit_newscentershow` VALUES (29, '它5年才开花结果，不好吃但价值极高，素有“水果皇后”之美誉', '2019-02-22', '/newsCenter/29');
INSERT INTO `fruit_newscentershow` VALUES (30, '5种学生党吃不起的水果，黑皮西瓜上榜，吃过一种都算土豪', '2019-02-22', '/newsCenter/30');
INSERT INTO `fruit_newscentershow` VALUES (31, '它是水果也是菜 口感微甜脆爽 一家老小都喜欢', '2019-02-22', '/newsCenter/31');
INSERT INTO `fruit_newscentershow` VALUES (32, '这种水果和虾仁搭配，清爽不油腻，营养丰富又瘦身，你吃过吗？', '2019-02-22', '/newsCenter/32');
INSERT INTO `fruit_newscentershow` VALUES (33, '它是水果也是菜，润肺止咳最厉害，一斤只要3块钱，别错过！', '2019-02-22', '/newsCenter/33');
INSERT INTO `fruit_newscentershow` VALUES (34, '食材安全是食品卫生的前提，虾秘水果龙虾的出现意义重大', '2019-02-12', '/newsCenter/34');
INSERT INTO `fruit_newscentershow` VALUES (35, '漫谈|曾经的高端水果为啥越来越便宜？', '2019-02-12', '/newsCenter/35');
INSERT INTO `fruit_newscentershow` VALUES (36, '它是水果更是药，每天吃俩，血栓全不见，多吃抗疲劳', '2019-02-12', '/newsCenter/36');
INSERT INTO `fruit_newscentershow` VALUES (37, '塔吉克斯坦暂停进口中国水果', '2019-02-12', '/newsCenter/37');
INSERT INTO `fruit_newscentershow` VALUES (38, '健康吃水果大有讲究 避免这些吃水果误区', '2019-02-12', '/newsCenter/38');
INSERT INTO `fruit_newscentershow` VALUES (39, '多吃蔬菜水果 打好“保胃战”', '2019-02-12', '/newsCenter/39');
INSERT INTO `fruit_newscentershow` VALUES (40, '湖北市民春节网购花了近10亿 高档水果俏 智利车厘子受热捧', '2019-02-12', '/newsCenter/40');
INSERT INTO `fruit_newscentershow` VALUES (41, '武汉市民春节线上消费近10亿元 车厘子等高档水果受青睐', '2019-02-12', '/newsCenter/41');
INSERT INTO `fruit_newscentershow` VALUES (42, '节后水果销量“骤降” 有蔬菜价格翻了一番', '2019-02-12', '/newsCenter/42');
INSERT INTO `fruit_newscentershow` VALUES (43, '做水果沙拉要什么配料', '2019-01-05', '/newsCenter/43');

-- ----------------------------
-- Table structure for fruit_pro
-- ----------------------------
DROP TABLE IF EXISTS `fruit_pro`;
CREATE TABLE `fruit_pro`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_pro
-- ----------------------------
INSERT INTO `fruit_pro` VALUES (1, NULL, 'img/index/pro_1.png', NULL, '/products');
INSERT INTO `fruit_pro` VALUES (2, NULL, 'img/index/pro_2.png', NULL, NULL);
INSERT INTO `fruit_pro` VALUES (3, '新西兰佳沛绿奇异果16粒(单个约105g左右)礼盒', 'img/index/pro_3.png', 139.00, '/details/31');
INSERT INTO `fruit_pro` VALUES (4, '泰国特产冷冻金枕头榴莲果肉300g', 'img/index/pro_4.png', 79.00, '/details/23');
INSERT INTO `fruit_pro` VALUES (5, '台湾正宗水仙芒礼盒箱装5-10个 5斤装', 'img/index/pro_5.png', 108.00, '/details/27');
INSERT INTO `fruit_pro` VALUES (6, '美国进口水果车厘子2磅908克', 'img/index/pro_6.png', 49.00, '/details/30');
INSERT INTO `fruit_pro` VALUES (7, '佳沛新西兰鸭嘴金奇异果8粒 进口黄肉猕猴桃', 'img/index/pro_7.png', 59.00, '/details/32');

-- ----------------------------
-- Table structure for fruit_products
-- ----------------------------
DROP TABLE IF EXISTS `fruit_products`;
CREATE TABLE `fruit_products`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cartPic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_products
-- ----------------------------
INSERT INTO `fruit_products` VALUES (1, '阖家欢乐水果礼盒包装', 'img/products/pid1.png', '198', 'img/products/cart1.png', '/details/1', 'pack', '1,2', 1);
INSERT INTO `fruit_products` VALUES (2, 'Limobar新品苹果浓缩糖原浆果', 'img/products/pid2.png', '59', 'img/products/cart1.png', '/details/2', 'jui', '1,3', 1);
INSERT INTO `fruit_products` VALUES (3, '12瓶装山西特产吕梁野山坡沙棘', 'img/products/pid3.png', '72', 'img/products/cart1.png', '/details/3', 'jui', '1,2,3,4', 1);
INSERT INTO `fruit_products` VALUES (4, '整箱包邮中粮精选悦活U格', 'img/products/pid4.png', '59', 'img/products/cart1.png', '/details/4', 'jui', '1', 1);
INSERT INTO `fruit_products` VALUES (5, '广禧草莓果酱2kg含果肉果粒酱', 'img/products/pid5.png', '29', 'img/products/cart1.png', '/details/5', 'jui', '1', 1);
INSERT INTO `fruit_products` VALUES (6, '百香果酱广西新鲜百香果果酱非', 'img/products/pid6.png', '31', 'img/products/cart1.png', '/details/6', 'jui', '1', 1);
INSERT INTO `fruit_products` VALUES (7, '冰糖雪梨汁包邮冰糖炖梨果汁冰', 'img/products/pid7.png', '72', 'img/products/cart1.png', '/details/7', 'jui', '1,2', 1);
INSERT INTO `fruit_products` VALUES (8, '菌动力液体肥', 'img/products/pid8.png', '暂无价格', 'img/products/cart2.png', '/details/8', 'che', NULL, 1);
INSERT INTO `fruit_products` VALUES (9, '果树专用肥', 'img/products/pid9.png', '暂无价格', 'img/products/cart2.png', '/details/9', 'che', NULL, 1);
INSERT INTO `fruit_products` VALUES (10, '生物有机肥', 'img/products/pid10.png', '暂无价格', 'img/products/cart2.png', '/details/10', 'che', NULL, 1);
INSERT INTO `fruit_products` VALUES (11, '蓝莓果汁生产线', 'img/products/pid11.png', '暂无价格', 'img/products/cart2.png', '/details/11', 'machine', NULL, 1);
INSERT INTO `fruit_products` VALUES (12, '果汁饮料组合机', 'img/products/pid12.png', '暂无价格', 'img/products/cart2.png', '/details/12', 'machine', NULL, 1);
INSERT INTO `fruit_products` VALUES (13, '四川不知火丑柑 粑粑柑5斤', 'img/products/pid13.png', '59', 'img/products/cart1.png', '/details/13', 'orange', '2,3,4', 1);
INSERT INTO `fruit_products` VALUES (14, '重庆万州血橙5斤装 约130g/个', 'img/products/pid14.png', '59', 'img/products/cart1.png', '/details/14', 'orange', '2,4', 1);
INSERT INTO `fruit_products` VALUES (15, '海南小青柠2斤 小青柠檬', 'img/products/pid15.png', '49', 'img/products/cart1.png', '/details/15', 'orange', '2', 1);
INSERT INTO `fruit_products` VALUES (16, '河北泊头特产皇冠梨5斤装', 'img/products/pid16.png', '49', 'img/products/cart1.png', '/details/16', 'pears', '2', 1);
INSERT INTO `fruit_products` VALUES (17, '优选新疆库尔勒香梨2kg', 'img/products/pid17.png', '58', 'img/products/cart1.png', '/details/17', 'pears', '2', 1);
INSERT INTO `fruit_products` VALUES (18, '丰水梨12个（约300g/个）', 'img/products/pid18.png', '59', 'img/products/cart1.png', '/details/18', 'pears', '2', 1);
INSERT INTO `fruit_products` VALUES (19, '新疆阿克苏冰糖心苹果', 'img/products/pid19.png', '99', 'img/products/cart1.png', '/details/19', 'apple', '2', 1);
INSERT INTO `fruit_products` VALUES (20, '新疆阿克苏冰糖心苹果2kg果径', 'img/products/pid20.png', '59', 'img/products/cart1.png', '/details/20', 'apple', '3', 1);
INSERT INTO `fruit_products` VALUES (21, '陕西精品红富士苹果2.5kg果径', 'img/products/pid21.png', '59', 'img/products/cart1.png', '/details/21', 'apple', '3', 1);
INSERT INTO `fruit_products` VALUES (22, '泰国金枕头榴莲 1个装(5斤左右)', 'img/products/pid22.png', '198', 'img/products/cart1.png', '/details/22', 'durian', '3', 1);
INSERT INTO `fruit_products` VALUES (23, '泰国特产冷冻金枕头榴莲果肉', 'img/products/pid23.png', '79', 'img/products/cart1.png', '/details/23', 'durian', '3', 1);
INSERT INTO `fruit_products` VALUES (24, '泰国进口金枕头榴莲9-10斤', 'img/products/pid24.png', '298', 'img/products/cart1.png', '/details/24', 'durian', '3', 1);
INSERT INTO `fruit_products` VALUES (25, '泰国南多美芒果1.2KG', 'img/products/pid25.png', '69', 'img/products/cart1.png', '/details/25', 'mongo', '4', 1);
INSERT INTO `fruit_products` VALUES (26, '进口越南青芒5斤', 'img/products/pid26.png', '59', 'img/products/cart1.png', '/details/26', 'mongo', '4', 1);
INSERT INTO `fruit_products` VALUES (27, '台湾正宗水仙芒礼盒箱装5-10个', 'img/products/pid27.png', '108', 'img/products/cart1.png', '/details/27', 'mongo', '4', 1);
INSERT INTO `fruit_products` VALUES (28, '智利莱尼尔樱桃车厘子2kg果径', 'img/products/pid28.png', '488', 'img/products/cart1.png', '/details/28', 'cherry', '4', 1);
INSERT INTO `fruit_products` VALUES (29, '智利金车厘子 智利莱尼尔樱桃', 'img/products/pid29.png', '498', 'img/products/cart1.png', '/details/29', 'cherry', '4', 1);
INSERT INTO `fruit_products` VALUES (30, '美国进口水果车厘子2磅908克', 'img/products/pid30.png', '138', 'img/products/cart1.png', '/details/30', 'cherry', '4', 1);
INSERT INTO `fruit_products` VALUES (31, '新西兰佳沛绿奇异果16粒', 'img/products/pid31.png', '139', 'img/products/cart1.png', '/details/31', 'kiwi', '1', 1);
INSERT INTO `fruit_products` VALUES (32, '佳沛新西兰鸭嘴金奇异果8粒', 'img/products/pid32.png', '96', 'img/products/cart1.png', '/details/32', 'kiwi', '2', 1);
INSERT INTO `fruit_products` VALUES (33, '新西兰佳沛Zespri阳光金奇异果', 'img/products/pid33.png', '128', 'img/products/cart1.png', '/details/33', 'kiwi', '3', 1);

-- ----------------------------
-- Table structure for fruit_productsnav
-- ----------------------------
DROP TABLE IF EXISTS `fruit_productsnav`;
CREATE TABLE `fruit_productsnav`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_productsnav
-- ----------------------------
INSERT INTO `fruit_productsnav` VALUES (1, '国产水果', 'img/productsNav/1.png', '<a>苹果</a><a>香梨</a><a>柑桔</a><a>火龙果</a>');
INSERT INTO `fruit_productsnav` VALUES (2, '进口水果', 'img/productsNav/2.png', '<a>车厘子</a><a>奇异果</a><a>榴莲</a>');
INSERT INTO `fruit_productsnav` VALUES (3, '水果饮品', 'img/productsNav/3.png', '<a>苹果汁</a><a>芒果汁</a><a>香橙汁</a>');
INSERT INTO `fruit_productsnav` VALUES (4, '果肉制品', 'img/productsNav/4.png', '<a>果酱</a><a>椰肉酱</a><a>果肉酱</a>');
INSERT INTO `fruit_productsnav` VALUES (5, '礼盒包装', 'img/productsNav/5.png', '<a>鲜果礼盒</a><a>进口</a>');
INSERT INTO `fruit_productsnav` VALUES (6, '有机肥料', 'img/productsNav/6.png', '<a>果肉肥料</a>');

-- ----------------------------
-- Table structure for fruit_recommand
-- ----------------------------
DROP TABLE IF EXISTS `fruit_recommand`;
CREATE TABLE `fruit_recommand`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `des` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_recommand
-- ----------------------------
INSERT INTO `fruit_recommand` VALUES (1, '赣州市罗花岭农业有限公司', '又一村果业专业合作社，是一家专业种储藏种植 销售猕猴桃  苹果的果农合作组织，果园采用有机种植。确保果品的新鲜品质，合作社拥有冷库200吨两座，可以确保供货期延长，现面向全国招募经销商，可享受一下优惠 1  最低的果园直供价格        2  支持一件代发        3 完美的售后，坏果包赔    欢迎您的加入', '[\"img/recommand/pid1_1.png\",\"img/recommand/pid1_2.png\"]', '/recommand/1');
INSERT INTO `fruit_recommand` VALUES (2, '赣州市罗花岭农业有限公司', '赣州市罗花岭农业有限公司位于江西赣州宁都市。主要经营：脐橙、种植、其他农副产品加工等产品的专业生产加工，拥有完整、科学的质量管理体系。公司良好的信誉、优秀的经营方式，受到各地农户的一致好评！为公司赢得了广泛的好口碑！ 公司自成立之日起，积极遵循“诚信为本，开拓进取，以质取胜，追求更好”的经营宗旨。努力打造桂林市“信誉更好、品种优良、价格合理”的农业科技公司！公司竭诚为每一位客户提供贴心的产品和服务！热诚欢迎全国各地的经销商到我公司实地考察、参观、指导！', '[\"img/recommand/pid2_1.png\"]', '/recommand/2');
INSERT INTO `fruit_recommand` VALUES (3, '四川苍胜农业有限公司', '四川苍胜农业有限公司 经销批发的沙参、猕猴桃、皮蛋、土鸡蛋、雪梨畅销消费者市场，在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。四川苍胜农业有限公司经销的沙参、猕猴桃、皮蛋、土鸡蛋、雪梨品种齐全、价格合理。四川苍胜农业有限公司实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。', '[\"img/recommand/pid3_1.png\"]', '/recommand/3');
INSERT INTO `fruit_recommand` VALUES (4, '浙江思远电子商务有限公司', '浙江思远电子商务有限公司经销批发江山徐香（绿心）猕猴桃，金艳（黄心）猕猴桃，红阳（红心）猕猴桃，衢州蜜桔，衢州椪柑，赣南脐橙，福建平和蜜柚，山东红富士苹果，越南荔枝、芒果等应季新鲜水果，江山特产等产品，经销批发产品畅销消费者市场，在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。公司经销产品品种齐全、价格合理。浙江思远电子商务有限公司实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的好评！ 销售方面：2015年，公司通过自建APP平台、阿里巴巴、天猫、淘宝网及线下实体等渠道，实现全年销售江山猕猴桃达580多万斤、赣南脐橙达160多万斤、山东烟台苹果达150多万斤。随着公司销售平台及销售能力的不断发展和提升，公司已成为全国的猕猴桃集散中心，江山乃至全国的其他省份的猕猴桃都可以通过公司的各个平台进行销售和发送，与此同时，公司将通过猕猴桃集散中心形成的基础上，针对C端打造多品种的水果集散中心。公司计划在2016年销售江山猕猴桃700万斤以上、苹果500万斤以上、赣南脐橙200万斤以上、衢州椪柑150万斤以上、常山胡柚80万斤以上。', '[\"img/recommand/pid4_1.png\"]', '/recommand/4');
INSERT INTO `fruit_recommand` VALUES (5, '凭祥市碧华贸易有限公司', '诚信一口价，货真比千家！ 凭祥市碧华贸易有限公司 公司位于国内最大陆路水果通关口岸的凭祥市。经销批发的芒果、百香果、红毛丹、莲雾、菠萝蜜、榴莲饼等畅销消费者市场，公司与多家零售商和代理商建立了长期稳定的合作关系。我司经销的芒果、百香果、红毛丹、莲雾、菠萝蜜、榴莲饼等品种齐全、价格合理。我司实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。', '[\"img/recommand/pid5_1.png\",\"img/recommand/pid5_2.png\"]', '/recommand/5');
INSERT INTO `fruit_recommand` VALUES (6, '运城市盐湖区红润怡水果种植专业合作社', '运城市盐湖区红润怡水果种植专业合作社是苹果、山楂、梨等产品专业生产加工的公司，拥有完整、科学的质量管理体系。运城市盐湖区红润怡水果种植专业合作社的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临参观、指导和业务洽谈。', '[\"img/recommand/pid6_1.png\",\"img/recommand/pid6_2.png\"]', '/recommand/6');
INSERT INTO `fruit_recommand` VALUES (7, '荔浦县牛牛家农业有限公司', '荔浦县牛牛家农业有限公司是百香果等产品专业生产加工的公司，拥有完整、科学的质量管理体系。荔浦县牛牛家农业有限公司的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临参观、指导和业务洽谈。', '[\"img/recommand/pid7_1.png\",\"img/recommand/pid7_2.png\"]', '/recommand/7');
INSERT INTO `fruit_recommand` VALUES (8, '桂林亿龙贸易有限公司', '桂林果呗商贸有限公司自2016年4月成立至今，主要经营连锁生活超市、线上销售，另涉及母婴等行业的综合性公司。果呗生活超市本着从顾客出发，全心全意为顾客提供服务的理念，以新鲜、优质、便捷、丰富为目标，来满足顾客一站式购物的一种零售业态。同时专注中国孕婴童产业，拥有母婴用品先进的销售模式，“卖场、游泳、游乐场、摄影\"于一体的超级1+N模式的母婴生活馆。2017年进军网络销售平台和网上商城，采用网店和实体零售店相结合的经营模式，给客人更好的购物体验。公司坚持发展中调整，调整中提升，以发展，提升为工作指针，通过快速发展，有效提升。专注开好每一家店，以顾客为中心，注重精细化管理，从环境卫生、商品结构、员工服务、优惠活动等全方位的持续提升，始终追求为顾客提供100%的完美服务。', '[\"img/recommand/pid8_1.png\"]', '/recommand/8');
INSERT INTO `fruit_recommand` VALUES (9, '福建平和李记农产品有限公司', '福建平和李记农产品有限公司是一家集种植、收购、批发销售于一体的线上线下新鲜果蔬销售有限公司。公司秉持消费者利益至上的原则，多年来致力于对产品的源头、质量进行把控，坚决采用原产地货源，赢得了市场和消费者的好评。 目前，公司已入驻由漳州市政府与阿里巴巴合作共建的漳州产业带，市场前景广阔,热诚欢迎各微商团队、电商平台前来实地参观、考察，从产品源头共同参与品控。我公司将免费提供办公场地、协助食宿安排、订做纸箱及其它任何有需要的服务，并承诺72小时内快递专车发货，不积压不爆仓，全国任何地方可达（港澳台除外）。 我公司将以最优质的产品质量，最丰厚的代理待遇,最强大的货源优势来回报合作伙伴,让您创业投资不再难。', '[\"img/recommand/pid9_1.png\"]', '/recommand/9');
INSERT INTO `fruit_recommand` VALUES (10, '昭阳市昭阳区许氏农副产品经营部', NULL, '[\"img/recommand/pid10_1.png\",\"img/recommand/pid10_2.png\",\"img/recommand/pid10_3.png\",\"img/recommand/pid10_4.png\",\"img/recommand/pid10_5.png\",\"img/recommand/pid10_6.png\",\"img/recommand/pid10_7.png\",\"img/recommand/pid10_8.png\",\"img/recommand/pid10_9.png\",\"img/recommand/pid10_10.png\",\"img/recommand/pid10_11.png\",\"img/recommand/pid10_12.png\",\"img/recommand/pid10_13.png\",\"img/recommand/pid10_14.png\",\"img/recommand/pid10_15.png\",\"img/recommand/pid10_16.png\",\"img/recommand/pid10_17.png\",\"img/recommand/pid10_18.png\",\"img/recommand/pid10_19.png\"]', '/recommand/10');

-- ----------------------------
-- Table structure for fruit_user
-- ----------------------------
DROP TABLE IF EXISTS `fruit_user`;
CREATE TABLE `fruit_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fruit_user
-- ----------------------------
INSERT INTO `fruit_user` VALUES (1, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', 1);
INSERT INTO `fruit_user` VALUES (2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', 1);
INSERT INTO `fruit_user` VALUES (3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1);
INSERT INTO `fruit_user` VALUES (4, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0);

SET FOREIGN_KEY_CHECKS = 1;
