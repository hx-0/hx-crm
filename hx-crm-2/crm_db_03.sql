/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : crm_db_03

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-03-29 18:19:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(50) NOT NULL,
  `head` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES ('1', '外套', '张三', '15928374610', '阿迪达斯夏季运动型风衣', '2020-03-28 17:47:25', '2020-03-29 16:53:12', '0');
INSERT INTO `business` VALUES ('2', '水果', '李四', '13579246813', '新疆哈密瓜', '2020-03-29 14:03:16', '2020-03-29 16:09:56', '0');
INSERT INTO `business` VALUES ('4', '电脑', '王五', '13687925410', '一台联想ThinkPadE480笔记本电脑', '2020-03-29 16:28:49', '2020-03-29 16:28:49', '0');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `way` varchar(50) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', '微信：HX-529459', null, '2020-03-28 17:32:18', '2020-03-28 17:32:20', '0');
INSERT INTO `contact` VALUES ('2', 'QQ：2556298642', null, '2020-03-28 22:39:06', '2020-03-28 22:39:06', '0');
INSERT INTO `contact` VALUES ('3', '电话：12326137641', null, '2020-03-29 13:48:20', '2020-03-29 13:48:20', '0');
INSERT INTO `contact` VALUES ('4', '微信：fees4534', null, '2020-03-29 17:20:50', '2020-03-29 17:20:50', '0');

-- ----------------------------
-- Table structure for cont_cust_emp
-- ----------------------------
DROP TABLE IF EXISTS `cont_cust_emp`;
CREATE TABLE `cont_cust_emp` (
  `contact_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`contact_id`,`customer_id`,`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cont_cust_emp
-- ----------------------------
INSERT INTO `cont_cust_emp` VALUES ('1', '1', '2', '2020-03-28 17:32:32', '2020-03-29 14:07:26', '0');
INSERT INTO `cont_cust_emp` VALUES ('2', '6', '3', '2020-03-28 22:39:06', '2020-03-29 13:44:38', '0');
INSERT INTO `cont_cust_emp` VALUES ('3', '7', '3', '2020-03-29 13:48:20', '2020-03-29 14:07:37', '0');
INSERT INTO `cont_cust_emp` VALUES ('4', '8', '22', '2020-03-29 17:20:50', '2020-03-29 17:20:50', '0');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `sex` varchar(3) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `is_orders` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '马云', '男', '12345678910', '阿里巴巴', '杭州', '0', '2020-03-28 17:30:33', '2020-03-29 14:07:26', '0');
INSERT INTO `customer` VALUES ('6', '丁磊', '男', '12345677653', '网易', '广州', '0', '2020-03-28 22:39:06', '2020-03-29 13:44:38', '0');
INSERT INTO `customer` VALUES ('7', '许家印', '男', '12326137641', '恒大集团', '广州', '0', '2020-03-29 13:48:20', '2020-03-29 14:07:37', '0');
INSERT INTO `customer` VALUES ('8', '马化腾', '男', '14562738910', '腾讯', '深圳', '0', '2020-03-29 17:20:50', '2020-03-29 17:20:50', '0');

-- ----------------------------
-- Table structure for customer_emp
-- ----------------------------
DROP TABLE IF EXISTS `customer_emp`;
CREATE TABLE `customer_emp` (
  `customer_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`,`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_emp
-- ----------------------------
INSERT INTO `customer_emp` VALUES ('1', '2', '2020-03-28 17:30:57', '2020-03-29 14:07:26', '0');
INSERT INTO `customer_emp` VALUES ('6', '3', '2020-03-28 22:39:06', '2020-03-29 13:44:38', '0');
INSERT INTO `customer_emp` VALUES ('7', '3', '2020-03-29 13:48:20', '2020-03-29 14:07:37', '0');
INSERT INTO `customer_emp` VALUES ('8', '22', '2020-03-29 17:20:50', '2020-03-29 17:20:50', '0');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '总经理办公室', '2020-03-24 16:41:27', '2020-03-24 16:41:30', '0');
INSERT INTO `department` VALUES ('2', '销售部', '2020-03-24 16:46:05', '2020-03-24 16:46:08', '0');
INSERT INTO `department` VALUES ('3', '财政部', '2020-03-26 23:06:39', '2020-03-26 23:06:39', '0');
INSERT INTO `department` VALUES ('4', '保安部', '2020-03-26 23:08:59', '2020-03-26 23:11:20', '0');
INSERT INTO `department` VALUES ('5', '后勤部', '2020-03-26 23:27:29', '2020-03-26 23:27:29', '0');

-- ----------------------------
-- Table structure for dept_role
-- ----------------------------
DROP TABLE IF EXISTS `dept_role`;
CREATE TABLE `dept_role` (
  `dept_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`dept_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_role
-- ----------------------------
INSERT INTO `dept_role` VALUES ('1', '1', '2020-03-24 16:46:45', '2020-03-24 16:46:47', '0');
INSERT INTO `dept_role` VALUES ('1', '3', '2020-03-26 18:37:04', '2020-03-26 18:25:54', '0');
INSERT INTO `dept_role` VALUES ('2', '2', '2020-03-24 16:46:52', '2020-03-24 16:46:57', '0');
INSERT INTO `dept_role` VALUES ('2', '7', '2020-03-29 13:46:41', '2020-03-29 13:46:41', '0');
INSERT INTO `dept_role` VALUES ('3', '6', '2020-03-29 13:46:25', '2020-03-29 13:46:25', '0');
INSERT INTO `dept_role` VALUES ('4', '5', '2020-03-26 23:11:39', '2020-03-26 23:11:39', '0');
INSERT INTO `dept_role` VALUES ('5', '4', '2020-03-26 18:37:41', '2020-03-26 23:27:48', '0');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(3) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'admin', '58705e917da1d6ef51d3ca8826241aa2', '7f0bcabd0c92', '18', '男', '10086', '广东广州', '2020-03-23 16:33:21', '2020-03-23 16:33:21', '0');
INSERT INTO `employee` VALUES ('2', 'hx', '76e7b3b16adf543f77da2f9e2c7e61a8', '4ea146fd7732', '18', '男', '10010', '广东湛江', '2020-03-24 10:47:29', '2020-03-29 13:46:54', '0');
INSERT INTO `employee` VALUES ('3', '肥春', 'c95db14f1803348e0e84fe8017d69000', '7dae19c9e2c6', '23', '女', '13737264384', '吉林四平', '2020-03-25 19:43:34', '2020-03-29 13:45:37', '0');
INSERT INTO `employee` VALUES ('4', '蓉蓉', '77e218c1338f402926b805e655f98eed', '93bd894d368e', '21', '女', '16432754754', '云南昆明', '2020-03-25 20:04:51', '2020-03-26 22:00:19', '0');
INSERT INTO `employee` VALUES ('17', 'qqq', '0ccbf7ca7ae3ab76e67656c341ea4fe1', 'ea5d9bab756a', '22', '男', '16724673265', '珠海', '2020-03-26 11:55:02', '2020-03-26 23:11:52', '1');
INSERT INTO `employee` VALUES ('18', 'hhghghhgh', '899394d4de73ee534aabcb0d48481abd', '643f6f4b4cd3', '33', '女', '13245743657', '澳门', '2020-03-26 15:50:05', '2020-03-26 17:48:01', '1');
INSERT INTO `employee` VALUES ('19', 'ssss', '941023837f67937be6091bf3124a9d17', '2b15c6c13d4b', '22', '女', '13445567768', '天津', '2020-03-27 18:16:44', '2020-03-27 18:16:56', '1');
INSERT INTO `employee` VALUES ('20', 'ttttt', 'fa43f4749c5b16dce1bad0b2f236ee16', 'a975a05b5431', '3', '女', '14355678894', '河北', '2020-03-27 18:32:39', '2020-03-27 19:38:33', '1');
INSERT INTO `employee` VALUES ('21', 'didi', 'afa4c2b0f104325fab40480ff9a99221', '3e81554b8efa', '45', '男', '13214757458', '杭州', '2020-03-27 19:39:00', '2020-03-29 13:45:22', '0');
INSERT INTO `employee` VALUES ('22', 'kjhgfds', 'ea4823f12e4e27bfbc4419c608801644', 'c9388d0c2ecf', '22', '女', '12145676764', '湖南长沙', '2020-03-28 22:10:10', '2020-03-28 22:10:10', '0');

-- ----------------------------
-- Table structure for emp_role
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `emp_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_role
-- ----------------------------
INSERT INTO `emp_role` VALUES ('1', '1', '2020-03-24 10:48:24', '2020-03-24 10:48:24', '0');
INSERT INTO `emp_role` VALUES ('2', '7', '2020-03-24 10:48:24', '2020-03-29 13:46:54', '0');
INSERT INTO `emp_role` VALUES ('3', '2', '2020-03-25 19:43:34', '2020-03-29 13:45:37', '0');
INSERT INTO `emp_role` VALUES ('4', '3', '2020-03-25 20:04:51', '2020-03-26 22:00:19', '0');
INSERT INTO `emp_role` VALUES ('17', '5', '2020-03-26 11:55:02', '2020-03-26 23:11:52', '0');
INSERT INTO `emp_role` VALUES ('18', '2', '2020-03-26 15:50:05', '2020-03-26 17:48:01', '0');
INSERT INTO `emp_role` VALUES ('19', '5', '2020-03-27 18:16:45', '2020-03-27 18:16:56', '0');
INSERT INTO `emp_role` VALUES ('20', '4', '2020-03-27 18:32:39', '2020-03-27 19:38:33', '0');
INSERT INTO `emp_role` VALUES ('21', '2', '2020-03-27 19:39:00', '2020-03-29 13:45:22', '0');
INSERT INTO `emp_role` VALUES ('22', '2', '2020-03-28 22:10:10', '2020-03-28 22:10:10', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `total_price` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '29999', '2020-03-28 17:29:45', '2020-03-29 16:53:12', '0');
INSERT INTO `orders` VALUES ('2', '211324', '2020-03-29 14:03:40', '2020-03-29 16:09:56', '0');
INSERT INTO `orders` VALUES ('4', '4500', '2020-03-29 16:28:49', '2020-03-29 16:28:49', '0');

-- ----------------------------
-- Table structure for orders_busi_cust
-- ----------------------------
DROP TABLE IF EXISTS `orders_busi_cust`;
CREATE TABLE `orders_busi_cust` (
  `orders_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`orders_id`,`business_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_busi_cust
-- ----------------------------
INSERT INTO `orders_busi_cust` VALUES ('1', '1', '1', '2020-03-28 17:50:41', '2020-03-29 16:53:12', '0');
INSERT INTO `orders_busi_cust` VALUES ('2', '2', '7', '2020-03-29 14:03:59', '2020-03-29 16:09:56', '0');
INSERT INTO `orders_busi_cust` VALUES ('4', '4', '6', '2020-03-29 16:28:49', '2020-03-29 16:28:49', '0');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `perm_id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '查看员工', '/employee', 'employee:list', '2020-03-24 16:37:07', '2020-03-24 16:37:09', '0');
INSERT INTO `permission` VALUES ('2', '查看客户', '/customer', 'customer:list', '2020-03-26 19:49:48', '2020-03-26 20:59:16', '0');
INSERT INTO `permission` VALUES ('3', '查看订单', '/business', 'business:list', '2020-03-29 17:13:47', '2020-03-29 17:13:49', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '总经理', '2020-03-24 10:47:51', '2020-03-24 10:47:51', '0');
INSERT INTO `role` VALUES ('2', '销售员', '2020-03-24 10:47:51', '2020-03-24 10:47:51', '0');
INSERT INTO `role` VALUES ('3', '秘书', '2020-03-26 18:25:54', '2020-03-26 18:37:04', '0');
INSERT INTO `role` VALUES ('4', '保洁员', '2020-03-26 18:37:41', '2020-03-26 23:27:48', '0');
INSERT INTO `role` VALUES ('5', '保安', '2020-03-26 23:11:39', '2020-03-26 23:11:39', '0');
INSERT INTO `role` VALUES ('6', '财政经理', '2020-03-29 13:46:25', '2020-03-29 13:46:25', '0');
INSERT INTO `role` VALUES ('7', '销售经理', '2020-03-29 13:46:41', '2020-03-29 13:46:41', '0');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_del` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`perm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '2020-03-24 16:39:43', '2020-03-24 16:39:46', '0');
INSERT INTO `role_permission` VALUES ('1', '2', '2020-03-26 19:50:30', '2020-03-26 20:59:17', '0');
INSERT INTO `role_permission` VALUES ('1', '3', '2020-03-29 17:18:04', '2020-03-29 17:18:06', '0');
INSERT INTO `role_permission` VALUES ('2', '2', '2020-03-29 17:18:28', '2020-03-29 17:18:30', '0');
INSERT INTO `role_permission` VALUES ('2', '3', '2020-03-29 17:18:36', '2020-03-29 17:18:37', '0');
INSERT INTO `role_permission` VALUES ('7', '2', '2020-03-29 17:18:48', '2020-03-29 17:18:49', '0');
INSERT INTO `role_permission` VALUES ('7', '3', '2020-03-29 17:18:55', '2020-03-29 17:18:57', '0');
