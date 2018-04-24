/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:58:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `goods_sku`;
CREATE TABLE `goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `sku_code` varchar(100) DEFAULT NULL,
  `sku_name` varchar(100) NOT NULL COMMENT 'SKU名称',
  `img_id` int(11) DEFAULT NULL COMMENT '商品图片ID',
  `color_id` int(11) DEFAULT NULL COMMENT '颜色ID',
  `size_id` int(11) DEFAULT NULL COMMENT '尺寸ID',
  `size` varchar(50) DEFAULT NULL COMMENT '尺码',
  `weight` decimal(8,4) DEFAULT NULL,
  `stock_alarm_num` int(11) DEFAULT NULL COMMENT '警戒库存数',
  `is_production` int(11) DEFAULT NULL COMMENT '是否生产款(100采购款，200生产款，300部分采购，部分生产)',
  `cost_price` decimal(16,8) DEFAULT NULL COMMENT '成本价',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `block_time` datetime DEFAULT NULL COMMENT '停用时间',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `comments` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `idx_goods_id` (`goods_id`),
  KEY `idx_sku_code` (`sku_code`),
  KEY `idx_sku_name` (`sku_name`),
  KEY `idx_img_id` (`img_id`),
  KEY `idx_color_id` (`color_id`),
  KEY `idx_size_id` (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品SKU表';
