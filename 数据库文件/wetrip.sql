/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : wetrip

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-11-26 21:16:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wt_collect_travel`
-- ----------------------------
DROP TABLE IF EXISTS `wt_collect_travel`;
CREATE TABLE `wt_collect_travel` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `travel_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `collect_status` enum('收藏','取消收藏') NOT NULL DEFAULT '收藏',
  `collect_time` datetime DEFAULT NULL,
  PRIMARY KEY (`collect_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_collect_travel
-- ----------------------------
INSERT INTO `wt_collect_travel` VALUES ('1', '1', '12345678@qq.com', '收藏', '2018-11-25 14:19:02');
INSERT INTO `wt_collect_travel` VALUES ('2', '2', '12345678@qq.com', '收藏', '2018-11-26 15:19:28');

-- ----------------------------
-- Table structure for `wt_comment`
-- ----------------------------
DROP TABLE IF EXISTS `wt_comment`;
CREATE TABLE `wt_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `comment_content` varchar(500) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  `cparent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_comment
-- ----------------------------
INSERT INTO `wt_comment` VALUES ('1', '12345678@qq.com', '2018-11-26 15:20:02', '评论内容，内容，内容', '2', null);
INSERT INTO `wt_comment` VALUES ('2', '34567888@126.com', '2018-11-26 15:21:07', '回复啊啊啊啊', '2', '1');

-- ----------------------------
-- Table structure for `wt_identity`
-- ----------------------------
DROP TABLE IF EXISTS `wt_identity`;
CREATE TABLE `wt_identity` (
  `identity_id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`identity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_identity
-- ----------------------------
INSERT INTO `wt_identity` VALUES ('1', '编辑');
INSERT INTO `wt_identity` VALUES ('2', '管理员');
INSERT INTO `wt_identity` VALUES ('3', '系统维护者');

-- ----------------------------
-- Table structure for `wt_img`
-- ----------------------------
DROP TABLE IF EXISTS `wt_img`;
CREATE TABLE `wt_img` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_img
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_loginhistory`
-- ----------------------------
DROP TABLE IF EXISTS `wt_loginhistory`;
CREATE TABLE `wt_loginhistory` (
  `loginhistory_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `login_ip` char(15) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`loginhistory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_loginhistory
-- ----------------------------
INSERT INTO `wt_loginhistory` VALUES ('1', '12345678@qq.com', null, '2018-11-26 12:24:27');

-- ----------------------------
-- Table structure for `wt_manager`
-- ----------------------------
DROP TABLE IF EXISTS `wt_manager`;
CREATE TABLE `wt_manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `identity_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_manager
-- ----------------------------
INSERT INTO `wt_manager` VALUES ('1', 'abcdefg@163.com', '1', '1');

-- ----------------------------
-- Table structure for `wt_order`
-- ----------------------------
DROP TABLE IF EXISTS `wt_order`;
CREATE TABLE `wt_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `order_address` varchar(400) DEFAULT NULL,
  `order_status` enum('待发货','已发货','运输中','派送中','已收货') NOT NULL DEFAULT '待发货',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_order
-- ----------------------------
INSERT INTO `wt_order` VALUES ('1', '12345678@qq.com', '2018-11-26 15:31:33', 'xx省xx市xx区xx街道xx号xx小区zzz收', '待发货');
INSERT INTO `wt_order` VALUES ('2', '34567888@126.com', '2018-11-26 15:32:57', 'xx省xx市xx区xx街道xx号xx小区aaa收', '待发货');

-- ----------------------------
-- Table structure for `wt_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `wt_order_detail`;
CREATE TABLE `wt_order_detail` (
  `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderdetail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_order_detail
-- ----------------------------
INSERT INTO `wt_order_detail` VALUES ('1', '1', '1', '1');
INSERT INTO `wt_order_detail` VALUES ('2', '2', '1', '1');

-- ----------------------------
-- Table structure for `wt_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `wt_privilege`;
CREATE TABLE `wt_privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_privilege
-- ----------------------------
INSERT INTO `wt_privilege` VALUES ('1', '发表话题');
INSERT INTO `wt_privilege` VALUES ('2', '禁用用户');
INSERT INTO `wt_privilege` VALUES ('3', '恢复用户');
INSERT INTO `wt_privilege` VALUES ('4', '系统维护');

-- ----------------------------
-- Table structure for `wt_product`
-- ----------------------------
DROP TABLE IF EXISTS `wt_product`;
CREATE TABLE `wt_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(40) DEFAULT NULL,
  `product_description` varchar(300) DEFAULT NULL,
  `price` decimal(5,0) DEFAULT NULL,
  `discount` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_product
-- ----------------------------
INSERT INTO `wt_product` VALUES ('1', '微旅logo水杯', '带有微旅专属logo的水杯', '35', null);
INSERT INTO `wt_product` VALUES ('2', '户外帐篷', 'DIY帐篷', '77', null);

-- ----------------------------
-- Table structure for `wt_tag`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tag`;
CREATE TABLE `wt_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(14) DEFAULT NULL,
  `partent_id` int(11) DEFAULT NULL,
  `tag_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_tag
-- ----------------------------
INSERT INTO `wt_tag` VALUES ('1', '风景', null, null);
INSERT INTO `wt_tag` VALUES ('2', '美食', null, null);
INSERT INTO `wt_tag` VALUES ('3', '玩耍', null, null);
INSERT INTO `wt_tag` VALUES ('4', '小贴士', null, null);
INSERT INTO `wt_tag` VALUES ('5', '山', '1', '7');
INSERT INTO `wt_tag` VALUES ('6', '海', '1', '17');
INSERT INTO `wt_tag` VALUES ('7', '烧烤', '2', '19');
INSERT INTO `wt_tag` VALUES ('8', '游乐场', '3', '21');

-- ----------------------------
-- Table structure for `wt_tag_travelnote`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tag_travelnote`;
CREATE TABLE `wt_tag_travelnote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `travelnote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wt_tag_travelnote
-- ----------------------------

-- ----------------------------
-- Table structure for `wt_topic`
-- ----------------------------
DROP TABLE IF EXISTS `wt_topic`;
CREATE TABLE `wt_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(100) DEFAULT NULL,
  `topic_description` varchar(300) DEFAULT NULL,
  `topictime` datetime DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `user_ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_topic
-- ----------------------------
INSERT INTO `wt_topic` VALUES ('1', '今天你吃了吗？', '描述描述描述', '2018-11-26 15:08:36', 'abcdefg@163.com', null);

-- ----------------------------
-- Table structure for `wt_travelnote`
-- ----------------------------
DROP TABLE IF EXISTS `wt_travelnote`;
CREATE TABLE `wt_travelnote` (
  `travel_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `publishtime` datetime DEFAULT NULL,
  `t_province` varchar(16) DEFAULT NULL,
  `t_city` varchar(40) DEFAULT NULL,
  `praisecount` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `is_long` tinyint(4) DEFAULT '0' COMMENT '文章长短（长文章：1，短文章：0）',
  `travel_status` enum('公开','仅自己可见','违禁','已删除') NOT NULL DEFAULT '公开',
  `commentcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`travel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_travelnote
-- ----------------------------
INSERT INTO `wt_travelnote` VALUES ('1', '12345678@qq.com', '2018-11-26 14:58:14', '河北省', '邯郸市', '120', '这是一个标题', '这里是正文', '0', '0', '公开', '7');
INSERT INTO `wt_travelnote` VALUES ('2', '34567888@126.com', '2018-11-26 15:01:45', '上海', null, '777', '标题啊！！！', '正文正文正文', '1', '0', '公开', '7');

-- ----------------------------
-- Table structure for `wt_user`
-- ----------------------------
DROP TABLE IF EXISTS `wt_user`;
CREATE TABLE `wt_user` (
  `email` varchar(30) NOT NULL,
  `user_password` varchar(16) NOT NULL,
  `user_status` enum('正常','禁用') NOT NULL DEFAULT '正常'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_user
-- ----------------------------
INSERT INTO `wt_user` VALUES ('12345678@qq.com', '12345678', '正常');
INSERT INTO `wt_user` VALUES ('34567888@126.com', '77777777', '正常');
INSERT INTO `wt_user` VALUES ('abcdefg@163.com', 'aaaaaaaaaa', '正常');

-- ----------------------------
-- Table structure for `wt_user_detail`
-- ----------------------------
DROP TABLE IF EXISTS `wt_user_detail`;
CREATE TABLE `wt_user_detail` (
  `email` varchar(30) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `sex` enum('男','女','秘密') NOT NULL DEFAULT '男',
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `user_description` varchar(150) DEFAULT '这个人很懒，什么都没有留下',
  `userhead` varchar(100) DEFAULT NULL,
  `register_time` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_user_detail
-- ----------------------------
INSERT INTO `wt_user_detail` VALUES ('12345678@qq.com', 'zzzzzz', '男', '河北省', '石家庄市', '这个人很懒，什么都没有留下', null, '2018-11-23 20:44:01');
INSERT INTO `wt_user_detail` VALUES ('34567888@126.com', 'aaaaaaa', '女', '河北省', '石家庄市', '这个人很懒，什么都没有留下', null, '2018-11-20 20:43:55');
INSERT INTO `wt_user_detail` VALUES ('abcdefg@163.com', 'aaaaaaaaaa', '秘密', '河北省', '石家庄市', '这个人很懒，什么都没有留下', null, '2018-11-26 20:43:50');
