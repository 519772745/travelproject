/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : 233

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-12-06 10:07:43
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_collect_travel
-- ----------------------------
INSERT INTO `wt_collect_travel` VALUES ('1', '1', '12345678@qq.com', '收藏', '2018-11-25 14:19:02');
INSERT INTO `wt_collect_travel` VALUES ('2', '2', '12345678@qq.com', '收藏', '2018-11-26 15:19:28');
INSERT INTO `wt_collect_travel` VALUES ('3', '5', '12345678@qq.com', '收藏', null);
INSERT INTO `wt_collect_travel` VALUES ('4', '2', '34567888@126.com', '收藏', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_comment
-- ----------------------------
INSERT INTO `wt_comment` VALUES ('1', '12345678@qq.com', '2018-11-26 15:20:02', '这是一个评论！！！', '2', null);
INSERT INTO `wt_comment` VALUES ('2', '34567888@126.com', '2018-11-26 15:21:07', '回复啊啊啊啊', '2', '1');
INSERT INTO `wt_comment` VALUES ('3', null, null, '评论a！！！', null, '1');
INSERT INTO `wt_comment` VALUES ('4', null, null, '评论a！！！', null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

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
INSERT INTO `wt_tag` VALUES ('9', '天空之镜', '1', null);
INSERT INTO `wt_tag` VALUES ('10', '索桥', null, null);

-- ----------------------------
-- Table structure for `wt_tag_travelnote`
-- ----------------------------
DROP TABLE IF EXISTS `wt_tag_travelnote`;
CREATE TABLE `wt_tag_travelnote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `travelnote_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
INSERT INTO `wt_topic` VALUES ('2', null, '这是一个描述', null, null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wt_travelnote
-- ----------------------------
INSERT INTO `wt_travelnote` VALUES ('1', '12345678@qq.com', '2018-11-26 15:58:14', '河北省', '邯郸', '120', '这是一个标题', '这里是正文点击小人，将进入登录页，如果用户是新用户，点击注册进入注册页面\r\n用户输入邮箱、密码、验证码，验证通过插入数据库数据\r\n1）判断邮箱格式是否合适，邮箱的最长长度的判断，最长长度的判断应该在前端已经', '1', '0', '公开', '7', null, '0');
INSERT INTO `wt_travelnote` VALUES ('2', '34567888@126.com', '2018-11-26 15:01:45', '上海', '上海', '777', '标题啊！！！', '正文正文正文点击小人，将进入登录页，如果用户是新用户，点击注册进入注册页面\r\n用户输入邮箱、密码、验证码，验证通过插入数据库数据\r\n1）判断邮箱格式是否合适，邮箱的最长长度的判断，最长长度的判断应该在前端已经', '1', '0', '公开', '7', null, '0');
INSERT INTO `wt_travelnote` VALUES ('3', '12345678@qq.com', '2018-11-26 14:58:14', '山东省', '济南', '0', null, '点击小人，将进入登录页，如果用户是新用户，点击注册进入注册页面\r\n用户输入邮箱、密码、验证码，验证通过插入数据库数据\r\n1）判断邮箱格式是否合适，邮箱的最长长度的判断，最长长度的判断应该在前端已经', '1', '0', '公开', '0', null, '0');
INSERT INTO `wt_travelnote` VALUES ('4', '12345678@qq.com', '2018-11-26 14:58:14', '河北省', '邯郸', '22', '邯郸2', '你好一个人的旅行，反而会更贴近自己的内心，真正的停下来，享受自我的体验时刻，也许浮光掠影，走马观花之外，这才是深入体验，探索自我的最佳时间，纵然走过那么多城市，对于未知的风景，还是好奇。继续期待我的下一个旅行，拿起背包，感受不同地域不一样的节奏与表象。', '2', '0', '公开', '0', null, '0');
INSERT INTO `wt_travelnote` VALUES ('5', '34567888@126.com', '2018-12-04 14:32:10', '河北省', '邯郸', '50', '你好啊', '的我看到你我看见的那位科节的', null, '1', '公开', '50', null, '0');
INSERT INTO `wt_travelnote` VALUES ('6', '34567888@126.com', '2018-12-04 14:34:06', null, '邯郸', '10', '凄凄切切群群群群群群', '你好一个人的旅行，反而会更贴近自己的内心，真正的停下来，享受自我的体验时刻，也许浮光掠影，走马观花之外，这才是深入体验，探索自我的最佳时间，纵然走过那么多城市，对于未知的风景，还是好奇。继续期待我的下一个旅行，拿起背包，感受不同地域不一样的节奏与表象。', null, '1', '公开', '0', null, '0');
INSERT INTO `wt_travelnote` VALUES ('7', '12345678@qq.com', '2018-12-03 14:35:16', null, '邯郸', '30', '试试水撒奥奥奥', '34567888@126.com的氛围hi会会话个不好闻春节晚会 ', null, '1', '公开', '40', null, '0');
INSERT INTO `wt_travelnote` VALUES ('8', '12345678@qq.com', '2018-12-01 14:35:53', null, '邯郸', '40', '去去去去去去', '看见客户是科技部的时刻就打死', null, '1', '公开', '4', null, '0');
INSERT INTO `wt_travelnote` VALUES ('9', '12345678@qq.com', '2018-12-01 17:36:36', null, '邯郸', '44', '去去去去去去群', '世界杯上基本上肯定就是', null, '1', '公开', '80', null, '0');
INSERT INTO `wt_travelnote` VALUES ('10', '12345678@qq.com', '2018-12-10 12:37:07', null, '邯郸', '60', '咔咔咔咔咔咔', '说了看到你是可敬的那棵树的技能', null, '1', '公开', '6', null, '0');
INSERT INTO `wt_travelnote` VALUES ('11', '12345678@qq.com', '2018-12-03 22:38:00', null, '邯郸', '90', '暖暖暖暖女女女女', '打飞机独守空房就打不开记得顺便焚枯食淡被警方看电视', null, '1', '公开', '5', null, '0');

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
INSERT INTO `wt_user_detail` VALUES ('12345678@qq.com', '测试姓名1', '男', '河北省', '石家庄市', '这个人很懒，什么都没有留下', 'image/avatar/avatar4.png', '2018-11-23 20:44:01');
INSERT INTO `wt_user_detail` VALUES ('34567888@126.com', '我是测试2', '女', '河北省', '石家庄市', '这个人很懒，什么都没有留下', 'image/avatar/avatar4.png', '2018-11-20 20:43:55');
INSERT INTO `wt_user_detail` VALUES ('abcdefg@163.com', 'aaaaaaaaaa', '秘密', '河北省', '石家庄市', '这个人很懒，什么都没有留下', 'image/avatar/avatar4.png', '2018-11-26 20:43:50');
INSERT INTO `wt_user_detail` VALUES ('email', null, null, null, null, null, null, null);
