/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : wms

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 05/07/2020 22:12:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_commodity
-- ----------------------------
DROP TABLE IF EXISTS `b_commodity`;
CREATE TABLE `b_commodity`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条码',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '别名',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `length` double NULL DEFAULT NULL COMMENT '长',
  `width` double NULL DEFAULT NULL COMMENT '宽',
  `height` double NULL DEFAULT NULL COMMENT '高',
  `worth` double(255, 0) NULL DEFAULT NULL COMMENT '价值',
  `nweight` double NULL DEFAULT NULL COMMENT '净重',
  `gweight` double NULL DEFAULT NULL COMMENT '毛重',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成分',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '所属仓库id',
  `warehousename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属仓库名称',
  `isunique` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否唯一（0否 1是）',
  `validday` int(255) NULL DEFAULT NULL COMMENT '有效天数',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `creatime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_commodity
-- ----------------------------
INSERT INTO `b_commodity` VALUES (61, '20063021334189', '德基', '肯德基', 12, 12, 12, 12, 12, 12, '发发吧', '发顺丰', 1, NULL, '0', 23, '发噶', 1, '管理员', '2020-06-30 21:34:21', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for b_company_info
-- ----------------------------
DROP TABLE IF EXISTS `b_company_info`;
CREATE TABLE `b_company_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyfullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `companytype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `companyshortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `projectfullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `projectshortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `userid` bigint(20) NULL DEFAULT NULL,
  `oderno` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_company_info
-- ----------------------------
INSERT INTO `b_company_info` VALUES (1, 'fafsad', 'bbb', 'ccc', 'ddd', 'eee', NULL, NULL);
INSERT INTO `b_company_info` VALUES (2, '趣味儿童与 i 哦', NULL, '沈德符', '吃过好几哦', '而非', 1, NULL);

-- ----------------------------
-- Table structure for b_element
-- ----------------------------
DROP TABLE IF EXISTS `b_element`;
CREATE TABLE `b_element`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `elementname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '元素名称',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '元素类型',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父Id',
  `candelete` tinyint(2) NULL DEFAULT 1 COMMENT '1:可被删除，0:不可被删除',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `createtime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_element
-- ----------------------------
INSERT INTO `b_element` VALUES (17, '混凝土', '2', NULL, 1, '地方', 1593832215);
INSERT INTO `b_element` VALUES (18, '使用部位1', '3', NULL, 1, '发送', 1593832096);
INSERT INTO `b_element` VALUES (19, '材料1', '1', NULL, 1, '电风扇', 1593832535);
INSERT INTO `b_element` VALUES (20, '的法国红酒可', '', NULL, 1, '的法国红酒', 1593840875);
INSERT INTO `b_element` VALUES (21, '规格1', '17', NULL, 1, '噶地方', 1593844739);
INSERT INTO `b_element` VALUES (22, '规格2', '17', NULL, 1, '23', 1593844832);
INSERT INTO `b_element` VALUES (23, '钢筋', '2', NULL, 1, '发', 1593845066);
INSERT INTO `b_element` VALUES (24, '规格1', '4', 17, 1, '规格1', 1593845115);
INSERT INTO `b_element` VALUES (26, '规格3', '4', 17, 1, '沙发上', 1593845153);
INSERT INTO `b_element` VALUES (27, '规格10', '4', 17, 1, '发送', 1593845164);
INSERT INTO `b_element` VALUES (28, '规格9改?', '4', 17, 1, '规格9?', 1593845447);
INSERT INTO `b_element` VALUES (29, '使用部位2改', '3', NULL, 1, '事实上', 1593845769);
INSERT INTO `b_element` VALUES (30, '材料名称1', '1', NULL, 1, '材料名称备注', 1593845828);
INSERT INTO `b_element` VALUES (31, '水泥', '2', NULL, 1, '是', 1593924882);
INSERT INTO `b_element` VALUES (32, '砂', '2', NULL, 1, '', 1593924896);
INSERT INTO `b_element` VALUES (33, '石材', '2', NULL, 1, '发色', 1593924908);
INSERT INTO `b_element` VALUES (34, '模板', '2', NULL, 1, '模板啊', 1593924922);
INSERT INTO `b_element` VALUES (35, '砖', '2', NULL, 1, '备注啊', 1593924940);
INSERT INTO `b_element` VALUES (36, '块', '5', 35, 1, '嘿嘿', 1593925226);
INSERT INTO `b_element` VALUES (37, '水', '2', NULL, 1, '试试', 1593927280);
INSERT INTO `b_element` VALUES (38, '炸药', '2', NULL, 1, '', 1593927288);

-- ----------------------------
-- Table structure for b_general_order_no
-- ----------------------------
DROP TABLE IF EXISTS `b_general_order_no`;
CREATE TABLE `b_general_order_no`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierid` bigint(20) NULL DEFAULT NULL,
  `ordertype` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currentnumber` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_locator
-- ----------------------------
DROP TABLE IF EXISTS `b_locator`;
CREATE TABLE `b_locator`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位编码',
  `length` double NULL DEFAULT NULL COMMENT '长',
  `width` double NULL DEFAULT NULL COMMENT '宽',
  `height` double NULL DEFAULT NULL COMMENT '高',
  `weight` double NULL DEFAULT NULL COMMENT '货位限重',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库位类型（1：普通货位，2：入库区，3：大货区，4散货区，5：残次品,6：退货区，7：出库区）',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位状态（0：正常，1：失效）',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '所属仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_locator
-- ----------------------------
INSERT INTO `b_locator` VALUES (46, '入库单', '111', 12, 12, 12, 11, '1', '0', 1, 1, '管理员', '2020-07-05 15:17:39', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for b_stock
-- ----------------------------
DROP TABLE IF EXISTS `b_stock`;
CREATE TABLE `b_stock`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `billno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '数据来源单号',
  `locatorid` bigint(11) NULL DEFAULT NULL COMMENT '货位id',
  `locatorname` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `cqty` int(11) NULL DEFAULT NULL COMMENT '总数量',
  `uqty` int(11) NULL DEFAULT NULL COMMENT '可用数量',
  `lqty` int(2) NULL DEFAULT NULL COMMENT '锁定数量',
  `locatorstate` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '库位状态 0 正常  1锁定',
  `warehouseid` bigint(2) NULL DEFAULT NULL COMMENT '仓库id',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_stock_log
-- ----------------------------
DROP TABLE IF EXISTS `b_stock_log`;
CREATE TABLE `b_stock_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源单号',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '仓库id',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位编码',
  `locatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（0：正常，1.失效）',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（1：入库，2：上架，3：锁定，：下架，5：出库）',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建者id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改者id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 748 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_storein_detail
-- ----------------------------
DROP TABLE IF EXISTS `b_storein_detail`;
CREATE TABLE `b_storein_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cailiao_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '材料id',
  `cailiao_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type_in_date` date NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `gui_ge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dan_wei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` decimal(18, 2) NULL DEFAULT NULL,
  `price_tax` decimal(18, 2) NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL,
  `total_price` decimal(10, 2) NULL DEFAULT NULL,
  `productor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `appearance_validation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `materials_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_strorein
-- ----------------------------
DROP TABLE IF EXISTS `b_strorein`;
CREATE TABLE `b_strorein`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storein_id` int(11) NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公司名称',
  `project_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '项目名称',
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单号',
  `type_in_date` date NULL DEFAULT NULL COMMENT '入库日期',
  `supplier_id` bigint(20) NULL DEFAULT NULL COMMENT '供应商id',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `userid` bigint(20) NULL DEFAULT NULL COMMENT '操作者id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_supplier
-- ----------------------------
DROP TABLE IF EXISTS `b_supplier`;
CREATE TABLE `b_supplier`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '所属仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `categoryids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contractsum` decimal(16, 2) NULL DEFAULT NULL COMMENT '合同总价',
  `tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '税点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_supplier
-- ----------------------------
INSERT INTO `b_supplier` VALUES (22, '江西省汇仁集团', '汇仁集团', NULL, '2356543', '备注啊', 1, 1, '管理员', '2020-07-04 22:21:03', 1, '管理员', '2020-07-05 13:36:09', '17,23', '混凝土,钢筋', 232323.23, 23.23);
INSERT INTO `b_supplier` VALUES (24, '武汉周黑鸭', '周黑鸭', NULL, '4453142', '6325363', 1, 1, '管理员', '2020-07-05 08:37:55', 1, '管理员', '2020-07-05 13:15:07', '', '', 12113.60, 324.88);
INSERT INTO `b_supplier` VALUES (25, '杭州阿里巴巴', '阿里', NULL, '323111', '法师法师', 1, 1, '管理员', '2020-07-05 13:20:59', 1, '管理员', '2020-07-05 13:32:48', '33,34', '石材,模板', 66666.66, 12.30);

-- ----------------------------
-- Table structure for b_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `b_warehouse`;
CREATE TABLE `b_warehouse`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '仓库编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库简称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库地址',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_warehouse
-- ----------------------------
INSERT INTO `b_warehouse` VALUES (1, '默认仓库', 'dev', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for database_info
-- ----------------------------
DROP TABLE IF EXISTS `database_info`;
CREATE TABLE `database_info`  (
  `db_id` bigint(20) NOT NULL COMMENT '主键id',
  `db_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库名称（英文名称）',
  `jdbc_driver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jdbc的驱动类型',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库连接的账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库连接密码',
  `jdbc_url` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jdbc的url',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注，摘要',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`db_id`) USING BTREE,
  UNIQUE INDEX `NAME_UNIQUE`(`db_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of database_info
-- ----------------------------
INSERT INTO `database_info` VALUES (1279773826946723841, 'master', 'com.mysql.cj.jdbc.Driver', 'root', 'admin', 'jdbc:mysql://127.0.0.1:3306/wms?autoReconnect=true&useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false&serverTimezone=CTT', '主数据源，项目启动数据源！', '2020-07-05 21:47:12');

-- ----------------------------
-- Table structure for i_otherin
-- ----------------------------
DROP TABLE IF EXISTS `i_otherin`;
CREATE TABLE `i_otherin`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `otherinno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它入库单号',
  `locatorid` bigint(8) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '所属仓库id',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(8) NULL DEFAULT NULL COMMENT '数量',
  `state` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态 0未审核 1已审核',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(64) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for i_purchase
-- ----------------------------
DROP TABLE IF EXISTS `i_purchase`;
CREATE TABLE `i_purchase`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `purchaseno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '采购订单编号',
  `supplierid` bigint(8) NULL DEFAULT NULL COMMENT '供应商id',
  `suppliername` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '供应商名称',
  `commoditynum` int(8) NULL DEFAULT NULL COMMENT '商品总数量',
  `estimatearrivaltime` datetime(0) NULL DEFAULT NULL COMMENT '预计到货时间',
  `warehouseid` bigint(8) NULL DEFAULT NULL COMMENT '仓库id',
  `warehousename` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '仓库名称',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(0未审核，1待审核，2已审核)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(64) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of i_purchase
-- ----------------------------
INSERT INTO `i_purchase` VALUES (118, 'IP20200705150130', 22, '江西省汇仁集团', NULL, '2020-07-05 15:01:38', 1, '默认仓库', '0', '', 1, '管理员', '2020-07-05 15:01:41', NULL, '', NULL, NULL, '', NULL);
INSERT INTO `i_purchase` VALUES (119, 'IP20200705175831', 22, '江西省汇仁集团', NULL, '2020-07-05 17:59:11', 1, '默认仓库', '0', '', 1, '管理员', '2020-07-05 17:59:13', NULL, '', NULL, NULL, '', NULL);

-- ----------------------------
-- Table structure for i_purchase_detail
-- ----------------------------
DROP TABLE IF EXISTS `i_purchase_detail`;
CREATE TABLE `i_purchase_detail`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` bigint(8) NULL DEFAULT NULL COMMENT '采购订单id',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(2) NULL DEFAULT NULL COMMENT '数量',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for i_receive
-- ----------------------------
DROP TABLE IF EXISTS `i_receive`;
CREATE TABLE `i_receive`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `receiveno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接货单号',
  `purchaseid` bigint(11) NULL DEFAULT NULL COMMENT '采购单号id',
  `purchaseno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采购单号',
  `allocationid` bigint(20) NULL DEFAULT NULL COMMENT '调拨id',
  `allocationno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调拨单号',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '所属仓库id',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(64) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for i_receive_detail
-- ----------------------------
DROP TABLE IF EXISTS `i_receive_detail`;
CREATE TABLE `i_receive_detail`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(11) NULL DEFAULT NULL COMMENT '接货表id',
  `commodityid` bigint(11) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for i_warehousing
-- ----------------------------
DROP TABLE IF EXISTS `i_warehousing`;
CREATE TABLE `i_warehousing`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `warehousingno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '入库单号',
  `locatorid` bigint(8) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '所属仓库id',
  `receiveno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '接货单号',
  `state` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态 0入库中 1入库完成待审核 2已审核',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(64) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for i_warehousing_detail
-- ----------------------------
DROP TABLE IF EXISTS `i_warehousing_detail`;
CREATE TABLE `i_warehousing_detail`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` bigint(8) NULL DEFAULT NULL COMMENT '入库id',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(8) NULL DEFAULT NULL COMMENT '数量',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_otherout
-- ----------------------------
DROP TABLE IF EXISTS `o_otherout`;
CREATE TABLE `o_otherout`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `otheroutno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它出库单号',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0：未审核，1：已审核）',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(20) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_outorder
-- ----------------------------
DROP TABLE IF EXISTS `o_outorder`;
CREATE TABLE `o_outorder`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `outorderno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库单号',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '仓库id',
  `category` int(11) NULL DEFAULT NULL COMMENT '种类',
  `qty` int(11) NULL DEFAULT NULL COMMENT '商品总数量',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（0：初始，1：待审核，2：已审核，3.已分配，4：拣货中，5：已出库，9.已取消）',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在省',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在市',
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在区/县',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `depottime` datetime(0) NULL DEFAULT NULL COMMENT '出库时间',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(20) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_outorder_detail
-- ----------------------------
DROP TABLE IF EXISTS `o_outorder_detail`;
CREATE TABLE `o_outorder_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '出库表id',
  `stocklogid` bigint(20) NULL DEFAULT NULL COMMENT '库存日志表id',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 357 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_outorder_tag
-- ----------------------------
DROP TABLE IF EXISTS `o_outorder_tag`;
CREATE TABLE `o_outorder_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '主表id',
  `outorderno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库订单编号',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库订单类型（1：单品单件，2：单品多件，3：多品单件，4：多品多件）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4997 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_pick
-- ----------------------------
DROP TABLE IF EXISTS `o_pick`;
CREATE TABLE `o_pick`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pickno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拣货单号',
  `picktaskid` bigint(20) NULL DEFAULT NULL COMMENT '拣货任务id',
  `picktaskno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拣货任务单号',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（0：初始，1：拣货中，2：已完成，3：异常待处理）',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_pick_detail
-- ----------------------------
DROP TABLE IF EXISTS `o_pick_detail`;
CREATE TABLE `o_pick_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '拣货id',
  `stocklogid` bigint(20) NULL DEFAULT NULL COMMENT '库存日志id',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位编码',
  `locatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_picktask
-- ----------------------------
DROP TABLE IF EXISTS `o_picktask`;
CREATE TABLE `o_picktask`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `picktaskno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拣货任务单号',
  `receiverid` bigint(20) NULL DEFAULT NULL COMMENT '领取者id',
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '领取者',
  `receivetime` datetime(0) NULL DEFAULT NULL COMMENT '领取时间',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_picktask_detail
-- ----------------------------
DROP TABLE IF EXISTS `o_picktask_detail`;
CREATE TABLE `o_picktask_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '主表id',
  `stockid` bigint(20) NULL DEFAULT NULL COMMENT '库存id',
  `stocklogid` bigint(20) NULL DEFAULT NULL COMMENT '库存日志id',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位编码',
  `locatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 645 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_picktask_lock_detail
-- ----------------------------
DROP TABLE IF EXISTS `o_picktask_lock_detail`;
CREATE TABLE `o_picktask_lock_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '主表id',
  `picktaskno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拣货任务单号',
  `outorderid` bigint(20) NULL DEFAULT NULL COMMENT '出库订单id',
  `outorderno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库订单单号',
  `outorderdetailid` bigint(20) NULL DEFAULT NULL COMMENT '出库订单明细id',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位编码',
  `locatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2508 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_picktask_outorder
-- ----------------------------
DROP TABLE IF EXISTS `o_picktask_outorder`;
CREATE TABLE `o_picktask_outorder`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '主表id',
  `outorderid` bigint(20) NULL DEFAULT NULL COMMENT '出库订单表id',
  `outorderno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库订单编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1664 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_review
-- ----------------------------
DROP TABLE IF EXISTS `o_review`;
CREATE TABLE `o_review`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `outorderid` bigint(20) NULL DEFAULT NULL COMMENT '出库订单id',
  `outorderno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出库订单编号',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1：初始，2：复核中，3：完成，4：异常）',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for o_review_detail
-- ----------------------------
DROP TABLE IF EXISTS `o_review_detail`;
CREATE TABLE `o_review_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '出库复核主表id',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_user_info
-- ----------------------------
DROP TABLE IF EXISTS `oauth_user_info`;
CREATE TABLE `oauth_user_info`  (
  `oauth_id` bigint(20) NOT NULL COMMENT '主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户主键id',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `blog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户网址',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在公司',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户备注（各平台中的用户个人介绍）',
  `gender` int(11) NULL DEFAULT NULL COMMENT '性别，1-男，0-女',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户来源',
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户授权的token',
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方平台的用户唯一di',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`oauth_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '第三方用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_allocation
-- ----------------------------
DROP TABLE IF EXISTS `s_allocation`;
CREATE TABLE `s_allocation`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `allocationno` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '调拨单号',
  `bwarehouseid` bigint(8) NULL DEFAULT NULL COMMENT '原仓库id',
  `bwarehousename` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '原仓库名称',
  `awarehouseid` bigint(8) NULL DEFAULT NULL COMMENT '目标仓库id',
  `awarehousename` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '目标仓库名称',
  `state` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态 0初始 1待审核 2已审核',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(64) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_allocation_detail
-- ----------------------------
DROP TABLE IF EXISTS `s_allocation_detail`;
CREATE TABLE `s_allocation_detail`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` bigint(8) NULL DEFAULT NULL COMMENT '调拨id',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '原货位id',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(8) NULL DEFAULT NULL COMMENT '数量',
  `lockstockid` bigint(255) NULL DEFAULT NULL COMMENT '锁定库存的id',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_inventory
-- ----------------------------
DROP TABLE IF EXISTS `s_inventory`;
CREATE TABLE `s_inventory`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `inventoryno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盘点单号',
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态 0:初始,1:盘点中,2:盘点结束',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_inventory_locator
-- ----------------------------
DROP TABLE IF EXISTS `s_inventory_locator`;
CREATE TABLE `s_inventory_locator`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `pid` bigint(8) NULL DEFAULT NULL COMMENT '上级ID',
  `inventoryno` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盘点单号',
  `locatorid` bigint(8) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_inventory_locator_detail
-- ----------------------------
DROP TABLE IF EXISTS `s_inventory_locator_detail`;
CREATE TABLE `s_inventory_locator_detail`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `pid` bigint(8) NULL DEFAULT NULL COMMENT '上级ID',
  `locatorid` bigint(8) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(2) NULL DEFAULT NULL COMMENT '运单数量',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_inventory_locator_init
-- ----------------------------
DROP TABLE IF EXISTS `s_inventory_locator_init`;
CREATE TABLE `s_inventory_locator_init`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT,
  `pid` bigint(8) NULL DEFAULT NULL COMMENT '上级ID',
  `locatorid` bigint(8) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `qty` int(2) NULL DEFAULT NULL COMMENT '运单数量',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_move
-- ----------------------------
DROP TABLE IF EXISTS `s_move`;
CREATE TABLE `s_move`  (
  `id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `moveno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移库单号',
  `commodityid` bigint(8) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品编码',
  `commodityname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品名称',
  `locatorid` bigint(8) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位编码',
  `locatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '货位名称',
  `oldlocatorid` bigint(8) NULL DEFAULT NULL COMMENT '源货位id',
  `oldlocatorcode` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '源货位编码',
  `oldlocatorname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '源货位名称',
  `qty` int(8) NULL DEFAULT NULL COMMENT '数量',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1：待审核，2：已审核）',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(64) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(64) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(20) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_puton
-- ----------------------------
DROP TABLE IF EXISTS `s_puton`;
CREATE TABLE `s_puton`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `putonno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上架单号',
  `commodityid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `commoditybar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `commodityname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `locatorid` bigint(20) NULL DEFAULT NULL COMMENT '货位id',
  `locatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位编码',
  `locatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货位名称',
  `oldlocatorid` bigint(20) NULL DEFAULT NULL COMMENT '原货位id',
  `oldlocatorcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原货位编码',
  `oldlocatorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原货位名称',
  `qty` int(11) NULL DEFAULT NULL COMMENT '数量',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1：待审核，2：已审核）',
  `warehouseid` bigint(20) NULL DEFAULT NULL COMMENT '当前仓库id',
  `createid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateid` bigint(20) NULL DEFAULT NULL COMMENT '修改人id',
  `updator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `auditid` bigint(20) NULL DEFAULT NULL COMMENT '审核人id',
  `auditor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `audittime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_belong
-- ----------------------------
DROP TABLE IF EXISTS `sys_belong`;
CREATE TABLE `sys_belong`  (
  `belong_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_id` bigint(20) NULL DEFAULT NULL,
  `warehouse_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`belong_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_belong
-- ----------------------------
INSERT INTO `sys_belong` VALUES (5, 24, 1);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性编码标识',
  `dict_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否是字典中的值',
  `dict_type_id` bigint(20) NULL DEFAULT NULL COMMENT '字典类型的编码',
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值，如果是字典中的类型，则为dict的code',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1143324237579165697, '验证码开关', 'TDT_KAPTCHA_OPEN', 'Y', 1106120265689055233, 'DISABLE', '是否开启验证码', '2019-06-24 12:46:43', 1, '2019-06-25 09:04:42', 1);
INSERT INTO `sys_config` VALUES (1143386834613694465, '阿里云短信的keyId', 'TDT_SMS_ACCESSKEY_ID', 'N', NULL, 'xxxkey', '阿里云短信的密钥key', '2019-06-25 13:13:59', 1, '2019-06-25 13:19:21', 1);
INSERT INTO `sys_config` VALUES (1143386953933254657, '阿里云短信的secret', 'TDT_SMS_ACCESSKEY_SECRET', 'N', NULL, 'xxxsecret', '阿里云短信的secret', '2019-06-25 13:14:28', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1143387023449649154, '阿里云短信的签名', 'TDT_SMS_SIGN_NAME', 'N', NULL, 'xxxsign', '阿里云短信的签名', '2019-06-25 13:14:44', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1143387131109044225, '阿里云短信登录的模板号', 'TDT_SMS_LOGIN_TEMPLATE_CODE', 'N', NULL, 'SMS_XXXXXX', '阿里云短信登录的模板号', '2019-06-25 13:15:10', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1143387225019510785, '验证码短信失效时间', 'TDT_SMS_INVALIDATE_MINUTES', 'N', NULL, '2', '验证码短信失效时间', '2019-06-25 13:15:32', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1143468689664876546, '管理系统名称', 'TDT_SYSTEM_NAME', 'N', NULL, '项目成本管理系统', '管理系统名称', '2019-06-25 18:39:15', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1143468867767607297, '默认系统密码', 'TDT_DEFAULT_PASSWORD', 'N', NULL, '111111', '默认系统密码', '2019-06-25 18:39:57', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1143469008025133058, 'OAuth2登录用户的账号标识', 'TDT_OAUTH2_PREFIX', 'N', NULL, 'oauth2', 'OAuth2登录用户的账号标识', '2019-06-25 18:40:31', 1, NULL, NULL);
INSERT INTO `sys_config` VALUES (1145207130463191041, '顶部导航条是否开启', 'TDT_DEFAULT_ADVERT', 'Y', 1106120265689055233, 'DISABLE', '顶部Guns广告是否开启', '2019-06-30 13:47:11', 1, '2020-03-05 13:49:44', 1);
INSERT INTO `sys_config` VALUES (1145915627211370498, 'TDT发布的编号', 'TDT_SYSTEM_RELEASE_VERSION', 'N', NULL, '20190729', '用于防止浏览器缓存相关的js和css', '2019-07-02 12:42:30', 1, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL COMMENT '主键id',
  `pid` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `pids` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '父级ids',
  `simple_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `version` int(11) NULL DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (24, 0, '[0],', '总公司', '总公司', '', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (25, 24, '[0],[24],', '开发部', '开发部', '', NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (26, 24, '[0],[24],', '运营部', '运营部', '', NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dept` VALUES (27, 24, '[0],[24],', '战略部', '战略部', '', NULL, 4, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `dict_id` bigint(20) NOT NULL COMMENT '字典id',
  `dict_type_id` bigint(20) NOT NULL COMMENT '所属字典类型的id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `parent_id` bigint(20) NOT NULL COMMENT '上级代码id',
  `parent_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有上级id',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ENABLE' COMMENT '状态（字典）',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典的描述',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1106120532442595330, 1106120208097067009, 'M', '男', 0, '[0]', 'ENABLE', NULL, '', '2019-03-14 17:11:00', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1106120574163337218, 1106120208097067009, 'F', '女', 0, '[0]', 'ENABLE', NULL, '', '2019-03-14 17:11:10', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1106120645697191938, 1106120265689055233, 'ENABLE', '启用', 0, '[0]', 'ENABLE', NULL, '', '2019-03-14 17:11:27', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1106120699468169217, 1106120265689055233, 'DISABLE', '禁用', 0, '[0]', 'ENABLE', NULL, '', '2019-03-14 17:11:40', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1106120784318939137, 1106120322450571266, 'ENABLE', '启用', 0, '[0]', 'ENABLE', NULL, '', '2019-03-14 17:12:00', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1106120825993543682, 1106120322450571266, 'FREEZE', '冻结', 0, '[0]', 'ENABLE', 1, '', '2019-03-14 17:12:10', '2019-03-16 10:56:36', 1, 1);
INSERT INTO `sys_dict` VALUES (1106120875872206849, 1106120322450571266, 'DELETED', '已删除', 0, '[0]', 'ENABLE', -1221, '', '2019-03-14 17:12:22', '2019-03-16 10:56:53', 1, 1);
INSERT INTO `sys_dict` VALUES (1106120935070613505, 1106120388036902914, 'Y', '删除', 0, '[0]', 'ENABLE', 23333, '', '2019-03-14 17:12:36', '2019-03-16 10:58:53', 1, 1);
INSERT INTO `sys_dict` VALUES (1106120968910258177, 1106120388036902914, 'N', '未删除', 0, '[0]', 'ENABLE', 1212211221, '', '2019-03-14 17:12:44', '2019-03-16 10:59:03', 1, 1);
INSERT INTO `sys_dict` VALUES (1149218674746355713, 1149217131989069826, 'BASE_SYSTEM', '系统管理', 0, '[0]', 'ENABLE', 1, '系统管理平台', '2019-07-11 15:27:38', '2019-07-11 20:27:14', 1, 1);
INSERT INTO `sys_dict` VALUES (1163276158488666113, 1149217131989069826, 'base', '仓库管理', 0, '[0]', 'ENABLE', NULL, '', '2019-08-19 10:27:03', '2019-08-19 10:32:11', 1, 1);
INSERT INTO `sys_dict` VALUES (1163718559563382786, 1163718472451883009, '1', '普通货位', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:45:00', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1163718688215269378, 1163718472451883009, '2', '入库区', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:45:31', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1163718839554146306, 1163718472451883009, '3', '大货区', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:46:07', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1163718884777132034, 1163718472451883009, '4', '散货区', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:46:18', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1163718995649363970, 1163718472451883009, '5', '残次品区', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:46:44', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1163719118857043969, 1163718472451883009, '6', '退货区', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:47:13', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1163719178349051905, 1163718472451883009, '7', '出库区', 0, '[0]', 'ENABLE', NULL, '', '2019-08-20 15:47:28', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1164107359871496194, 1164107110331379714, '0', '未审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-21 17:29:57', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1164107521247342594, 1164107110331379714, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-21 17:30:36', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1164107635877670914, 1164107110331379714, '1', '待审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-21 17:31:03', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1164108270228402178, 1164108012798799874, '0', '正常', 0, '[0]', 'ENABLE', NULL, '', '2019-08-21 17:33:34', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1164108308937633794, 1164108012798799874, '1', '失效', 0, '[0]', 'ENABLE', NULL, '', '2019-08-21 17:33:44', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1165827153666764801, 1165825693801508865, '0', '初始', 0, '[0]', 'ENABLE', NULL, '', '2019-08-26 11:23:48', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1165827210126290945, 1165825693801508865, '1', '接货中', 0, '[0]', 'ENABLE', NULL, '', '2019-08-26 11:24:02', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1165827267802165250, 1165825693801508865, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-26 11:24:15', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1166170526499942402, 1166170410384830466, '0', '入库中', 0, '[0]', 'ENABLE', NULL, '', '2019-08-27 10:08:15', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1166170565200785409, 1166170410384830466, '1', '待审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-27 10:08:24', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1166170620997611521, 1166170410384830466, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-27 10:08:37', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1166255164161462273, 1166255065347854338, '0', '未审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-27 15:44:34', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1166255228288176129, 1166255065347854338, '1', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-08-27 15:44:49', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1166631008067330050, 1164108012798799874, '2', '锁定', 0, '[0]', 'ENABLE', NULL, '', '2019-08-28 16:38:02', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1168384019554836481, 1168383826939813889, '0', '初始', 0, '[0]', 'ENABLE', NULL, '', '2019-09-02 12:43:52', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1168384068275871746, 1168383826939813889, '1', '盘点中', 0, '[0]', 'ENABLE', NULL, '', '2019-09-02 12:44:04', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1168384111191990273, 1168383826939813889, '2', '盘点结束', 0, '[0]', 'ENABLE', NULL, '', '2019-09-02 12:44:14', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1169431004420489218, 1169430924850348033, '0', '初始', 0, '[0]', 'ENABLE', NULL, '', '2019-09-05 10:04:13', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1169431051707072514, 1169430924850348033, '1', '待审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-05 10:04:24', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1169431091863339009, 1169430924850348033, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-05 10:04:34', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1171661570243006466, 1171661374348038145, '0', '初始', 0, '[0]', 'ENABLE', NULL, '', '2019-09-11 13:47:41', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1171661615054950401, 1171661374348038145, '1', '待审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-11 13:47:52', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1171661663830511618, 1171661374348038145, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-11 13:48:04', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1173855288823824385, 1173842088694882306, '0', '初始', 0, '[0]', 'ENABLE', NULL, '', '2019-09-17 15:04:45', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1173855361427226626, 1173842088694882306, '1', '拣货中', 0, '[0]', 'ENABLE', NULL, '', '2019-09-17 15:05:02', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1173855410206982145, 1173842088694882306, '2', '已完成', 0, '[0]', 'ENABLE', NULL, '', '2019-09-17 15:05:14', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1173855488690798594, 1173842088694882306, '3', '异常待处理', 0, '[0]', 'ENABLE', NULL, '', '2019-09-17 15:05:32', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1174512853211594753, 1174512738371551234, '1', '初始', 0, '[0]', 'ENABLE', NULL, '', '2019-09-19 10:37:40', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1174512916767883266, 1174512738371551234, '2', '复核中', 0, '[0]', 'ENABLE', NULL, '', '2019-09-19 10:37:55', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1174512982316466178, 1174512738371551234, '3', '完成', 0, '[0]', 'ENABLE', NULL, '', '2019-09-19 10:38:11', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1174513022158159874, 1174512738371551234, '4', '异常', 0, '[0]', 'ENABLE', NULL, '', '2019-09-19 10:38:21', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1174604990657798146, 1174604929991385090, '0', '未审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-19 16:43:48', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1174605039638880257, 1174604929991385090, '1', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-19 16:43:59', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1176017923484868610, 1176017799132143618, '1', '待审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-23 14:18:17', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1176017959295836161, 1176017799132143618, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-23 14:18:26', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1176018165827559426, 1176018117194604546, '1', '待审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-23 14:19:15', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1176018215576199170, 1176018117194604546, '2', '已审核', 0, '[0]', 'ENABLE', NULL, '', '2019-09-23 14:19:27', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1177137174451003394, 1171661374348038145, '3', '已分配', 0, '[0]', 'ENABLE', NULL, '', '2019-09-26 16:25:47', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1177137213588054018, 1171661374348038145, '4', '拣货中', 0, '[0]', 'ENABLE', NULL, '', '2019-09-26 16:25:57', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1177137255220715522, 1171661374348038145, '5', '已出库', 0, '[0]', 'ENABLE', NULL, '', '2019-09-26 16:26:06', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1178126002129174530, 1171661374348038145, '9', '已取消', 0, '[0]', 'ENABLE', NULL, '', '2019-09-29 09:55:02', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1182543373480710145, 1182543056680734722, '1', '单品单件', 0, '[0]', 'ENABLE', NULL, '', '2019-10-11 14:28:05', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1182543418322014210, 1182543056680734722, '2', '单品多件', 0, '[0]', 'ENABLE', NULL, '', '2019-10-11 14:28:16', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1182543470666928129, 1182543056680734722, '3', '多品单件', 0, '[0]', 'ENABLE', NULL, '', '2019-10-11 14:28:29', NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES (1182543518255501314, 1182543056680734722, '4', '多品多件', 0, '[0]', 'ENABLE', NULL, '', '2019-10-11 14:28:40', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_type_id` bigint(20) NOT NULL COMMENT '字典类型id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型名称',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典描述',
  `system_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否是系统字典，Y-是，N-否',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ENABLE' COMMENT '状态(字典)',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`dict_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1106120208097067009, 'SEX', '性别', '', 'Y', 'ENABLE', 4, '2019-03-14 17:09:43', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1106120265689055233, 'STATUS', '状态', '', 'Y', 'ENABLE', 3, '2019-03-14 17:09:57', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1106120322450571266, 'ACCOUNT_STATUS', '账号状态', '', 'Y', 'ENABLE', 21112, '2019-03-14 17:10:10', 1, '2019-03-16 10:56:15', 1);
INSERT INTO `sys_dict_type` VALUES (1106120388036902914, 'DEL_FLAG', '是否删除', '', 'Y', 'ENABLE', 2, '2019-03-14 17:10:26', 1, '2019-03-27 16:26:31', 1);
INSERT INTO `sys_dict_type` VALUES (1149217131989069826, 'SYSTEM_TYPE', '系统分类', '系统所有分类的维护', 'Y', 'ENABLE', 70, '2019-07-11 15:21:30', 1, '2019-07-11 15:28:21', 1);
INSERT INTO `sys_dict_type` VALUES (1163718472451883009, 'locator_type', '货位类型', '1：普通货位，2：入库区，3：大货区，4散货区，5：残次品,6：退货区，7：出库区', 'Y', 'ENABLE', NULL, '2019-08-20 15:44:39', 1, '2019-08-26 11:20:24', 1);
INSERT INTO `sys_dict_type` VALUES (1164107110331379714, 'purchase_state', '采购订单状态', '0：未审核，1：待审核，2：已审核', 'Y', 'ENABLE', NULL, '2019-08-21 17:28:58', 1, '2019-08-26 11:22:40', 1);
INSERT INTO `sys_dict_type` VALUES (1164108012798799874, 'locator_state', '货位状态', '0：正常，1：失效，2：锁定', 'Y', 'ENABLE', NULL, '2019-08-21 17:32:33', 1, '2019-08-28 16:37:21', 1);
INSERT INTO `sys_dict_type` VALUES (1165825693801508865, 'receive_state', '接货订单状态', '0：初始，1：接货中，2：已审核', 'Y', 'ENABLE', NULL, '2019-08-26 11:18:00', 1, '2019-08-26 11:20:49', 1);
INSERT INTO `sys_dict_type` VALUES (1166170410384830466, 'warehousing_state', '入库管理审核状态', '0：入库中，1：待审核，2：已审核', 'Y', 'ENABLE', NULL, '2019-08-27 10:07:47', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1166255065347854338, 'otherin_state', '其他入库审核状态', '0：未审核，1：已审核', 'Y', 'ENABLE', NULL, '2019-08-27 15:44:10', 1, '2019-08-28 16:39:44', 1);
INSERT INTO `sys_dict_type` VALUES (1168383826939813889, 'invenyory_state', '盘点状态', '0：初始，1：盘点中，2：盘点结束', 'Y', 'ENABLE', NULL, '2019-09-02 12:43:07', 1, '2019-09-02 12:43:33', 1);
INSERT INTO `sys_dict_type` VALUES (1169430924850348033, 'allocation_state', '调拨状态', '0：初始，1：待审核，2：已审核', 'Y', 'ENABLE', NULL, '2019-09-05 10:03:54', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1171661374348038145, 'outorder_state', '出库订单状态', '0:初始，1：待审核，2：已审核，3：已分配，4：拣货中 ，5：已出库，9；已取消 ', 'Y', 'ENABLE', NULL, '2019-09-11 13:46:55', 1, '2019-09-29 09:54:46', 1);
INSERT INTO `sys_dict_type` VALUES (1173841714944647170, 'stocklog_state', '库存日志类型', '1:入库，2：上架，3：锁定，4：下架，5：出库', 'Y', 'ENABLE', NULL, '2019-09-17 14:10:48', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1173842088694882306, 'pick_state', '拣货状态', '0：初始，1：拣货中，2：已完成，3：异常待处理', 'Y', 'ENABLE', NULL, '2019-09-17 14:12:18', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1174512738371551234, 'review_state', '出库复核状态', '1：初始，2：复核中，3：完成，4：异常', 'Y', 'ENABLE', NULL, '2019-09-19 10:37:13', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1174604929991385090, 'otherout_state', '其他出库审核状态', '0：未审核，1：已审核', 'Y', 'ENABLE', NULL, '2019-09-19 16:43:33', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1176017799132143618, 'puton_state', '上架状态', '1:待审核，2：已审核', 'Y', 'ENABLE', NULL, '2019-09-23 14:17:47', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1176018117194604546, 'move_state', '移库状态', '1:待审核，2：已审核', 'Y', 'ENABLE', NULL, '2019-09-23 14:19:03', 1, NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1182543056680734722, 'outorder_tag_type', '出库订单标签类型', '1：单品单件，2：单品多件，3：多品单件，4：多品多件', 'Y', 'ENABLE', NULL, '2019-10-11 14:26:50', 1, '2019-10-11 14:27:47', 1);

-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_info`;
CREATE TABLE `sys_file_info`  (
  `file_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `file_bucket` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件仓库（oss仓库）',
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `file_suffix` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `file_size_kb` bigint(20) NULL DEFAULT NULL COMMENT '文件大小kb',
  `final_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件唯一标识id',
  `file_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储路径',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file_info
-- ----------------------------
INSERT INTO `sys_file_info` VALUES ('1278514839072849921', NULL, '2020-2-28 下午6.49 拍摄的照片.jpg', 'jpg', 186, '1278514839072849921.jpg', '/var/folders/_g/k7n7yfhx171dxlww9zvsjqdh0000gn/T/1278514839072849921.jpg', '2020-07-02 10:24:26', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `login_log_id` bigint(20) NOT NULL COMMENT '主键',
  `log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否执行成功',
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '具体消息',
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`login_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1235448563579011073, '登录日志', 1, '2020-03-05 14:14:26', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1235450646709452801, '退出日志', 1, '2020-03-05 14:22:42', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1235450666871472130, '登录日志', 1, '2020-03-05 14:22:47', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1235450700807585793, '登录日志', 1, '2020-03-05 14:22:55', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1235450866134466562, '登录日志', 1, '2020-03-05 14:23:35', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1235451052395118593, '登录日志', 1, '2020-03-05 14:24:19', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1235451367492206594, '登录日志', 1, '2020-03-05 14:25:34', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1277075418536525826, '登录日志', 1, '2020-06-28 11:04:41', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277075824629039106, '登录日志', 1, '2020-06-28 11:06:18', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277101029720113154, '退出日志', 1, '2020-06-28 12:46:28', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277265509053632513, '登录日志', 1, '2020-06-28 23:40:02', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277597252235309057, '退出日志', 1, '2020-06-29 21:38:16', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277597498847801345, '登录日志', 1, '2020-06-29 21:39:15', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277598560476475393, '退出日志', 1, '2020-06-29 21:43:28', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277598799933485058, '登录失败日志', NULL, '2020-06-29 21:44:25', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277598853121454082, '登录日志', 1, '2020-06-29 21:44:38', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277598919353708545, '退出日志', 1, '2020-06-29 21:44:54', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277598934126047233, '登录失败日志', NULL, '2020-06-29 21:44:57', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277624232209035265, '登录日志', 1, '2020-06-29 23:25:29', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1277953633735946241, '登录日志', 1, '2020-06-30 21:14:24', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278512026334838786, '退出日志', 1, '2020-07-02 10:13:15', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1278512040880685057, '登录日志', 1, '2020-07-02 10:13:19', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1278512245285896194, '登录日志', 1, '2020-07-02 10:14:08', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278519877237268481, '登录日志', 1, '2020-07-02 10:44:27', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278526650711064577, '登录日志', 1, '2020-07-02 11:11:22', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278527818602430466, '退出日志', 1, '2020-07-02 11:16:01', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278527825980211201, '登录日志', 1, '2020-07-02 11:16:02', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278528465305358338, '登录日志', 1, '2020-07-02 11:18:35', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278529273694580738, '登录日志', 1, '2020-07-02 11:21:47', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278553930644647938, '登录日志', 1, '2020-07-02 12:59:46', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278554678476468226, '退出日志', 1, '2020-07-02 13:02:44', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278554721065431041, '登录日志', 1278554183322103810, '2020-07-02 13:02:55', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278555452346527745, '退出日志', 1278554183322103810, '2020-07-02 13:05:49', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278555472697290753, '登录日志', 1278554183322103810, '2020-07-02 13:05:54', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278555502388768770, '登录日志', 1278554183322103810, '2020-07-02 13:06:01', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278555524530499585, '登录日志', 1278554183322103810, '2020-07-02 13:06:06', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278555634693894145, '登录日志', 1278554183322103810, '2020-07-02 13:06:32', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556011065569281, '登录日志', 1278554183322103810, '2020-07-02 13:08:02', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556061325914114, '登录日志', 1278554183322103810, '2020-07-02 13:08:14', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556274593689602, '登录日志', 1278554183322103810, '2020-07-02 13:09:05', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556346295316481, '登录日志', 1, '2020-07-02 13:09:22', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556373965139969, '退出日志', 1, '2020-07-02 13:09:29', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556394999574530, '登录失败日志', NULL, '2020-07-02 13:09:34', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278556641859530753, '登录日志', 1, '2020-07-02 13:10:33', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278563350669766657, '登录日志', 1278554183322103810, '2020-07-02 13:37:12', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278563480718356481, '登录日志', 1, '2020-07-02 13:37:43', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278588443886170113, '登录日志', 1, '2020-07-02 15:16:55', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278688596848553985, '退出日志', 1, '2020-07-02 21:54:53', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1278688621691416578, '登录日志', 1, '2020-07-02 21:54:59', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1278688838549516290, '登录日志', 1, '2020-07-02 21:55:51', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1278703763560886273, '退出日志', 1, '2020-07-02 22:55:09', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278705113338245122, '登录日志', 1, '2020-07-02 23:00:31', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278711329389121537, '登录日志', 1, '2020-07-02 23:25:13', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278734534384373762, '退出日志', 1, '2020-07-03 00:57:25', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1278734553317462017, '登录日志', 1, '2020-07-03 00:57:30', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279093207761797122, '退出日志', 1, '2020-07-04 00:42:40', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279093233829396482, '登录日志', 1, '2020-07-04 00:42:46', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279094002544656385, '退出日志', 1, '2020-07-04 00:45:49', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279094025412001793, '登录日志', 1, '2020-07-04 00:45:55', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279095526909919233, '登录日志', 1, '2020-07-04 00:51:53', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279096885629431809, '登录日志', 1, '2020-07-04 00:57:17', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279212211029409793, '退出日志', 1, '2020-07-04 08:35:32', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279212234194550786, '登录日志', 1, '2020-07-04 08:35:38', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279224038392102914, '登录日志', 1, '2020-07-04 09:22:32', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279227380208103426, '登录日志', 1, '2020-07-04 09:35:49', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279245207178600449, '登录日志', 1, '2020-07-04 10:46:39', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279249327625084929, '登录日志', 1, '2020-07-04 11:03:02', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279270920292167682, '登录日志', 1, '2020-07-04 12:28:50', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279307639880208386, '登录日志', 1, '2020-07-04 14:54:44', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279419341170909186, '退出日志', 1, '2020-07-04 22:18:36', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279419358753431554, '登录日志', 1, '2020-07-04 22:18:40', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279419497144492034, '登录日志', 1, '2020-07-04 22:19:13', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279572307102171137, '登录日志', 1, '2020-07-05 08:26:26', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279574905158950913, '登录日志', 1, '2020-07-05 08:36:45', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279658776164577281, '退出日志', 1, '2020-07-05 14:10:02', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279658809014366209, '登录失败日志', NULL, '2020-07-05 14:10:10', '成功', '账号:admin,账号密码错误', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279658838265442306, '登录日志', 1, '2020-07-05 14:10:17', '成功', NULL, '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (1279703891503484929, '退出日志', 1, '2020-07-05 17:09:18', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279703917730467841, '登录日志', 1, '2020-07-05 17:09:24', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279704338813423618, '退出日志', 1, '2020-07-05 17:11:05', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279704350314205185, '登录日志', 1, '2020-07-05 17:11:08', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279709329167077377, '退出日志', 1, '2020-07-05 17:30:55', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279709439091396610, '登录日志', 1, '2020-07-05 17:31:21', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279712807578763266, '登录日志', 1, '2020-07-05 17:44:44', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279716950066331649, '退出日志', 1, '2020-07-05 18:01:12', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279717064931540993, '登录日志', 1, '2020-07-05 18:01:39', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279719893540798465, '退出日志', 1, '2020-07-05 18:12:53', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279719902613078017, '登录日志', 1, '2020-07-05 18:12:55', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279720654077165570, '退出日志', 1, '2020-07-05 18:15:55', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279720658619596801, '登录日志', 1, '2020-07-05 18:15:56', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279724256057360386, '退出日志', 1, '2020-07-05 18:30:13', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279724265163194369, '登录日志', 1, '2020-07-05 18:30:16', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279728929657061378, '退出日志', 1, '2020-07-05 18:48:48', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279728934216269825, '登录日志', 1, '2020-07-05 18:48:49', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279738208418004994, '登录日志', 1, '2020-07-05 19:25:40', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279760730492534786, '退出日志', 1, '2020-07-05 20:55:10', '成功', NULL, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES (1279761063042211841, '登录日志', 1, '2020-07-05 20:56:29', '成功', NULL, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL COMMENT '主键id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url地址',
  `sort` int(65) NULL DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) NULL DEFAULT NULL COMMENT '菜单层级',
  `menu_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是菜单(字典)',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'ENABLE' COMMENT '菜单状态(字典)',
  `new_page_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否打开新页面的标识(字典)',
  `open_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否打开(字典)',
  `system_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统分类(字典)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (105, 'system', '0', '[0],', '系统管理', 'layui-icon layui-icon-set', '#', 20, 1, 'Y', NULL, 'ENABLE', NULL, '1', 'BASE_SYSTEM', NULL, '2019-03-29 16:32:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (106, 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', 10, 2, 'Y', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (107, 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', NULL, '/mgr/add', 1, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (108, 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', NULL, '/mgr/edit', 2, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (109, 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', NULL, '/mgr/delete', 3, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (110, 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', NULL, '/mgr/reset', 4, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (111, 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', NULL, '/mgr/freeze', 5, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (112, 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', NULL, '/mgr/unfreeze', 6, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (113, 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', NULL, '/mgr/setRole', 7, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (114, 'role', 'system', '[0],[system],', '角色管理', '', '/role', 20, 2, 'Y', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (115, 'role_add', 'role', '[0],[system],[role],', '添加角色', NULL, '/role/add', 1, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (116, 'role_edit', 'role', '[0],[system],[role],', '修改角色', NULL, '/role/edit', 2, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (117, 'role_remove', 'role', '[0],[system],[role],', '删除角色', NULL, '/role/remove', 3, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (118, 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', NULL, '/role/setAuthority', 4, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (119, 'menu', 'system', '[0],[system],', '菜单管理', '', '/menu', 50, 2, 'Y', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:25', NULL, 1);
INSERT INTO `sys_menu` VALUES (120, 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', NULL, '/menu/add', 1, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:25', NULL, 1);
INSERT INTO `sys_menu` VALUES (121, 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', NULL, '/menu/edit', 2, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:25', NULL, 1);
INSERT INTO `sys_menu` VALUES (122, 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', NULL, '/menu/remove', 3, 3, 'N', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:25', NULL, 1);
INSERT INTO `sys_menu` VALUES (128, 'log', 'system', '[0],[system],', '业务日志', '', '/log', 70, 2, 'Y', NULL, 'ENABLE', NULL, '0', 'BASE_SYSTEM', NULL, '2019-06-30 13:48:39', NULL, 1);
INSERT INTO `sys_menu` VALUES (130, 'druid', 'system', '[0],[system],', '监控管理', '', '/druid', 80, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:50:06', NULL, 1);
INSERT INTO `sys_menu` VALUES (131, 'dept', 'system', '[0],[system],', '部门管理', '', '/dept', 30, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (132, 'dict', 'system', '[0],[system],', '字典管理', '', '/dictType', 40, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (133, 'loginLog', 'system', '[0],[system],', '登录日志', '', '/loginLog', 60, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:29', NULL, 1);
INSERT INTO `sys_menu` VALUES (134, 'log_clean', 'log', '[0],[system],[log],', '清空日志', NULL, '/log/delLog', 3, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:39', NULL, 1);
INSERT INTO `sys_menu` VALUES (135, 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', NULL, '/dept/add', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (136, 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', NULL, '/dept/update', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (137, 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', NULL, '/dept/delete', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (138, 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', NULL, '/dictType/addItem', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (139, 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', NULL, '/dictType/editItem', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (140, 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', NULL, '/dictType/delete', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (141, 'notice', 'system', '[0],[system],', '通知管理', '', '/notice', 90, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:44', NULL, 1);
INSERT INTO `sys_menu` VALUES (142, 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', NULL, '/notice/add', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:44', NULL, 1);
INSERT INTO `sys_menu` VALUES (143, 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', NULL, '/notice/update', 2, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:44', NULL, 1);
INSERT INTO `sys_menu` VALUES (144, 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', NULL, '/notice/delete', 3, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:44', NULL, 1);
INSERT INTO `sys_menu` VALUES (145, 'sys_message', 'dashboard', '[0],[dashboard],', '消息通知', 'layui-icon layui-icon-tips', '/system/notice', 30, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-04-08 22:49:39', NULL, 1);
INSERT INTO `sys_menu` VALUES (149, 'api_mgr', 'dev_tools', '[0],[dev_tools],', '接口文档', 'fa-leaf', '/swagger-ui.html', 30, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-15 18:13:00', NULL, 1);
INSERT INTO `sys_menu` VALUES (150, 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:25', NULL, 1);
INSERT INTO `sys_menu` VALUES (151, 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:25', NULL, 1);
INSERT INTO `sys_menu` VALUES (152, 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (153, 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (154, 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:53', NULL, 1);
INSERT INTO `sys_menu` VALUES (155, 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', 4, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (156, 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (157, 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:04', NULL, 1);
INSERT INTO `sys_menu` VALUES (158, 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', 2, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:39', NULL, 1);
INSERT INTO `sys_menu` VALUES (159, 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', 3, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:39', NULL, 1);
INSERT INTO `sys_menu` VALUES (160, 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', 1, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:29', NULL, 1);
INSERT INTO `sys_menu` VALUES (161, 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', 2, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:49:29', NULL, 1);
INSERT INTO `sys_menu` VALUES (162, 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', 5, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (163, 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', 6, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (164, 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', 7, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:12', NULL, 1);
INSERT INTO `sys_menu` VALUES (165, 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', 8, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (166, 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', 9, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (167, 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', 10, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-06-30 13:48:07', NULL, 1);
INSERT INTO `sys_menu` VALUES (171, 'dev_tools', '0', '[0],', '开发管理', 'layui-icon layui-icon-code-circle', '#', 30, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-05-11 13:40:27', NULL, 1);
INSERT INTO `sys_menu` VALUES (172, 'dashboard', '0', '[0],', '主控面板', 'layui-icon layui-icon-home', '#', 10, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', NULL, '2019-04-08 22:48:15', NULL, 1);
INSERT INTO `sys_menu` VALUES (1110777136265838594, 'demos_show', 'dev_tools', '[0],[dev_tools],', '模板页面', 'layui-icon layui-icon-template', '#', 40, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-27 13:34:41', '2019-06-15 18:13:11', 1, 1);
INSERT INTO `sys_menu` VALUES (1110777366856089602, 'excel_import', 'demos_show', '[0],[dev_tools],[demos_show],', 'excel导入', '', '/excel/import', 10, 3, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-27 13:35:36', '2019-06-15 18:13:11', 1, 1);
INSERT INTO `sys_menu` VALUES (1110777491464667137, 'excel_export', 'demos_show', '[0],[dev_tools],[demos_show],', 'excel导出', '', '/excel/export', 20, 3, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-27 13:36:06', '2019-06-15 18:13:11', 1, 1);
INSERT INTO `sys_menu` VALUES (1110787391943098370, 'advanced_form', 'demos_show', '[0],[dev_tools],[demos_show],', '高级表单', '', '/egForm', 30, 3, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-27 14:15:26', '2019-06-15 18:13:11', 1, 1);
INSERT INTO `sys_menu` VALUES (1110839216310329346, 'pdf_view', 'demos_show', '[0],[dev_tools],[demos_show],', '文档预览', '', '/loadPdfFile', 40, 3, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-27 17:41:22', '2019-06-15 18:13:11', 1, 1);
INSERT INTO `sys_menu` VALUES (1111545968697860098, 'console', 'dashboard', '[0],[dashboard],', '项目介绍', '', '/system/console', 10, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-29 16:29:45', '2019-04-09 20:57:08', 1, 1);
INSERT INTO `sys_menu` VALUES (1111546189892870145, 'console2', 'dashboard', '[0],[dashboard],', '统计报表', '', '/system/console2', 20, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-03-29 16:30:38', '2019-04-08 22:49:48', 1, 1);
INSERT INTO `sys_menu` VALUES (1139826657964593154, 'meta_data', 'dev_tools', '[0],[dev_tools],', '系统配置', '', '#', 10, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-06-15 17:27:07', '2019-06-15 18:12:35', 1, 1);
INSERT INTO `sys_menu` VALUES (1139827152854716418, 'data_source', 'meta_data', '[0],[dev_tools],[meta_data],', '数据源管理', '', '/databaseInfo', 10, 3, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-06-15 17:29:05', '2019-06-15 18:12:35', 1, 1);
INSERT INTO `sys_menu` VALUES (1142957882422112257, 'SYS_CONFIG', 'meta_data', '[0],[dev_tools],[meta_data],', '参数配置', 'fa-star', '/sysConfig', 5, 3, 'Y', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-24 08:49:28', '2019-06-24 08:57:34', 1, 1);
INSERT INTO `sys_menu` VALUES (1142957882422112258, 'SYS_CONFIG_ADD', 'SYS_CONFIG', '[0],[dev_tools],[meta_data],[SYS_CONFIG],', '参数配置添加', 'fa-star', '', 999, 4, 'N', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-24 08:49:28', '2019-06-24 08:57:34', 1, 1);
INSERT INTO `sys_menu` VALUES (1142957882422112259, 'SYS_CONFIG_EDIT', 'SYS_CONFIG', '[0],[dev_tools],[meta_data],[SYS_CONFIG],', '参数配置修改', 'fa-star', '', 999, 4, 'N', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-24 08:49:28', '2019-06-24 08:57:34', 1, 1);
INSERT INTO `sys_menu` VALUES (1142957882426306562, 'SYS_CONFIG_DELETE', 'SYS_CONFIG', '[0],[dev_tools],[meta_data],[SYS_CONFIG],', '参数配置删除', 'fa-star', '', 999, 4, 'N', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-24 08:49:28', '2019-06-24 08:57:34', 1, 1);
INSERT INTO `sys_menu` VALUES (1144441072852684801, 'SYS_POSITION', 'system', '[0],[system],', '职位管理', 'fa-star', '/position', 35, 2, 'Y', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-28 11:03:09', '2019-06-28 11:06:42', 1, 1);
INSERT INTO `sys_menu` VALUES (1144441072852684802, 'SYS_POSITION_ADD', 'SYS_POSITION', '[0],[system],[SYS_POSITION],', '职位表添加', 'fa-star', '', 999, 3, 'N', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-28 11:03:09', '2019-06-28 11:06:42', 1, 1);
INSERT INTO `sys_menu` VALUES (1144441072852684803, 'SYS_POSITION_EDIT', 'SYS_POSITION', '[0],[system],[SYS_POSITION],', '职位表修改', 'fa-star', '', 999, 3, 'N', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-28 11:03:09', '2019-06-28 11:06:42', 1, 1);
INSERT INTO `sys_menu` VALUES (1144441072852684804, 'SYS_POSITION_DELETE', 'SYS_POSITION', '[0],[system],[SYS_POSITION],', '职位表删除', 'fa-star', '', 999, 3, 'N', '', 'ENABLE', '', '', 'BASE_SYSTEM', '2019-06-28 11:03:09', '2019-06-28 11:06:42', 1, 1);
INSERT INTO `sys_menu` VALUES (1149955324929765378, 'system_info', 'dashboard', '[0],[dashboard],', '系统监控', 'layui-icon-star-fill', '/system/systemInfo', 40, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-07-13 16:14:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1163267854058901505, 'base', '0', '[0],', '基础资料', 'layui-icon-star-fill', '#', 90, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:54:04', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163268276165267457, 'commodity', 'base', '[0],[base],', '商品管理', 'layui-icon-star-fill', '/commodity', 100, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:55:44', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163268503811117058, 'commodity_add', 'commodity', '[0],[base],[commodity],', '新增商品', 'layui-icon-star-fill', '/commodity/add', 101, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:56:38', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163268656420868097, 'commodity_edit', 'commodity', '[0],[base],[commodity],', '修改商品', 'layui-icon-star-fill', '/commodity/edit', 102, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:57:15', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163268832514527233, 'commodity_delete', 'commodity', '[0],[base],[commodity],', '删除商品', 'layui-icon-star-fill', '/commodity/delete', 103, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:57:57', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163269012269813761, 'commodity_import', 'commodity', '[0],[base],[commodity],', '商品导入', 'layui-icon-star-fill', '/commodity/import', 104, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:58:40', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163269167098351618, 'commodity_export', 'commodity', '[0],[base],[commodity],', '商品导出', 'layui-icon-star-fill', '/commodity/export', 105, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 09:59:17', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163313920917602305, 'warehouse', 'base', '[0],[base],', '仓库管理', 'layui-icon-star-fill', '/warehouse', 200, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 12:57:07', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163314161590960129, 'warehouse_add', 'warehouse', '[0],[base],[warehouse],', '新增仓库', 'layui-icon-star-fill', '/warehouse/add', 201, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 12:58:04', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163314302695735297, 'warehouse_edit', 'warehouse', '[0],[base],[warehouse],', '修改仓库', 'layui-icon-star-fill', '/warehouse/edit', 202, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 12:58:38', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163314501656739841, 'warehouse_delete', 'warehouse', '[0],[base],[warehouse],', '删除仓库', 'layui-icon-star-fill', '/warehouse/delete', 203, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 12:59:25', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163337195777384450, 'supplier', 'base', '[0],[base],', '供应商', 'layui-icon-star-fill', '/supplier', 300, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:29:36', '2020-07-05 18:48:16', 1, 1);
INSERT INTO `sys_menu` VALUES (1163337507116376065, 'supplier_add', 'supplier', '[0],[base],[supplier],', '新增供应商', 'layui-icon-star-fill', '/supplier/add', 301, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:30:50', '2020-07-05 18:48:16', 1, 1);
INSERT INTO `sys_menu` VALUES (1163337661110247425, 'supplier_edit', 'supplier', '[0],[base],[supplier],', '修改供应商', 'layui-icon-star-fill', '/supplier/edit', 302, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:31:27', '2020-07-05 18:48:16', 1, 1);
INSERT INTO `sys_menu` VALUES (1163337857021992961, 'supplier_delete', 'supplier', '[0],[base],[supplier],', '删除供应商', 'layui-icon-star-fill', '/supplier/delete', 303, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:32:14', '2020-07-05 18:48:16', 1, 1);
INSERT INTO `sys_menu` VALUES (1163338204100648962, 'locator', 'base', '[0],[base],', '库位管理', 'layui-icon-star-fill', '/locator', 400, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:33:36', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163338458984308737, 'locator_add', 'locator', '[0],[base],[locator],', '新增库位', 'layui-icon-star-fill', '/locator/add', 401, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:34:37', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163338701561880578, 'locator_edit', 'locator', '[0],[base],[locator],', '修改库位', 'layui-icon-star-fill', '/locator/edit', 402, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:35:35', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163338869694750721, 'locator_delete', 'locator', '[0],[base],[locator],', '删除库位', 'layui-icon-star-fill', '/locator/delete', 403, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:36:15', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1163339045851324417, 'locator_print', 'locator', '[0],[base],[locator],', '库位打印', 'layui-icon-star-fill', '/locator/print', 404, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-19 14:36:57', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1164065966985744386, 'instorage', '0', '[0],', '入库管理', 'layui-icon-star-fill', '#', 50, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:45:28', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1164066211048099842, 'purchase', 'instorage', '[0],[instorage],', '采购订单', 'layui-icon-star-fill', '/purchase', 500, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:46:27', '2019-08-21 14:46:47', 1, 1);
INSERT INTO `sys_menu` VALUES (1164066633397735425, 'purchase_add', 'purchase', '[0],[instorage],[purchase],', '新增采购订单', 'layui-icon-star-fill', '/purchase/add', 501, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:48:07', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1164066776947789825, 'purchase_edit', 'purchase', '[0],[instorage],[purchase],', '修改采购订单', 'layui-icon-star-fill', '/purchase/edit', 502, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:48:42', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1164066924541153282, 'purchase_delete', 'purchase', '[0],[instorage],[purchase],', '删除采购订单', 'layui-icon-star-fill', '/purchase/delete', 503, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:49:17', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1164067157853507585, 'purchase_review', 'purchase', '[0],[instorage],[purchase],', '审核采购订单', 'layui-icon-star-fill', '/purchase/review', 504, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:50:12', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1164067362724286466, 'purchase_cancelReview', 'purchase', '[0],[instorage],[purchase],', '撤销审核采购订单', 'layui-icon-star-fill', '/purchase/cancelReview', 505, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-21 14:51:01', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1165827733114056705, 'receive_add', 'instorage', '[0],[instorage],', '接货', 'layui-icon-star-fill', '/receive/add', 510, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-26 11:26:06', '2019-08-26 11:27:47', 1, 1);
INSERT INTO `sys_menu` VALUES (1165828053487579138, 'receive', 'instorage', '[0],[instorage],', '接货管理', 'layui-icon-star-fill', '/receive', 520, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-26 11:27:23', '2019-08-26 12:07:04', 1, 1);
INSERT INTO `sys_menu` VALUES (1165828390915141634, 'receive_edit', 'receive', '[0],[instorage],[receive],', '修改接货', 'layui-icon-star-fill', '/receive/edit', 521, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-26 11:28:43', '2019-08-26 12:07:04', 1, 1);
INSERT INTO `sys_menu` VALUES (1165828525837512706, 'receive_delete', 'receive', '[0],[instorage],[receive],', '删除接货', 'layui-icon-star-fill', '/receive/delete', 522, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-26 11:29:15', '2019-08-26 12:07:04', 1, 1);
INSERT INTO `sys_menu` VALUES (1165828765076418562, 'receive_review', 'receive', '[0],[instorage],[receive],', '审核接货', 'layui-icon-star-fill', '/receive/review', 523, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-26 11:30:12', '2019-08-26 12:07:04', 1, 1);
INSERT INTO `sys_menu` VALUES (1165828944823316481, 'receive_cancelReview', 'receive', '[0],[instorage],[receive],', '接货撤销审核', 'layui-icon-star-fill', '/receive/cancelReview', 524, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-26 11:30:55', '2019-08-26 12:07:04', 1, 1);
INSERT INTO `sys_menu` VALUES (1166171812872019969, 'warehousing_add', 'instorage', '[0],[instorage],', '入库', 'layui-icon-star-fill', '/warehousing/add', 530, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 10:13:21', '2019-08-27 10:15:30', 1, 1);
INSERT INTO `sys_menu` VALUES (1166172247666155521, 'warehousing', 'instorage', '[0],[instorage],', '入库管理', 'layui-icon-star-fill', '/warehousing', 540, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 10:15:05', '2019-08-27 10:15:44', 1, 1);
INSERT INTO `sys_menu` VALUES (1166172658036858882, 'warehousing_edit', 'warehousing', '[0],[instorage],[warehousing],', '修改入库', 'layui-icon-star-fill', '/warehousing/edit', 541, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 10:16:43', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166172801834377218, 'warehousing_delete', 'warehousing', '[0],[instorage],[warehousing],', '删除入库', 'layui-icon-star-fill', '/warehousing/delete', 542, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 10:17:17', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166173150083244034, 'warehousing_review', 'warehousing', '[0],[instorage],[warehousing],', '入库审核', 'layui-icon-star-fill', '/warehousing/review', 543, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 10:18:40', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166173327842041857, 'warehousing_cancelReview', 'warehousing', '[0],[instorage],[warehousing],', '撤销入库审核', 'layui-icon-star-fill', '/warehousing/cancelReview', 544, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 10:19:22', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166255467275423746, 'otherin_add', 'instorage', '[0],[instorage],', '其他入库', 'layui-icon-star-fill', '/otherin/add', 550, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 15:45:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166255657705213953, 'otherin', 'instorage', '[0],[instorage],', '其他入库管理', 'layui-icon-star-fill', '/otherin', 560, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 15:46:31', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166255820440014849, 'otherin_edit', 'otherin', '[0],[instorage],[otherin],', '其他入库修改', 'layui-icon-star-fill', '/otherin/edit', 561, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 15:47:10', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166256013495439361, 'otherin_delete', 'otherin', '[0],[instorage],[otherin],', '其他入库删除', 'layui-icon-star-fill', '/otherin/delete', 562, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 15:47:56', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166256315850231809, 'otherin_review', 'otherin', '[0],[instorage],[otherin],', '其他入库审核', 'layui-icon-star-fill', '/otherin/review', 563, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 15:49:08', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166256480950620161, 'otherin_cancelReview', 'otherin', '[0],[instorage],[otherin],', '撤销其他入库审核', 'layui-icon-star-fill', '/otherin/cancelReview', 564, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-27 15:49:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166550695567933442, 'storage', '0', '[0],', '库内管理', 'layui-icon-star-fill', '#', 60, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 11:18:54', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166557277164912642, 'puton_add', 'storage', '[0],[storage],', '上架', 'layui-icon-star-fill', '/puton/add', 600, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 11:45:03', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166577596965568513, 'puton', 'storage', '[0],[storage],', '上架管理', 'layui-icon-star-fill', '/puton', 610, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 13:05:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166577845712961537, 'puton_delete', 'puton', '[0],[storage],[puton],', '删除商上架', 'layui-icon-star-fill', '/puton/delete', 611, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 13:06:47', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166578249276309505, 'move_add', 'storage', '[0],[storage],', '移库', 'layui-icon-star-fill', '/move/add', 620, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 13:08:23', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166578449990533122, 'move', 'storage', '[0],[storage],', '移库管理', 'layui-icon-star-fill', '/move', 630, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 13:09:11', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166578774650634241, 'move_delete', 'move', '[0],[storage],[move],', '删除移库', 'layui-icon-star-fill', '/move/delete', 631, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 13:10:29', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1166615711902011393, ' repertory', '0', '[0],', '库存管理', 'layui-icon-star-fill', '#', 70, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 15:37:15', '2019-08-28 15:37:44', 1, 1);
INSERT INTO `sys_menu` VALUES (1166615998372974593, 'stock', ' repertory', '[0],[ repertory],', '库存管理', 'layui-icon-star-fill', '/stock', 700, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-08-28 15:38:23', '2019-08-28 15:38:52', 1, 1);
INSERT INTO `sys_menu` VALUES (1168351342516719617, 'inventory_add', 'storage', '[0],[storage],', '盘点', 'layui-icon-star-fill', '/inventory/add', 640, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-02 10:34:02', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1168351495784976385, 'inventory', 'storage', '[0],[storage],', '盘点管理', 'layui-icon-star-fill', '/inventory', 650, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-02 10:34:38', '2019-09-02 10:35:06', 1, 1);
INSERT INTO `sys_menu` VALUES (1168351831471902721, 'inventory_locator', 'inventory', '[0],[storage],[inventory],', '盘点货位', 'layui-icon-star-fill', '/inventory/locator', 651, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-02 10:35:58', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169419061609607170, 'allocation_add', 'storage', '[0],[storage],', '调拨', 'layui-icon-star-fill', '/allocation/add', 660, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-05 09:16:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169419220691169282, 'allocation', 'storage', '[0],[storage],', '调拨管理', 'layui-icon-star-fill', '/allocation', 670, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-05 09:17:24', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169419556168380417, 'allocation_delete', 'allocation', '[0],[storage],[allocation],', '删除调拨', 'layui-icon-star-fill', '/allocation/delete', 671, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-05 09:18:44', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169419786385338369, 'allocation_review', 'allocation', '[0],[storage],[allocation],', '审核调拨', 'layui-icon-star-fill', '/allocation/review', 672, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-05 09:19:39', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1169419989381263361, 'allocation_cancelReview', 'allocation', '[0],[storage],[allocation],', '调拨撤销审核', 'layui-icon-star-fill', '/allocation/cancelReview', 673, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-05 09:20:27', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1171338469370159106, 'outstore', '0', '[0],', '出库管理', 'layui-icon-star-fill', '#', 80, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 16:23:48', '2019-09-10 17:10:31', 1, 1);
INSERT INTO `sys_menu` VALUES (1171350431969771521, 'outorder', 'outstore', '[0],[outstore],', '出库订单', 'layui-icon-star-fill', '/outorder', 800, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 17:11:20', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1171350858677288962, 'outorder_add', 'outorder', '[0],[outstore],[outorder],', '新增出库订单', 'layui-icon-star-fill', '/outorder/add', 801, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 17:13:02', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1171351021999292417, 'outorder_edit', 'outorder', '[0],[outstore],[outorder],', '修改出库订单', 'layui-icon-star-fill', '/outorder/edit', 802, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 17:13:41', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1171351157219459074, 'outorder_delete', 'outorder', '[0],[outstore],[outorder],', '删除出库订单', 'layui-icon-star-fill', '/outorder/delete', 803, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 17:14:13', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1171351454109073409, 'outorder_review', 'outorder', '[0],[outstore],[outorder],', '审核出库订单', 'layui-icon-star-fill', '/outorder/review', 804, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 17:15:24', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1171351698523750401, 'outorder_cancelReview', 'outorder', '[0],[outstore],[outorder],', '出库订单撤销审核', 'layui-icon-star-fill', '/outorder/cancelReview', 805, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-10 17:16:22', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1172031046809546753, 'outorder_pick', 'outorder', '[0],[outstore],[outorder],', '生成拣货任务', 'layui-icon-star-fill', '/outorder/pick', 806, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-12 14:15:52', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1173487410828255233, 'picktask', 'outstore', '[0],[outstore],', '拣货任务', 'layui-icon-star-fill', '/picktask', 820, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-16 14:42:56', '2019-10-15 10:24:24', 1, 1);
INSERT INTO `sys_menu` VALUES (1173842320698613762, 'pick_add', 'outstore', '[0],[outstore],', '拣货', 'layui-icon-star-fill', '/pick/add', 830, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-17 14:13:13', '2019-10-15 10:24:37', 1, 1);
INSERT INTO `sys_menu` VALUES (1173842464475160578, 'pick', 'outstore', '[0],[outstore],', '拣货管理', 'layui-icon-star-fill', '/pick', 840, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-17 14:13:47', '2019-10-15 10:24:47', 1, 1);
INSERT INTO `sys_menu` VALUES (1173850994225684481, 'pick_restore', 'pick', '[0],[outstore],[pick],', '还原拣货订单', 'layui-icon-star-fill', '/pick/restore', 831, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-17 14:47:41', '2019-10-15 10:24:47', 1, 1);
INSERT INTO `sys_menu` VALUES (1174498288184811521, 'review_add', 'outstore', '[0],[outstore],', '出库复核', 'layui-icon-star-fill', '/review/add', 850, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 09:39:48', '2019-10-15 10:24:59', 1, 1);
INSERT INTO `sys_menu` VALUES (1174498620117835778, 'review', 'outstore', '[0],[outstore],', '出库复核管理', 'layui-icon-star-fill', '/review', 860, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 09:41:07', '2019-10-15 10:25:10', 1, 1);
INSERT INTO `sys_menu` VALUES (1174498898552512514, 'review_delete', 'review', '[0],[outstore],[review],', '删除出库复核', 'layui-icon-star-fill', '/review/delete', 851, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 09:42:13', '2019-10-15 10:25:10', 1, 1);
INSERT INTO `sys_menu` VALUES (1174603337644843009, 'otherout_add', 'outstore', '[0],[outstore],', '其他出库', 'layui-icon-star-fill', '/otherout/add', 870, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 16:37:13', '2019-10-15 10:25:21', 1, 1);
INSERT INTO `sys_menu` VALUES (1174603548538642433, 'otherout', 'outstore', '[0],[outstore],', '其他出库管理', 'layui-icon-star-fill', '/otherout', 880, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 16:38:04', '2019-10-15 10:25:30', 1, 1);
INSERT INTO `sys_menu` VALUES (1174603806878408706, 'otherout_edit', 'otherout', '[0],[outstore],[otherout],', '修改其它出库', 'layui-icon-star-fill', '/otherout/edit', 861, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 16:39:05', '2019-10-15 10:25:30', 1, 1);
INSERT INTO `sys_menu` VALUES (1174603972339507202, 'otherout_delete', 'otherout', '[0],[outstore],[otherout],', '删除其它出库', 'layui-icon-star-fill', '/otherout/delete', 862, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 16:39:45', '2019-10-15 10:25:30', 1, 1);
INSERT INTO `sys_menu` VALUES (1174604134436773890, 'otherout_review', 'otherout', '[0],[outstore],[otherout],', '审核其他出库', 'layui-icon-star-fill', '/otherout/review', 863, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 16:40:23', '2019-10-15 10:25:30', 1, 1);
INSERT INTO `sys_menu` VALUES (1174604333372612609, 'otherout_cancelReview', 'otherout', '[0],[outstore],[otherout],', '其他出库撤销审核', 'layui-icon-star-fill', '/otherout/cancelReview', 864, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-19 16:41:11', '2019-10-15 10:25:30', 1, 1);
INSERT INTO `sys_menu` VALUES (1176027354033491970, 'puton_review', 'puton', '[0],[storage],[puton],', '上架审核', 'layui-icon-star-fill', '/puton/review', 621, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-23 14:55:45', '2019-09-23 15:01:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1176027535751712770, 'puton_cancelReview', 'puton', '[0],[storage],[puton],', '上架撤销审核', 'layui-icon-star-fill', '/puton/cancelReview', 613, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-23 14:56:29', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1176034245165895681, 'move_review', 'move', '[0],[storage],[move],', '移库审核', 'layui-icon-star-fill', '/move/review', 632, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-23 15:23:08', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1176034437491511297, 'move_cancelReview', 'move', '[0],[storage],[move],', '移库撤销审核', 'layui-icon-star-fill', '/move/cancelReview', 633, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-23 15:23:54', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1176318924834156545, 'picktask_delete', 'picktask', '[0],[outstore],[picktask],', '删除拣货任务', 'layui-icon-star-fill', '/picktask/delete', 811, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-24 10:14:21', '2019-10-15 10:24:24', 1, 1);
INSERT INTO `sys_menu` VALUES (1178126909319401474, 'outorder_remove', 'outorder', '[0],[outstore],[outorder],', '出库订单取消', 'layui-icon-star-fill', '/outorder/remove', 807, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-29 09:58:38', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1178152883047493634, 'dept_setAuthority', 'dept', '[0],[system],[dept],', '配置权限', 'layui-icon-star-fill', '/dept/setAuthority', 10, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-09-29 11:41:51', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1178157001250041858, 'to_dept_assign', 'dept', '[0],[system],[dept],', '部门分配跳转', 'layui-icon-star-fill', '/dept/dept_assign', NULL, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'BASE_SYSTEM', '2019-09-29 11:58:13', '2019-09-30 15:01:19', 1, 1);
INSERT INTO `sys_menu` VALUES (1178193111056068610, 'picktask_restore', 'picktask', '[0],[outstore],[picktask],', '拣货任务还原', 'layui-icon-star-fill', '/picktask/restore', 812, 3, 'N', NULL, 'ENABLE', NULL, NULL, 'base', '2019-09-29 14:21:42', '2019-10-15 10:24:24', 1, 1);
INSERT INTO `sys_menu` VALUES (1182203181418864642, 'wellen', 'outstore', '[0],[outstore],', '波次管理', 'layui-icon-star-fill', '/wellen', 810, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2019-10-10 15:56:17', '2019-10-15 10:25:39', 1, 1);
INSERT INTO `sys_menu` VALUES (1278527271262535681, '1024', 'base', '[0],[base],', '项目信息', 'layui-icon-star-fill', '/company', 1, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-02 11:13:50', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1279093837322633217, 'cailiaomingcheng', 'base', '[0],[base],', '材料名称', 'layui-icon-vercode', '/element?type=1', 2, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-04 00:45:10', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1279210211504029697, 'cailiaoleibie', 'base', '[0],[base],', '材料类别', 'layui-icon-star-fill', '/element?type=2', 3, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-04 08:27:36', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1279210930881691650, 'cailiaoshiyongbuwei', 'base', '[0],[base],', '材料使用部位', 'layui-icon-star-fill', '/element?type=3', 4, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-04 08:30:27', '2020-07-05 18:04:00', 1, 1);
INSERT INTO `sys_menu` VALUES (1279657395353563137, 'cailiaoguanli', '0', '[0],', '材料管理', 'layui-icon-vercode', '#', 2, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 14:04:33', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279658721730899970, 'StockIn', 'cailiaoguanli', '[0],[cailiaoguanli],', '入库单', 'layui-icon-star-fill', '/storeIn', 1, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 14:09:49', '2020-07-05 17:10:46', 1, 1);
INSERT INTO `sys_menu` VALUES (1279718191324463105, 'hetong', '0', '[0],', '合同管理', 'layui-icon-star-fill', '#', 1, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:06:07', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279718613023981570, 'laowu', '0', '[0],', '劳务管理', 'layui-icon-star-fill', '#', 3, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:07:48', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279718868008304642, 'jiixe', '0', '[0],', '机械管理', 'layui-icon-star-fill', '#', 4, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:08:49', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279719478128541698, 'zhuanyefenbao', '0', '[0],', '专业分包管理', 'layui-icon-star-fill', '#', 5, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:11:14', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279719659544772609, 'jindu', '0', '[0],', '进度管理', 'layui-icon-star-fill', '#', 7, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:11:58', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279719795427639297, 'caiwu', '0', '[0],', '财务管理', 'layui-icon-star-fill', '#', 8, 1, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:12:30', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279722873841254402, 'cailiaohetong', 'hetong', '[0],[hetong],', '材料合同', 'layui-icon-star-fill', '/supplier', 1, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:24:44', '2020-07-05 18:48:33', 1, 1);
INSERT INTO `sys_menu` VALUES (1279723300137730049, 'laowufenbaohetong', 'hetong', '[0],[hetong],', '劳务分包合同', 'layui-icon-star-fill', '#', 2, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:26:26', '2020-07-05 18:26:47', 1, 1);
INSERT INTO `sys_menu` VALUES (1279723638555148290, 'jixiehetong', 'hetong', '[0],[hetong],', '机械合同', 'layui-icon-star-fill', '#', 3, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:27:46', NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (1279723866771423234, 'zhuanyefenbaohetong', 'hetong', '[0],[hetong],', '专业分包合同', 'layui-icon-star-fill', '#', 4, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:28:41', '2020-07-05 18:29:02', 1, 1);
INSERT INTO `sys_menu` VALUES (1279724151405281282, 'otherhetong', 'hetong', '[0],[hetong],', '其他合同', 'layui-icon-star-fill', '#', 5, 2, 'Y', NULL, 'ENABLE', NULL, NULL, 'base', '2020-07-05 18:29:48', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` bigint(20) NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (6, '欢迎', 'hi，奇趣仓储管理系统发布了！', '2017-01-11 08:53:20', 1, '2018-12-28 23:24:48', 1);
INSERT INTO `sys_notice` VALUES (8, '你好', '你好，世界！', '2017-05-10 19:28:57', 1, '2018-12-28 23:28:26', 1);

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log`  (
  `operation_log_id` bigint(20) NOT NULL COMMENT '主键',
  `log_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型(字典)',
  `log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志名称',
  `user_id` bigint(65) NULL DEFAULT NULL COMMENT '用户id',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类名称',
  `method` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '方法名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否成功(字典)',
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '备注',
  PRIMARY KEY (`operation_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO `sys_operation_log` VALUES (1278514730994024450, '业务日志', '修改管理员', 1, 'com.tdt.sys.modular.system.controller.UserMgrController', 'edit', '2020-07-02 10:24:00', '成功', '账号=admin;;;');
INSERT INTO `sys_operation_log` VALUES (1278527271442890753, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-02 11:13:50', '成功', '菜单名称=项目信息');
INSERT INTO `sys_operation_log` VALUES (1278527797928706049, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-02 11:15:56', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,供应商,新增供应商,修改供应商,删除供应商,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理');
INSERT INTO `sys_operation_log` VALUES (1278554183481487361, '业务日志', '添加管理员', 1, 'com.tdt.sys.modular.system.controller.UserMgrController', 'add', '2020-07-02 13:00:46', '成功', '账号=test');
INSERT INTO `sys_operation_log` VALUES (1278554643936374785, '业务日志', '分配角色', 1, 'com.tdt.sys.modular.system.controller.UserMgrController', 'setRole', '2020-07-02 13:02:36', '成功', '账号=test,角色名称集合=超级管理员');
INSERT INTO `sys_operation_log` VALUES (1278555252030763010, '业务日志', '修改管理员', 1278554183322103810, 'com.tdt.sys.modular.system.controller.UserMgrController', 'edit', '2020-07-02 13:05:01', '成功', '账号=null;;;字段名称:部门名称,旧值:总公司,新值:开发部');
INSERT INTO `sys_operation_log` VALUES (1279093837448462337, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-04 00:45:10', '成功', '菜单名称=元素列表');
INSERT INTO `sys_operation_log` VALUES (1279093975688527873, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-04 00:45:43', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,供应商,新增供应商,修改供应商,删除供应商,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,元素列表,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理');
INSERT INTO `sys_operation_log` VALUES (1279095731256410114, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-04 00:52:41', '成功', '菜单名称=元素列表;;;字段名称:url地址,旧值:/element,新值:/element?type=1');
INSERT INTO `sys_operation_log` VALUES (1279199044366761986, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-04 07:43:13', '成功', '菜单名称=材料名称;;;字段名称:菜单编号,旧值:yuansu,新值:cailiaomingcheng;;;字段名称:菜单名称,旧值:元素列表,新值:材料名称');
INSERT INTO `sys_operation_log` VALUES (1279210211663413250, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-04 08:27:36', '成功', '菜单名称=材料类别');
INSERT INTO `sys_operation_log` VALUES (1279210326218244097, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-04 08:28:03', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,供应商,新增供应商,修改供应商,删除供应商,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,材料名称,材料类别,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理');
INSERT INTO `sys_operation_log` VALUES (1279210931246596098, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-04 08:30:27', '成功', '菜单名称=材料使用部位');
INSERT INTO `sys_operation_log` VALUES (1279212186077495298, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-04 08:35:26', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,供应商,新增供应商,修改供应商,删除供应商,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,材料名称,材料类别,材料使用部位,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理');
INSERT INTO `sys_operation_log` VALUES (1279641475063226370, '异常日志', '', 1, NULL, NULL, '2020-07-05 13:01:17', '失败', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\r\n### The error may exist in com/tdt/modular/base/mapper/SupplierMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT id,name,sname,contact,phone,remark,warehouseid,createid,creator,createtime,updateid,updator,updatetime,categoryid AS categoryids,categoryname,contractsum,tax FROM b_supplier WHERE id=?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:73)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplateTSqlSessionInterceptor.invoke(OptionalSqlSessionTemplate.java:348)\r\n	at com.sun.proxy.TProxy102.selectOne(Unknown Source)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplate.selectOne(OptionalSqlSessionTemplate.java:91)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:99)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.TProxy115.selectById(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.getById(ServiceImpl.java:239)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImplTTFastClassBySpringCGLIBTT76535273.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at com.alibaba.druid.support.spring.stat.DruidStatInterceptor.invoke(DruidStatInterceptor.java:73)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.tdt.modular.base.service.SupplierServiceTTEnhancerBySpringCGLIBTTf664eb41.getById(<generated>)\r\n	at com.tdt.modular.base.controller.SupplierController.detail(SupplierController.java:116)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:189)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1005)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:908)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:882)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at cn.stylefeng.roses.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:92)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:791)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1417)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:118)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:95)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:960)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:388)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3461)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3459)\r\n	at com.alibaba.druid.wall.WallFilter.preparedStatement_execute(WallFilter.java:627)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3459)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:497)\r\n	at sun.reflect.GeneratedMethodAccessor106.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.logging.jdbc.PreparedStatementLogger.invoke(PreparedStatementLogger.java:59)\r\n	at com.sun.proxy.TProxy183.execute(Unknown Source)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at sun.reflect.GeneratedMethodAccessor99.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy181.query(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor99.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy181.query(Unknown Source)\r\n	at org.apache.ibatis.executor.SimpleExecutor.doQuery(SimpleExecutor.java:63)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:83)\r\n	at sun.reflect.GeneratedMethodAccessor110.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy180.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:77)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplateTSqlSessionInterceptor.invoke(OptionalSqlSessionTemplate.java:335)\r\n	... 89 more\r\n');
INSERT INTO `sys_operation_log` VALUES (1279643286784450561, '异常日志', '', 1, NULL, NULL, '2020-07-05 13:08:29', '失败', 'org.springframework.jdbc.BadSqlGrammarException: \r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\r\n### The error may exist in com/tdt/modular/base/mapper/SupplierMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT id,name,sname,contact,phone,remark,warehouseid,createid,creator,createtime,updateid,updator,updatetime,categoryid AS categoryids,categoryname,contractsum,tax FROM b_supplier WHERE id=?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\r\n	at org.springframework.jdbc.support.SQLErrorCodeSQLExceptionTranslator.doTranslate(SQLErrorCodeSQLExceptionTranslator.java:234)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:73)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplateTSqlSessionInterceptor.invoke(OptionalSqlSessionTemplate.java:348)\r\n	at com.sun.proxy.TProxy102.selectOne(Unknown Source)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplate.selectOne(OptionalSqlSessionTemplate.java:91)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:99)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.TProxy115.selectById(Unknown Source)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImpl.getById(ServiceImpl.java:239)\r\n	at com.baomidou.mybatisplus.extension.service.impl.ServiceImplTTFastClassBySpringCGLIBTT76535273.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at com.alibaba.druid.support.spring.stat.DruidStatInterceptor.invoke(DruidStatInterceptor.java:73)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.tdt.modular.base.service.SupplierServiceTTEnhancerBySpringCGLIBTTf664eb41.getById(<generated>)\r\n	at com.tdt.modular.base.controller.SupplierController.detail(SupplierController.java:116)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:189)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1005)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:908)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:882)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at cn.stylefeng.roses.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:92)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:791)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1417)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.sql.SQLSyntaxErrorException: Unknown column \'categoryid\' in \'field list\'\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:118)\r\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:95)\r\n	at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:122)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.executeInternal(ClientPreparedStatement.java:960)\r\n	at com.mysql.cj.jdbc.ClientPreparedStatement.execute(ClientPreparedStatement.java:388)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3461)\r\n	at com.alibaba.druid.filter.FilterEventAdapter.preparedStatement_execute(FilterEventAdapter.java:440)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3459)\r\n	at com.alibaba.druid.wall.WallFilter.preparedStatement_execute(WallFilter.java:627)\r\n	at com.alibaba.druid.filter.FilterChainImpl.preparedStatement_execute(FilterChainImpl.java:3459)\r\n	at com.alibaba.druid.proxy.jdbc.PreparedStatementProxyImpl.execute(PreparedStatementProxyImpl.java:167)\r\n	at com.alibaba.druid.pool.DruidPooledPreparedStatement.execute(DruidPooledPreparedStatement.java:497)\r\n	at sun.reflect.GeneratedMethodAccessor106.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.logging.jdbc.PreparedStatementLogger.invoke(PreparedStatementLogger.java:59)\r\n	at com.sun.proxy.TProxy183.execute(Unknown Source)\r\n	at org.apache.ibatis.executor.statement.PreparedStatementHandler.query(PreparedStatementHandler.java:64)\r\n	at org.apache.ibatis.executor.statement.RoutingStatementHandler.query(RoutingStatementHandler.java:79)\r\n	at sun.reflect.GeneratedMethodAccessor99.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy181.query(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor99.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy181.query(Unknown Source)\r\n	at org.apache.ibatis.executor.SimpleExecutor.doQuery(SimpleExecutor.java:63)\r\n	at org.apache.ibatis.executor.BaseExecutor.queryFromDatabase(BaseExecutor.java:324)\r\n	at org.apache.ibatis.executor.BaseExecutor.query(BaseExecutor.java:156)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:109)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:83)\r\n	at sun.reflect.GeneratedMethodAccessor110.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy180.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:77)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplateTSqlSessionInterceptor.invoke(OptionalSqlSessionTemplate.java:335)\r\n	... 89 more\r\n');
INSERT INTO `sys_operation_log` VALUES (1279657395982708738, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 14:04:33', '成功', '菜单名称=材料管理');
INSERT INTO `sys_operation_log` VALUES (1279658722028695554, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 14:09:49', '成功', '菜单名称=入库单');
INSERT INTO `sys_operation_log` VALUES (1279658759236366338, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-05 14:09:58', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,供应商,新增供应商,修改供应商,删除供应商,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,材料名称,材料类别,材料使用部位,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理,材料管理,入库单');
INSERT INTO `sys_operation_log` VALUES (1279704258584776705, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 17:10:46', '成功', '菜单名称=入库单;;;字段名称:url地址,旧值:/stockIn,新值:/storeIn');
INSERT INTO `sys_operation_log` VALUES (1279717658421362690, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:04:00', '成功', '菜单名称=基础资料;;;字段名称:菜单排序号,旧值:40,新值:90');
INSERT INTO `sys_operation_log` VALUES (1279718191601287169, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:06:08', '成功', '菜单名称=合同管理');
INSERT INTO `sys_operation_log` VALUES (1279718613154004993, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:07:48', '成功', '菜单名称=劳务管理');
INSERT INTO `sys_operation_log` VALUES (1279718868180271105, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:08:49', '成功', '菜单名称=机械管理');
INSERT INTO `sys_operation_log` VALUES (1279719478480863234, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:11:14', '成功', '菜单名称=专业分包管理');
INSERT INTO `sys_operation_log` VALUES (1279719659683184642, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:11:58', '成功', '菜单名称=进度管理');
INSERT INTO `sys_operation_log` VALUES (1279719795574439937, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:12:30', '成功', '菜单名称=财务管理');
INSERT INTO `sys_operation_log` VALUES (1279719871604588546, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-05 18:12:48', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,供应商,新增供应商,修改供应商,删除供应商,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,材料名称,材料类别,材料使用部位,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理,材料管理,入库单,合同管理,劳务管理,机械管理,专业分包管理,进度管理,财务管理');
INSERT INTO `sys_operation_log` VALUES (1279720613501468673, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:15:45', '成功', '菜单名称=供应商;;;');
INSERT INTO `sys_operation_log` VALUES (1279722873971277825, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:24:44', '成功', '菜单名称=材料合同');
INSERT INTO `sys_operation_log` VALUES (1279723300611686402, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:26:26', '成功', '菜单名称=劳务分包合同');
INSERT INTO `sys_operation_log` VALUES (1279723390080385025, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:26:47', '成功', '菜单名称=劳务分包合同;;;');
INSERT INTO `sys_operation_log` VALUES (1279723450541277186, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:27:01', '成功', '菜单名称=材料合同;;;');
INSERT INTO `sys_operation_log` VALUES (1279723638878109697, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:27:46', '成功', '菜单名称=机械合同');
INSERT INTO `sys_operation_log` VALUES (1279723867073413121, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:28:41', '成功', '菜单名称=专业分包合同');
INSERT INTO `sys_operation_log` VALUES (1279723958622486530, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:29:03', '成功', '菜单名称=专业分包合同;;;字段名称:菜单排序号,旧值:5,新值:4');
INSERT INTO `sys_operation_log` VALUES (1279724151577247746, '业务日志', '菜单新增', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'add', '2020-07-05 18:29:49', '成功', '菜单名称=其他合同');
INSERT INTO `sys_operation_log` VALUES (1279724234158899202, '业务日志', '配置权限', 1, 'com.tdt.sys.modular.system.controller.RoleController', 'setAuthority', '2020-07-05 18:30:08', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,配置权限,部门分配跳转,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,职位管理,职位表添加,职位表修改,职位表删除,开发管理,接口文档,模板页面,excel导入,excel导出,高级表单,文档预览,系统配置,数据源管理,参数配置,参数配置添加,参数配置修改,参数配置删除,主控面板,消息通知,项目介绍,统计报表,系统监控,基础资料,商品管理,新增商品,修改商品,删除商品,商品导入,商品导出,仓库管理,新增仓库,修改仓库,删除仓库,库位管理,新增库位,修改库位,删除库位,库位打印,项目信息,材料名称,材料类别,材料使用部位,入库管理,采购订单,新增采购订单,修改采购订单,删除采购订单,审核采购订单,撤销审核采购订单,接货,接货管理,修改接货,删除接货,审核接货,接货撤销审核,入库,入库管理,修改入库,删除入库,入库审核,撤销入库审核,其他入库,其他入库管理,其他入库修改,其他入库删除,其他入库审核,撤销其他入库审核,库内管理,上架,上架管理,删除商上架,上架审核,上架撤销审核,移库,移库管理,删除移库,移库审核,移库撤销审核,盘点,盘点管理,盘点货位,调拨,调拨管理,删除调拨,审核调拨,调拨撤销审核,库存管理,库存管理,出库管理,出库订单,新增出库订单,修改出库订单,删除出库订单,审核出库订单,出库订单撤销审核,生成拣货任务,出库订单取消,拣货任务,删除拣货任务,拣货任务还原,拣货,拣货管理,还原拣货订单,出库复核,出库复核管理,删除出库复核,其他出库,其他出库管理,修改其它出库,删除其它出库,审核其他出库,其他出库撤销审核,波次管理,材料管理,入库单,合同管理,供应商,新增供应商,修改供应商,删除供应商,材料合同,劳务分包合同,机械合同,专业分包合同,其他合同,劳务管理,机械管理,专业分包管理,进度管理,财务管理');
INSERT INTO `sys_operation_log` VALUES (1279728797284827137, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:48:16', '成功', '菜单名称=供应商;;;');
INSERT INTO `sys_operation_log` VALUES (1279728866583117826, '业务日志', '修改菜单', 1, 'com.tdt.sys.modular.system.controller.MenuController', 'edit', '2020-07-05 18:48:33', '成功', '菜单名称=材料合同;;;字段名称:url地址,旧值:#,新值:/supplier');
INSERT INTO `sys_operation_log` VALUES (1279729369798934530, '异常日志', '', 1, NULL, NULL, '2020-07-05 18:50:33', '失败', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.binding.BindingException: Parameter \'state\' not found. Available parameters are [page, param1, paramCondition, param2]\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:77)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplateTSqlSessionInterceptor.invoke(OptionalSqlSessionTemplate.java:348)\r\n	at com.sun.proxy.TProxy102.selectList(Unknown Source)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplate.selectList(OptionalSqlSessionTemplate.java:155)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.executeForMany(MybatisMapperMethod.java:168)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperMethod.execute(MybatisMapperMethod.java:82)\r\n	at com.baomidou.mybatisplus.core.override.MybatisMapperProxy.invoke(MybatisMapperProxy.java:61)\r\n	at com.sun.proxy.TProxy126.customMapList(Unknown Source)\r\n	at com.tdt.modular.instorage.service.PurchaseService.list(PurchaseService.java:93)\r\n	at com.tdt.modular.instorage.service.PurchaseServiceTTFastClassBySpringCGLIBTTc83157e8.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:294)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:98)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at com.alibaba.druid.support.spring.stat.DruidStatInterceptor.invoke(DruidStatInterceptor.java:73)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\r\n	at com.tdt.modular.instorage.service.PurchaseServiceTTEnhancerBySpringCGLIBTTd90f07e4.list(<generated>)\r\n	at com.tdt.modular.instorage.controller.StoreInController.list(StoreInController.java:231)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:189)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1005)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:897)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:634)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:882)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at cn.stylefeng.roses.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:92)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:791)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1417)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: org.apache.ibatis.binding.BindingException: Parameter \'state\' not found. Available parameters are [page, param1, paramCondition, param2]\r\n	at org.apache.ibatis.binding.MapperMethodTParamMap.get(MapperMethod.java:209)\r\n	at org.apache.ibatis.reflection.wrapper.MapWrapper.get(MapWrapper.java:45)\r\n	at org.apache.ibatis.reflection.MetaObject.getValue(MetaObject.java:122)\r\n	at org.apache.ibatis.executor.BaseExecutor.createCacheKey(BaseExecutor.java:219)\r\n	at org.apache.ibatis.executor.CachingExecutor.createCacheKey(CachingExecutor.java:146)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:82)\r\n	at sun.reflect.GeneratedMethodAccessor104.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy182.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at sun.reflect.GeneratedMethodAccessor119.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at cn.stylefeng.roses.core.mutidatasource.mybatis.OptionalSqlSessionTemplateTSqlSessionInterceptor.invoke(OptionalSqlSessionTemplate.java:335)\r\n	... 93 more\r\n');

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `position_id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位编码',
  `sort` int(11) NOT NULL COMMENT '顺序',
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ENABLE' COMMENT '状态(字典)',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`position_id`) USING BTREE,
  UNIQUE INDEX `CODE_UNI`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO `sys_position` VALUES (1, '董事长', 'President', 1, 'ENABLE', NULL, '2019-06-27 18:14:43', 1, NULL, NULL);
INSERT INTO `sys_position` VALUES (2, '总经理', 'GM', 2, 'ENABLE', NULL, '2019-06-27 18:14:43', 1, NULL, NULL);

-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation`  (
  `relation_id` bigint(20) NOT NULL COMMENT '主键',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES (1138325281216442370, 172, 5);
INSERT INTO `sys_relation` VALUES (1138325281229025281, 145, 5);
INSERT INTO `sys_relation` VALUES (1138325281245802498, 1111545968697860098, 5);
INSERT INTO `sys_relation` VALUES (1178565497359478785, 105, 1);
INSERT INTO `sys_relation` VALUES (1178565497611137026, 106, 1);
INSERT INTO `sys_relation` VALUES (1178565497879572481, 107, 1);
INSERT INTO `sys_relation` VALUES (1178565498114453506, 108, 1);
INSERT INTO `sys_relation` VALUES (1178565498340945921, 109, 1);
INSERT INTO `sys_relation` VALUES (1178565498567438337, 110, 1);
INSERT INTO `sys_relation` VALUES (1178565498785542146, 111, 1);
INSERT INTO `sys_relation` VALUES (1178565498999451650, 112, 1);
INSERT INTO `sys_relation` VALUES (1178565499221749761, 113, 1);
INSERT INTO `sys_relation` VALUES (1178565499435659266, 165, 1);
INSERT INTO `sys_relation` VALUES (1178565499649568769, 166, 1);
INSERT INTO `sys_relation` VALUES (1178565499888644098, 167, 1);
INSERT INTO `sys_relation` VALUES (1178565500127719426, 114, 1);
INSERT INTO `sys_relation` VALUES (1178565500350017537, 115, 1);
INSERT INTO `sys_relation` VALUES (1178565500568121345, 116, 1);
INSERT INTO `sys_relation` VALUES (1178565500790419457, 117, 1);
INSERT INTO `sys_relation` VALUES (1178565501004328962, 118, 1);
INSERT INTO `sys_relation` VALUES (1178565501226627074, 162, 1);
INSERT INTO `sys_relation` VALUES (1178565501448925185, 163, 1);
INSERT INTO `sys_relation` VALUES (1178565501671223298, 164, 1);
INSERT INTO `sys_relation` VALUES (1178565501901910018, 119, 1);
INSERT INTO `sys_relation` VALUES (1178565502161956865, 120, 1);
INSERT INTO `sys_relation` VALUES (1178565502371672066, 121, 1);
INSERT INTO `sys_relation` VALUES (1178565502644301826, 122, 1);
INSERT INTO `sys_relation` VALUES (1178565502887571457, 150, 1);
INSERT INTO `sys_relation` VALUES (1178565503097286658, 151, 1);
INSERT INTO `sys_relation` VALUES (1178565503365722114, 128, 1);
INSERT INTO `sys_relation` VALUES (1178565503617380353, 134, 1);
INSERT INTO `sys_relation` VALUES (1178565503831289858, 158, 1);
INSERT INTO `sys_relation` VALUES (1178565504049393666, 159, 1);
INSERT INTO `sys_relation` VALUES (1178565504322023426, 130, 1);
INSERT INTO `sys_relation` VALUES (1178565504544321537, 131, 1);
INSERT INTO `sys_relation` VALUES (1178565504758231041, 135, 1);
INSERT INTO `sys_relation` VALUES (1178565504972140546, 136, 1);
INSERT INTO `sys_relation` VALUES (1178565505190244353, 137, 1);
INSERT INTO `sys_relation` VALUES (1178565505416736769, 152, 1);
INSERT INTO `sys_relation` VALUES (1178565505643229186, 153, 1);
INSERT INTO `sys_relation` VALUES (1178565505873915906, 154, 1);
INSERT INTO `sys_relation` VALUES (1178565506087825410, 1178152883047493634, 1);
INSERT INTO `sys_relation` VALUES (1178565506318512130, 1178157001250041858, 1);
INSERT INTO `sys_relation` VALUES (1178565506536615937, 132, 1);
INSERT INTO `sys_relation` VALUES (1178565506767302658, 138, 1);
INSERT INTO `sys_relation` VALUES (1178565506985406465, 139, 1);
INSERT INTO `sys_relation` VALUES (1178565507211898881, 140, 1);
INSERT INTO `sys_relation` VALUES (1178565507442585601, 155, 1);
INSERT INTO `sys_relation` VALUES (1178565507660689409, 156, 1);
INSERT INTO `sys_relation` VALUES (1178565507866210305, 157, 1);
INSERT INTO `sys_relation` VALUES (1178565508084314113, 133, 1);
INSERT INTO `sys_relation` VALUES (1178565508298223618, 160, 1);
INSERT INTO `sys_relation` VALUES (1178565508528910337, 161, 1);
INSERT INTO `sys_relation` VALUES (1178565508742819841, 141, 1);
INSERT INTO `sys_relation` VALUES (1178565508981895169, 142, 1);
INSERT INTO `sys_relation` VALUES (1178565509220970497, 143, 1);
INSERT INTO `sys_relation` VALUES (1178565509460045825, 144, 1);
INSERT INTO `sys_relation` VALUES (1178565509678149634, 1144441072852684801, 1);
INSERT INTO `sys_relation` VALUES (1178565509900447745, 1144441072852684802, 1);
INSERT INTO `sys_relation` VALUES (1178565510118551553, 1144441072852684803, 1);
INSERT INTO `sys_relation` VALUES (1178565510332461058, 1144441072852684804, 1);
INSERT INTO `sys_relation` VALUES (1178565510558953474, 171, 1);
INSERT INTO `sys_relation` VALUES (1178565510781251586, 149, 1);
INSERT INTO `sys_relation` VALUES (1178565511037104130, 1110777136265838594, 1);
INSERT INTO `sys_relation` VALUES (1178565511267790850, 1110777366856089602, 1);
INSERT INTO `sys_relation` VALUES (1178565511532032001, 1110777491464667137, 1);
INSERT INTO `sys_relation` VALUES (1178565511779495938, 1110787391943098370, 1);
INSERT INTO `sys_relation` VALUES (1178565511989211137, 1110839216310329346, 1);
INSERT INTO `sys_relation` VALUES (1178565512467361793, 1139826657964593154, 1);
INSERT INTO `sys_relation` VALUES (1178565512689659905, 1139827152854716418, 1);
INSERT INTO `sys_relation` VALUES (1178565512928735234, 1142957882422112257, 1);
INSERT INTO `sys_relation` VALUES (1178565513226530818, 1142957882422112258, 1);
INSERT INTO `sys_relation` VALUES (1178565513440440322, 1142957882422112259, 1);
INSERT INTO `sys_relation` VALUES (1178565513658544129, 1142957882426306562, 1);
INSERT INTO `sys_relation` VALUES (1178565513868259330, 172, 1);
INSERT INTO `sys_relation` VALUES (1178565514086363138, 145, 1);
INSERT INTO `sys_relation` VALUES (1178565514304466946, 1111545968697860098, 1);
INSERT INTO `sys_relation` VALUES (1178565514543542273, 1111546189892870145, 1);
INSERT INTO `sys_relation` VALUES (1178565514757451777, 1149955324929765378, 1);
INSERT INTO `sys_relation` VALUES (1178565514975555585, 1163267854058901505, 1);
INSERT INTO `sys_relation` VALUES (1178565515223019521, 1163268276165267457, 1);
INSERT INTO `sys_relation` VALUES (1178565515432734722, 1163268503811117058, 1);
INSERT INTO `sys_relation` VALUES (1178565515676004354, 1163268656420868097, 1);
INSERT INTO `sys_relation` VALUES (1178565515944439810, 1163268832514527233, 1);
INSERT INTO `sys_relation` VALUES (1178565516170932225, 1163269012269813761, 1);
INSERT INTO `sys_relation` VALUES (1178565516384841729, 1163269167098351618, 1);
INSERT INTO `sys_relation` VALUES (1178565516611334145, 1163313920917602305, 1);
INSERT INTO `sys_relation` VALUES (1178565516896546817, 1163314161590960129, 1);
INSERT INTO `sys_relation` VALUES (1178565517131427841, 1163314302695735297, 1);
INSERT INTO `sys_relation` VALUES (1178565517370503170, 1163314501656739841, 1);
INSERT INTO `sys_relation` VALUES (1178565517596995585, 1163337195777384450, 1);
INSERT INTO `sys_relation` VALUES (1178565517844459522, 1163337507116376065, 1);
INSERT INTO `sys_relation` VALUES (1178565518096117761, 1163337661110247425, 1);
INSERT INTO `sys_relation` VALUES (1178565518326804482, 1163337857021992961, 1);
INSERT INTO `sys_relation` VALUES (1178565518599434242, 1163338204100648962, 1);
INSERT INTO `sys_relation` VALUES (1178565518838509570, 1163338458984308737, 1);
INSERT INTO `sys_relation` VALUES (1178565519065001985, 1163338701561880578, 1);
INSERT INTO `sys_relation` VALUES (1178565519287300097, 1163338869694750721, 1);
INSERT INTO `sys_relation` VALUES (1178565519509598210, 1163339045851324417, 1);
INSERT INTO `sys_relation` VALUES (1178565519715119106, 1164065966985744386, 1);
INSERT INTO `sys_relation` VALUES (1178565519941611521, 1164066211048099842, 1);
INSERT INTO `sys_relation` VALUES (1178565520184881154, 1164066633397735425, 1);
INSERT INTO `sys_relation` VALUES (1178565520423956481, 1164066776947789825, 1);
INSERT INTO `sys_relation` VALUES (1178565520637865986, 1164066924541153282, 1);
INSERT INTO `sys_relation` VALUES (1178565520855969794, 1164067157853507585, 1);
INSERT INTO `sys_relation` VALUES (1178565521065684993, 1164067362724286466, 1);
INSERT INTO `sys_relation` VALUES (1178565521287983106, 1165827733114056705, 1);
INSERT INTO `sys_relation` VALUES (1178565521514475521, 1165828053487579138, 1);
INSERT INTO `sys_relation` VALUES (1178565521761939457, 1165828390915141634, 1);
INSERT INTO `sys_relation` VALUES (1178565522038763521, 1165828525837512706, 1);
INSERT INTO `sys_relation` VALUES (1178565522319781889, 1165828765076418562, 1);
INSERT INTO `sys_relation` VALUES (1178565522554662914, 1165828944823316481, 1);
INSERT INTO `sys_relation` VALUES (1178565522781155329, 1166171812872019969, 1);
INSERT INTO `sys_relation` VALUES (1178565523032813570, 1166172247666155521, 1);
INSERT INTO `sys_relation` VALUES (1178565523380940802, 1166172658036858882, 1);
INSERT INTO `sys_relation` VALUES (1178565523661959170, 1166172801834377218, 1);
INSERT INTO `sys_relation` VALUES (1178565523892645890, 1166173150083244034, 1);
INSERT INTO `sys_relation` VALUES (1178565524387573762, 1166173327842041857, 1);
INSERT INTO `sys_relation` VALUES (1178565524597288962, 1166255467275423746, 1);
INSERT INTO `sys_relation` VALUES (1178565524819587073, 1166255657705213953, 1);
INSERT INTO `sys_relation` VALUES (1178565525046079489, 1166255820440014849, 1);
INSERT INTO `sys_relation` VALUES (1178565525272571906, 1166256013495439361, 1);
INSERT INTO `sys_relation` VALUES (1178565525536813058, 1166256315850231809, 1);
INSERT INTO `sys_relation` VALUES (1178565525872357378, 1166256480950620161, 1);
INSERT INTO `sys_relation` VALUES (1178565526094655490, 1166550695567933442, 1);
INSERT INTO `sys_relation` VALUES (1178565526354702338, 1166557277164912642, 1);
INSERT INTO `sys_relation` VALUES (1178565526623137794, 1166577596965568513, 1);
INSERT INTO `sys_relation` VALUES (1178565526866407426, 1166577845712961537, 1);
INSERT INTO `sys_relation` VALUES (1178565527088705537, 1176027354033491970, 1);
INSERT INTO `sys_relation` VALUES (1178565527311003650, 1176027535751712770, 1);
INSERT INTO `sys_relation` VALUES (1178565527550078977, 1166578249276309505, 1);
INSERT INTO `sys_relation` VALUES (1178565527763988482, 1166578449990533122, 1);
INSERT INTO `sys_relation` VALUES (1178565527973703681, 1166578774650634241, 1);
INSERT INTO `sys_relation` VALUES (1178565528204390401, 1176034245165895681, 1);
INSERT INTO `sys_relation` VALUES (1178565528426688514, 1176034437491511297, 1);
INSERT INTO `sys_relation` VALUES (1178565528648986626, 1168351342516719617, 1);
INSERT INTO `sys_relation` VALUES (1178565528871284738, 1168351495784976385, 1);
INSERT INTO `sys_relation` VALUES (1178565529135525890, 1168351831471902721, 1);
INSERT INTO `sys_relation` VALUES (1178565529370406913, 1169419061609607170, 1);
INSERT INTO `sys_relation` VALUES (1178565529664008194, 1169419220691169282, 1);
INSERT INTO `sys_relation` VALUES (1178565529877917698, 1169419556168380417, 1);
INSERT INTO `sys_relation` VALUES (1178565530087632898, 1169419786385338369, 1);
INSERT INTO `sys_relation` VALUES (1178565530301542401, 1169419989381263361, 1);
INSERT INTO `sys_relation` VALUES (1178565530536423426, 1166615711902011393, 1);
INSERT INTO `sys_relation` VALUES (1178565530762915842, 1166615998372974593, 1);
INSERT INTO `sys_relation` VALUES (1178565530981019649, 1171338469370159106, 1);
INSERT INTO `sys_relation` VALUES (1178565531194929154, 1171350431969771521, 1);
INSERT INTO `sys_relation` VALUES (1178565531417227266, 1171350858677288962, 1);
INSERT INTO `sys_relation` VALUES (1178565531643719682, 1171351021999292417, 1);
INSERT INTO `sys_relation` VALUES (1178565531857629186, 1171351157219459074, 1);
INSERT INTO `sys_relation` VALUES (1178565532075732993, 1171351454109073409, 1);
INSERT INTO `sys_relation` VALUES (1178565532281253889, 1171351698523750401, 1);
INSERT INTO `sys_relation` VALUES (1178565532490969089, 1172031046809546753, 1);
INSERT INTO `sys_relation` VALUES (1178565532709072897, 1178126909319401474, 1);
INSERT INTO `sys_relation` VALUES (1178565532931371009, 1173487410828255233, 1);
INSERT INTO `sys_relation` VALUES (1178565533174640641, 1176318924834156545, 1);
INSERT INTO `sys_relation` VALUES (1178565533384355841, 1178193111056068610, 1);
INSERT INTO `sys_relation` VALUES (1178565533606653954, 1173842320698613762, 1);
INSERT INTO `sys_relation` VALUES (1178565533828952066, 1173842464475160578, 1);
INSERT INTO `sys_relation` VALUES (1178565534063833090, 1173850994225684481, 1);
INSERT INTO `sys_relation` VALUES (1178565534302908417, 1174498288184811521, 1);
INSERT INTO `sys_relation` VALUES (1178565534521012226, 1174498620117835778, 1);
INSERT INTO `sys_relation` VALUES (1178565534806224897, 1174498898552512514, 1);
INSERT INTO `sys_relation` VALUES (1178565535045300226, 1174603337644843009, 1);
INSERT INTO `sys_relation` VALUES (1178565535292764162, 1174603548538642433, 1);
INSERT INTO `sys_relation` VALUES (1178565535523450881, 1174603806878408706, 1);
INSERT INTO `sys_relation` VALUES (1178565535758331905, 1174603972339507202, 1);
INSERT INTO `sys_relation` VALUES (1178565536009990145, 1174604134436773890, 1);
INSERT INTO `sys_relation` VALUES (1178565536236482561, 1174604333372612609, 1);
INSERT INTO `sys_relation` VALUES (1182203455806038018, 1182203181418864642, 1);
INSERT INTO `sys_relation` VALUES (1184652079380463618, 1163267854058901505, 5);
INSERT INTO `sys_relation` VALUES (1184652079393046530, 1163268276165267457, 5);
INSERT INTO `sys_relation` VALUES (1184652079401435137, 1163268503811117058, 5);
INSERT INTO `sys_relation` VALUES (1184652079409823745, 1163268656420868097, 5);
INSERT INTO `sys_relation` VALUES (1184652079418212354, 1163268832514527233, 5);
INSERT INTO `sys_relation` VALUES (1184652079426600961, 1163269012269813761, 5);
INSERT INTO `sys_relation` VALUES (1184652079434989570, 1163269167098351618, 5);
INSERT INTO `sys_relation` VALUES (1184652079443378177, 1163313920917602305, 5);
INSERT INTO `sys_relation` VALUES (1184652079451766786, 1163314161590960129, 5);
INSERT INTO `sys_relation` VALUES (1184652079455961090, 1163314302695735297, 5);
INSERT INTO `sys_relation` VALUES (1184652079464349698, 1163314501656739841, 5);
INSERT INTO `sys_relation` VALUES (1184652079472738305, 1163337195777384450, 5);
INSERT INTO `sys_relation` VALUES (1184652079476932609, 1163337507116376065, 5);
INSERT INTO `sys_relation` VALUES (1184652079485321217, 1163337661110247425, 5);
INSERT INTO `sys_relation` VALUES (1184652079493709826, 1163337857021992961, 5);
INSERT INTO `sys_relation` VALUES (1184652079497904129, 1163338204100648962, 5);
INSERT INTO `sys_relation` VALUES (1184652079510487041, 1163338458984308737, 5);
INSERT INTO `sys_relation` VALUES (1184652079518875650, 1163338701561880578, 5);
INSERT INTO `sys_relation` VALUES (1184652079527264258, 1163338869694750721, 5);
INSERT INTO `sys_relation` VALUES (1184652079531458561, 1163339045851324417, 5);
INSERT INTO `sys_relation` VALUES (1184652079539847170, 1164065966985744386, 5);
INSERT INTO `sys_relation` VALUES (1184652079548235777, 1164066211048099842, 5);
INSERT INTO `sys_relation` VALUES (1184652079602761729, 1164066633397735425, 5);
INSERT INTO `sys_relation` VALUES (1184652079619538945, 1164066776947789825, 5);
INSERT INTO `sys_relation` VALUES (1184652079627927554, 1164066924541153282, 5);
INSERT INTO `sys_relation` VALUES (1184652079636316162, 1164067157853507585, 5);
INSERT INTO `sys_relation` VALUES (1184652079644704769, 1164067362724286466, 5);
INSERT INTO `sys_relation` VALUES (1184652079653093378, 1165827733114056705, 5);
INSERT INTO `sys_relation` VALUES (1184652079661481985, 1165828053487579138, 5);
INSERT INTO `sys_relation` VALUES (1184652079669870594, 1165828390915141634, 5);
INSERT INTO `sys_relation` VALUES (1184652079678259202, 1165828525837512706, 5);
INSERT INTO `sys_relation` VALUES (1184652079686647809, 1165828765076418562, 5);
INSERT INTO `sys_relation` VALUES (1184652079695036418, 1165828944823316481, 5);
INSERT INTO `sys_relation` VALUES (1184652079699230722, 1166171812872019969, 5);
INSERT INTO `sys_relation` VALUES (1184652079707619329, 1166172247666155521, 5);
INSERT INTO `sys_relation` VALUES (1184652079716007937, 1166172658036858882, 5);
INSERT INTO `sys_relation` VALUES (1184652079724396545, 1166172801834377218, 5);
INSERT INTO `sys_relation` VALUES (1184652079732785153, 1166173150083244034, 5);
INSERT INTO `sys_relation` VALUES (1184652079736979457, 1166173327842041857, 5);
INSERT INTO `sys_relation` VALUES (1184652079745368066, 1166255467275423746, 5);
INSERT INTO `sys_relation` VALUES (1184652079753756673, 1166255657705213953, 5);
INSERT INTO `sys_relation` VALUES (1184652079762145282, 1166255820440014849, 5);
INSERT INTO `sys_relation` VALUES (1184652079766339586, 1166256013495439361, 5);
INSERT INTO `sys_relation` VALUES (1184652079774728193, 1166256315850231809, 5);
INSERT INTO `sys_relation` VALUES (1184652079783116801, 1166256480950620161, 5);
INSERT INTO `sys_relation` VALUES (1184652079791505409, 1166550695567933442, 5);
INSERT INTO `sys_relation` VALUES (1184652079799894018, 1166557277164912642, 5);
INSERT INTO `sys_relation` VALUES (1184652079804088321, 1166577596965568513, 5);
INSERT INTO `sys_relation` VALUES (1184652079812476930, 1166577845712961537, 5);
INSERT INTO `sys_relation` VALUES (1184652079820865537, 1176027354033491970, 5);
INSERT INTO `sys_relation` VALUES (1184652079829254146, 1176027535751712770, 5);
INSERT INTO `sys_relation` VALUES (1184652079837642754, 1166578249276309505, 5);
INSERT INTO `sys_relation` VALUES (1184652079846031362, 1166578449990533122, 5);
INSERT INTO `sys_relation` VALUES (1184652079854419970, 1166578774650634241, 5);
INSERT INTO `sys_relation` VALUES (1184652079862808578, 1176034245165895681, 5);
INSERT INTO `sys_relation` VALUES (1184652079867002882, 1176034437491511297, 5);
INSERT INTO `sys_relation` VALUES (1184652079875391489, 1168351342516719617, 5);
INSERT INTO `sys_relation` VALUES (1184652079883780098, 1168351495784976385, 5);
INSERT INTO `sys_relation` VALUES (1184652079892168705, 1168351831471902721, 5);
INSERT INTO `sys_relation` VALUES (1184652079900557313, 1169419061609607170, 5);
INSERT INTO `sys_relation` VALUES (1184652079908945922, 1169419220691169282, 5);
INSERT INTO `sys_relation` VALUES (1184652079917334529, 1169419556168380417, 5);
INSERT INTO `sys_relation` VALUES (1184652079921528833, 1169419786385338369, 5);
INSERT INTO `sys_relation` VALUES (1184652079929917442, 1169419989381263361, 5);
INSERT INTO `sys_relation` VALUES (1184652079938306050, 1166615711902011393, 5);
INSERT INTO `sys_relation` VALUES (1184652079946694658, 1166615998372974593, 5);
INSERT INTO `sys_relation` VALUES (1184652079950888961, 1171338469370159106, 5);
INSERT INTO `sys_relation` VALUES (1184652079959277570, 1171350431969771521, 5);
INSERT INTO `sys_relation` VALUES (1184652079963471873, 1171350858677288962, 5);
INSERT INTO `sys_relation` VALUES (1184652079971860481, 1171351021999292417, 5);
INSERT INTO `sys_relation` VALUES (1184652079976054785, 1171351157219459074, 5);
INSERT INTO `sys_relation` VALUES (1184652079984443393, 1171351454109073409, 5);
INSERT INTO `sys_relation` VALUES (1184652079992832001, 1171351698523750401, 5);
INSERT INTO `sys_relation` VALUES (1184652080001220610, 1172031046809546753, 5);
INSERT INTO `sys_relation` VALUES (1184652080005414913, 1178126909319401474, 5);
INSERT INTO `sys_relation` VALUES (1184652080017997825, 1173487410828255233, 5);
INSERT INTO `sys_relation` VALUES (1184652080026386433, 1176318924834156545, 5);
INSERT INTO `sys_relation` VALUES (1184652080034775041, 1178193111056068610, 5);
INSERT INTO `sys_relation` VALUES (1184652080043163649, 1173842320698613762, 5);
INSERT INTO `sys_relation` VALUES (1184652080051552258, 1173842464475160578, 5);
INSERT INTO `sys_relation` VALUES (1184652080064135170, 1173850994225684481, 5);
INSERT INTO `sys_relation` VALUES (1184652080072523777, 1174498288184811521, 5);
INSERT INTO `sys_relation` VALUES (1184652080080912386, 1174498620117835778, 5);
INSERT INTO `sys_relation` VALUES (1184652080093495297, 1174498898552512514, 5);
INSERT INTO `sys_relation` VALUES (1184652080101883905, 1174603337644843009, 5);
INSERT INTO `sys_relation` VALUES (1184652080110272514, 1174603548538642433, 5);
INSERT INTO `sys_relation` VALUES (1184652080114466818, 1174603806878408706, 5);
INSERT INTO `sys_relation` VALUES (1184652080122855426, 1174603972339507202, 5);
INSERT INTO `sys_relation` VALUES (1184652080131244033, 1174604134436773890, 5);
INSERT INTO `sys_relation` VALUES (1184652080135438337, 1174604333372612609, 5);
INSERT INTO `sys_relation` VALUES (1184652080143826945, 1182203181418864642, 5);
INSERT INTO `sys_relation` VALUES (1192332907824709633, 1163267854058901505, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907845681153, 1163268276165267457, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907849875457, 1163268503811117058, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907858264066, 1163268656420868097, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907862458369, 1163268832514527233, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907866652673, 1163269012269813761, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907875041282, 1163269167098351618, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907879235586, 1163313920917602305, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907883429889, 1163314161590960129, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907887624193, 1163314302695735297, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907896012801, 1163314501656739841, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907904401410, 1163337195777384450, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907908595713, 1163337507116376065, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907912790018, 1163337661110247425, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907921178625, 1163337857021992961, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907925372929, 1163338204100648962, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907929567234, 1163338458984308737, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907937955841, 1163338701561880578, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907946344450, 1163338869694750721, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907950538753, 1163339045851324417, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907958927361, 1164065966985744386, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907963121665, 1164066211048099842, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907967315969, 1164066633397735425, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907975704578, 1164066776947789825, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907979898881, 1164066924541153282, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907984093185, 1164067157853507585, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907992481794, 1164067362724286466, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332907996676097, 1165827733114056705, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908000870401, 1165828053487579138, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908009259009, 1165828390915141634, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908013453314, 1165828525837512706, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908017647617, 1165828765076418562, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908118310914, 1165828944823316481, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908126699522, 1166171812872019969, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908130893825, 1166172247666155521, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908139282433, 1166172658036858882, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908143476737, 1166172801834377218, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908156059649, 1166173150083244034, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908189614081, 1166173327842041857, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908198002690, 1166255467275423746, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908206391297, 1166255657705213953, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908210585602, 1166255820440014849, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908218974209, 1166256013495439361, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908223168513, 1166256315850231809, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908227362817, 1166256480950620161, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908290277378, 1166550695567933442, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908298665986, 1166557277164912642, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908302860289, 1166577596965568513, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908307054594, 1166577845712961537, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908315443202, 1176027354033491970, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908319637506, 1176027535751712770, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908323831810, 1166578249276309505, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908332220418, 1166578449990533122, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908336414722, 1166578774650634241, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908348997633, 1176034245165895681, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908357386241, 1176034437491511297, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908361580545, 1168351342516719617, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908369969154, 1168351495784976385, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908374163458, 1168351831471902721, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908378357761, 1169419061609607170, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908386746369, 1169419220691169282, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908390940673, 1169419556168380417, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908399329281, 1169419786385338369, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908403523585, 1169419989381263361, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908407717890, 1166615711902011393, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908416106498, 1166615998372974593, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908420300801, 1171338469370159106, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908428689409, 1171350431969771521, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908432883714, 1171350858677288962, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908437078017, 1171351021999292417, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908445466626, 1171351157219459074, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908449660930, 1171351454109073409, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908453855234, 1171351698523750401, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908462243842, 1172031046809546753, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908466438146, 1178126909319401474, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908474826753, 1173487410828255233, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908479021058, 1176318924834156545, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908487409665, 1178193111056068610, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908491603970, 1173842320698613762, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908495798274, 1173842464475160578, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908504186881, 1173850994225684481, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908508381185, 1174498288184811521, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908512575489, 1174498620117835778, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908516769793, 1174498898552512514, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908529352705, 1174603337644843009, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908533547010, 1174603548538642433, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908537741313, 1174603806878408706, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908546129922, 1174603972339507202, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908554518529, 1174604134436773890, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908600655873, 1174604333372612609, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192332908609044482, 1182203181418864642, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348042080257, 105, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348197269505, 128, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348197269506, 134, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348205658113, 158, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348209852417, 159, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348218241025, 131, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348222435329, 135, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348226629634, 136, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348230823937, 137, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348239212546, 152, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348243406849, 153, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348247601153, 154, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348251795458, 1178152883047493634, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348255989761, 1178157001250041858, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348260184066, 133, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348268572674, 160, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348272766977, 161, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348276961281, 1144441072852684801, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348281155586, 1144441072852684802, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348289544194, 1144441072852684803, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1192333348293738498, 1144441072852684804, 1192332846487207937);
INSERT INTO `sys_relation` VALUES (1278527794980110337, 1278527271262535681, 1);
INSERT INTO `sys_relation` VALUES (1279093968533045250, 1279093837322633217, 1);
INSERT INTO `sys_relation` VALUES (1279210321302519810, 1279210211504029697, 1);
INSERT INTO `sys_relation` VALUES (1279212179890896898, 1279210930881691650, 1);
INSERT INTO `sys_relation` VALUES (1279658756912721921, 1279657395353563137, 1);
INSERT INTO `sys_relation` VALUES (1279658756933693441, 1279658721730899970, 1);
INSERT INTO `sys_relation` VALUES (1279719869566156802, 1279718191324463105, 1);
INSERT INTO `sys_relation` VALUES (1279719869582934017, 1279718613023981570, 1);
INSERT INTO `sys_relation` VALUES (1279719869591322626, 1279718868008304642, 1);
INSERT INTO `sys_relation` VALUES (1279719869603905538, 1279719478128541698, 1);
INSERT INTO `sys_relation` VALUES (1279719869612294145, 1279719659544772609, 1);
INSERT INTO `sys_relation` VALUES (1279719869629071362, 1279719795427639297, 1);
INSERT INTO `sys_relation` VALUES (1279724232397291521, 1279722873841254402, 1);
INSERT INTO `sys_relation` VALUES (1279724232422457346, 1279723300137730049, 1);
INSERT INTO `sys_relation` VALUES (1279724232430845954, 1279723638555148290, 1);
INSERT INTO `sys_relation` VALUES (1279724232439234562, 1279723866771423234, 1);
INSERT INTO `sys_relation` VALUES (1279724232443428866, 1279724151405281282, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL COMMENT '主键id',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提示',
  `sort` int(11) NULL DEFAULT NULL COMMENT '序号',
  `version` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 0, '超级管理员', 'administrator', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES (5, 1, '第三方登录', 'oauth_role', 2, NULL, NULL, '2019-06-11 13:59:40', NULL, 1);
INSERT INTO `sys_role` VALUES (1192332846487207937, 0, '测试账号', '测试', NULL, NULL, '2019-11-07 14:47:58', NULL, 1, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL COMMENT '主键id',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `account` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `sex` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别(字典)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id(多个逗号隔开)',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id(多个逗号隔开)',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(字典)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `version` int(11) NULL DEFAULT NULL COMMENT '乐观锁',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '1278514839072849921', 'admin', '1d6b1208c7d151d335790276a18e3d99', 'q6taw', '管理员', '2020-03-01 00:00:00', 'M', '123@qq.com', '18200000000', '1', 24, 'ENABLE', '2016-01-29 08:49:53', NULL, '2020-07-02 10:24:26', 24, 25);
INSERT INTO `sys_user` VALUES (1278554183322103810, NULL, 'test', 'fb4814394bf08dc80694ea6d1aa04bf8', 'a1v1r', '测试用户', '2020-07-16 00:00:00', 'M', '111111@qq.com', '16677771021', '1', 25, 'ENABLE', '2020-07-02 13:00:46', 1, '2020-07-02 13:05:01', 1278554183322103810, NULL);

-- ----------------------------
-- Table structure for sys_user_pos
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_pos`;
CREATE TABLE `sys_user_pos`  (
  `user_pos_id` bigint(20) NOT NULL COMMENT '主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `pos_id` bigint(20) NOT NULL COMMENT '职位id',
  PRIMARY KEY (`user_pos_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户职位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_pos
-- ----------------------------
INSERT INTO `sys_user_pos` VALUES (1192333090063024129, 1192333090050441218, 2);
INSERT INTO `sys_user_pos` VALUES (1278555251921711105, 1278554183322103810, 1);

SET FOREIGN_KEY_CHECKS = 1;
