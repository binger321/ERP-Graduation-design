/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:58:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) DEFAULT NULL COMMENT '上级分类ID',
  `category_code` varchar(100) NOT NULL COMMENT '分类编号',
  `category_name` varchar(100) NOT NULL COMMENT '分类名称',
  `category_en_name` varchar(100) DEFAULT NULL COMMENT '商品类别英文名',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '等级（1:一级2:二级3:三级4:四级）',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `block_time` datetime DEFAULT NULL COMMENT '停用时间',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_pid` (`pid`),
  KEY `idx_category_code` (`category_code`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品分类表';
