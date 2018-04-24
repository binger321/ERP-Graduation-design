/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:33:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `goods_brand`;
CREATE TABLE `goods_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `brand_code` varchar(100) NOT NULL COMMENT '品牌编码',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `country_code` varchar(100) DEFAULT NULL COMMENT '国家编码',
  `country_name` varchar(100) DEFAULT NULL COMMENT '国家名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `block_time` datetime DEFAULT NULL COMMENT '停用时间',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_brand_code` (`brand_code`),
  KEY `idx_brand_name` (`brand_name`),
  KEY `idx_country_code` (`country_code`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品品牌表';
