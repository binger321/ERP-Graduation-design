/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:59:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods_supplier
-- ----------------------------
DROP TABLE IF EXISTS `goods_supplier`;
CREATE TABLE `goods_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `supplier_id` int(11) NOT NULL COMMENT '供应商ID',
  `supplier_code` varchar(100) NOT NULL COMMENT '供应商编码',
  `supplier_name` varchar(100) NOT NULL COMMENT '供应商名称',
  `import_price` decimal(16,8) DEFAULT NULL,
  `purchase_link` varchar(100) DEFAULT NULL COMMENT '采购链接',
  `supplier_goods_code` varchar(100) DEFAULT NULL COMMENT '供应商货号',
  `is_same` bit(1) DEFAULT NULL COMMENT '是否同款',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_id` (`id`),
  KEY `idx_goods_id` (`goods_id`),
  KEY `idx_supplier_id` (`supplier_id`),
  KEY `idx_supplier_code` (`supplier_code`),
  KEY `idx_supplier_name` (`supplier_name`),
  KEY `idx_supplier_goods_code` (`supplier_goods_code`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品供应商表';
