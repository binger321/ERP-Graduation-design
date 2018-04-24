/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:58:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_color
-- ----------------------------
DROP TABLE IF EXISTS `goods_color`;
CREATE TABLE `goods_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `color_code` varchar(100) NOT NULL COMMENT '颜色编码',
  `color_name` varchar(100) NOT NULL COMMENT '颜色名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `block_time` datetime DEFAULT NULL COMMENT '停用时间',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_color_code` (`color_code`),
  KEY `idx_color_name` (`color_name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品颜色表';
