/*
Navicat MySQL Data Transfer

Source Server         : haohan-server
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : ceshi

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-08-23 22:03:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qw_article
-- ----------------------------
DROP TABLE IF EXISTS `qw_article`;
CREATE TABLE `qw_article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT '0' COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT '0' COMMENT '关键词',
  `description` varchar(255) DEFAULT '0' COMMENT '摘要',
  `thumbnail` varchar(255) DEFAULT '0' COMMENT '缩略图',
  `content` text COMMENT '内容',
  `t` int(10) unsigned DEFAULT NULL COMMENT '时间',
  `n` int(10) unsigned DEFAULT '0' COMMENT '点击',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_article
-- ----------------------------
INSERT INTO `qw_article` VALUES ('1', '36', '我尤其喜欢在卧室里被支配。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\">1.我尤其喜欢在卧室里被支配。</span>', '1597113253', '0');
INSERT INTO `qw_article` VALUES ('2', '36', '我尤其喜欢在卧室里支配我的伴侣。', '2', '', '我尤其喜欢在卧室里支配我的伴侣。', '', '<span style=\"color:#FFFFFF;font-family:\" font-size:14px;background-color:#ffffff;\"=\"\"><span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">2. 我尤其喜欢在卧室里支配我的伴侣。</span></span>', '1597113334', '0');
INSERT INTO `qw_article` VALUES ('3', '36', '在私密生活中，我喜欢感受疼痛，并且喜欢着疼痛给自己带来的反馈，如淤青，眼泪等等。', '', '', '', '', '<p style=\"font-size:14px;color:#FFFFFF;font-family:\"background-color:#FFFFFF;\">\r\n	3. 在私密生活中，我喜欢感受疼痛，并且喜欢着疼痛给自己带来的反馈，如淤青，眼泪等等。\r\n</p>\r\n<div id=\"rb-3\" class=\"rb\" style=\"margin:0.5em 0px 0px;padding:0px;border:none;background-color:#FFFFFF;color:#FFFFFF;font-family:\"\">\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n</div>', '1597113284', '0');
INSERT INTO `qw_article` VALUES ('4', '36', '在私密生活中，我喜欢给我的伴侣带来疼痛，并且喜欢看疼痛给TA带来反馈，如淤青，眼泪等等。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">4. 在私密生活中，我喜欢给我的伴侣带来疼痛，并且喜欢看疼痛给TA带来反馈，如淤青，眼泪等等。</span>', '1597113356', '0');
INSERT INTO `qw_article` VALUES ('5', '36', '我没有任何恋物癖（皮革，乳胶，丝袜等等）。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">5. 我没有任何恋物癖（皮革，乳胶，丝袜等等）。</span>', '1597113383', '0');
INSERT INTO `qw_article` VALUES ('6', '36', '如果我不能满足自己伴侣的所有欲望，我会鼓励TA去找别人来满足TA。', '', '', '', '', '<p style=\"font-size:14px;color:#FFFFFF;font-family:&quot;background-color:#FFFFFF;\">\r\n	6. 如果我不能满足自己伴侣的所有欲望，我会鼓励TA去找别人来满足TA。\r\n</p>\r\n<div id=\"rb-6\" class=\"rb\" style=\"margin:0.5em 0px 0px;padding:0px;border:none;background-color:#FFFFFF;color:#FFFFFF;font-family:&quot;\">\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n</div>', '1597113408', '0');
INSERT INTO `qw_article` VALUES ('7', '36', '我可以在某一时间段内臣服于我的伴侣，然后在另一个时候支配TA（无论是对同一个人或者另一个人）。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">7. 我可以在某一时间段内臣服于我的伴侣，然后在另一个时候支配TA（无论是对同一个人或者另一个人）。</span>', '1597113425', '0');
INSERT INTO `qw_article` VALUES ('8', '36', '我愿意尝试任何新鲜事物，即使我觉得自己可能不喜欢。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">8. 我愿意尝试任何新鲜事物，即使我觉得自己可能不喜欢。</span>', '1597113455', '0');
INSERT INTO `qw_article` VALUES ('9', '36', '在私密生活中，被适度折磨的想法是很吸引人的。', '', '', '', '', '<p style=\"font-size:14px;color:#FFFFFF;font-family:&quot;background-color:#FFFFFF;\">\r\n	9. 在私密生活中，被适度折磨的想法是很吸引人的。\r\n</p>\r\n<div id=\"rb-9\" class=\"rb\" style=\"margin:0.5em 0px 0px;padding:0px;border:none;background-color:#FFFFFF;color:#FFFFFF;font-family:&quot;\">\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n</div>', '1597113472', '0');
INSERT INTO `qw_article` VALUES ('10', '36', '折磨某人的想法是很吸引人的。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">10. 折磨某人的想法是很吸引人的。</span>', '1597113484', '0');
INSERT INTO `qw_article` VALUES ('11', '36', '我会自然而然地在一段关系中承担培育，引导的责任，成为像父母一样的角色。', '', '', '', '', '<p style=\"font-size:14px;color:#FFFFFF;font-family:&quot;background-color:#FFFFFF;\">\r\n	11. 我会自然而然地在一段关系中承担培育，引导的责任，成为像父母一样的角色。\r\n</p>\r\n<div id=\"rb-11\" class=\"rb\" style=\"margin:0.5em 0px 0px;padding:0px;border:none;background-color:#FFFFFF;color:#FFFFFF;font-family:&quot;\">\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n</div>', '1597113496', '0');
INSERT INTO `qw_article` VALUES ('12', '36', '我希望我的伴侣在一段关系中承担培育，引导的责任，成为像父母一样的角色。', '', '', '', '', '<p style=\"font-size:14px;color:#FFFFFF;font-family:&quot;background-color:#FFFFFF;\">\r\n	12. 我希望我的伴侣在一段关系中承担培育，引导的责任，成为像父母一样的角色。\r\n</p>\r\n<div id=\"rb-12\" class=\"rb\" style=\"margin:0.5em 0px 0px;padding:0px;border:none;background-color:#FFFFFF;color:#FFFFFF;font-family:&quot;\">\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n	<div class=\"rb-tab\" style=\"margin:0px;padding:0px;\">\r\n	</div>\r\n</div>', '1597113516', '0');
INSERT INTO `qw_article` VALUES ('13', '36', '我喜欢在私密生活中被语言羞辱或者被叫羞辱性的称呼。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">13. 我喜欢在私密生活中被语言羞辱或者被叫羞辱性的称呼。</span>', '1597113546', '0');
INSERT INTO `qw_article` VALUES ('14', '36', '我喜欢在私密生活中用语言羞辱我的伴侣。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">14. 我喜欢在私密生活中用语言羞辱我的伴侣。</span>', '1597113568', '0');
INSERT INTO `qw_article` VALUES ('15', '36', '我喜欢扮演和我真实年龄有（较大）区别的角色。', '', '', '', '', '<span style=\"color:#FFFFFF;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">15. 我喜欢扮演和我真实年龄有（较大）区别的角色。</span>', '1597113587', '0');
INSERT INTO `qw_article` VALUES ('16', '36', '在伴侣方面,我倾向于选择和我有很大年龄差距的人。', '', '', '', '', '16. 在伴侣方面,我倾向于选择和我有很大年龄差距的人。<br />', '1597147286', '0');
INSERT INTO `qw_article` VALUES ('17', '0', '我喜欢我的性伴侣在卧室里完完全全由我掌管，并且对TA发号施令。', '0', '0', '0', '0', null, '1597223807', '0');
INSERT INTO `qw_article` VALUES ('18', '0', '我喜欢在卧室里被我的性伴侣完完全全掌控，并且对我发号施令', '0', '0', '0', '0', null, '1597223840', '0');
INSERT INTO `qw_article` VALUES ('19', '0', '在私密生活中，我经常表现出动物的行为（咆哮，嚎叫等）。', '0', '0', '0', '0', null, '1597223873', '0');
INSERT INTO `qw_article` VALUES ('20', '0', '在理想的关系中，我应当没有什么下限，我的一切应当属于我的伴侣，由TA来决定什么是对我好的。', '0', '0', '0', '0', null, '1597223880', '0');
INSERT INTO `qw_article` VALUES ('21', '0', ' 在理想的关系中，伴侣应当没有什么下限，ta的一切应当属于我，由我来决定什么是对ta好的。', '0', '0', '0', '0', null, '1597223903', '0');
INSERT INTO `qw_article` VALUES ('22', '0', '. 我希望发生亲密行为的时候，我的伴侣是完全被捆绑住的。', '0', '0', '0', '0', null, '1597223911', '0');
INSERT INTO `qw_article` VALUES ('23', '0', '我想在亲密生活时完全被束缚住。', '0', '0', '0', '0', null, '1597223917', '0');
INSERT INTO `qw_article` VALUES ('24', '0', '在亲密行为期间完全不被尊重对我来说有吸引力。', '0', '0', '0', '0', null, '1597223924', '0');
INSERT INTO `qw_article` VALUES ('25', '0', ' 在二人世界里完全不尊重我的伴侣对我来说很有吸引力。', '0', '0', '0', '0', null, '1597223935', '0');
INSERT INTO `qw_article` VALUES ('26', '0', ' 我喜欢被伴侣当成宠物，被关在笼子里，用宠物专用的碗吃饭，被抚摸等。', '0', '0', '0', '0', null, '1597223941', '0');
INSERT INTO `qw_article` VALUES ('27', '0', '我喜欢把伴侣当成宠物，把TA关在笼子里，给TA用宠物专用的碗吃饭，抚摸TA等。', '0', '0', '0', '0', null, '1597223950', '0');
INSERT INTO `qw_article` VALUES ('28', '0', '我喜欢表现得像一个宠物（狗，猫，小马驹等）。', '0', '0', '0', '0', null, '1597223956', '0');
INSERT INTO `qw_article` VALUES ('29', '0', '我喜欢让别人看到我的裸体，甚至（尤其）是在他们没有打算去这么做的时候。', '0', '0', '0', '0', null, '1597223966', '0');
INSERT INTO `qw_article` VALUES ('30', '0', ' 我喜欢看别人的裸体或性行为，甚至（尤其）是在他们不知情的情况下。', '0', '0', '0', '0', null, '1597223975', '0');
INSERT INTO `qw_article` VALUES ('31', '0', '用顽皮或者反抗的方式来和支配者对话是臣服者的乐趣之一。', '0', '0', '0', '0', null, '1597223988', '0');
INSERT INTO `qw_article` VALUES ('32', '0', ' 我想每周7天，每天24小时不间断地服务我的伴侣，并把它当作我一生的目标。', '0', '0', '0', '0', null, '1597223993', '0');
INSERT INTO `qw_article` VALUES ('33', '0', '我想要我的伴侣每周7天，每天24小时不间断地向我臣服，并愿意承担相应的责任。', '0', '0', '0', '0', null, '1597224004', '0');
INSERT INTO `qw_article` VALUES ('34', '0', '我喜欢穿着或表现得像小孩子一样，或做适合小孩子的事情，如给绘画书上色或去游乐场。', '0', '0', '0', '0', null, '1597224010', '0');
INSERT INTO `qw_article` VALUES ('35', '0', '在二人世界里（用衣服，绳子，链条等）限制我伴侣的身体对我来说有吸引力。', '0', '0', '0', '0', null, '1597224015', '0');
INSERT INTO `qw_article` VALUES ('36', '0', '在二人世界里被我的伴侣（用衣服，绳子，链条等）限制身体对我来说很有吸引力。', '0', '0', '0', '0', null, '1597224020', '0');
INSERT INTO `qw_article` VALUES ('37', '0', ' 当我尝试了自己并不喜欢的事情之后，我觉得这没什么大不了的，这是探寻自己喜好的必经之路。', '0', '0', '0', '0', null, '1597224040', '0');
INSERT INTO `qw_article` VALUES ('38', '0', '. 我有很多性幻想，并且比其他和我一样有一些性怪癖的人更乐于尝试。', '0', '0', '0', '0', null, '1597224045', '0');
INSERT INTO `qw_article` VALUES ('39', '0', ' 如果我是单身，我出于性关系和/或情感目的，想加入一对情侣或多人关系。', '0', '0', '0', '0', null, '1597224049', '0');
INSERT INTO `qw_article` VALUES ('40', '0', '我享受成为我的伴侣的家庭佣人，操持所有家务，如烹饪，清洁等，并以此为骄傲。', '0', '0', '0', '0', null, '1597224056', '0');
INSERT INTO `qw_article` VALUES ('41', '0', '比起主动地臣服，我更喜欢被迫臣服。', '0', '0', '0', '0', null, '1597224068', '0');
INSERT INTO `qw_article` VALUES ('42', '0', ' 比起TA主动地臣服，我更喜欢强迫我的伴侣臣服。', '0', '0', '0', '0', null, '1597224072', '0');
INSERT INTO `qw_article` VALUES ('43', '0', '和一群属于我，服务于我的奴隶生活在一起是我人生的终极目标。', '0', '0', '0', '0', null, '1597224078', '0');
INSERT INTO `qw_article` VALUES ('44', '0', '我想在一个正式的环境中（为主人）服务，并且有严格的奴隶训练，规定好的身体姿势和仪式等。', '0', '0', '0', '0', null, '1597224083', '0');

-- ----------------------------
-- Table structure for qw_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group`;
CREATE TABLE `qw_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_auth_group
-- ----------------------------
INSERT INTO `qw_auth_group` VALUES ('1', '超级管理员', '1', '1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55');
INSERT INTO `qw_auth_group` VALUES ('2', '管理员', '1', '13,14,23,22,21,20,19,18,17,16,15,24,36,34,33,32,31,30,29,27,26,25,1');
INSERT INTO `qw_auth_group` VALUES ('3', '普通用户', '1', '1');
INSERT INTO `qw_auth_group` VALUES ('6', '333', '0', '1,2');

-- ----------------------------
-- Table structure for qw_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_group_access`;
CREATE TABLE `qw_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of qw_auth_group_access
-- ----------------------------
INSERT INTO `qw_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for qw_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `qw_auth_rule`;
CREATE TABLE `qw_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_auth_rule
-- ----------------------------
INSERT INTO `qw_auth_rule` VALUES ('1', '0', 'Index/index', '控制台', 'menu-icon fa fa-tachometer', '1', '1', '', '1', '1', '友情提示：经常查看操作日志，发现异常以便及时追查原因。');
INSERT INTO `qw_auth_rule` VALUES ('2', '0', '', '系统设置', 'menu-icon fa fa-cog', '1', '1', '', '1', '2', '');
INSERT INTO `qw_auth_rule` VALUES ('3', '2', 'Setting/setting', '网站设置', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '3', '这是网站设置的提示。');
INSERT INTO `qw_auth_rule` VALUES ('4', '2', 'Menu/index', '后台菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '4', '');
INSERT INTO `qw_auth_rule` VALUES ('5', '2', 'Menu/add', '新增菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '5', '');
INSERT INTO `qw_auth_rule` VALUES ('6', '4', 'Menu/edit', '编辑菜单', '', '1', '1', '', '0', '6', '');
INSERT INTO `qw_auth_rule` VALUES ('7', '2', 'Menu/update', '保存菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '7', '');
INSERT INTO `qw_auth_rule` VALUES ('8', '2', 'Menu/del', '删除菜单', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '8', '');
INSERT INTO `qw_auth_rule` VALUES ('9', '2', 'Database/backup', '数据库备份', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '9', '');
INSERT INTO `qw_auth_rule` VALUES ('10', '9', 'Database/recovery', '数据库还原', '', '1', '1', '', '0', '10', '');
INSERT INTO `qw_auth_rule` VALUES ('66', '2', 'Update/devlog', '日志管理', '', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('13', '0', '', '用户及组', 'menu-icon fa fa-users', '1', '1', '', '1', '13', '');
INSERT INTO `qw_auth_rule` VALUES ('14', '13', 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '14', '');
INSERT INTO `qw_auth_rule` VALUES ('15', '13', 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '15', '');
INSERT INTO `qw_auth_rule` VALUES ('16', '13', 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '16', '');
INSERT INTO `qw_auth_rule` VALUES ('17', '13', 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '17', '');
INSERT INTO `qw_auth_rule` VALUES ('18', '13', 'Member/del', '删除用户', '', '1', '1', '', '0', '18', '');
INSERT INTO `qw_auth_rule` VALUES ('19', '13', 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '19', '');
INSERT INTO `qw_auth_rule` VALUES ('20', '13', 'Group/add', '新增用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '20', '');
INSERT INTO `qw_auth_rule` VALUES ('21', '13', 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '21', '');
INSERT INTO `qw_auth_rule` VALUES ('22', '13', 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '22', '');
INSERT INTO `qw_auth_rule` VALUES ('23', '13', 'Group/del', '删除用户组', '', '1', '1', '', '0', '23', '');
INSERT INTO `qw_auth_rule` VALUES ('24', '0', '', '网站内容', 'menu-icon fa fa-desktop', '1', '1', '', '1', '24', '');
INSERT INTO `qw_auth_rule` VALUES ('25', '24', 'Article/index', '题目管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '25', '网站虽然重要，身体更重要，出去走走吧。');
INSERT INTO `qw_auth_rule` VALUES ('26', '24', 'Article/add', '新增题目', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '26', '');
INSERT INTO `qw_auth_rule` VALUES ('27', '24', 'Article/edit', '编辑题目', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '27', '');
INSERT INTO `qw_auth_rule` VALUES ('29', '24', 'Article/update', '保存题目', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '29', '');
INSERT INTO `qw_auth_rule` VALUES ('30', '24', 'Article/del', '删除题目', '', '1', '1', '', '0', '30', '');
INSERT INTO `qw_auth_rule` VALUES ('31', '24', 'Category/index', '分类管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '31', '');
INSERT INTO `qw_auth_rule` VALUES ('32', '24', 'Category/add', '新增分类', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '32', '');
INSERT INTO `qw_auth_rule` VALUES ('33', '24', 'Category/edit', '编辑分类', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '33', '');
INSERT INTO `qw_auth_rule` VALUES ('34', '24', 'Category/update', '保存分类', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '34', '');
INSERT INTO `qw_auth_rule` VALUES ('36', '24', 'Category/del', '删除分类', '', '1', '1', '', '0', '36', '');
INSERT INTO `qw_auth_rule` VALUES ('48', '0', 'Personal/index', '个人中心', 'menu-icon fa fa-user', '1', '1', '', '1', '48', '');
INSERT INTO `qw_auth_rule` VALUES ('49', '48', 'Personal/profile', '个人资料', 'menu-icon fa fa-user', '1', '1', '', '1', '49', '');
INSERT INTO `qw_auth_rule` VALUES ('50', '48', 'Logout/index', '退出', '', '1', '1', '', '1', '50', '');
INSERT INTO `qw_auth_rule` VALUES ('51', '9', 'Database/export', '备份', '', '1', '1', '', '0', '51', '');
INSERT INTO `qw_auth_rule` VALUES ('52', '9', 'Database/optimize', '数据优化', '', '1', '1', '', '0', '52', '');
INSERT INTO `qw_auth_rule` VALUES ('53', '9', 'Database/repair', '修复表', '', '1', '1', '', '0', '53', '');
INSERT INTO `qw_auth_rule` VALUES ('54', '11', 'Update/updating', '升级安装', '', '1', '1', '', '0', '54', '');
INSERT INTO `qw_auth_rule` VALUES ('55', '48', 'Personal/update', '资料保存', '', '1', '1', '', '0', '55', '');
INSERT INTO `qw_auth_rule` VALUES ('56', '3', 'Setting/update', '设置保存', '', '1', '1', '', '0', '56', '');
INSERT INTO `qw_auth_rule` VALUES ('57', '9', 'Database/del', '备份删除', '', '1', '1', '', '0', '57', '');
INSERT INTO `qw_auth_rule` VALUES ('58', '2', 'variable/index', '自定义变量', '', '1', '1', '', '1', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('59', '58', 'variable/add', '新增变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('60', '58', 'variable/edit', '编辑变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('61', '58', 'variable/update', '保存变量', '', '1', '1', '', '0', '0', '');
INSERT INTO `qw_auth_rule` VALUES ('62', '58', 'variable/del', '删除变量', '', '1', '1', '', '0', '0', '');

-- ----------------------------
-- Table structure for qw_category
-- ----------------------------
DROP TABLE IF EXISTS `qw_category`;
CREATE TABLE `qw_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0正常，1单页，2外链',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `dir` varchar(100) NOT NULL COMMENT '目录名称',
  `seotitle` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cattemplate` varchar(100) NOT NULL,
  `contemplate` varchar(100) NOT NULL,
  `o` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fsid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_category
-- ----------------------------
INSERT INTO `qw_category` VALUES ('36', '0', '0', '题目', '', '', '', '', '', '', '', '', '0');

-- ----------------------------
-- Table structure for qw_character
-- ----------------------------
DROP TABLE IF EXISTS `qw_character`;
CREATE TABLE `qw_character` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `explain` varchar(255) DEFAULT NULL,
  `value` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_character
-- ----------------------------
INSERT INTO `qw_character` VALUES ('1', '兽性', '他们喜欢在亲密活动中表现成内心中的动物的样子。包括在游戏过程中表现出原始的，情绪化的性感受', '0');
INSERT INTO `qw_character` VALUES ('2', '前卫大胆', '开放的思想和永不满足的好奇心是他们的主要特征，他们在收集第一手经验之前很少会有自己的意见。他们经常有很多幻想，并会积极寻求机会来实现这些幻想', '0');
INSERT INTO `qw_character` VALUES ('3', 'Brat', '从本质上讲，brat是顽皮的臣服者。 他们认为不服从是玩笑而不是让他们得到支配地位的方式。他们需要一个谦和的支配者。他们的支配者们不仅要给他们一个教训，惩罚，还要接受即使再多的教训可能也不会改变这种令人讨厌的行为的事实', '0');
INSERT INTO `qw_character` VALUES ('4', '跨龄恋', 'TA更倾向与非同龄人相处或发展亲密关系', '0');
INSERT INTO `qw_character` VALUES ('5', '暴露倾向', 'TA希望对外界或他人展示自己的身体或心理', '0');
INSERT INTO `qw_character` VALUES ('6', '窥探欲', 'TA喜好在暗处观望对方', '0');
INSERT INTO `qw_character` VALUES ('7', '非专一性', 'TA并不认为某段关系是必须一对一的。这可能意味着他们会有多个关系同时存在', '0');
INSERT INTO `qw_character` VALUES ('8', '占有欲', '想要了解和获悉甚至控制对方的所有动态', '0');
INSERT INTO `qw_character` VALUES ('9', '强势', '0', '0');
INSERT INTO `qw_character` VALUES ('10', '弱势', '0', '0');

-- ----------------------------
-- Table structure for qw_devlog
-- ----------------------------
DROP TABLE IF EXISTS `qw_devlog`;
CREATE TABLE `qw_devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v` varchar(225) NOT NULL COMMENT '版本号',
  `y` int(4) NOT NULL COMMENT '年分',
  `t` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_devlog
-- ----------------------------
INSERT INTO `qw_devlog` VALUES ('1', '1.0.0', '2016', '1440259200', 'QWADMIN第一个版本发布。');
INSERT INTO `qw_devlog` VALUES ('2', '1.0.1', '2016', '1440259200', '修改cookie过于简单的安全风险。');

-- ----------------------------
-- Table structure for qw_flash
-- ----------------------------
DROP TABLE IF EXISTS `qw_flash`;
CREATE TABLE `qw_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `o` (`o`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_flash
-- ----------------------------

-- ----------------------------
-- Table structure for qw_links
-- ----------------------------
DROP TABLE IF EXISTS `qw_links`;
CREATE TABLE `qw_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `o` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `o` (`o`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_links
-- ----------------------------

-- ----------------------------
-- Table structure for qw_log
-- ----------------------------
DROP TABLE IF EXISTS `qw_log`;
CREATE TABLE `qw_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_log
-- ----------------------------
INSERT INTO `qw_log` VALUES ('79', 'admin', '1597224083', '::1', '新增文章，AID：47');
INSERT INTO `qw_log` VALUES ('78', 'admin', '1597224078', '::1', '新增文章，AID：46');
INSERT INTO `qw_log` VALUES ('77', 'admin', '1597224072', '::1', '新增文章，AID：45');
INSERT INTO `qw_log` VALUES ('76', 'admin', '1597224068', '::1', '新增文章，AID：44');
INSERT INTO `qw_log` VALUES ('75', 'admin', '1597224056', '::1', '新增文章，AID：43');
INSERT INTO `qw_log` VALUES ('74', 'admin', '1597224049', '::1', '新增文章，AID：42');
INSERT INTO `qw_log` VALUES ('73', 'admin', '1597224045', '::1', '新增文章，AID：41');
INSERT INTO `qw_log` VALUES ('72', 'admin', '1597224040', '::1', '新增文章，AID：40');
INSERT INTO `qw_log` VALUES ('71', 'admin', '1597224020', '::1', '新增文章，AID：39');
INSERT INTO `qw_log` VALUES ('70', 'admin', '1597224015', '::1', '新增文章，AID：38');
INSERT INTO `qw_log` VALUES ('69', 'admin', '1597224010', '::1', '新增文章，AID：37');
INSERT INTO `qw_log` VALUES ('68', 'admin', '1597224004', '::1', '新增文章，AID：36');
INSERT INTO `qw_log` VALUES ('67', 'admin', '1597223993', '::1', '新增文章，AID：35');
INSERT INTO `qw_log` VALUES ('66', 'admin', '1597223988', '::1', '新增文章，AID：34');
INSERT INTO `qw_log` VALUES ('65', 'admin', '1597223975', '::1', '新增文章，AID：33');
INSERT INTO `qw_log` VALUES ('64', 'admin', '1597223966', '::1', '新增文章，AID：32');
INSERT INTO `qw_log` VALUES ('63', 'admin', '1597223956', '::1', '新增文章，AID：31');
INSERT INTO `qw_log` VALUES ('62', 'admin', '1597223950', '::1', '新增文章，AID：30');
INSERT INTO `qw_log` VALUES ('61', 'admin', '1597223941', '::1', '新增文章，AID：29');
INSERT INTO `qw_log` VALUES ('60', 'admin', '1597223935', '::1', '新增文章，AID：28');
INSERT INTO `qw_log` VALUES ('59', 'admin', '1597223924', '::1', '新增文章，AID：27');
INSERT INTO `qw_log` VALUES ('58', 'admin', '1597223917', '::1', '新增文章，AID：26');
INSERT INTO `qw_log` VALUES ('57', 'admin', '1597223911', '::1', '新增文章，AID：25');
INSERT INTO `qw_log` VALUES ('56', 'admin', '1597223903', '::1', '新增文章，AID：24');
INSERT INTO `qw_log` VALUES ('55', 'admin', '1597223880', '::1', '新增文章，AID：23');
INSERT INTO `qw_log` VALUES ('54', 'admin', '1597223873', '::1', '新增文章，AID：22');
INSERT INTO `qw_log` VALUES ('53', 'admin', '1597223840', '::1', '新增文章，AID：21');
INSERT INTO `qw_log` VALUES ('52', 'admin', '1597223807', '::1', '新增文章，AID：20');
INSERT INTO `qw_log` VALUES ('51', 'admin', '1597222449', '::1', '新增文章，AID：19');
INSERT INTO `qw_log` VALUES ('50', 'admin', '1597222420', '::1', '新增文章，AID：18');
INSERT INTO `qw_log` VALUES ('49', 'admin', '1597221969', '::1', '删除文章，AID：17');

-- ----------------------------
-- Table structure for qw_member
-- ----------------------------
DROP TABLE IF EXISTS `qw_member`;
CREATE TABLE `qw_member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(225) NOT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_member
-- ----------------------------
INSERT INTO `qw_member` VALUES ('1', 'admin', '/Public/attached/201601/1453389194.png', '1', '1420128000', '', '', '', '66d6a1c8748025462128dc75bf5ae8d1', '1442505600');

-- ----------------------------
-- Table structure for qw_personality
-- ----------------------------
DROP TABLE IF EXISTS `qw_personality`;
CREATE TABLE `qw_personality` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `explian` varchar(255) DEFAULT NULL,
  `value` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_personality
-- ----------------------------
INSERT INTO `qw_personality` VALUES ('1', 'Dom属性', '支配者喜欢掌控，希望伴侣在某些条件下完全服从，占据主导地位，有些人喜欢让他们的伴侣对他们绝对服从，有些人喜欢在让对方臣服时得到一些对方的抵抗。有些人只在卧室里支配对方，有些在日常生活中也会支配对方。想弄清楚五种主人格的区别，请阅读文章<a href=\'https://mp.weixin.qq.com/s/O83QJ7gweLNdtC3UWFdPGw\' target=\'_blank\'>《不了解这个概念，在字母圈会吃大亏的》</a>', '0');
INSERT INTO `qw_personality` VALUES ('2', 'M属性', '在双方同意时希望伴侣对自己造成可控的痛苦，M喜欢从他们的伴侣那里得到（某些类型的）痛苦。想弄清楚五种主人格的区别，请阅读文章<a href=\'https://mp.weixin.qq.com/s/O83QJ7gweLNdtC3UWFdPGw\' target=\'_blank\'>《不了解这个概念，在字母圈会吃大亏的》</a>', '0');
INSERT INTO `qw_personality` VALUES ('3', 'S属性', '在双方同意时倾向于对自己的伴侣造成可控的痛苦，S喜欢给他们的伴侣造成（某些类型的）痛苦。想弄清楚五种主人格的区别，请阅读文章<a href=\'https://mp.weixin.qq.com/s/O83QJ7gweLNdtC3UWFdPGw\' target=\'_blank\'>《不了解这个概念，在字母圈会吃大亏的》</a>', '0');
INSERT INTO `qw_personality` VALUES ('4', 'Sub属性', 'sub喜欢听从命令。 有些人喜欢将控制权交给他们的伴侣，有些人则喜欢他们的伴侣强迫他们交出权力。 有些人只在卧室中臣服，有些人在日常生活中也会臣服。 想弄清楚五种主人格的区别，请阅读文章<a href=\'https://mp.weixin.qq.com/s/O83QJ7gweLNdtC3UWFdPGw\' target=\'_blank\'>《不了解这个概念，在字母圈会吃大亏的》</a>', '0');
INSERT INTO `qw_personality` VALUES ('5', 'Switch（双属性)', '他们无法一直做S/DOM或者M/SUB。有的人喜欢和同一个伴侣交换角色或身份，有的分别有一个支配他们的伴侣和一个臣服于他们的伴侣。他们和不同的人，在不同情境下，会表现出不同的属性', '0');

-- ----------------------------
-- Table structure for qw_play
-- ----------------------------
DROP TABLE IF EXISTS `qw_play`;
CREATE TABLE `qw_play` (
  `id` tinyint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `explain` varchar(200) DEFAULT NULL,
  `value` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_play
-- ----------------------------
INSERT INTO `qw_play` VALUES ('11', '24/7', '在双方同意的前提下，他们喜欢完全的每周7天每天24小时的权力交换', '0');
INSERT INTO `qw_play` VALUES ('2', '捆绑束缚', '在双方同意的前提下，TA喜欢使用绳索和/或其他道具（链条，手铐，吊具等）捆绑和束缚，或被捆绑和束缚，无论是为了增强性快感，艺术还是娱乐。', '0');
INSERT INTO `qw_play` VALUES ('3', 'DDLG', '在双方同意的前提下，TA是集孩童般的纯真的sub或愿意去扮演一个指导性的，像父母一样的角色的dom。想弄清楚DDLG的详细定义和特征，请阅读文章<a href=\'https://mp.weixin.qq.com/s/jIjba7MxInuNAIEc3ObXCA\' target=\'_blank\'>《关于叫爸爸，并不是你想象的那么简单》</a>', '0');
INSERT INTO `qw_play` VALUES ('4', '恋物', '以某些特定的无生命物体或人体部位作为爱慕对象', '0');
INSERT INTO `qw_play` VALUES ('5', '恋痛', '对痛感产生一定程度的依恋', '0');
INSERT INTO `qw_play` VALUES ('6', '多人Play', 'TA更喜欢在一场多人参与的场景中扮演一个角色', '0');
INSERT INTO `qw_play` VALUES ('7', '宠物扮演', '在双方同意的前提下，TA希望自己被伴侣当成宠物一样饲养对待，宠物是其主人在日常生活中的财产。 这个角色不一定伴有性行为。这个角色通常但不绝对要有某种形式的动物角色扮演（小狗，小猫等)', '0');
INSERT INTO `qw_play` VALUES ('8', '露出游戏', '在同意且不打扰别人的前提下，对外界或他人展示自己的身体或心理', '0');
INSERT INTO `qw_play` VALUES ('9', '羞辱游戏', '在同意的前提下，扮演性地强迫别人或被强迫做出有羞耻感的事会让ta得到快感', '0');
INSERT INTO `qw_play` VALUES ('10', 'Slave扮演', '在双方同意的前提下，TA有着比sub更强烈的被控制欲，slave完全将控制权和责任交给他们的主人/女主人。 他们比臣服者的权力交换更进一步，可以达到每周7天每天24小时，并且涉及他们生活的各个方面（除了约定好的的例外情况，例如在他们在办公室工作期间）。为他们的主人/女主人服务是他们生活中的重点，他们很少有下限', '0');

-- ----------------------------
-- Table structure for qw_setting
-- ----------------------------
DROP TABLE IF EXISTS `qw_setting`;
CREATE TABLE `qw_setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`) USING BTREE,
  KEY `k` (`k`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qw_setting
-- ----------------------------
INSERT INTO `qw_setting` VALUES ('sitename', ' Eysenck倾向测试 -奢单APP同城恋爱交友', '0', '');
INSERT INTO `qw_setting` VALUES ('title', ' Eysenck倾向测试', '0', '');
INSERT INTO `qw_setting` VALUES ('keywords', 'BDSM,Eysenck,倾向测试,人格测试,奢单APP', '0', '');
INSERT INTO `qw_setting` VALUES ('description', '你的BDSM人格报告', '0', '');
INSERT INTO `qw_setting` VALUES ('footer', '', '0', '');
INSERT INTO `qw_setting` VALUES ('test', '', '1', '测试变量');
