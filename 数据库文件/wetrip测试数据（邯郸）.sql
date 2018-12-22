/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : wetrip

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-22 17:45:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wt_cart`
-- ----------------------------
DROP TABLE IF EXISTS `wt_cart`;
CREATE TABLE `wt_cart` (
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(12) DEFAULT NULL,
  PRIMARY KEY (`email`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wt_cart
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_collect_travel
-- ----------------------------
INSERT INTO `wt_collect_travel` VALUES ('2', '2', '12345678@qq.com', '收藏', '2018-11-26 15:19:28');
INSERT INTO `wt_collect_travel` VALUES ('4', '2', '34567888@126.com', '收藏', null);
INSERT INTO `wt_collect_travel` VALUES ('20', '5', '12345678@qq.com', '收藏', '2018-12-16 23:36:57');
INSERT INTO `wt_collect_travel` VALUES ('22', '6', '1005796431@qq.com', '收藏', '2018-12-17 09:08:45');
INSERT INTO `wt_collect_travel` VALUES ('23', '11', '1005796431@qq.com', '收藏', '2018-12-17 09:10:05');
INSERT INTO `wt_collect_travel` VALUES ('24', '5', '1005796431@qq.com', '收藏', '2018-12-17 09:10:09');
INSERT INTO `wt_collect_travel` VALUES ('25', '1', '12345678@qq.com', '收藏', '2018-12-17 15:11:23');
INSERT INTO `wt_collect_travel` VALUES ('26', '8', '12345678@qq.com', '收藏', '2018-12-17 15:11:38');
INSERT INTO `wt_collect_travel` VALUES ('33', '10', '12345678@qq.com', '收藏', '2018-12-18 16:35:11');
INSERT INTO `wt_collect_travel` VALUES ('29', '9', '12345678@qq.com', '收藏', '2018-12-18 16:32:54');
INSERT INTO `wt_collect_travel` VALUES ('35', '7', '12345678@qq.com', '收藏', '2018-12-18 16:35:18');
INSERT INTO `wt_collect_travel` VALUES ('32', '11', '12345678@qq.com', '收藏', '2018-12-18 16:35:05');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_comment
-- ----------------------------
INSERT INTO `wt_comment` VALUES ('1', '12345678@qq.com', '2018-11-26 15:20:02', '这是一个评论！！！', '2', null);
INSERT INTO `wt_comment` VALUES ('2', '34567888@126.com', '2018-11-26 15:21:07', '回复啊啊啊啊', '2', '1');
INSERT INTO `wt_comment` VALUES ('3', null, null, '评论a！！！', null, '1');
INSERT INTO `wt_comment` VALUES ('4', null, null, '评论a！！！', null, '1');
INSERT INTO `wt_comment` VALUES ('5', '12345678@qq.com', '2018-12-06 22:54:43', '个人风格发动机的年费发放无色服务', '5', null);
INSERT INTO `wt_comment` VALUES ('6', '12345678@qq.com', '2018-12-10 22:54:55', '呜呜呜看我看我看我看我看我看我卡', '5', '5');
INSERT INTO `wt_comment` VALUES ('7', '12345678@qq.com', '2018-12-01 22:55:17', '啦啦啦呢肯定你剪短发你看电视剧', '5', null);
INSERT INTO `wt_comment` VALUES ('8', '12345678@qq.com', '2018-12-17 10:00:09', null, '5', '7');
INSERT INTO `wt_comment` VALUES ('9', '12345678@qq.com', '2018-12-17 10:00:27', null, '5', '5');
INSERT INTO `wt_comment` VALUES ('10', '12345678@qq.com', '2018-12-17 10:05:31', '你好', '5', null);
INSERT INTO `wt_comment` VALUES ('11', '12345678@qq.com', '2018-12-17 10:12:04', '	挺好的', '5', '7');
INSERT INTO `wt_comment` VALUES ('12', '12345678@qq.com', '2018-12-17 15:13:09', '你好', '5', null);
INSERT INTO `wt_comment` VALUES ('13', '12345678@qq.com', '2018-12-17 15:13:29', '	world', '5', '10');
INSERT INTO `wt_comment` VALUES ('14', '12345678@qq.com', '2018-12-18 14:39:23', '看过了', '8', null);
INSERT INTO `wt_comment` VALUES ('15', '12345678@qq.com', '2018-12-18 14:39:32', '	你好', '8', '14');
INSERT INTO `wt_comment` VALUES ('16', '12345678@qq.com', '2018-12-19 17:22:39', '你好', '11', null);
INSERT INTO `wt_comment` VALUES ('17', '12345678@qq.com', '2018-12-19 17:30:53', '单独的', '11', null);
INSERT INTO `wt_comment` VALUES ('18', '12345678@qq.com', '2018-12-20 16:36:47', '孙立莹！！！', '8', null);
INSERT INTO `wt_comment` VALUES ('19', '12345678@qq.com', '2018-12-20 16:37:22', '	今天是周四！！！', '8', '18');

-- ----------------------------
-- Table structure for `wt_identity`
-- ----------------------------
DROP TABLE IF EXISTS `wt_identity`;
CREATE TABLE `wt_identity` (
  `identity_id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`identity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_identity
-- ----------------------------
INSERT INTO `wt_identity` VALUES ('1', '编辑');
INSERT INTO `wt_identity` VALUES ('2', '管理员');
INSERT INTO `wt_identity` VALUES ('3', '系统维护者');
INSERT INTO `wt_identity` VALUES ('4', 'hellp');
INSERT INTO `wt_identity` VALUES ('5', 'hellp');
INSERT INTO `wt_identity` VALUES ('6', 'hellp');
INSERT INTO `wt_identity` VALUES ('7', 'hellp');

-- ----------------------------
-- Table structure for `wt_img`
-- ----------------------------
DROP TABLE IF EXISTS `wt_img`;
CREATE TABLE `wt_img` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_img
-- ----------------------------
INSERT INTO `wt_img` VALUES ('1', 'image/avatar/avatar4.png', '1');
INSERT INTO `wt_img` VALUES ('2', 'image/avatar/avatar1.png', '1');
INSERT INTO `wt_img` VALUES ('3', 'image/avatar/avatar2.png', '1');
INSERT INTO `wt_img` VALUES ('4', 'image/avatar/avatar3.png', '4');
INSERT INTO `wt_img` VALUES ('5', 'image/avatar/avatar1.png', '4');
INSERT INTO `wt_img` VALUES ('6', 'image/avatar/avatar4.png', '5');
INSERT INTO `wt_img` VALUES ('7', 'image/avatar/avatar3.png', '7');
INSERT INTO `wt_img` VALUES ('8', 'image/avatar/avatar3.png', '8');
INSERT INTO `wt_img` VALUES ('9', 'image/avatar/avatar3.png', '9');
INSERT INTO `wt_img` VALUES ('10', 'image/avatar/avatar3.png', '10');
INSERT INTO `wt_img` VALUES ('11', 'image/avatar/avatar2.png', '11');
INSERT INTO `wt_img` VALUES ('12', 'image/avatar/avatar3.png', '5');
INSERT INTO `wt_img` VALUES ('13', 'image/avatar/avatar2.png', '5');
INSERT INTO `wt_img` VALUES ('14', 'image/avatar/avatar1.png', '5');
INSERT INTO `wt_img` VALUES ('15', 'image/avatar/avatar2.png', '5');
INSERT INTO `wt_img` VALUES ('16', 'image/avatar/avatar2.png', '5');
INSERT INTO `wt_img` VALUES ('17', 'image/avatar/avatar2.png', '5');
INSERT INTO `wt_img` VALUES ('18', 'image/avatar/avatar2.png', '5');
INSERT INTO `wt_img` VALUES ('19', 'image/avatar/avatar3.png', '6');
INSERT INTO `wt_img` VALUES ('20', 'image/avatar/avatar3.png', '6');
INSERT INTO `wt_img` VALUES ('21', 'image/avatar/avatar3.png', '6');
INSERT INTO `wt_img` VALUES ('22', 'image\\photo\\a701b69ff014c1b078b1ffedc8562193.jpg', '14');
INSERT INTO `wt_img` VALUES ('23', 'image\\photo\\2749ee22edc2732b0f7e5447599f3f27.jpg', '15');
INSERT INTO `wt_img` VALUES ('24', 'image\\photo\\c5d51e52fe208353c70db844daeaddf1.jpg', '23');
INSERT INTO `wt_img` VALUES ('25', 'image\\photo\\c3007ebd5b59ab6fc45000df1af7838f.jpg', '37');
INSERT INTO `wt_img` VALUES ('26', 'image\\photo\\c3007ebd5b59ab6fc45000df1af7838f.jpg', '38');
INSERT INTO `wt_img` VALUES ('27', 'image\\photo\\de47cbda7730bfc9bdfa7b804bddc7b1.jpg', '40');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_loginhistory
-- ----------------------------
INSERT INTO `wt_loginhistory` VALUES ('1', '12345678@qq.com', null, '2018-11-26 12:24:27');
INSERT INTO `wt_loginhistory` VALUES ('2', '12345678@qq.com', '183.197.99.149', '2018-12-20 16:34:42');
INSERT INTO `wt_loginhistory` VALUES ('3', '12345678@qq.com', '183.197.99.149', '2018-12-20 17:06:57');
INSERT INTO `wt_loginhistory` VALUES ('4', '12345678@qq.com', '183.197.99.149', '2018-12-20 17:07:42');
INSERT INTO `wt_loginhistory` VALUES ('5', '12345678@qq.com', '183.197.99.149', '2018-12-20 17:35:00');

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
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `order_address` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `order_status` enum('待发货','已发货','运输中','派送中','已收货') CHARACTER SET utf8 NOT NULL DEFAULT '待发货',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_order
-- ----------------------------
INSERT INTO `wt_order` VALUES ('1', '12345678@qq.com', '2018-11-26 15:31:33', 'xx省xx市xx区xx街道xx号xx小区zzz收', '待发货');
INSERT INTO `wt_order` VALUES ('2', '34567888@126.com', '2018-11-26 15:32:57', 'xx省xx市xx区xx街道xx号xx小区aaa收', '待发货');
INSERT INTO `wt_order` VALUES ('3', '12345678@qq.com', '2018-12-03 14:47:29', 'xx省xx市xx区xx街道xx号xx小区zzz收', '已发货');

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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_order_detail
-- ----------------------------
INSERT INTO `wt_order_detail` VALUES ('7', '1', '7', '7');
INSERT INTO `wt_order_detail` VALUES ('6', '3', '6', '5');
INSERT INTO `wt_order_detail` VALUES ('5', '2', '5', '6');
INSERT INTO `wt_order_detail` VALUES ('4', '1', '4', '4');
INSERT INTO `wt_order_detail` VALUES ('3', '3', '3', '3');
INSERT INTO `wt_order_detail` VALUES ('2', '2', '2', '2');
INSERT INTO `wt_order_detail` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for `wt_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `wt_privilege`;
CREATE TABLE `wt_privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_privilege
-- ----------------------------
INSERT INTO `wt_privilege` VALUES ('1', '发表话题');
INSERT INTO `wt_privilege` VALUES ('2', '禁用用户');
INSERT INTO `wt_privilege` VALUES ('3', '恢复用户');
INSERT INTO `wt_privilege` VALUES ('4', '系统维护');
INSERT INTO `wt_privilege` VALUES ('5', 'hello');
INSERT INTO `wt_privilege` VALUES ('6', 'hello');

-- ----------------------------
-- Table structure for `wt_privilege_identity`
-- ----------------------------
DROP TABLE IF EXISTS `wt_privilege_identity`;
CREATE TABLE `wt_privilege_identity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wt_privilege_identity
-- ----------------------------
INSERT INTO `wt_privilege_identity` VALUES ('1', '5', '4');
INSERT INTO `wt_privilege_identity` VALUES ('2', '6', '6');

-- ----------------------------
-- Table structure for `wt_product`
-- ----------------------------
DROP TABLE IF EXISTS `wt_product`;
CREATE TABLE `wt_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `product_description` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `product_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,4) DEFAULT NULL,
  `discount` decimal(10,4) DEFAULT NULL,
  `product_how_use` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_product
-- ----------------------------
INSERT INTO `wt_product` VALUES ('1', '微旅logo水杯', '带有微旅专属logo的水杯', 'image/goods/tent1.jpg', '35.2200', '6.1000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');
INSERT INTO `wt_product` VALUES ('2', '户外帐篷', 'DIY帐篷', 'image/goods/post-2.jpg', '77.2200', '1.3000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');
INSERT INTO `wt_product` VALUES ('3', '登山杖', '带有微旅专属logo的登山杖', 'image/goods/tent2.jpg', '100.5400', '5.6000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');
INSERT INTO `wt_product` VALUES ('4', '帐篷2', '12312312', 'image/goods/post-3.jpg', '123.1100', '9.7000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');
INSERT INTO `wt_product` VALUES ('5', '帐篷3', '123123', 'image/goods/tent3.jpg', '122.2200', '1.8000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');
INSERT INTO `wt_product` VALUES ('6', '帐篷1551', '1551', 'image/goods/post-4.jpg', '155.5500', '8.5000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');
INSERT INTO `wt_product` VALUES ('7', '帐篷2552', '2552', 'image/goods/post-1.jpg', '12.1230', '1.6000', '小心使用。\r\n\r\n1、拧开瓶盖，将电蚊香液液瓶向上旋入加热器；\r\n2、配合插座方向，转动加热器插头，确保工作时液瓶呈竖直向上状态；接通电源（220V)，指示灯亮即表示加热器开始工作；\r\n3、使用完毕请将加热器拔离插座，无需旋下液瓶，但保持液瓶竖直向上；\r\n4、当药液用完，请将加热器拔离插座，然后更换补充药液。');

-- ----------------------------
-- Table structure for `wt_tag`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tag`;
CREATE TABLE `wt_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(14) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `tag_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_tag
-- ----------------------------
INSERT INTO `wt_tag` VALUES ('1', '风景', null, '2');
INSERT INTO `wt_tag` VALUES ('2', '美食', null, '2');
INSERT INTO `wt_tag` VALUES ('3', '玩耍', null, '2');
INSERT INTO `wt_tag` VALUES ('4', '小贴士', null, '1');
INSERT INTO `wt_tag` VALUES ('5', '山', '1', '7');
INSERT INTO `wt_tag` VALUES ('6', '海', '1', '17');
INSERT INTO `wt_tag` VALUES ('7', '烧烤', '2', '19');
INSERT INTO `wt_tag` VALUES ('8', '游乐场', '3', '21');
INSERT INTO `wt_tag` VALUES ('9', '天空之镜', '1', '1');
INSERT INTO `wt_tag` VALUES ('10', '索桥', '1', '1');
INSERT INTO `wt_tag` VALUES ('11', '游乐小角', '3', '2');
INSERT INTO `wt_tag` VALUES ('16', '校园', '1', '1');
INSERT INTO `wt_tag` VALUES ('17', '校园', '1', '1');
INSERT INTO `wt_tag` VALUES ('18', '校园', '1', '1');
INSERT INTO `wt_tag` VALUES ('19', '校园', '1', '1');
INSERT INTO `wt_tag` VALUES ('20', '甜甜圈', '2', '1');

-- ----------------------------
-- Table structure for `wt_tag_travelnote`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tag_travelnote`;
CREATE TABLE `wt_tag_travelnote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `travelnote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wt_tag_travelnote
-- ----------------------------
INSERT INTO `wt_tag_travelnote` VALUES ('1', '2', '1');
INSERT INTO `wt_tag_travelnote` VALUES ('2', '1', '4');
INSERT INTO `wt_tag_travelnote` VALUES ('3', '6', '1');
INSERT INTO `wt_tag_travelnote` VALUES ('4', '6', '4');
INSERT INTO `wt_tag_travelnote` VALUES ('5', '1', '5');
INSERT INTO `wt_tag_travelnote` VALUES ('6', '2', '7');
INSERT INTO `wt_tag_travelnote` VALUES ('7', '3', '8');
INSERT INTO `wt_tag_travelnote` VALUES ('8', '4', '9');
INSERT INTO `wt_tag_travelnote` VALUES ('9', '1', '10');
INSERT INTO `wt_tag_travelnote` VALUES ('10', '1', '11');
INSERT INTO `wt_tag_travelnote` VALUES ('11', '3', '6');
INSERT INTO `wt_tag_travelnote` VALUES ('12', '1', '30');
INSERT INTO `wt_tag_travelnote` VALUES ('28', '3', '30');
INSERT INTO `wt_tag_travelnote` VALUES ('29', '3', '31');
INSERT INTO `wt_tag_travelnote` VALUES ('30', '1', '32');
INSERT INTO `wt_tag_travelnote` VALUES ('31', '3', '33');
INSERT INTO `wt_tag_travelnote` VALUES ('32', '1', '34');
INSERT INTO `wt_tag_travelnote` VALUES ('33', '1', '35');
INSERT INTO `wt_tag_travelnote` VALUES ('41', '16', '38');
INSERT INTO `wt_tag_travelnote` VALUES ('40', '1', '38');
INSERT INTO `wt_tag_travelnote` VALUES ('39', '1', '37');
INSERT INTO `wt_tag_travelnote` VALUES ('38', '1', '36');
INSERT INTO `wt_tag_travelnote` VALUES ('42', '17', '38');
INSERT INTO `wt_tag_travelnote` VALUES ('43', '18', '38');
INSERT INTO `wt_tag_travelnote` VALUES ('44', '19', '38');
INSERT INTO `wt_tag_travelnote` VALUES ('45', '3', '39');
INSERT INTO `wt_tag_travelnote` VALUES ('46', '11', '39');
INSERT INTO `wt_tag_travelnote` VALUES ('47', '2', '40');
INSERT INTO `wt_tag_travelnote` VALUES ('48', '20', '40');

-- ----------------------------
-- Table structure for `wt_topic`
-- ----------------------------
DROP TABLE IF EXISTS `wt_topic`;
CREATE TABLE `wt_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(100) DEFAULT NULL,
  `topic_description` varchar(300) DEFAULT NULL,
  `topictime` datetime DEFAULT NULL,
  `user_ip` char(15) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_topic
-- ----------------------------
INSERT INTO `wt_topic` VALUES ('1', '今天你吃了吗？', '描述描述描述', '2018-11-26 15:08:36', null, '1');
INSERT INTO `wt_topic` VALUES ('2', '有趣的风景瞬间', '这是一个描述', '2018-12-06 17:41:06', null, '1');

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
  `travel_status` enum('公开','仅自己可见','违禁','已删除') DEFAULT '公开',
  `commentcount` int(11) DEFAULT NULL,
  `travel_address` varchar(400) DEFAULT NULL,
  `reportcount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`travel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_travelnote
-- ----------------------------
INSERT INTO `wt_travelnote` VALUES ('1', '12345678@qq.com', '2018-11-26 15:58:14', '河北省', '邯郸', '123', '这是一个标题', '这里是正文点击小人，将进入登录页，如果用户是新用户，点击注册进入注册页面\r\n用户输入邮箱、密码、验证码，验证通过插入数据库数据\r\n1）判断邮箱格式是否合适，邮箱的最长长度的判断，最长长度的判断应该在前端已经', '1', '0', '公开', '7', null, '0');
INSERT INTO `wt_travelnote` VALUES ('2', '34567888@126.com', '2018-11-26 15:01:45', '上海', '上海', '777', '标题啊！！！', '正文正文正文点击小人，将进入登录页，如果用户是新用户，点击注册进入注册页面\r\n用户输入邮箱、密码、验证码，验证通过插入数据库数据\r\n1）判断邮箱格式是否合适，邮箱的最长长度的判断，最长长度的判断应该在前端已经', '1', '0', '公开', '7', null, '1');
INSERT INTO `wt_travelnote` VALUES ('3', '12345678@qq.com', '2018-11-26 14:58:14', '山东省', '济南', '0', null, '点击小人，将进入登录页，如果用户是新用户，点击注册进入注册页面\r\n用户输入邮箱、密码、验证码，验证通过插入数据库数据\r\n1）判断邮箱格式是否合适，邮箱的最长长度的判断，最长长度的判断应该在前端已经', '1', '0', '公开', '0', null, '0');
INSERT INTO `wt_travelnote` VALUES ('4', '12345678@qq.com', '2018-11-26 14:58:14', '河北省', '邯郸市', '25', '这里是标题', '你好一个人的旅行，反而会更贴近自己的内心，真正的停下来，享受自我的体验时刻，也许浮光掠影，走马观花之外，这才是深入体验，探索自我的最佳时间，纵然走过那么多城市，对于未知的风景，还是好奇。继续期待我的下一个旅行，拿起背包，感受不同地域不一样的节奏与表象。', '2', '0', '公开', '0', null, '0');
INSERT INTO `wt_travelnote` VALUES ('5', '34567888@126.com', '2018-12-04 14:32:10', '河北省', '邯郸市', '52', '你好啊', '南国的雪向来是不多见的，当每个金色的秋天走到尽头，我总会伸出指头一年一年的数着，只待它的轮回。\r\n雪如鹅毛般飘落，我站在雪地里，呆呆的抬起头，看雪在我头顶上飞舞，旋转，停留，消逝，这是雪！这是雪！我兴奋的在心里叫喊，15年后，再一次伸出手，雪在我的手上再次停下，融化，蒸发，回归。\r\n多少年了，在我的记忆里，没有看过如粉如沙的大雪，没有看见过千里冰封的气势，没有看过万里雪飘的豪壮，只感受过秀气，飘逸，寂寞的雪。南国的雨，当你凝结成了雪，如南朝女子的肤色，亦如琵琶上弹出的一首曲子，还如婴儿第一声哭泣，在南国的地上静躺，在南国的空气里散开，在南国的宅院里落泪。\r\n有人说，南国的雪是孤独的，是悲伤的，是凄凉的，一到了人的手上就化作雨的精魂，留下什么？一颗惹人怜爱的水珠罢了。但我想那滴水珠应是雪的泪吧，“多情自古伤离别”，更那堪相遇即消逝！\r\n15年了，整整等了你15年，你终于再次降临在南国的土地与宅院。我又一次站在雪地里，迎接你的到来，你没有变，一点也未曾变，还是那样多愁善感，一碰到我的手就开始哭泣，化作一滴水，留在我的手中，冷在我的心里。我轻轻的闭着眼，你慢慢的撒落在梦的尽头，带我进入另一个世界，这才是冬天，白色弥漫的冬天。\r\n在你所带来的世界，我看见你是天上的精灵洒落于尘世，纯洁，可爱，美丽，带给人们幸福。而那些只有在雪地里才会发生的事情，终归在白色的世界里开始，在绿色未曾到来时消亡。那个卖火柴的小女孩，最后在雪地里死去。她真的幸福吗？肯定幸福！脸上的光，嘴边的微笑，周围一地火柴梗，还有手中的那一根火柴，我想它不仅仅再是一根火柴，那应该就是幸福吧，只有这根火柴发出的光才能使愿望不会消逝，永远停留在最幸福的那刻，在雪地里，在雪地里……刹时的幸福定格成永恒。\r\n雪啊，南国的雪啊，你总是那样短暂，但正是这瞬间的美丽才值得让人等待，才让我在一个个冬季里望着天，祈祷着第一颗雪从空中落下。你带给我的不仅仅是等待后的惊讶与兴奋而已，那是儿时的记忆，那是真实的故事，在我的内心深处盛开，这些稚嫩的笑容，这些无邪的微笑，都会在这个冬季被唤醒，雪落之后，我依然会等待。\r\n南国的雪很少，很短暂，当春风拂过大地，下一次轮回将是何时？', '1', '1', '公开', '50', null, '0');
INSERT INTO `wt_travelnote` VALUES ('6', '34567888@126.com', '2018-12-04 14:34:06', null, '邯郸市', '15', '这里是标题', '你好一个人的旅行，反而会更贴近自己的内心，真正的停下来，享受自我的体验时刻，也许浮光掠影，走马观花之外，这才是深入体验，探索自我的最佳时间，纵然走过那么多城市，对于未知的风景，还是好奇。继续期待我的下一个旅行，拿起背包，感受不同地域不一样的节奏与表象。', '1', '1', '公开', '0', null, '0');
INSERT INTO `wt_travelnote` VALUES ('7', '12345678@qq.com', '2018-12-03 14:35:16', null, '邯郸市', '30', '这里是标题', '南国的雪向来是不多见的，当每个金色的秋天走到尽头，我总会伸出指头一年一年的数着，只待它的轮回。\r\n雪如鹅毛般飘落，我站在雪地里，呆呆的抬起头，看雪在我头顶上飞舞，旋转，停留，消逝，这是雪！这是雪！我兴奋的在心里叫喊，15年后，再一次伸出手，雪在我的手上再次停下，融化，蒸发，回归。\r\n多少年了，在我的记忆里，没有看过如粉如沙的大雪，没有看见过千里冰封的气势，没有看过万里雪飘的豪壮，只感受过秀气，飘逸，寂寞的雪。南国的雨，当你凝结成了雪，如南朝女子的肤色，亦如琵琶上弹出的一首曲子，还如婴儿第一声哭泣，在南国的地上静躺，在南国的空气里散开，在南国的宅院里落泪。\r\n有人说，南国的雪是孤独的，是悲伤的，是凄凉的，一到了人的手上就化作雨的精魂，留下什么？一颗惹人怜爱的水珠罢了。但我想那滴水珠应是雪的泪吧，“多情自古伤离别”，更那堪相遇即消逝！\r\n15年了，整整等了你15年，你终于再次降临在南国的土地与宅院。我又一次站在雪地里，迎接你的到来，你没有变，一点也未曾变，还是那样多愁善感，一碰到我的手就开始哭泣，化作一滴水，留在我的手中，冷在我的心里。我轻轻的闭着眼，你慢慢的撒落在梦的尽头，带我进入另一个世界，这才是冬天，白色弥漫的冬天。\r\n在你所带来的世界，我看见你是天上的精灵洒落于尘世，纯洁，可爱，美丽，带给人们幸福。而那些只有在雪地里才会发生的事情，终归在白色的世界里开始，在绿色未曾到来时消亡。那个卖火柴的小女孩，最后在雪地里死去。她真的幸福吗？肯定幸福！脸上的光，嘴边的微笑，周围一地火柴梗，还有手中的那一根火柴，我想它不仅仅再是一根火柴，那应该就是幸福吧，只有这根火柴发出的光才能使愿望不会消逝，永远停留在最幸福的那刻，在雪地里，在雪地里……刹时的幸福定格成永恒。\r\n雪啊，南国的雪啊，你总是那样短暂，但正是这瞬间的美丽才值得让人等待，才让我在一个个冬季里望着天，祈祷着第一颗雪从空中落下。你带给我的不仅仅是等待后的惊讶与兴奋而已，那是儿时的记忆，那是真实的故事，在我的内心深处盛开，这些稚嫩的笑容，这些无邪的微笑，都会在这个冬季被唤醒，雪落之后，我依然会等待。\r\n南国的雪很少，很短暂，当春风拂过大地，下一次轮回将是何时？ ', null, '1', '公开', '40', null, '0');
INSERT INTO `wt_travelnote` VALUES ('8', '12345678@qq.com', '2018-12-01 14:35:53', null, '邯郸市', '40', '游玩游玩游玩', '看见客户是科技部的时刻就打死', null, '1', '公开', '4', null, '0');
INSERT INTO `wt_travelnote` VALUES ('9', '12345678@qq.com', '2018-12-01 17:36:36', null, '邯郸', '44', '去玩呀', '南国的雪向来是不多见的，当每个金色的秋天走到尽头，我总会伸出指头一年一年的数着，只待它的轮回。\r\n雪如鹅毛般飘落，我站在雪地里，呆呆的抬起头，看雪在我头顶上飞舞，旋转，停留，消逝，这是雪！这是雪！我兴奋的在心里叫喊，15年后，再一次伸出手，雪在我的手上再次停下，融化，蒸发，回归。\r\n多少年了，在我的记忆里，没有看过如粉如沙的大雪，没有看见过千里冰封的气势，没有看过万里雪飘的豪壮，只感受过秀气，飘逸，寂寞的雪。南国的雨，当你凝结成了雪，如南朝女子的肤色，亦如琵琶上弹出的一首曲子，还如婴儿第一声哭泣，在南国的地上静躺，在南国的空气里散开，在南国的宅院里落泪。\r\n有人说，南国的雪是孤独的，是悲伤的，是凄凉的，一到了人的手上就化作雨的精魂，留下什么？一颗惹人怜爱的水珠罢了。但我想那滴水珠应是雪的泪吧，“多情自古伤离别”，更那堪相遇即消逝！\r\n15年了，整整等了你15年，你终于再次降临在南国的土地与宅院。我又一次站在雪地里，迎接你的到来，你没有变，一点也未曾变，还是那样多愁善感，一碰到我的手就开始哭泣，化作一滴水，留在我的手中，冷在我的心里。我轻轻的闭着眼，你慢慢的撒落在梦的尽头，带我进入另一个世界，这才是冬天，白色弥漫的冬天。\r\n在你所带来的世界，我看见你是天上的精灵洒落于尘世，纯洁，可爱，美丽，带给人们幸福。而那些只有在雪地里才会发生的事情，终归在白色的世界里开始，在绿色未曾到来时消亡。那个卖火柴的小女孩，最后在雪地里死去。她真的幸福吗？肯定幸福！脸上的光，嘴边的微笑，周围一地火柴梗，还有手中的那一根火柴，我想它不仅仅再是一根火柴，那应该就是幸福吧，只有这根火柴发出的光才能使愿望不会消逝，永远停留在最幸福的那刻，在雪地里，在雪地里……刹时的幸福定格成永恒。\r\n雪啊，南国的雪啊，你总是那样短暂，但正是这瞬间的美丽才值得让人等待，才让我在一个个冬季里望着天，祈祷着第一颗雪从空中落下。你带给我的不仅仅是等待后的惊讶与兴奋而已，那是儿时的记忆，那是真实的故事，在我的内心深处盛开，这些稚嫩的笑容，这些无邪的微笑，都会在这个冬季被唤醒，雪落之后，我依然会等待。\r\n南国的雪很少，很短暂，当春风拂过大地，下一次轮回将是何时？', null, '1', '公开', '80', null, '0');
INSERT INTO `wt_travelnote` VALUES ('10', '12345678@qq.com', '2018-12-10 12:37:07', null, '邯郸', '60', '一起去玩呀', '说了看到你是可敬的那棵树的技能', null, '1', '公开', '6', null, '0');
INSERT INTO `wt_travelnote` VALUES ('11', '12345678@qq.com', '2018-12-03 22:38:00', null, '邯郸', '91', '暖春游', '南国的雪向来是不多见的，当每个金色的秋天走到尽头，我总会伸出指头一年一年的数着，只待它的轮回。\r\n雪如鹅毛般飘落，我站在雪地里，呆呆的抬起头，看雪在我头顶上飞舞，旋转，停留，消逝，这是雪！这是雪！我兴奋的在心里叫喊，15年后，再一次伸出手，雪在我的手上再次停下，融化，蒸发，回归。\r\n多少年了，在我的记忆里，没有看过如粉如沙的大雪，没有看见过千里冰封的气势，没有看过万里雪飘的豪壮，只感受过秀气，飘逸，寂寞的雪。南国的雨，当你凝结成了雪，如南朝女子的肤色，亦如琵琶上弹出的一首曲子，还如婴儿第一声哭泣，在南国的地上静躺，在南国的空气里散开，在南国的宅院里落泪。\r\n有人说，南国的雪是孤独的，是悲伤的，是凄凉的，一到了人的手上就化作雨的精魂，留下什么？一颗惹人怜爱的水珠罢了。但我想那滴水珠应是雪的泪吧，“多情自古伤离别”，更那堪相遇即消逝！\r\n15年了，整整等了你15年，你终于再次降临在南国的土地与宅院。我又一次站在雪地里，迎接你的到来，你没有变，一点也未曾变，还是那样多愁善感，一碰到我的手就开始哭泣，化作一滴水，留在我的手中，冷在我的心里。我轻轻的闭着眼，你慢慢的撒落在梦的尽头，带我进入另一个世界，这才是冬天，白色弥漫的冬天。\r\n在你所带来的世界，我看见你是天上的精灵洒落于尘世，纯洁，可爱，美丽，带给人们幸福。而那些只有在雪地里才会发生的事情，终归在白色的世界里开始，在绿色未曾到来时消亡。那个卖火柴的小女孩，最后在雪地里死去。她真的幸福吗？肯定幸福！脸上的光，嘴边的微笑，周围一地火柴梗，还有手中的那一根火柴，我想它不仅仅再是一根火柴，那应该就是幸福吧，只有这根火柴发出的光才能使愿望不会消逝，永远停留在最幸福的那刻，在雪地里，在雪地里……刹时的幸福定格成永恒。\r\n雪啊，南国的雪啊，你总是那样短暂，但正是这瞬间的美丽才值得让人等待，才让我在一个个冬季里望着天，祈祷着第一颗雪从空中落下。你带给我的不仅仅是等待后的惊讶与兴奋而已，那是儿时的记忆，那是真实的故事，在我的内心深处盛开，这些稚嫩的笑容，这些无邪的微笑，都会在这个冬季被唤醒，雪落之后，我依然会等待。\r\n南国的雪很少，很短暂，当春风拂过大地，下一次轮回将是何时？', null, '1', '公开', '5', null, '0');
INSERT INTO `wt_travelnote` VALUES ('12', '34567888@126.com', '2018-12-12 17:41:33', '河北省', '邯郸市', '111', '冬日礼赞', '南国的雪向来是不多见的，当每个金色的秋天走到尽头，我总会伸出指头一年一年的数着，只待它的轮回。\r\n雪如鹅毛般飘落，我站在雪地里，呆呆的抬起头，看雪在我头顶上飞舞，旋转，停留，消逝，这是雪！这是雪！我兴奋的在心里叫喊，15年后，再一次伸出手，雪在我的手上再次停下，融化，蒸发，回归。\r\n多少年了，在我的记忆里，没有看过如粉如沙的大雪，没有看见过千里冰封的气势，没有看过万里雪飘的豪壮，只感受过秀气，飘逸，寂寞的雪。南国的雨，当你凝结成了雪，如南朝女子的肤色，亦如琵琶上弹出的一首曲子，还如婴儿第一声哭泣，在南国的地上静躺，在南国的空气里散开，在南国的宅院里落泪。\r\n有人说，南国的雪是孤独的，是悲伤的，是凄凉的，一到了人的手上就化作雨的精魂，留下什么？一颗惹人怜爱的水珠罢了。但我想那滴水珠应是雪的泪吧，“多情自古伤离别”，更那堪相遇即消逝！\r\n15年了，整整等了你15年，你终于再次降临在南国的土地与宅院。我又一次站在雪地里，迎接你的到来，你没有变，一点也未曾变，还是那样多愁善感，一碰到我的手就开始哭泣，化作一滴水，留在我的手中，冷在我的心里。我轻轻的闭着眼，你慢慢的撒落在梦的尽头，带我进入另一个世界，这才是冬天，白色弥漫的冬天。\r\n在你所带来的世界，我看见你是天上的精灵洒落于尘世，纯洁，可爱，美丽，带给人们幸福。而那些只有在雪地里才会发生的事情，终归在白色的世界里开始，在绿色未曾到来时消亡。那个卖火柴的小女孩，最后在雪地里死去。她真的幸福吗？肯定幸福！脸上的光，嘴边的微笑，周围一地火柴梗，还有手中的那一根火柴，我想它不仅仅再是一根火柴，那应该就是幸福吧，只有这根火柴发出的光才能使愿望不会消逝，永远停留在最幸福的那刻，在雪地里，在雪地里……刹时的幸福定格成永恒。\r\n雪啊，南国的雪啊，你总是那样短暂，但正是这瞬间的美丽才值得让人等待，才让我在一个个冬季里望着天，祈祷着第一颗雪从空中落下。你带给我的不仅仅是等待后的惊讶与兴奋而已，那是儿时的记忆，那是真实的故事，在我的内心深处盛开，这些稚嫩的笑容，这些无邪的微笑，都会在这个冬季被唤醒，雪落之后，我依然会等待。\r\n南国的雪很少，很短暂，当春风拂过大地，下一次轮回将是何时？', '2', '0', '公开', '3', null, '0');
INSERT INTO `wt_travelnote` VALUES ('40', '12345678@qq.com', '2018-12-20 16:47:52', '河北省', '邯郸市', '0', '去去去去去去群群', ',没啥看的技术点', null, '0', '仅自己可见', '0', 'http://api.map.baidu.com/staticimage?center=114.537824,36.557189&zoom=12&width=478&height=258&lng=114.541849&lat=36.560899&markers=114.541849,36.560899', '0');
INSERT INTO `wt_travelnote` VALUES ('30', '12345678@qq.com', '2018-12-19 17:18:37', '河北省', '邯郸市', '0', '富家大室快疯掉了开发拟定史莱克', ',地方地方大幅度发大幅度发', null, '0', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.521529,38.048312&zoom=11&width=478&height=258&lng=114.50103&lat=38.037483&markers=114.50103,38.037483', '0');
INSERT INTO `wt_travelnote` VALUES ('31', '12345678@qq.com', '2018-12-19 17:23:10', '河北省', '邯郸市', '0', '咔咔咔咔咔咔', ',安抚几点睡觉覅水电费几点睡觉覅第三方技术的', null, '0', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.47947,37.921937&zoom=14&width=478&height=258&lng=114.485363&lat=37.927516&markers=114.485363,37.927516', '0');
INSERT INTO `wt_travelnote` VALUES ('32', '12345678@qq.com', '2018-12-19 17:28:06', '河北省', '邯郸市', '0', '哦哦哦哦哦哦了', ',不不不不不不不不', null, '0', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.521529,38.048312&zoom=11&width=478&height=258&lng=114.406743&lat=38.038392&markers=114.406743,38.038392', '0');
INSERT INTO `wt_travelnote` VALUES ('33', '12345678@qq.com', '2018-12-19 17:30:12', '河北省', '邯郸市', '0', '地方地方大幅度发大幅度', ',的范德萨发生过打得过', null, '1', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.521529,38.048312&zoom=11&width=478&height=258&lng=114.488381&lat=38.053851&markers=114.488381,38.053851', '0');
INSERT INTO `wt_travelnote` VALUES ('34', '12345678@qq.com', '2018-12-19 17:31:17', '河北省', '邯郸市', '0', '地方地方大幅度发大幅度', ',武切维奇无群无群', null, '1', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.521529,38.048312&zoom=11&width=478&height=258&lng=114.406743&lat=38.072033&markers=114.406743,38.072033', '0');
INSERT INTO `wt_travelnote` VALUES ('35', '12345678@qq.com', '2018-12-19 17:43:10', '河北省', '邯郸市', '0', '的规范地方的过分过分过分过分', ',第三个地方个梵蒂冈地方', null, '0', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.521529,38.048312&zoom=11&width=478&height=258&lng=114.491831&lat=38.039302&markers=114.491831,38.039302', '0');
INSERT INTO `wt_travelnote` VALUES ('36', '12345678@qq.com', '2018-12-19 18:09:15', '河北省', '邯郸市', '0', '看开点可可可儿', ',就死的金丝带', null, '0', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.521529,38.048312&zoom=11&width=478&height=258&lng=114.456186&lat=38.028388&markers=114.456186,38.028388', '0');
INSERT INTO `wt_travelnote` VALUES ('37', '12345678@qq.com', '2018-12-20 08:39:06', '河北省', '邯郸市', '0', '哈哈哈哈哈哈', ',哈哈哈哈哈', null, '1', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.501605,37.988811&zoom=12&width=478&height=258&lng=114.518277&lat=37.998366&markers=114.518277,37.998366', '0');
INSERT INTO `wt_travelnote` VALUES ('38', '12345678@qq.com', '2018-12-20 08:41:26', '河北省', '石家庄市', '0', '今天是周四啦', ',今天是周四啦今天是周四啦今天是周四啦', null, '0', '公开', '0', 'http://api.map.baidu.com/staticimage?center=114.527763,37.925763&zoom=14&width=478&height=258&lng=114.532506&lat=37.935212&markers=114.532506,37.935212', '0');
INSERT INTO `wt_travelnote` VALUES ('39', '12345678@qq.com', '2018-12-20 09:03:39', '河北省', '石家庄市', '0', '生辰', ',曦澄佳偶自天成！！！！！！', null, '0', '仅自己可见', '0', 'http://api.map.baidu.com/staticimage?center=114.532075,37.974249&zoom=12&width=478&height=258&lng=114.544723&lat=37.971973&markers=114.544723,37.971973', '0');

-- ----------------------------
-- Table structure for `wt_user`
-- ----------------------------
DROP TABLE IF EXISTS `wt_user`;
CREATE TABLE `wt_user` (
  `email` varchar(30) NOT NULL,
  `user_password` varchar(16) DEFAULT NULL,
  `user_status` enum('正常','禁用') DEFAULT '正常',
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_user
-- ----------------------------
INSERT INTO `wt_user` VALUES ('12345678@qq.com', '12345678', '正常');
INSERT INTO `wt_user` VALUES ('34567888@126.com', '77777777', '正常');
INSERT INTO `wt_user` VALUES ('abcdefg@163.com', 'aaaaaaaaaa', '正常');
INSERT INTO `wt_user` VALUES ('email', 'password', '正常');
INSERT INTO `wt_user` VALUES ('333', null, null);
INSERT INTO `wt_user` VALUES ('1005796431@qq.com', '87654321', '正常');

-- ----------------------------
-- Table structure for `wt_user_detail`
-- ----------------------------
DROP TABLE IF EXISTS `wt_user_detail`;
CREATE TABLE `wt_user_detail` (
  `email` varchar(30) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `sex` enum('男','女','秘密') DEFAULT '男',
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `user_description` varchar(150) DEFAULT '这个人很懒，什么都没有留下',
  `userhead` varchar(100) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_user_detail
-- ----------------------------
INSERT INTO `wt_user_detail` VALUES ('12345678@qq.com', '孙立莹', '女', '', '石家庄市', '这个人很懒，什么都没有留下', 'image\\avatar\\f0da53dc0e11f61c57ce78f8b7320a65.png', '2018-11-23 20:44:01');
INSERT INTO `wt_user_detail` VALUES ('34567888@126.com', '我是测试2', '女', '河北省', '石家庄市', '这个人很懒，什么都没有留下', 'image/avatar/avatar4.png', '2018-11-20 20:43:55');
INSERT INTO `wt_user_detail` VALUES ('abcdefg@163.com', 'aaaaaaaaaa', '秘密', '河北省', '石家庄市', '这个人很懒，什么都没有留下', 'image/avatar/avatar4.png', '2018-11-26 20:43:50');
INSERT INTO `wt_user_detail` VALUES ('email', null, null, null, null, null, null, null);
INSERT INTO `wt_user_detail` VALUES ('1005796431@qq.com', 'yaya', '秘密', '北京市', '东城区', '这个人很懒，什么都没有留下', 'image/avatar/avatar4.png', '2018-12-17 08:52:09');
