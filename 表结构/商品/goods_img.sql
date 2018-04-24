/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:58:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_img`;
CREATE TABLE `goods_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `img_code` varchar(100) NOT NULL COMMENT '图片编码',
  `img_no` varchar(50) NOT NULL COMMENT '图号',
  `img_url` varchar(500) NOT NULL COMMENT '图片URL',
  `is_main` bit(1) DEFAULT NULL COMMENT '是否主图',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品图片表';
