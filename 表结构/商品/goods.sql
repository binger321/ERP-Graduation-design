/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50719
Source Host           : 118.31.73.194:4306
Source Database       : zby_goodsdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-13 15:33:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_code` varchar(100) NOT NULL COMMENT '商品货号',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_en_name` varchar(100) DEFAULT NULL COMMENT '商品英文名称',
  `main_img_url` varchar(2000) DEFAULT NULL,
  `category_one_id` int(11) DEFAULT NULL COMMENT '一级分类ID',
  `category_two_id` int(11) DEFAULT NULL COMMENT '二级分类ID',
  `category_three_id` int(11) DEFAULT NULL COMMENT '三级分类ID',
  `category_four_id` int(11) DEFAULT NULL COMMENT '四级分类ID',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌ID',
  `cost_price` decimal(16,8) DEFAULT NULL COMMENT '成本价',
  `weight` decimal(8,4) DEFAULT NULL,
  `specification` varchar(50) DEFAULT NULL COMMENT '规格',
  `model` varchar(50) DEFAULT NULL COMMENT '型号',
  `material` varchar(50) DEFAULT NULL COMMENT '材质',
  `is_production` int(11) DEFAULT NULL COMMENT '是否生产款 100采购款 200生产款 300部分生产部分采购',
  `manager_id` int(11) DEFAULT NULL COMMENT '负责人ID',
  `manager_name` varchar(100) DEFAULT NULL COMMENT '负责人',
  `purchase_link` varchar(100) DEFAULT NULL COMMENT '采购链接',
  `same_purchase_link` varchar(100) DEFAULT NULL COMMENT '同款采购链接',
  `style_id` int(11) DEFAULT NULL COMMENT '款式ID',
  `style_one` varchar(50) DEFAULT NULL COMMENT '风格1',
  `style_two` varchar(50) DEFAULT NULL COMMENT '风格2',
  `style_three` varchar(50) DEFAULT NULL COMMENT '风格3',
  `style_four` varchar(50) DEFAULT NULL COMMENT '风格4',
  `style_five` varchar(50) DEFAULT NULL COMMENT '风格5',
  `style_six` varchar(50) DEFAULT NULL COMMENT '风格6',
  `style_seven` varchar(50) DEFAULT NULL COMMENT '风格7',
  `style_eight` varchar(50) DEFAULT NULL COMMENT '风格8',
  `goods_type` int(11) DEFAULT NULL COMMENT '商品类型 1普通款，2半精品，3精品款，4星标款',
  `status` bit(1) DEFAULT b'1' COMMENT '0禁用, 1启用',
  `block_time` datetime DEFAULT NULL COMMENT '停用时间',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifier` varchar(50) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_code` (`goods_code`),
  KEY `idx_goods_code` (`goods_code`),
  KEY `idx_goods_name` (`goods_name`),
  KEY `idx_goods_en_name` (`goods_en_name`),
  KEY `idx_category_one_id` (`category_one_id`),
  KEY `idx_category_two_id` (`category_two_id`),
  KEY `idx_brand_id` (`brand_id`),
  KEY `idx_manager_id` (`manager_id`),
  KEY `idx_manager_name` (`manager_name`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='商品表';
