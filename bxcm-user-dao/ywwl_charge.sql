/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : bxcm_charge

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-03-10 11:28:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `channel_goods`
-- ----------------------------
DROP TABLE IF EXISTS `channel_goods`;
CREATE TABLE `channel_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `channel_goods_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道商品ID',
  `channel_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道编码',
  `goods_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品ID',
  `channel_goods_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道商品名称',
  `channel_goods_price` int(11) NOT NULL COMMENT '渠道商品价格,单位:分',
  `category_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品类目编码',
  `channel_goods_status` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道商品状态',
  `channel_goods_remark` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道商品备注',
  `is_deleted` tinyint(4) DEFAULT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `channel_goods_index_channel_goods_id` (`channel_goods_id`) USING BTREE,
  KEY `channel_goods_index_channel_code` (`channel_code`) USING BTREE,
  KEY `channel_goods_index_goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='渠道商品';

-- ----------------------------
-- Records of channel_goods
-- ----------------------------
INSERT INTO `channel_goods` VALUES ('1', '111111111', 'taobao', 'W2ScOgfF8L6NJQkT4ko', '淘宝商品1号', '0', 'VIDEO_VIP', '0', null, '0', '2017-03-03 15:01:05', '2017-03-06 17:53:41');
INSERT INTO `channel_goods` VALUES ('2', '123456789', 'taobao', 'QTz5cUbWNbJkWZuxvIN', '淘宝商品2号', '0', 'VIDEO_VIP', '0', null, '0', '2017-03-03 15:44:58', '2017-03-07 10:46:16');
INSERT INTO `channel_goods` VALUES ('3', '2222', 'taobao', 'NW51UcY7IClIoUcDXCM', 'test002', '0', 'VIDEO_VIP', '0', null, '0', '2017-03-06 17:18:37', '2017-03-06 17:53:33');
INSERT INTO `channel_goods` VALUES ('4', '33333', 'taobao', '4sZJGyoniF1orX2HF6G', 'wokao', '0', 'VIDEO_VIP', '0', null, '0', '2017-03-07 10:07:36', '2017-03-07 10:07:36');
INSERT INTO `channel_goods` VALUES ('5', '12346', 'taobao', 'lPDraP9sC4xmtthgXFy', 'ooo', '0', 'VIDEO_VIP', '0', null, '0', '2017-03-07 10:11:05', '2017-03-07 10:11:19');
INSERT INTO `channel_goods` VALUES ('6', '1723456', 'taobao', 'h8bRYgkjqmWqEQtJXpo', '', '0', 'VIDEO_VIP', '0', null, '0', '2017-03-07 10:54:36', '2017-03-07 11:00:57');

-- ----------------------------
-- Table structure for `charge_goods`
-- ----------------------------
DROP TABLE IF EXISTS `charge_goods`;
CREATE TABLE `charge_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品ID',
  `goods_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `platform_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目标平台编码',
  `goods_price` int(11) DEFAULT NULL COMMENT '商品价格,单位:分',
  `category_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品类目编码',
  `goods_status` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品状态',
  `goods_remark` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品备注',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `charge_goods_goods_id` (`goods_id`) USING BTREE,
  KEY `charge_goods_platform_code` (`platform_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品';

-- ----------------------------
-- Records of charge_goods
-- ----------------------------
INSERT INTO `charge_goods` VALUES ('1', 'W2ScOgfF8L6NJQkT4ko', '淘宝商品1号', 'leshi', '10', 'VIDEO_VIP', '0', '{\"months\":\"1\",\"leastMoney\":\"10\",\"type\":\"normal\",\"testRegex\":\"\"}', '0', '2017-03-03 15:01:05', '2017-03-07 10:18:21');
INSERT INTO `charge_goods` VALUES ('5', 'QTz5cUbWNbJkWZuxvIN', '淘宝商品2号', 'sohu', '1500', 'VIDEO_VIP', '0', '{\"months\":\"12\"}', '0', '2017-03-03 15:44:58', '2017-03-07 10:46:16');
INSERT INTO `charge_goods` VALUES ('6', 'NW51UcY7IClIoUcDXCM', 'test002', 'leshi', '1000', 'VIDEO_VIP', '0', '{\"months\":\"6\",\"leastMoney\":\"1000\",\"type\":\"pro\",\"testRegex\":\"testRegex\"}', '0', '2017-03-06 17:18:37', '2017-03-07 10:18:21');
INSERT INTO `charge_goods` VALUES ('7', '4sZJGyoniF1orX2HF6G', 'wokao', 'sohu', '1000', 'VIDEO_VIP', '0', '{\"months\":\"1\"}', '0', '2017-03-07 10:07:36', '2017-03-07 10:18:21');
INSERT INTO `charge_goods` VALUES ('8', 'lPDraP9sC4xmtthgXFy', 'ooo', 'sohu', '15500', 'VIDEO_VIP', '0', '{\"months\":\"3\"}', '0', '2017-03-07 10:11:05', '2017-03-07 10:18:21');
INSERT INTO `charge_goods` VALUES ('9', 'h8bRYgkjqmWqEQtJXpo', '', 'sohu', '115', 'VIDEO_VIP', '0', '{\"months\":\"1\"}', '0', '2017-03-07 10:54:36', '2017-03-07 11:00:57');

-- ----------------------------
-- Table structure for `charge_order`
-- ----------------------------
DROP TABLE IF EXISTS `charge_order`;
CREATE TABLE `charge_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单ID',
  `channel_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道编码',
  `channel_order_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渠道订单ID',
  `platform_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '目标平台编码',
  `platform_order_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台订单ID',
  `order_detail_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单明细ID',
  `order_status` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单状态',
  `order_remark` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单备注',
  `version` smallint(6) NOT NULL COMMENT '版本号',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `charge_order_order_id` (`order_id`) USING BTREE,
  KEY `charge_order_channel_code` (`channel_code`) USING BTREE,
  KEY `charge_order_channel_order_id` (`channel_order_id`) USING BTREE,
  KEY `charge_order_platform_code` (`platform_code`) USING BTREE,
  KEY `charge_order_platform_order_id` (`platform_order_id`) USING BTREE,
  KEY `charge_order_order_detail_id` (`order_detail_id`) USING BTREE,
  KEY `charge_order_order_status` (`order_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单';

-- ----------------------------
-- Records of charge_order
-- ----------------------------
INSERT INTO `charge_order` VALUES ('29', 'THg9cge1BPf6oHGI7BK', 'taobao', 'taobao11111111', 'leshi', '40e60d9329c11335', 'hDeqAdCV2RM0kCeDFFS', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-06 18:17:58', '2017-03-06 18:19:01');
INSERT INTO `charge_order` VALUES ('30', 'RTmKqlgaJrH5fmGuEEq', 'taobao', 'taobao2222222', 'leshi', '4d72ae52e0902288', 'UGdAyG2AmwOxIMJgDLW', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-06 18:19:32', '2017-03-06 18:20:01');
INSERT INTO `charge_order` VALUES ('31', '822Lx4J1smRlYfB8OF9', 'taobao', 'taobao33333333', 'leshi', '4e3a38fce08d9695', 'RN6via3e5louUaIh5dI', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-06 18:19:46', '2017-03-06 18:20:01');
INSERT INTO `charge_order` VALUES ('32', 'BHBszEhw13uft2FW63d', 'taobao', 'taobao44444444', 'leshi', '422ea1a735c1c92a', 'A3iscRpPB8Fi7J0OIQB', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-06 18:21:03', '2017-03-06 18:21:31');
INSERT INTO `charge_order` VALUES ('33', 'DRwpJxWqrCtjJu8zGDB', 'taobao', 'taobao5555555', 'leshi', '4699e48f903c057c', '9QE0VuTTl0HHo0ogREi', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-06 18:21:11', '2017-03-06 18:21:31');
INSERT INTO `charge_order` VALUES ('34', 'VtVJoBCmzMqi6bRs80H', 'taobao', 'taobao666666666666', 'leshi', '4d8fdc58833cfb06', 'Pclt4QMmQ3Bi36ZpDu8', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-06 18:21:28', '2017-03-06 18:21:31');
INSERT INTO `charge_order` VALUES ('35', 'A2JGujpQEh65zDxSHpl2', 'taobao', '77777', 'leshi', '4fa4b36510298709', 'BzQq3PoF9NE0h6UxnME', 'PLATFORM_SUCCESS', null, '9', '0', '2017-09-06 18:29:55', '2017-03-07 11:42:30');
INSERT INTO `charge_order` VALUES ('36', 'ytEU4s8ceUgmClqqCoX2', 'taobao', '777777', 'sohu', '', 'P881O3T42X2ssJFLgqd', 'PLATFORM_SUCCESS', null, '5', '0', '2017-09-06 18:41:58', '2017-03-09 11:07:25');
INSERT INTO `charge_order` VALUES ('37', 'ZJaTIuGPJygbqZUml74', 'taobao', '5555', 'leshi', '4d376a6601a78068', 'CRs5eyE0CLSrEIZ6Z9I', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 11:06:41', '2017-03-09 11:07:25');
INSERT INTO `charge_order` VALUES ('38', 'fX1IEokiCVOtbR3XrPx', 'taobao', '55556', 'leshi', '48e65df1b3d01be6', 'aILF6ETshNlfsPky17g', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:07:36', '2017-03-09 12:08:02');
INSERT INTO `charge_order` VALUES ('39', '9gJsvo2K1MxeJrZfudG', 'taobao', '55556', 'leshi', '4c882e0152ecfe5e', '1ynNzsdk7BC0Y9k07UM', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:07:36', '2017-03-09 12:08:02');
INSERT INTO `charge_order` VALUES ('40', 'Os0d4hFZig96s9snGic', 'taobao', '55556', 'leshi', '40edb40eb9620908', 'qbiPUGbd387lX6Z4ESQ', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:07:36', '2017-03-09 12:08:01');
INSERT INTO `charge_order` VALUES ('41', 'AK9UGQkYDqmF8xhKWUf', 'taobao', '55556', 'leshi', '470b78c5327bad1c', 'WPOJSn8N8dEpLLiR10p', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:07:37', '2017-03-09 12:08:02');
INSERT INTO `charge_order` VALUES ('42', 'CiYbnwfx1BchQG2wmAo', 'taobao', '55556', 'leshi', '469c85f4372ab3a9', 'GL189YeuJOTmocViQEb', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:07:46', '2017-03-09 12:08:02');
INSERT INTO `charge_order` VALUES ('43', '9xN4bk3vLgbP7r3o8BV', 'taobao', '123123', 'leshi', '47b6668006557caa', 'ukoYzRalbbV67iPX3p3', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:08:02', '2017-03-09 12:08:30');
INSERT INTO `charge_order` VALUES ('44', 'MP728J00ZiQayKzTyJZ', 'taobao', '1231234', 'leshi', '4a144794a6aa4e3b', 'ep9SGzg7D4ZwcfM6mJG', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:11:33', '2017-03-09 12:12:01');
INSERT INTO `charge_order` VALUES ('45', '4cmSTKcAgKGom4axDEM', 'taobao', '12312341', 'leshi', '4284e0ae399e041e', 'HUKtZdGWrvT7wfc1vkH', 'PLATFORM_SUCCESS', '签名错误', '1', '0', '2017-03-09 12:11:54', '2017-03-09 12:38:00');
INSERT INTO `charge_order` VALUES ('46', 'nludukQDAKEs8PquRmO', 'taobao', '22312341', 'leshi', '41647f978ff8270e', 'sbN4sutyDTWnsfe2D30', 'PLATFORM_SUCCESS', '签名错误', '1', '0', '2017-03-09 12:13:38', '2017-03-09 12:38:00');
INSERT INTO `charge_order` VALUES ('47', '4NbxuSov6twuRCaXYRj', 'taobao', '22123131', 'leshi', '4429ba8dbc03143c', '7Wr0iguW84UxOgsXZwK', 'PLATFORM_SUCCESS', null, '1', '0', '2017-03-09 12:15:18', '2017-03-09 12:15:30');

-- ----------------------------
-- Table structure for `domain`
-- ----------------------------
DROP TABLE IF EXISTS `domain`;
CREATE TABLE `domain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `remark` varchar(64) NOT NULL COMMENT '描述',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='domain';

-- ----------------------------
-- Records of domain
-- ----------------------------

-- ----------------------------
-- Table structure for `global_config`
-- ----------------------------
DROP TABLE IF EXISTS `global_config`;
CREATE TABLE `global_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `category` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项分组',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项KEY',
  `value` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项VALUE',
  `label` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置项名称',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置项类型',
  `status` tinyint(64) NOT NULL COMMENT '是否生效, 0:未生效, 1:已生效',
  `remark` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注信息',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='全局配置';

-- ----------------------------
-- Records of global_config
-- ----------------------------
INSERT INTO `global_config` VALUES ('1', 'CHARGE_BIZ', 'leshi', 'leshiOrderChargeBiz', '', '', '1', '', '0', '2017-02-23 15:37:25', '2017-02-23 15:51:51');
INSERT INTO `global_config` VALUES ('2', 'CHARGE_BIZ', 'sohu', 'sohuOrderChargeBiz', null, null, '1', null, '0', '2017-02-23 15:31:14', '2017-02-23 15:31:14');
INSERT INTO `global_config` VALUES ('3', 'NOTICE_BIZ', 'taobao', 'taobaoNoticeBiz', null, null, '1', null, '0', '2017-02-23 15:31:14', '2017-02-23 15:31:14');
INSERT INTO `global_config` VALUES ('4', 'NOTICE_BIZ', 'weixin', 'weixinNoticeBiz', null, null, '1', null, '0', '2017-02-23 15:31:14', '2017-02-23 15:31:14');
INSERT INTO `global_config` VALUES ('5', 'GOODS_CRUD_BIZ', 'leshi', 'leshiGoodsCrudBiz', null, null, '1', null, '0', '2017-02-23 15:31:14', '2017-02-23 15:31:14');
INSERT INTO `global_config` VALUES ('6', 'GOODS_CRUD_BIZ', 'sohu', 'sohuGoodsCrudBiz', '', null, '1', '', '0', '2017-02-23 15:46:47', '2017-02-23 15:46:47');
INSERT INTO `global_config` VALUES ('7', 'ORDER_CRUD_BIZ', 'leshi', 'leshiOrderCrudBiz', null, null, '1', null, '0', '2017-03-05 11:54:33', '2017-03-05 11:54:36');
INSERT INTO `global_config` VALUES ('8', 'ORDER_CRUD_BIZ', 'sohu', 'sohuOrderCrudBiz', null, null, '1', null, '0', '2017-03-05 11:54:42', '2017-03-05 11:54:39');
INSERT INTO `global_config` VALUES ('9', 'PARAMS', 'leshiHost', 'http://api.membership.levp.go.le.com', null, null, '1', null, '0', '2017-03-07 11:40:07', '2017-03-07 11:40:10');
INSERT INTO `global_config` VALUES ('10', 'PARAMS', 'sohuHost', 'http://coop.store.sohu.com', null, null, '1', null, '0', '2017-03-07 11:40:20', '2017-03-07 11:40:12');
INSERT INTO `global_config` VALUES ('11', 'PARAMS', 'leshiChannel', '45af3a58a2280b55', null, null, '1', null, '0', '2017-03-07 11:40:25', '2017-03-07 11:40:17');
INSERT INTO `global_config` VALUES ('12', 'PARAMS', 'leshiSecret', 'ff51031859534ae991c90b9ff4990578', null, null, '1', null, '0', '2017-03-07 11:40:23', '2017-03-07 11:40:15');
INSERT INTO `global_config` VALUES ('13', 'PARAMS', 'sohuThirdParty', 'HlesIavQCJIXdGcHsHxhrZzlKEvssIhh', null, null, '1', null, '0', '2017-03-07 11:44:35', '2017-03-07 11:44:38');
INSERT INTO `global_config` VALUES ('14', 'PARAMS', 'sohuPublicKey', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYxRb6raCUOCJ0rLXFFEs+jpqnkF66bosDPl/4IIzVkx7QoHxt8tFpbCPjQxaxioNuM1iMvT06hJbhBrP4FmoGM5B+GG2CBznd3m9S86CNY2Kd3WkTHLJYXF22+OYzsszxEomE0CaG7u+qikhAwU8qfD7b', null, null, '1', null, '0', '2017-03-07 11:46:23', '2017-03-07 11:46:26');

-- ----------------------------
-- Table structure for `global_property`
-- ----------------------------
DROP TABLE IF EXISTS `global_property`;
CREATE TABLE `global_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `obj_category` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对象类型',
  `obj_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对象ID',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属性名称',
  `value` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属性值',
  `is_deleted` tinyint(4) DEFAULT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='全局属性';

-- ----------------------------
-- Records of global_property
-- ----------------------------
INSERT INTO `global_property` VALUES ('1', '1222', 'asd123123', '11dasda', '122122', '1', '2017-02-23 15:51:03', '2017-02-23 18:43:34');
INSERT INTO `global_property` VALUES ('2', '1', '123123', '11', '1122', '0', '2017-02-23 15:52:26', '2017-02-23 15:52:26');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `partener_id` bigint(20) NOT NULL COMMENT '合作方ID',
  `group_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '群组类型',
  `group_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '群组名称',
  `group_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '群组详情',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='群组';

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_detail_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品清单ID',
  `order_total_price` int(11) DEFAULT NULL COMMENT '订单金额,单位:分',
  `order_pay_price` int(11) DEFAULT NULL COMMENT '支付金额,单位:分',
  `channel_goods_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渠道商品ID',
  `order_customer` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单被充值帐号',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `charged_goods_num` int(11) NOT NULL DEFAULT '0' COMMENT '已充值商品数量',
  `goods_snapshot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品快照',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `order_detail_order_detail_id` (`order_detail_id`) USING BTREE,
  KEY `order_detail_channel_goods_id` (`channel_goods_id`) USING BTREE,
  KEY `order_detail_order_customer` (`order_customer`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品清单';

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('29', 'hDeqAdCV2RM0kCeDFFS', '60', '44', '111111111', '18057138888', '6', '6', '222233334444', '0', '2017-03-06 18:17:58', '2017-03-06 18:18:30');
INSERT INTO `order_detail` VALUES ('30', 'UGdAyG2AmwOxIMJgDLW', '60', '44', '111111111', '18057138888', '6', '6', '222233334444', '0', '2017-03-06 18:19:32', '2017-03-06 18:19:32');
INSERT INTO `order_detail` VALUES ('31', 'RN6via3e5louUaIh5dI', '60', '44', '111111111', '18057138888', '6', '6', '222233334444', '0', '2017-03-06 18:19:46', '2017-03-06 18:19:46');
INSERT INTO `order_detail` VALUES ('32', 'A3iscRpPB8Fi7J0OIQB', '40', '88', '111111111', '18057138888', '4', '4', '222233334444', '0', '2017-03-06 18:21:03', '2017-03-06 18:21:03');
INSERT INTO `order_detail` VALUES ('33', '9QE0VuTTl0HHo0ogREi', '40', '88', '111111111', '18057138888', '4', '4', '222233334444', '0', '2017-03-06 18:21:11', '2017-03-06 18:21:11');
INSERT INTO `order_detail` VALUES ('34', 'Pclt4QMmQ3Bi36ZpDu8', '40', '88', '111111111', '18057138888', '4', '4', '222233334444', '0', '2017-03-06 18:21:28', '2017-03-06 18:21:28');
INSERT INTO `order_detail` VALUES ('35', 'BzQq3PoF9NE0h6UxnME', '40', '88', '111111111', '18057138888', '4', '4', '222233334444', '0', '2017-03-06 18:29:55', '2017-03-07 11:42:00');
INSERT INTO `order_detail` VALUES ('36', 'P881O3T42X2ssJFLgqd', '40', '88', '123456789', '18057138888', '4', '4', '222233334444', '0', '2017-03-06 18:41:58', '2017-03-06 18:41:58');
INSERT INTO `order_detail` VALUES ('37', 'CRs5eyE0CLSrEIZ6Z9I', '30', '0', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 11:06:41', '2017-03-09 11:06:41');
INSERT INTO `order_detail` VALUES ('38', 'aILF6ETshNlfsPky17g', '30', '1', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 12:07:37', '2017-03-09 12:07:36');
INSERT INTO `order_detail` VALUES ('39', '1ynNzsdk7BC0Y9k07UM', '30', '1', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 12:07:37', '2017-03-09 12:07:36');
INSERT INTO `order_detail` VALUES ('40', 'qbiPUGbd387lX6Z4ESQ', '30', '1', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 12:07:37', '2017-03-09 12:07:36');
INSERT INTO `order_detail` VALUES ('41', 'WPOJSn8N8dEpLLiR10p', '30', '1', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 12:07:37', '2017-03-09 12:07:37');
INSERT INTO `order_detail` VALUES ('42', 'GL189YeuJOTmocViQEb', '30', '1', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 12:07:46', '2017-03-09 12:07:46');
INSERT INTO `order_detail` VALUES ('43', 'ukoYzRalbbV67iPX3p3', '30', '1', '111111111', '18057138912', '3', '3', '121313123', '0', '2017-03-09 12:08:02', '2017-03-09 12:08:02');
INSERT INTO `order_detail` VALUES ('44', 'ep9SGzg7D4ZwcfM6mJG', '30', '1', '111111111', '18057138912', '3', '3', '123123123', '0', '2017-03-09 12:11:33', '2017-03-09 12:11:33');
INSERT INTO `order_detail` VALUES ('45', 'HUKtZdGWrvT7wfc1vkH', '30', '1', '111111111', '18057138912', '3', '1', '123123123', '0', '2017-03-09 12:11:54', '2017-03-09 12:37:30');
INSERT INTO `order_detail` VALUES ('46', 'sbN4sutyDTWnsfe2D30', '30', '1', '111111111', '18057138912', '3', '1', '123123123', '0', '2017-03-09 12:13:38', '2017-03-09 12:37:30');
INSERT INTO `order_detail` VALUES ('47', '7Wr0iguW84UxOgsXZwK', '30', '1', '111111111', '18057138912', '3', '3', '123123123', '0', '2017-03-09 12:15:18', '2017-03-09 12:15:18');

-- ----------------------------
-- Table structure for `order_log`
-- ----------------------------
DROP TABLE IF EXISTS `order_log`;
CREATE TABLE `order_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单ID',
  `action` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作',
  `operator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `remark` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `order_log_order_id` (`order_id`) USING BTREE,
  KEY `order_log_action` (`action`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=931 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单操作日志';

-- ----------------------------
-- Records of order_log
-- ----------------------------
INSERT INTO `order_log` VALUES ('445', 'A2JGujpQEh65zDxSHpl', 'CREATE', null, '订单创建成功', '2017-03-06 18:29:55');
INSERT INTO `order_log` VALUES ('446', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值完成,充值平台:leshi', '2017-03-06 18:30:01');
INSERT INTO `order_log` VALUES ('447', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:30:01');
INSERT INTO `order_log` VALUES ('448', 'A2JGujpQEh65zDxSHpl', 'TIMEOUT', null, '订单充值成功,充值平台:leshi', '2017-03-06 18:30:01');
INSERT INTO `order_log` VALUES ('449', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-06 18:30:01');
INSERT INTO `order_log` VALUES ('450', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:30:30');
INSERT INTO `order_log` VALUES ('451', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:30:30');
INSERT INTO `order_log` VALUES ('452', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-06 18:30:30');
INSERT INTO `order_log` VALUES ('453', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:31:00');
INSERT INTO `order_log` VALUES ('454', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:31:00');
INSERT INTO `order_log` VALUES ('455', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-06 18:31:12');
INSERT INTO `order_log` VALUES ('456', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:31:30');
INSERT INTO `order_log` VALUES ('457', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:31:30');
INSERT INTO `order_log` VALUES ('458', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-06 18:32:07');
INSERT INTO `order_log` VALUES ('459', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:32:30');
INSERT INTO `order_log` VALUES ('460', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:32:30');
INSERT INTO `order_log` VALUES ('461', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-06 18:33:48');
INSERT INTO `order_log` VALUES ('462', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:34:00');
INSERT INTO `order_log` VALUES ('463', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:34:00');
INSERT INTO `order_log` VALUES ('464', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:37:00');
INSERT INTO `order_log` VALUES ('465', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:37:00');
INSERT INTO `order_log` VALUES ('466', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:39:00');
INSERT INTO `order_log` VALUES ('467', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:39:00');
INSERT INTO `order_log` VALUES ('468', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:40:00');
INSERT INTO `order_log` VALUES ('469', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:40:00');
INSERT INTO `order_log` VALUES ('470', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:41:30');
INSERT INTO `order_log` VALUES ('471', 'A2JGujpQEh65zDxSHpl', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:41:30');
INSERT INTO `order_log` VALUES ('472', 'ytEU4s8ceUgmClqqCoX', 'CREATE', null, '订单创建成功', '2017-03-06 18:41:58');
INSERT INTO `order_log` VALUES ('473', 'ytEU4s8ceUgmClqqCoX', 'PLATFORM_SUCCESS', null, '订单充值完成,充值平台:leshi', '2017-03-06 18:42:01');
INSERT INTO `order_log` VALUES ('474', 'ytEU4s8ceUgmClqqCoX', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:42:01');
INSERT INTO `order_log` VALUES ('475', 'ytEU4s8ceUgmClqqCoX', 'TIMEOUT', null, '订单充值成功,充值平台:leshi', '2017-03-06 18:42:01');
INSERT INTO `order_log` VALUES ('476', 'ytEU4s8ceUgmClqqCoX', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-06 18:42:30');
INSERT INTO `order_log` VALUES ('477', 'ytEU4s8ceUgmClqqCoX', 'PLATFORM_SUCCESS', null, '订单充值已完成,充值平台:leshi', '2017-03-06 18:42:30');
INSERT INTO `order_log` VALUES ('478', 'ytEU4s8ceUgmClqqCoX', 'TIMEOUT', null, '订单修改成功,状态为:TIMEOUT', '2017-03-07 10:59:30');
INSERT INTO `order_log` VALUES ('479', 'ytEU4s8ceUgmClqqCoX', 'TIMEOUT', null, '订单充值已超时,充值平台:sohu', '2017-03-07 10:59:30');
INSERT INTO `order_log` VALUES ('480', 'A2JGujpQEh65zDxSHpl2', 'TIMEOUT', null, '订单修改成功,状态为:TIMEOUT', '2017-03-07 11:42:00');
INSERT INTO `order_log` VALUES ('481', 'A2JGujpQEh65zDxSHpl2', 'TIMEOUT', null, '订单充值已超时,充值平台:leshi', '2017-03-07 11:42:00');
INSERT INTO `order_log` VALUES ('482', 'A2JGujpQEh65zDxSHpl2', 'PLATFORM_SUCCESS', null, '订单充值完成,充值平台:leshi', '2017-03-07 11:42:30');
INSERT INTO `order_log` VALUES ('483', 'A2JGujpQEh65zDxSHpl2', 'PLATFORM_SUCCESS', null, '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-07 11:42:30');
INSERT INTO `order_log` VALUES ('484', 'A2JGujpQEh65zDxSHpl2', 'TIMEOUT', null, '订单充值成功,充值平台:leshi', '2017-03-07 11:42:30');
INSERT INTO `order_log` VALUES ('485', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:54:00');
INSERT INTO `order_log` VALUES ('486', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:54:30');
INSERT INTO `order_log` VALUES ('487', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:55:00');
INSERT INTO `order_log` VALUES ('488', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:55:30');
INSERT INTO `order_log` VALUES ('489', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:56:19');
INSERT INTO `order_log` VALUES ('490', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:57:08');
INSERT INTO `order_log` VALUES ('491', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:58:54');
INSERT INTO `order_log` VALUES ('492', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:59:12');
INSERT INTO `order_log` VALUES ('493', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 11:59:30');
INSERT INTO `order_log` VALUES ('494', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:00:00');
INSERT INTO `order_log` VALUES ('495', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:00:30');
INSERT INTO `order_log` VALUES ('496', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:03:18');
INSERT INTO `order_log` VALUES ('497', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:03:30');
INSERT INTO `order_log` VALUES ('498', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:04:00');
INSERT INTO `order_log` VALUES ('499', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:04:30');
INSERT INTO `order_log` VALUES ('500', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:05:00');
INSERT INTO `order_log` VALUES ('501', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:06:10');
INSERT INTO `order_log` VALUES ('502', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 12:08:30');
INSERT INTO `order_log` VALUES ('503', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:18:00');
INSERT INTO `order_log` VALUES ('504', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:18:30');
INSERT INTO `order_log` VALUES ('505', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:19:00');
INSERT INTO `order_log` VALUES ('506', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:19:30');
INSERT INTO `order_log` VALUES ('507', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:20:00');
INSERT INTO `order_log` VALUES ('508', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:20:30');
INSERT INTO `order_log` VALUES ('509', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:21:00');
INSERT INTO `order_log` VALUES ('510', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:21:30');
INSERT INTO `order_log` VALUES ('511', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:22:00');
INSERT INTO `order_log` VALUES ('512', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:22:30');
INSERT INTO `order_log` VALUES ('513', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:23:00');
INSERT INTO `order_log` VALUES ('514', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:23:30');
INSERT INTO `order_log` VALUES ('515', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:24:00');
INSERT INTO `order_log` VALUES ('516', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:25:31');
INSERT INTO `order_log` VALUES ('517', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:26:00');
INSERT INTO `order_log` VALUES ('518', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:26:30');
INSERT INTO `order_log` VALUES ('519', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:27:00');
INSERT INTO `order_log` VALUES ('520', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:27:30');
INSERT INTO `order_log` VALUES ('521', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:28:00');
INSERT INTO `order_log` VALUES ('522', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:28:30');
INSERT INTO `order_log` VALUES ('523', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:29:00');
INSERT INTO `order_log` VALUES ('524', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:29:30');
INSERT INTO `order_log` VALUES ('525', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:30:00');
INSERT INTO `order_log` VALUES ('526', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:30:30');
INSERT INTO `order_log` VALUES ('527', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:31:00');
INSERT INTO `order_log` VALUES ('528', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:31:30');
INSERT INTO `order_log` VALUES ('529', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:32:00');
INSERT INTO `order_log` VALUES ('530', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:32:30');
INSERT INTO `order_log` VALUES ('531', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:33:00');
INSERT INTO `order_log` VALUES ('532', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:33:30');
INSERT INTO `order_log` VALUES ('533', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:34:00');
INSERT INTO `order_log` VALUES ('534', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:34:30');
INSERT INTO `order_log` VALUES ('535', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:35:00');
INSERT INTO `order_log` VALUES ('536', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:35:30');
INSERT INTO `order_log` VALUES ('537', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:36:00');
INSERT INTO `order_log` VALUES ('538', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:36:30');
INSERT INTO `order_log` VALUES ('539', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:37:00');
INSERT INTO `order_log` VALUES ('540', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:37:30');
INSERT INTO `order_log` VALUES ('541', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:38:00');
INSERT INTO `order_log` VALUES ('542', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:38:30');
INSERT INTO `order_log` VALUES ('543', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:39:00');
INSERT INTO `order_log` VALUES ('544', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:39:30');
INSERT INTO `order_log` VALUES ('545', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:40:00');
INSERT INTO `order_log` VALUES ('546', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:40:30');
INSERT INTO `order_log` VALUES ('547', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:41:00');
INSERT INTO `order_log` VALUES ('548', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:41:30');
INSERT INTO `order_log` VALUES ('549', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:42:00');
INSERT INTO `order_log` VALUES ('550', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:42:30');
INSERT INTO `order_log` VALUES ('551', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:43:00');
INSERT INTO `order_log` VALUES ('552', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:43:30');
INSERT INTO `order_log` VALUES ('553', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:44:00');
INSERT INTO `order_log` VALUES ('554', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:44:30');
INSERT INTO `order_log` VALUES ('555', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:45:00');
INSERT INTO `order_log` VALUES ('556', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:45:30');
INSERT INTO `order_log` VALUES ('557', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:46:00');
INSERT INTO `order_log` VALUES ('558', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:46:30');
INSERT INTO `order_log` VALUES ('559', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:47:00');
INSERT INTO `order_log` VALUES ('560', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:47:30');
INSERT INTO `order_log` VALUES ('561', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:48:00');
INSERT INTO `order_log` VALUES ('562', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:48:30');
INSERT INTO `order_log` VALUES ('563', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:49:00');
INSERT INTO `order_log` VALUES ('564', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:49:30');
INSERT INTO `order_log` VALUES ('565', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:50:00');
INSERT INTO `order_log` VALUES ('566', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:50:30');
INSERT INTO `order_log` VALUES ('567', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:51:00');
INSERT INTO `order_log` VALUES ('568', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:51:30');
INSERT INTO `order_log` VALUES ('569', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:52:00');
INSERT INTO `order_log` VALUES ('570', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:52:30');
INSERT INTO `order_log` VALUES ('571', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:53:00');
INSERT INTO `order_log` VALUES ('572', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:53:30');
INSERT INTO `order_log` VALUES ('573', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:54:00');
INSERT INTO `order_log` VALUES ('574', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:54:31');
INSERT INTO `order_log` VALUES ('575', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:55:00');
INSERT INTO `order_log` VALUES ('576', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:55:30');
INSERT INTO `order_log` VALUES ('577', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:56:00');
INSERT INTO `order_log` VALUES ('578', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:56:30');
INSERT INTO `order_log` VALUES ('579', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:57:00');
INSERT INTO `order_log` VALUES ('580', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:57:30');
INSERT INTO `order_log` VALUES ('581', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:58:00');
INSERT INTO `order_log` VALUES ('582', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:58:30');
INSERT INTO `order_log` VALUES ('583', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 13:59:31');
INSERT INTO `order_log` VALUES ('584', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:00:00');
INSERT INTO `order_log` VALUES ('585', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:00:30');
INSERT INTO `order_log` VALUES ('586', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:01:00');
INSERT INTO `order_log` VALUES ('587', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:01:30');
INSERT INTO `order_log` VALUES ('588', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:02:00');
INSERT INTO `order_log` VALUES ('589', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:02:30');
INSERT INTO `order_log` VALUES ('590', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:03:00');
INSERT INTO `order_log` VALUES ('591', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:03:30');
INSERT INTO `order_log` VALUES ('592', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:04:00');
INSERT INTO `order_log` VALUES ('593', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:04:30');
INSERT INTO `order_log` VALUES ('594', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:05:30');
INSERT INTO `order_log` VALUES ('595', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:06:00');
INSERT INTO `order_log` VALUES ('596', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:06:30');
INSERT INTO `order_log` VALUES ('597', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:07:00');
INSERT INTO `order_log` VALUES ('598', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:07:30');
INSERT INTO `order_log` VALUES ('599', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:08:00');
INSERT INTO `order_log` VALUES ('600', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:08:30');
INSERT INTO `order_log` VALUES ('601', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:09:00');
INSERT INTO `order_log` VALUES ('602', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:09:30');
INSERT INTO `order_log` VALUES ('603', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:10:00');
INSERT INTO `order_log` VALUES ('604', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:10:30');
INSERT INTO `order_log` VALUES ('605', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:11:00');
INSERT INTO `order_log` VALUES ('606', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:11:33');
INSERT INTO `order_log` VALUES ('607', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:12:00');
INSERT INTO `order_log` VALUES ('608', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:12:30');
INSERT INTO `order_log` VALUES ('609', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:13:00');
INSERT INTO `order_log` VALUES ('610', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:13:30');
INSERT INTO `order_log` VALUES ('611', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:14:00');
INSERT INTO `order_log` VALUES ('612', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:14:30');
INSERT INTO `order_log` VALUES ('613', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:15:00');
INSERT INTO `order_log` VALUES ('614', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:15:30');
INSERT INTO `order_log` VALUES ('615', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:16:03');
INSERT INTO `order_log` VALUES ('616', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 14:16:30');
INSERT INTO `order_log` VALUES ('617', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:27:30');
INSERT INTO `order_log` VALUES ('618', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:28:00');
INSERT INTO `order_log` VALUES ('619', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:28:30');
INSERT INTO `order_log` VALUES ('620', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:29:01');
INSERT INTO `order_log` VALUES ('621', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:29:30');
INSERT INTO `order_log` VALUES ('622', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:30:00');
INSERT INTO `order_log` VALUES ('623', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:30:30');
INSERT INTO `order_log` VALUES ('624', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', null, '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-07 15:31:00');
INSERT INTO `order_log` VALUES ('625', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:01:30');
INSERT INTO `order_log` VALUES ('626', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:02:30');
INSERT INTO `order_log` VALUES ('627', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:03:00');
INSERT INTO `order_log` VALUES ('628', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:03:33');
INSERT INTO `order_log` VALUES ('629', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:04:00');
INSERT INTO `order_log` VALUES ('630', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:04:30');
INSERT INTO `order_log` VALUES ('631', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:05:00');
INSERT INTO `order_log` VALUES ('632', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:06:00');
INSERT INTO `order_log` VALUES ('633', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:06:30');
INSERT INTO `order_log` VALUES ('634', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:07:00');
INSERT INTO `order_log` VALUES ('635', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:07:30');
INSERT INTO `order_log` VALUES ('636', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:08:00');
INSERT INTO `order_log` VALUES ('637', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:08:30');
INSERT INTO `order_log` VALUES ('638', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:09:30');
INSERT INTO `order_log` VALUES ('639', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:10:00');
INSERT INTO `order_log` VALUES ('640', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:10:30');
INSERT INTO `order_log` VALUES ('641', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:11:00');
INSERT INTO `order_log` VALUES ('642', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:11:30');
INSERT INTO `order_log` VALUES ('643', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:12:00');
INSERT INTO `order_log` VALUES ('644', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:12:30');
INSERT INTO `order_log` VALUES ('645', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:13:00');
INSERT INTO `order_log` VALUES ('646', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:13:30');
INSERT INTO `order_log` VALUES ('647', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:14:00');
INSERT INTO `order_log` VALUES ('648', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:14:30');
INSERT INTO `order_log` VALUES ('649', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:15:00');
INSERT INTO `order_log` VALUES ('650', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:15:30');
INSERT INTO `order_log` VALUES ('651', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:16:00');
INSERT INTO `order_log` VALUES ('652', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:16:30');
INSERT INTO `order_log` VALUES ('653', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:17:00');
INSERT INTO `order_log` VALUES ('654', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:17:30');
INSERT INTO `order_log` VALUES ('655', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:18:00');
INSERT INTO `order_log` VALUES ('656', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:18:30');
INSERT INTO `order_log` VALUES ('657', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:19:00');
INSERT INTO `order_log` VALUES ('658', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:19:30');
INSERT INTO `order_log` VALUES ('659', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:20:03');
INSERT INTO `order_log` VALUES ('660', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:20:30');
INSERT INTO `order_log` VALUES ('661', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:21:00');
INSERT INTO `order_log` VALUES ('662', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:21:30');
INSERT INTO `order_log` VALUES ('663', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:22:00');
INSERT INTO `order_log` VALUES ('664', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:22:30');
INSERT INTO `order_log` VALUES ('665', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:23:00');
INSERT INTO `order_log` VALUES ('666', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:23:30');
INSERT INTO `order_log` VALUES ('667', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:24:00');
INSERT INTO `order_log` VALUES ('668', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:24:30');
INSERT INTO `order_log` VALUES ('669', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:25:00');
INSERT INTO `order_log` VALUES ('670', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:25:30');
INSERT INTO `order_log` VALUES ('671', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:26:00');
INSERT INTO `order_log` VALUES ('672', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:26:30');
INSERT INTO `order_log` VALUES ('673', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:27:00');
INSERT INTO `order_log` VALUES ('674', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:27:30');
INSERT INTO `order_log` VALUES ('675', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:28:00');
INSERT INTO `order_log` VALUES ('676', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:28:30');
INSERT INTO `order_log` VALUES ('677', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:29:00');
INSERT INTO `order_log` VALUES ('678', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:29:30');
INSERT INTO `order_log` VALUES ('679', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:30:00');
INSERT INTO `order_log` VALUES ('680', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:30:30');
INSERT INTO `order_log` VALUES ('681', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:31:00');
INSERT INTO `order_log` VALUES ('682', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:31:30');
INSERT INTO `order_log` VALUES ('683', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:32:00');
INSERT INTO `order_log` VALUES ('684', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:32:30');
INSERT INTO `order_log` VALUES ('685', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:33:00');
INSERT INTO `order_log` VALUES ('686', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:33:30');
INSERT INTO `order_log` VALUES ('687', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:34:00');
INSERT INTO `order_log` VALUES ('688', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:34:30');
INSERT INTO `order_log` VALUES ('689', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:35:00');
INSERT INTO `order_log` VALUES ('690', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:35:30');
INSERT INTO `order_log` VALUES ('691', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:36:00');
INSERT INTO `order_log` VALUES ('692', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:36:30');
INSERT INTO `order_log` VALUES ('693', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:37:00');
INSERT INTO `order_log` VALUES ('694', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:37:30');
INSERT INTO `order_log` VALUES ('695', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:38:00');
INSERT INTO `order_log` VALUES ('696', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:38:30');
INSERT INTO `order_log` VALUES ('697', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:39:00');
INSERT INTO `order_log` VALUES ('698', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:39:30');
INSERT INTO `order_log` VALUES ('699', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:40:00');
INSERT INTO `order_log` VALUES ('700', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:40:30');
INSERT INTO `order_log` VALUES ('701', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:41:00');
INSERT INTO `order_log` VALUES ('702', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:41:30');
INSERT INTO `order_log` VALUES ('703', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:42:00');
INSERT INTO `order_log` VALUES ('704', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:42:30');
INSERT INTO `order_log` VALUES ('705', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:43:00');
INSERT INTO `order_log` VALUES ('706', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:43:30');
INSERT INTO `order_log` VALUES ('707', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:44:00');
INSERT INTO `order_log` VALUES ('708', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:44:30');
INSERT INTO `order_log` VALUES ('709', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:45:00');
INSERT INTO `order_log` VALUES ('710', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:45:30');
INSERT INTO `order_log` VALUES ('711', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:46:00');
INSERT INTO `order_log` VALUES ('712', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:46:30');
INSERT INTO `order_log` VALUES ('713', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:47:00');
INSERT INTO `order_log` VALUES ('714', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:47:30');
INSERT INTO `order_log` VALUES ('715', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:48:00');
INSERT INTO `order_log` VALUES ('716', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:48:30');
INSERT INTO `order_log` VALUES ('717', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:49:00');
INSERT INTO `order_log` VALUES ('718', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:49:30');
INSERT INTO `order_log` VALUES ('719', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:50:00');
INSERT INTO `order_log` VALUES ('720', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:50:30');
INSERT INTO `order_log` VALUES ('721', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:51:00');
INSERT INTO `order_log` VALUES ('722', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:51:30');
INSERT INTO `order_log` VALUES ('723', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:52:00');
INSERT INTO `order_log` VALUES ('724', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:52:30');
INSERT INTO `order_log` VALUES ('725', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:53:00');
INSERT INTO `order_log` VALUES ('726', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:53:30');
INSERT INTO `order_log` VALUES ('727', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:54:00');
INSERT INTO `order_log` VALUES ('728', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:54:30');
INSERT INTO `order_log` VALUES ('729', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:55:00');
INSERT INTO `order_log` VALUES ('730', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:55:30');
INSERT INTO `order_log` VALUES ('731', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:56:00');
INSERT INTO `order_log` VALUES ('732', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:56:30');
INSERT INTO `order_log` VALUES ('733', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:57:00');
INSERT INTO `order_log` VALUES ('734', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:57:30');
INSERT INTO `order_log` VALUES ('735', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:58:00');
INSERT INTO `order_log` VALUES ('736', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:58:30');
INSERT INTO `order_log` VALUES ('737', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:59:00');
INSERT INTO `order_log` VALUES ('738', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 12:59:30');
INSERT INTO `order_log` VALUES ('739', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:00:00');
INSERT INTO `order_log` VALUES ('740', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:00:30');
INSERT INTO `order_log` VALUES ('741', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:01:00');
INSERT INTO `order_log` VALUES ('742', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:01:30');
INSERT INTO `order_log` VALUES ('743', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:02:00');
INSERT INTO `order_log` VALUES ('744', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:02:30');
INSERT INTO `order_log` VALUES ('745', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:03:00');
INSERT INTO `order_log` VALUES ('746', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:03:30');
INSERT INTO `order_log` VALUES ('747', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:04:00');
INSERT INTO `order_log` VALUES ('748', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:04:30');
INSERT INTO `order_log` VALUES ('749', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:05:00');
INSERT INTO `order_log` VALUES ('750', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:05:30');
INSERT INTO `order_log` VALUES ('751', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:06:00');
INSERT INTO `order_log` VALUES ('752', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:06:30');
INSERT INTO `order_log` VALUES ('753', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:07:00');
INSERT INTO `order_log` VALUES ('754', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:07:30');
INSERT INTO `order_log` VALUES ('755', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:08:00');
INSERT INTO `order_log` VALUES ('756', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:08:30');
INSERT INTO `order_log` VALUES ('757', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:09:00');
INSERT INTO `order_log` VALUES ('758', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:09:30');
INSERT INTO `order_log` VALUES ('759', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:10:00');
INSERT INTO `order_log` VALUES ('760', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:10:30');
INSERT INTO `order_log` VALUES ('761', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:11:00');
INSERT INTO `order_log` VALUES ('762', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:11:30');
INSERT INTO `order_log` VALUES ('763', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:12:00');
INSERT INTO `order_log` VALUES ('764', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:12:30');
INSERT INTO `order_log` VALUES ('765', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:13:00');
INSERT INTO `order_log` VALUES ('766', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:13:30');
INSERT INTO `order_log` VALUES ('767', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:14:00');
INSERT INTO `order_log` VALUES ('768', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:14:30');
INSERT INTO `order_log` VALUES ('769', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:15:00');
INSERT INTO `order_log` VALUES ('770', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:15:30');
INSERT INTO `order_log` VALUES ('771', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:16:00');
INSERT INTO `order_log` VALUES ('772', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:16:30');
INSERT INTO `order_log` VALUES ('773', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:17:00');
INSERT INTO `order_log` VALUES ('774', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:17:30');
INSERT INTO `order_log` VALUES ('775', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:18:00');
INSERT INTO `order_log` VALUES ('776', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:18:30');
INSERT INTO `order_log` VALUES ('777', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:19:00');
INSERT INTO `order_log` VALUES ('778', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:19:30');
INSERT INTO `order_log` VALUES ('779', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:20:00');
INSERT INTO `order_log` VALUES ('780', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:20:30');
INSERT INTO `order_log` VALUES ('781', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:21:00');
INSERT INTO `order_log` VALUES ('782', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:21:30');
INSERT INTO `order_log` VALUES ('783', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:22:00');
INSERT INTO `order_log` VALUES ('784', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:22:30');
INSERT INTO `order_log` VALUES ('785', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:23:00');
INSERT INTO `order_log` VALUES ('786', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:23:30');
INSERT INTO `order_log` VALUES ('787', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:24:00');
INSERT INTO `order_log` VALUES ('788', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:24:30');
INSERT INTO `order_log` VALUES ('789', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:25:00');
INSERT INTO `order_log` VALUES ('790', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:25:30');
INSERT INTO `order_log` VALUES ('791', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:26:00');
INSERT INTO `order_log` VALUES ('792', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:26:30');
INSERT INTO `order_log` VALUES ('793', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:27:00');
INSERT INTO `order_log` VALUES ('794', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:27:30');
INSERT INTO `order_log` VALUES ('795', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:28:00');
INSERT INTO `order_log` VALUES ('796', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:28:30');
INSERT INTO `order_log` VALUES ('797', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:29:00');
INSERT INTO `order_log` VALUES ('798', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:29:30');
INSERT INTO `order_log` VALUES ('799', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:30:00');
INSERT INTO `order_log` VALUES ('800', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:30:30');
INSERT INTO `order_log` VALUES ('801', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:31:00');
INSERT INTO `order_log` VALUES ('802', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:31:30');
INSERT INTO `order_log` VALUES ('803', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:32:00');
INSERT INTO `order_log` VALUES ('804', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:32:30');
INSERT INTO `order_log` VALUES ('805', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:33:00');
INSERT INTO `order_log` VALUES ('806', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:33:30');
INSERT INTO `order_log` VALUES ('807', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:34:00');
INSERT INTO `order_log` VALUES ('808', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:34:30');
INSERT INTO `order_log` VALUES ('809', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:35:00');
INSERT INTO `order_log` VALUES ('810', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:35:30');
INSERT INTO `order_log` VALUES ('811', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:36:00');
INSERT INTO `order_log` VALUES ('812', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:36:30');
INSERT INTO `order_log` VALUES ('813', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:37:00');
INSERT INTO `order_log` VALUES ('814', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:37:30');
INSERT INTO `order_log` VALUES ('815', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:38:00');
INSERT INTO `order_log` VALUES ('816', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:38:30');
INSERT INTO `order_log` VALUES ('817', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:39:00');
INSERT INTO `order_log` VALUES ('818', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:39:30');
INSERT INTO `order_log` VALUES ('819', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:40:00');
INSERT INTO `order_log` VALUES ('820', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:40:30');
INSERT INTO `order_log` VALUES ('821', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:41:00');
INSERT INTO `order_log` VALUES ('822', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:41:30');
INSERT INTO `order_log` VALUES ('823', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:42:00');
INSERT INTO `order_log` VALUES ('824', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:42:30');
INSERT INTO `order_log` VALUES ('825', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:43:00');
INSERT INTO `order_log` VALUES ('826', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:43:30');
INSERT INTO `order_log` VALUES ('827', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:44:00');
INSERT INTO `order_log` VALUES ('828', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:44:30');
INSERT INTO `order_log` VALUES ('829', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:45:00');
INSERT INTO `order_log` VALUES ('830', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:45:30');
INSERT INTO `order_log` VALUES ('831', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:46:00');
INSERT INTO `order_log` VALUES ('832', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:46:30');
INSERT INTO `order_log` VALUES ('833', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:47:00');
INSERT INTO `order_log` VALUES ('834', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:47:30');
INSERT INTO `order_log` VALUES ('835', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:48:00');
INSERT INTO `order_log` VALUES ('836', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:48:30');
INSERT INTO `order_log` VALUES ('837', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:49:00');
INSERT INTO `order_log` VALUES ('838', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:49:33');
INSERT INTO `order_log` VALUES ('839', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:50:00');
INSERT INTO `order_log` VALUES ('840', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:50:30');
INSERT INTO `order_log` VALUES ('841', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:51:00');
INSERT INTO `order_log` VALUES ('842', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:51:30');
INSERT INTO `order_log` VALUES ('843', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:52:00');
INSERT INTO `order_log` VALUES ('844', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:52:30');
INSERT INTO `order_log` VALUES ('845', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:53:00');
INSERT INTO `order_log` VALUES ('846', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:53:30');
INSERT INTO `order_log` VALUES ('847', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:54:00');
INSERT INTO `order_log` VALUES ('848', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:54:30');
INSERT INTO `order_log` VALUES ('849', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:55:00');
INSERT INTO `order_log` VALUES ('850', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:55:30');
INSERT INTO `order_log` VALUES ('851', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:56:00');
INSERT INTO `order_log` VALUES ('852', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:56:30');
INSERT INTO `order_log` VALUES ('853', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:57:00');
INSERT INTO `order_log` VALUES ('854', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:57:30');
INSERT INTO `order_log` VALUES ('855', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:58:00');
INSERT INTO `order_log` VALUES ('856', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-08 13:58:30');
INSERT INTO `order_log` VALUES ('857', 'ZJaTIuGPJygbqZUml74', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 11:06:41');
INSERT INTO `order_log` VALUES ('858', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:sohu', '2017-03-09 11:07:25');
INSERT INTO `order_log` VALUES ('859', 'ytEU4s8ceUgmClqqCoX2', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 11:07:25');
INSERT INTO `order_log` VALUES ('860', 'ytEU4s8ceUgmClqqCoX2', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:sohu', '2017-03-09 11:07:25');
INSERT INTO `order_log` VALUES ('861', 'ZJaTIuGPJygbqZUml74', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 11:07:25');
INSERT INTO `order_log` VALUES ('862', 'ZJaTIuGPJygbqZUml74', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 11:07:25');
INSERT INTO `order_log` VALUES ('863', 'ZJaTIuGPJygbqZUml74', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 11:07:25');
INSERT INTO `order_log` VALUES ('864', '9gJsvo2K1MxeJrZfudG', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:07:37');
INSERT INTO `order_log` VALUES ('865', 'Os0d4hFZig96s9snGic', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:07:37');
INSERT INTO `order_log` VALUES ('866', 'fX1IEokiCVOtbR3XrPx', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:07:43');
INSERT INTO `order_log` VALUES ('867', 'AK9UGQkYDqmF8xhKWUf', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:07:43');
INSERT INTO `order_log` VALUES ('868', 'CiYbnwfx1BchQG2wmAo', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:07:46');
INSERT INTO `order_log` VALUES ('869', 'Os0d4hFZig96s9snGic', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:08:01');
INSERT INTO `order_log` VALUES ('870', 'Os0d4hFZig96s9snGic', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:08:01');
INSERT INTO `order_log` VALUES ('871', 'fX1IEokiCVOtbR3XrPx', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('872', 'CiYbnwfx1BchQG2wmAo', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('873', '9gJsvo2K1MxeJrZfudG', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('874', 'AK9UGQkYDqmF8xhKWUf', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('875', 'Os0d4hFZig96s9snGic', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('876', 'CiYbnwfx1BchQG2wmAo', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('877', 'fX1IEokiCVOtbR3XrPx', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('878', '9gJsvo2K1MxeJrZfudG', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('879', 'AK9UGQkYDqmF8xhKWUf', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('880', 'CiYbnwfx1BchQG2wmAo', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('881', '9gJsvo2K1MxeJrZfudG', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('882', 'fX1IEokiCVOtbR3XrPx', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('883', 'AK9UGQkYDqmF8xhKWUf', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('884', '9xN4bk3vLgbP7r3o8BV', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:08:02');
INSERT INTO `order_log` VALUES ('885', '9xN4bk3vLgbP7r3o8BV', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:08:30');
INSERT INTO `order_log` VALUES ('886', '9xN4bk3vLgbP7r3o8BV', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:08:30');
INSERT INTO `order_log` VALUES ('887', '9xN4bk3vLgbP7r3o8BV', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:08:30');
INSERT INTO `order_log` VALUES ('888', 'MP728J00ZiQayKzTyJZ', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:11:33');
INSERT INTO `order_log` VALUES ('889', '4cmSTKcAgKGom4axDEM', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:11:54');
INSERT INTO `order_log` VALUES ('890', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:12:00');
INSERT INTO `order_log` VALUES ('891', 'MP728J00ZiQayKzTyJZ', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:12:01');
INSERT INTO `order_log` VALUES ('892', 'MP728J00ZiQayKzTyJZ', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:12:01');
INSERT INTO `order_log` VALUES ('893', 'MP728J00ZiQayKzTyJZ', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:12:01');
INSERT INTO `order_log` VALUES ('894', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:12:30');
INSERT INTO `order_log` VALUES ('895', 'nludukQDAKEs8PquRmO', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:13:38');
INSERT INTO `order_log` VALUES ('896', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:13:38');
INSERT INTO `order_log` VALUES ('897', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:15:03');
INSERT INTO `order_log` VALUES ('898', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:15:03');
INSERT INTO `order_log` VALUES ('899', '4NbxuSov6twuRCaXYRj', 'CREATE', 'SYSTEM', '订单创建成功', '2017-03-09 12:15:18');
INSERT INTO `order_log` VALUES ('900', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:15:30');
INSERT INTO `order_log` VALUES ('901', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:15:30');
INSERT INTO `order_log` VALUES ('902', '4NbxuSov6twuRCaXYRj', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:15:30');
INSERT INTO `order_log` VALUES ('903', '4NbxuSov6twuRCaXYRj', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:15:30');
INSERT INTO `order_log` VALUES ('904', '4NbxuSov6twuRCaXYRj', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:15:30');
INSERT INTO `order_log` VALUES ('905', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:25:30');
INSERT INTO `order_log` VALUES ('906', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:25:30');
INSERT INTO `order_log` VALUES ('907', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:26:00');
INSERT INTO `order_log` VALUES ('908', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:26:00');
INSERT INTO `order_log` VALUES ('909', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:26:30');
INSERT INTO `order_log` VALUES ('910', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:26:30');
INSERT INTO `order_log` VALUES ('911', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:27:00');
INSERT INTO `order_log` VALUES ('912', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:27:00');
INSERT INTO `order_log` VALUES ('913', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:27:30');
INSERT INTO `order_log` VALUES ('914', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:27:30');
INSERT INTO `order_log` VALUES ('915', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:28:00');
INSERT INTO `order_log` VALUES ('916', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:28:00');
INSERT INTO `order_log` VALUES ('917', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:37:01');
INSERT INTO `order_log` VALUES ('918', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:37:01');
INSERT INTO `order_log` VALUES ('919', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:37:30');
INSERT INTO `order_log` VALUES ('920', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:37:30');
INSERT INTO `order_log` VALUES ('921', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('922', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('923', 'nludukQDAKEs8PquRmO', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('924', 'nludukQDAKEs8PquRmO', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('925', '4cmSTKcAgKGom4axDEM', 'PLATFORM_FAILED', 'SYSTEM', '订单修改成功,状态为:PLATFORM_FAILED', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('926', 'nludukQDAKEs8PquRmO', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('927', '4cmSTKcAgKGom4axDEM', 'PLATFORM_SUCCESS', 'SYSTEM', '订单充值完成,充值平台:leshi', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('928', 'nludukQDAKEs8PquRmO', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('929', '4cmSTKcAgKGom4axDEM', 'PLATFORM_SUCCESS', 'SYSTEM', '订单修改成功,状态为:PLATFORM_SUCCESS', '2017-03-09 12:38:00');
INSERT INTO `order_log` VALUES ('930', '4cmSTKcAgKGom4axDEM', 'TIMEOUT', 'SYSTEM', '订单充值成功,充值平台:leshi', '2017-03-09 12:38:01');

-- ----------------------------
-- Table structure for `partner`
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '合作方类型',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '合作方名称',
  `remark` varchar(124) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作方';

-- ----------------------------
-- Records of partner
-- ----------------------------

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `domain_id` bigint(20) NOT NULL COMMENT 'domainId',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限描述',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for `repeat_check`
-- ----------------------------
DROP TABLE IF EXISTS `repeat_check`;
CREATE TABLE `repeat_check` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `repeat_biz` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '去重业务',
  `repeat_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '去重KEY',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_repeatbiz_repeatkey` (`repeat_biz`,`repeat_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of repeat_check
-- ----------------------------
INSERT INTO `repeat_check` VALUES ('1', 'ChargeOrder', 'tb111111', '2017-03-03 18:31:58');
INSERT INTO `repeat_check` VALUES ('2', 'ChargeOrder', 'tb22222222', '2017-03-03 18:32:14');
INSERT INTO `repeat_check` VALUES ('3', 'ChargeOrder', 'tb333333333', '2017-03-05 13:08:04');
INSERT INTO `repeat_check` VALUES ('4', 'ChargeOrder', 'tb444444444', '2017-03-05 13:20:25');
INSERT INTO `repeat_check` VALUES ('23', 'ChargeOrder', 'tbtest111', '2017-03-06 13:37:22');
INSERT INTO `repeat_check` VALUES ('24', 'ChargeOrder', 'tbtest1112', '2017-03-06 14:41:26');
INSERT INTO `repeat_check` VALUES ('25', 'ChargeOrder', 'tbtest22222', '2017-03-06 14:43:29');
INSERT INTO `repeat_check` VALUES ('26', 'ChargeOrder', 'dem222222', '2017-03-06 16:22:37');
INSERT INTO `repeat_check` VALUES ('27', 'ChargeOrder', 'demo', '2017-03-06 16:24:46');
INSERT INTO `repeat_check` VALUES ('28', 'ChargeOrder', 'demo222222222', '2017-03-06 17:48:39');
INSERT INTO `repeat_check` VALUES ('29', 'ChargeOrder', 'taobao11111111', '2017-03-06 18:17:58');
INSERT INTO `repeat_check` VALUES ('30', 'ChargeOrder', 'taobao2222222', '2017-03-06 18:19:33');
INSERT INTO `repeat_check` VALUES ('31', 'ChargeOrder', 'taobao33333333', '2017-03-06 18:19:46');
INSERT INTO `repeat_check` VALUES ('32', 'ChargeOrder', 'taobao44444444', '2017-03-06 18:21:03');
INSERT INTO `repeat_check` VALUES ('33', 'ChargeOrder', 'taobao5555555', '2017-03-06 18:21:11');
INSERT INTO `repeat_check` VALUES ('34', 'ChargeOrder', 'taobao666666666666', '2017-03-06 18:21:28');
INSERT INTO `repeat_check` VALUES ('35', 'ChargeOrder', 'taobao77777', '2017-03-06 18:29:55');
INSERT INTO `repeat_check` VALUES ('36', 'ChargeOrder', '777777', '2017-03-06 18:41:58');
INSERT INTO `repeat_check` VALUES ('37', 'ChargeOrder', '5555', '2017-03-09 11:06:41');
INSERT INTO `repeat_check` VALUES ('38', 'ChargeOrder', '55556', '2017-03-09 12:07:43');
INSERT INTO `repeat_check` VALUES ('43', 'ChargeOrder', '123123', '2017-03-09 12:08:02');
INSERT INTO `repeat_check` VALUES ('44', 'ChargeOrder', '1231234', '2017-03-09 12:11:33');
INSERT INTO `repeat_check` VALUES ('45', 'ChargeOrder', '12312341', '2017-03-09 12:11:54');
INSERT INTO `repeat_check` VALUES ('46', 'ChargeOrder', '22312341', '2017-03-09 12:13:38');
INSERT INTO `repeat_check` VALUES ('47', 'ChargeOrder', '22123131', '2017-03-09 12:15:18');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `domain_id` bigint(20) NOT NULL COMMENT 'DomainID',
  `role_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `role_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色描述',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `partener_id` int(11) NOT NULL COMMENT '合作方ID',
  `user_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户手机号',
  `user_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户类型',
  `user_password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户密码',
  `user_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户详情',
  `is_deleted` tinyint(4) NOT NULL COMMENT '是否已删除, 0:未删除, 1:已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
