/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3308
Source Database       : mxonline

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-09-09 18:48:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 课程信息', '6', 'add_course');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 课程信息', '6', 'change_course');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 课程信息', '6', 'delete_course');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 课程信息', '6', 'view_course');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 课程章节', '7', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 课程章节', '7', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 课程章节', '7', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 课程章节', '7', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 视频', '8', 'add_video');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 视频', '8', 'change_video');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 视频', '8', 'delete_video');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 视频', '8', 'view_video');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 课程资源', '9', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 课程资源', '9', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 课程资源', '9', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 课程资源', '9', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程标签', '10', 'add_coursetag');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程标签', '10', 'change_coursetag');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程标签', '10', 'delete_coursetag');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 课程标签', '10', 'view_coursetag');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 轮播课程', '11', 'add_bannercourse');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 轮播课程', '11', 'change_bannercourse');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 轮播课程', '11', 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 轮播课程', '11', 'view_bannercourse');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 用户信息', '12', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 用户信息', '12', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 用户信息', '12', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 用户信息', '12', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 城市', '13', 'add_city');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 城市', '13', 'change_city');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 城市', '13', 'delete_city');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 城市', '13', 'view_city');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 课程机构', '14', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 课程机构', '14', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 课程机构', '14', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 课程机构', '14', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 教师', '15', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 教师', '15', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 教师', '15', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 教师', '15', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 用户咨询', '16', 'add_userask');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 用户咨询', '16', 'change_userask');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 用户咨询', '16', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 用户咨询', '16', 'view_userask');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 用户消息', '17', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 用户消息', '17', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 用户消息', '17', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 用户消息', '17', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 用户收藏', '18', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 用户收藏', '18', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 用户收藏', '18', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户收藏', '18', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 用户课程', '19', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 用户课程', '19', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 用户课程', '19', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 用户课程', '19', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 课程评论', '20', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 课程评论', '20', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 课程评论', '20', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 课程评论', '20', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 轮播图', '21', 'add_banner');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 轮播图', '21', 'change_banner');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 轮播图', '21', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 轮播图', '21', 'view_banner');
INSERT INTO `auth_permission` VALUES ('85', 'Can add Bookmark', '22', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('86', 'Can change Bookmark', '22', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete Bookmark', '22', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('88', 'Can view Bookmark', '22', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('89', 'Can add User Setting', '23', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('90', 'Can change User Setting', '23', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete User Setting', '23', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Setting', '23', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('93', 'Can add User Widget', '24', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('94', 'Can change User Widget', '24', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete User Widget', '24', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('96', 'Can view User Widget', '24', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('97', 'Can add log entry', '25', 'add_log');
INSERT INTO `auth_permission` VALUES ('98', 'Can change log entry', '25', 'change_log');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete log entry', '25', 'delete_log');
INSERT INTO `auth_permission` VALUES ('100', 'Can view log entry', '25', 'view_log');
INSERT INTO `auth_permission` VALUES ('101', 'Can add captcha store', '26', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('102', 'Can change captcha store', '26', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete captcha store', '26', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('104', 'Can view captcha store', '26', 'view_captchastore');

-- ----------------------------
-- Table structure for `captcha_captchastore`
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('1', 'CDGF', 'cdgf', '5b257066f5a163ff0a2778d5593b4bcc23f1c830', '2019-06-26 17:23:07.260121');
INSERT INTO `captcha_captchastore` VALUES ('2', 'WZKG', 'wzkg', 'd615f7c802944b399853d402444831d769fd38b6', '2019-06-26 17:25:20.167723');
INSERT INTO `captcha_captchastore` VALUES ('3', 'ZWEW', 'zwew', 'caef5d0e334f611f7ea3398a6cd57908ad4e828d', '2019-06-26 17:26:02.738469');
INSERT INTO `captcha_captchastore` VALUES ('4', 'AOME', 'aome', '5e2f75903eb5bac8b20b83caebc1aa997a83463e', '2019-06-26 17:26:04.679676');
INSERT INTO `captcha_captchastore` VALUES ('5', 'UZHR', 'uzhr', 'a1d0c0637ef2da41a3ff6b7757baed736903b7a7', '2019-06-26 17:26:45.122461');
INSERT INTO `captcha_captchastore` VALUES ('6', 'DMXV', 'dmxv', '940975920b06a5780a627b2b99f9b53bdab9a126', '2019-06-26 17:33:50.714806');
INSERT INTO `captcha_captchastore` VALUES ('7', 'GPLS', 'gpls', '2b65363c6614ebf34a68162f3d157503c575273f', '2019-06-26 17:34:03.963472');
INSERT INTO `captcha_captchastore` VALUES ('8', 'KJIW', 'kjiw', '95e6b2e7b556f4528df29e63fc11eb350754fe5c', '2019-06-26 17:36:51.317230');
INSERT INTO `captcha_captchastore` VALUES ('9', 'YVOE', 'yvoe', 'fe11660d3603e3c5672444ea119a38de7e62cdea', '2019-06-26 17:36:53.094473');
INSERT INTO `captcha_captchastore` VALUES ('10', 'XALP', 'xalp', '136270cddc21db9890c7c9d57faf05c8377fa187', '2019-06-26 17:37:22.694252');
INSERT INTO `captcha_captchastore` VALUES ('11', 'HCWU', 'hcwu', '2d41e7d939816df5b5b392501b3e81aafdc00359', '2019-06-26 17:39:27.010342');
INSERT INTO `captcha_captchastore` VALUES ('12', 'GMQF', 'gmqf', 'c6eb576846932d08ba164e0d03f7230ee333fe69', '2019-06-26 17:41:35.399367');

-- ----------------------------
-- Table structure for `courses_course`
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `degree` varchar(2) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `is_classics` tinyint(1) NOT NULL,
  `notice` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_teacher_id_846fa526_fk_organizations_teacher_id` (`teacher_id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organizations_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organizations_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organizations_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', '2019-06-18 20:38:42.587611', 'Python高级核心技术97讲', 'Python高级核心技术97讲', '0', 'zj', '3600', '0', '9', '后端开发', 'python', 'Python高级核心技术97讲', 'Python高级核心技术97讲', '<h1 label=\"Title left\" name=\"tl\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;margin:0px 0px 10px;\"><span style=\"color:#e36c09;\" class=\"ue_t\">[此处键入简历标题]</span></h1><p><span style=\"color:#e36c09;\"><br/></span></p><table width=\"100%\" border=\"1\" bordercolor=\"#95B3D7\" style=\"border-collapse:collapse;\"><tbody><tr class=\"firstRow\"><td width=\"200\" style=\"text-align:center;\" class=\"ue_t\">【此处插入照片】</td><td><p><br/></p><p>联系电话：<span class=\"ue_t\">[键入您的电话]</span></p><p><br/></p><p>电子邮件：<span class=\"ue_t\">[键入您的电子邮件地址]</span></p><p><br/></p><p>家庭住址：<span class=\"ue_t\">[键入您的地址]</span></p><p><br/></p></td></tr></tbody></table><h3><span style=\"color:#e36c09;font-size:20px;\">目标职位</span></h3><p style=\"text-indent:2em;\" class=\"ue_t\">[此处键入您的期望职位]</p><h3><span style=\"color:#e36c09;font-size:20px;\">学历</span></h3><p></p><ol style=\"list-style-type: decimal;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入学校名称] </span> <span class=\"ue_t\">[键入所学专业]</span> <span class=\"ue_t\">[键入所获学位]</span></p></li><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入学校名称]</span> <span class=\"ue_t\">[键入所学专业]</span> <span class=\"ue_t\">[键入所获学位]</span></p></li></ol><h3><span style=\"color:#e36c09;font-size:20px;\" class=\"ue_t\">工作经验</span></h3><ol style=\"list-style-type: decimal;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入公司名称]</span> <span class=\"ue_t\">[键入职位名称]</span></p></li><ol style=\"list-style-type: lower-alpha;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入负责项目]</span> <span class=\"ue_t\">[键入项目简介]</span></p></li><li><p><span class=\"ue_t\">[键入负责项目]</span> <span class=\"ue_t\">[键入项目简介]</span></p></li></ol><li><p><span class=\"ue_t\">[键入起止时间]</span> <span class=\"ue_t\">[键入公司名称]</span> <span class=\"ue_t\">[键入职位名称]</span></p></li><ol style=\"list-style-type: lower-alpha;\" class=\" list-paddingleft-2\"><li><p><span class=\"ue_t\">[键入负责项目]</span> <span class=\"ue_t\">[键入项目简介]</span></p></li></ol></ol><p><span style=\"color:#e36c09;font-size:20px;\">掌握技能</span></p><p style=\"text-indent:2em;\">&nbsp;<span class=\"ue_t\">[这里可以键入您所掌握的技能]</span><br/></p><p><br/></p>', 'courses/2019/06/540e57300001d6d906000338-240-135.jpg', '2', '1', '0', '课程开始了', '0');
INSERT INTO `courses_course` VALUES ('2', '2019-06-26 17:40:22.172394', 'scrapy分布式爬虫打造搜索引擎', 'scrapy分布式爬虫打造搜索引擎', '1200', 'zj', '4200', '2000', '5013', '后端开发', 'scrapy', '需要mysql的基础', 'scrapy分布式爬虫打造搜索引擎', '<p><br/> </p><h1 label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\" class=\"ue_t\">[此处键入文章标题]</h1><p><img src=\"http://img.baidu.com/hi/youa/y_0034.gif\" width=\"300\" height=\"200\" border=\"0\" hspace=\"0\" vspace=\"0\" style=\"width:300px;height:200px;float:left;\"/>图文混排方法</p><p>1. 图片居左，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居左对齐，然后即可在右边输入多行文本</p><p><br/> </p><p>2. 图片居右，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本</p><p><br/> </p><p>3. 图片居中环绕排版</p><p>方法：亲，这个真心没有办法。。。</p><p><br/> </p><p><br/> </p><p><img src=\"http://img.baidu.com/hi/youa/y_0040.gif\" width=\"300\" height=\"300\" border=\"0\" hspace=\"0\" vspace=\"0\" style=\"width:300px;height:300px;float:right;\"/> </p><p>还有没有什么其他的环绕方式呢？这里是居右环绕</p><p><br/> </p><p>欢迎大家多多尝试，为UEditor提供更多高质量模板！</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p><br/> </p><p><br/> </p>', 'courses/2019/06/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', '3', '1', '0', 'scrapy分布式爬虫打造搜索引擎开课啦！', '0');

-- ----------------------------
-- Table structure for `courses_courseresource`
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', '2019-06-26 17:38:00.000000', '前端源码', 'course/resourse/2019/06/curl_wget.rar', '2');

-- ----------------------------
-- Table structure for `courses_coursetag`
-- ----------------------------
DROP TABLE IF EXISTS `courses_coursetag`;
CREATE TABLE `courses_coursetag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_coursetag_course_id_756f21fb_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_coursetag_course_id_756f21fb_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_coursetag
-- ----------------------------

-- ----------------------------
-- Table structure for `courses_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '2019-06-26 18:05:40.810663', '第1章 scrapy爬取知名技术文章网站', '180', '2');

-- ----------------------------
-- Table structure for `courses_video`
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', '2019-06-26 18:06:00.000000', '1-1 scrapy安装以及目录结构介绍', '30', 'https://gmooc-videos.oss-cn-beijing.aliyuncs.com/videos/8-1%20%E5%B9%B6%E5%8F%91%E5%92%8C%E5%B9%B6%E8%A1%8C.mp4?Expires=1561547357&OSSAccessKeyId=TMP.AgHn3VQPW8D6utiZU9s3NIevMd-BhHMeCkzINiQYZvwW0Z4KAaSjOxIg9AiZADAtAhQcSPnZSFrv9cJjfHjkMeDUORZMZgIVAKSgeYt59fv3u4qq3oy6MVElKmI9&Signature=SsZkyebUJxUwTH9hNTyYQwvZfx8%3D', '1');
INSERT INTO `courses_video` VALUES ('2', '2019-06-26 18:09:00.000000', '1-2 pycharm 调试scrapy 执行流程', '60', 'https://gmooc-videos.oss-cn-beijing.aliyuncs.com/videos/8-1%20%E5%B9%B6%E5%8F%91%E5%92%8C%E5%B9%B6%E8%A1%8C.mp4?Expires=1561547393&OSSAccessKeyId=TMP.AgHn3VQPW8D6utiZU9s3NIevMd-BhHMeCkzINiQYZvwW0Z4KAaSjOxIg9AiZADAtAhQcSPnZSFrv9cJjfHjkMeDUORZMZgIVAKSgeYt59fv3u4qq3oy6MVElKmI9&Signature=MXGHGsB5P7CY7g%2FcVpo1qGclKeE%3D', '1');
INSERT INTO `courses_video` VALUES ('3', '2019-06-26 18:09:00.000000', '1-3 xpath的用法', '30', 'ttt', '1');
INSERT INTO `courses_video` VALUES ('4', '2019-06-26 18:10:00.000000', '1-4 css选择器实现字段解析', '30', 'ggg', '1');
INSERT INTO `courses_video` VALUES ('5', '2019-06-26 18:10:00.000000', '1-5 编写spider爬取jobbole的所有文章', '60', 'https://weibo.com/ajaxlogin.php?framelogin=1&callback=parent.sinaSSOController.feedBackUrlCallBack', '1');
INSERT INTO `courses_video` VALUES ('6', '2019-06-26 18:12:00.000000', '1-6 items设计', '30', 'https://www.imooc.com', '1');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('26', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES ('6', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'coursetag');
INSERT INTO `django_content_type` VALUES ('7', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('8', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('21', 'operations', 'banner');
INSERT INTO `django_content_type` VALUES ('20', 'operations', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('16', 'operations', 'userask');
INSERT INTO `django_content_type` VALUES ('19', 'operations', 'usercourse');
INSERT INTO `django_content_type` VALUES ('18', 'operations', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('17', 'operations', 'usermessage');
INSERT INTO `django_content_type` VALUES ('13', 'organizations', 'city');
INSERT INTO `django_content_type` VALUES ('14', 'organizations', 'courseorg');
INSERT INTO `django_content_type` VALUES ('15', 'organizations', 'teacher');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('12', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('25', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-06-18 19:46:05.457282');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-06-18 19:46:05.773440');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-06-18 19:46:06.042737');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-06-18 19:46:07.364682');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-06-18 19:46:07.390613');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-06-18 19:46:07.411557');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-06-18 19:46:07.433499');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-06-18 19:46:07.446465');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-06-18 19:46:07.472395');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-06-18 19:46:07.495333');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2019-06-18 19:46:07.518272');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2019-06-18 19:46:07.740560');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2019-06-18 19:46:07.761022');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2019-06-18 19:46:08.430763');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2019-06-18 19:46:09.711337');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2019-06-18 19:46:10.416485');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2019-06-18 19:46:10.450394');
INSERT INTO `django_migrations` VALUES ('18', 'captcha', '0001_initial', '2019-06-18 19:46:10.576057');
INSERT INTO `django_migrations` VALUES ('19', 'organizations', '0001_initial', '2019-06-18 19:46:11.143968');
INSERT INTO `django_migrations` VALUES ('20', 'organizations', '0002_auto_20190511_1803', '2019-06-18 19:46:11.922918');
INSERT INTO `django_migrations` VALUES ('21', 'courses', '0001_initial', '2019-06-18 19:46:12.371727');
INSERT INTO `django_migrations` VALUES ('22', 'courses', '0002_course_course_org', '2019-06-18 19:46:13.504297');
INSERT INTO `django_migrations` VALUES ('23', 'courses', '0003_course_is_classics', '2019-06-18 19:46:13.844387');
INSERT INTO `django_migrations` VALUES ('24', 'courses', '0004_auto_20190513_1520', '2019-06-18 19:46:14.189463');
INSERT INTO `django_migrations` VALUES ('25', 'courses', '0005_auto_20190513_1522', '2019-06-18 19:46:14.445305');
INSERT INTO `django_migrations` VALUES ('26', 'courses', '0006_course_notice', '2019-06-18 19:46:14.632803');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0007_auto_20190513_2108', '2019-06-18 19:46:14.730543');
INSERT INTO `django_migrations` VALUES ('28', 'courses', '0008_course_is_banner', '2019-06-18 19:46:15.349887');
INSERT INTO `django_migrations` VALUES ('29', 'courses', '0009_bannercourse', '2019-06-18 19:46:15.373820');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0010_auto_20190618_1945', '2019-06-18 19:46:15.405736');
INSERT INTO `django_migrations` VALUES ('31', 'operations', '0001_initial', '2019-06-18 19:46:16.298858');
INSERT INTO `django_migrations` VALUES ('32', 'operations', '0002_banner', '2019-06-18 19:46:18.427192');
INSERT INTO `django_migrations` VALUES ('33', 'operations', '0003_auto_20190516_0109', '2019-06-18 19:46:18.462099');
INSERT INTO `django_migrations` VALUES ('34', 'organizations', '0003_teacher_user', '2019-06-18 19:46:18.691484');
INSERT INTO `django_migrations` VALUES ('35', 'organizations', '0004_auto_20190618_1945', '2019-06-18 19:46:18.992678');
INSERT INTO `django_migrations` VALUES ('36', 'sessions', '0001_initial', '2019-06-18 19:46:19.122333');
INSERT INTO `django_migrations` VALUES ('37', 'users', '0002_auto_20190503_1529', '2019-06-18 19:46:19.245367');
INSERT INTO `django_migrations` VALUES ('38', 'users', '0003_auto_20190503_1600', '2019-06-18 19:46:19.353593');
INSERT INTO `django_migrations` VALUES ('39', 'xadmin', '0001_initial', '2019-06-18 19:46:19.745544');
INSERT INTO `django_migrations` VALUES ('40', 'xadmin', '0002_log', '2019-06-18 19:46:21.223549');
INSERT INTO `django_migrations` VALUES ('41', 'xadmin', '0003_auto_20160715_0100', '2019-06-18 19:46:22.269269');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2vlknks27g21dy1w4vdlwbz8u75csqy3', 'NjMwZThlM2EwMzc0MDM1YTM5N2JiMDg3NzMxNzMxYjliMDk1YjAzZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21BdXRoIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGVmMmJjMGQ5ZTNmZDE4ODE1YTA2NWI3MjFkNzExMThiMTVjNDgxZSJ9', '2019-07-10 17:36:37.368059');
INSERT INTO `django_session` VALUES ('q9ozc91n662ky7l1q538bl2ld82t2xcz', 'MmQyOTMxOTg4YjMyZjkyNzY3Yzk0ZWZmNzAyNzUzMGM2NmY0NDFkNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21BdXRoIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGVmMmJjMGQ5ZTNmZDE4ODE1YTA2NWI3MjFkNzExMThiMTVjNDgxZSIsIkxJU1RfUVVFUlkiOltbImNvdXJzZXMiLCJjb3Vyc2UiXSwiIl19', '2019-07-02 20:38:43.624796');
INSERT INTO `django_session` VALUES ('u9az23kk7l3us3pubs6m1d0wodp6tqtm', 'ZDI3Mzk5NGZiYjhhMjU0Y2M0NDljYTE5OTI3Y2Q1NWI1NTI4NTZjMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21BdXRoIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGVmMmJjMGQ5ZTNmZDE4ODE1YTA2NWI3MjFkNzExMThiMTVjNDgxZSIsIkxJU1RfUVVFUlkiOltbInVzZXJzIiwidXNlcnByb2ZpbGUiXSwiIl19', '2019-07-10 18:51:50.050187');

-- ----------------------------
-- Table structure for `operations_banner`
-- ----------------------------
DROP TABLE IF EXISTS `operations_banner`;
CREATE TABLE `operations_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_banner
-- ----------------------------
INSERT INTO `operations_banner` VALUES ('1', '2019-06-26 17:19:00.000000', '第一个', 'banner/2019/06/QQ截图20190626172741_szxvYi6.png', 'https://www.imooc.com', '0');
INSERT INTO `operations_banner` VALUES ('2', '2019-06-26 17:19:00.000000', '第二个', 'banner/2019/06/QQ截图20190626172741_DynlyEA.png', 'https://www.imooc.com', '1');

-- ----------------------------
-- Table structure for `operations_coursecomments`
-- ----------------------------
DROP TABLE IF EXISTS `operations_coursecomments`;
CREATE TABLE `operations_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_coursecom_course_id_de0f98da_fk_courses_c` (`course_id`),
  KEY `operations_coursecom_user_id_84597521_fk_users_use` (`user_id`),
  CONSTRAINT `operations_coursecom_course_id_de0f98da_fk_courses_c` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operations_coursecom_user_id_84597521_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_coursecomments
-- ----------------------------

-- ----------------------------
-- Table structure for `operations_userask`
-- ----------------------------
DROP TABLE IF EXISTS `operations_userask`;
CREATE TABLE `operations_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_userask
-- ----------------------------

-- ----------------------------
-- Table structure for `operations_usercourse`
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercourse`;
CREATE TABLE `operations_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usercourse_course_id_a9f30cc6_fk_courses_course_id` (`course_id`),
  KEY `operations_usercourse_user_id_d33454be_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_usercourse_course_id_a9f30cc6_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operations_usercourse_user_id_d33454be_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usercourse
-- ----------------------------
INSERT INTO `operations_usercourse` VALUES ('1', '2019-06-26 17:36:37.426901', '1', '1');
INSERT INTO `operations_usercourse` VALUES ('2', '2019-06-26 17:54:54.805388', '2', '1');

-- ----------------------------
-- Table structure for `operations_userfavorite`
-- ----------------------------
DROP TABLE IF EXISTS `operations_userfavorite`;
CREATE TABLE `operations_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_userfavorite_user_id_092d3821_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_userfavorite_user_id_092d3821_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_userfavorite
-- ----------------------------

-- ----------------------------
-- Table structure for `operations_usermessage`
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessage`;
CREATE TABLE `operations_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `message` varchar(200) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usermessage_user_id_511ab4d8_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_usermessage_user_id_511ab4d8_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for `organizations_city`
-- ----------------------------
DROP TABLE IF EXISTS `organizations_city`;
CREATE TABLE `organizations_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizations_city
-- ----------------------------
INSERT INTO `organizations_city` VALUES ('1', '2019-06-18 19:47:00.000000', '北京市', '北京市');
INSERT INTO `organizations_city` VALUES ('2', '2019-06-18 20:13:00.000000', '上海市', '上海市');
INSERT INTO `organizations_city` VALUES ('3', '2019-06-18 20:13:00.000000', '广州市', '广州市');
INSERT INTO `organizations_city` VALUES ('4', '2019-06-18 20:13:00.000000', '深圳市', '深圳市');
INSERT INTO `organizations_city` VALUES ('5', '2019-06-18 20:13:00.000000', '成都市', '成都市');

-- ----------------------------
-- Table structure for `organizations_courseorg`
-- ----------------------------
DROP TABLE IF EXISTS `organizations_courseorg`;
CREATE TABLE `organizations_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `tag` varchar(10) NOT NULL,
  `category` varchar(4) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `is_auth` tinyint(1) NOT NULL,
  `is_gold` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organizations_course_city_id_d828a591_fk_organizat` (`city_id`),
  CONSTRAINT `organizations_course_city_id_d828a591_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organizations_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizations_courseorg
-- ----------------------------
INSERT INTO `organizations_courseorg` VALUES ('1', '2019-06-18 20:14:00.000000', '慕课网', '<p>慕课网慕课网</p>', '全国知名', 'pxjg', '0', '0', 'org/2019/06/mkw_UyIyC47.png', '北京市', '20000', '0', '1', '0', '0');
INSERT INTO `organizations_courseorg` VALUES ('2', '2019-06-18 20:18:00.000000', '北京大学', '<p>慕课网慕课网慕课网</p>', '全国知名', 'pxjg', '0', '0', 'org/2019/06/bjdx.png', '北京市', '10000', '0', '2', '0', '0');
INSERT INTO `organizations_courseorg` VALUES ('3', '2019-06-18 20:18:00.000000', '清华大学', '<p>清华大学清华大学清华大学</p>', '全国知名', 'gx', '0', '0', 'org/2019/06/bjdx_na2ILtk.png', '北京市', '82000', '0', '1', '0', '0');
INSERT INTO `organizations_courseorg` VALUES ('4', '2019-06-18 20:19:00.000000', '南京大学', '<p>南京大学南京大学南京大学</p>', '全国知名', 'pxjg', '0', '0', 'org/2019/06/mkw_kEzoKft.png', '上海市', '12088', '0', '2', '1', '1');
INSERT INTO `organizations_courseorg` VALUES ('5', '2019-06-18 20:19:00.000000', '慕课网2', '<p>慕课网2</p>', '全国知名', 'gx', '0', '0', 'org/2019/06/mkw.png', '北京市', '28658', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `organizations_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `organizations_teacher`;
CREATE TABLE `organizations_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `org_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `organizations_teache_org_id_c716b697_fk_organizat` (`org_id`),
  CONSTRAINT `organizations_teache_org_id_c716b697_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organizations_courseorg` (`id`),
  CONSTRAINT `organizations_teacher_user_id_5b300fcd_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizations_teacher
-- ----------------------------
INSERT INTO `organizations_teacher` VALUES ('1', '2019-06-18 20:24:00.000000', 'bobby', '0', '慕课网', 'python高级开发工程师', '细致入微', '0', '0', '18', 'teacher/2019/06/default_middile_2.png', '2', '1');
INSERT INTO `organizations_teacher` VALUES ('2', '2019-06-18 20:26:00.000000', 'bobby2', '0', '慕课网', 'python高级开发工程师', '细致入微', '0', '0', '18', 'teacher/2019/06/default_middile_8.png', '2', '2');
INSERT INTO `organizations_teacher` VALUES ('3', '2019-06-18 20:29:00.000000', 'bobby3', '0', '慕课网', 'python高级开发工程师', '细致入微', '0', '0', '18', 'teacher/2019/06/default_middile_18.png', '3', '3');
INSERT INTO `organizations_teacher` VALUES ('4', '2019-06-18 20:30:00.000000', 'bobby4', '0', '慕课网', 'python高级开发工程师', '细致入微', '0', '0', '18', 'teacher/2019/06/default_middile_7.png', '2', null);
INSERT INTO `organizations_teacher` VALUES ('5', '2019-06-18 20:30:00.000000', 'bobby5', '0', '慕课网', 'python高级开发工程师', '细致入微', '0', '0', '18', 'teacher/2019/06/default_big_14.png', '3', null);
INSERT INTO `organizations_teacher` VALUES ('6', '2019-06-18 20:31:00.000000', 'bobby6', '0', '慕课网', 'python高级开发工程师', '细致入微', '0', '0', '18', 'teacher/2019/06/default_big_14_lvfcpxC.png', '3', null);

-- ----------------------------
-- Table structure for `users_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$Bmc95azH7Je4$8G+oFklk8aUp7U48BfSW1m4KBgJJ6kREAPsCvDWmhxs=', '2019-06-26 17:36:00.000000', '1', 'bobby', '', '', '1@1.com', '1', '1', '2019-06-18 19:46:00.000000', 'dddd', null, 'female', '北京市', '18888888888', 'head_image/2019/06/default_middile_13_20161113185849_453.png');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$150000$TRpLXkP8axbu$C40z5EM6QfKsttNCOwYRWPyJ8uueO2mhMKi9Wq4YVEw=', null, '0', 'bobby2', '', '', '', '0', '1', '2019-06-18 20:28:03.165115', '', null, '', '', '', 'default.jpg');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$150000$LaJTXX4UNj3k$K6K9gHhdOGwd7sGjE3wWq+BgsFCU5JDNSPZzqyP3PG0=', null, '0', 'bobby3', '', '', '', '0', '1', '2019-06-18 20:29:42.520264', '', null, '', '', '', 'default.jpg');

-- ----------------------------
-- Table structure for `users_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `users_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2019-06-18 20:13:26.249375', '127.0.0.1', '1', '北京市', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2019-06-18 20:13:33.786379', '127.0.0.1', '2', '上海市', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2019-06-18 20:13:39.886841', '127.0.0.1', '3', '广州市', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2019-06-18 20:13:44.546256', '127.0.0.1', '4', '深圳市', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2019-06-18 20:13:52.264565', '127.0.0.1', '5', '成都市', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2019-06-18 20:18:12.298593', '127.0.0.1', '1', '慕课网', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2019-06-18 20:18:38.560697', '127.0.0.1', '2', '北京大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2019-06-18 20:19:14.489550', '127.0.0.1', '3', '清华大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2019-06-18 20:19:49.007878', '127.0.0.1', '4', '南京大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2019-06-18 20:20:16.661839', '127.0.0.1', '5', '慕课网2', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2019-06-18 20:26:19.805773', '127.0.0.1', '1', 'bobby', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2019-06-18 20:28:03.403989', '127.0.0.1', '2', 'bobby2', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2019-06-18 20:29:22.128123', '127.0.0.1', '2', 'bobby2', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2019-06-18 20:29:42.875315', '127.0.0.1', '3', 'bobby3', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2019-06-18 20:30:09.488394', '127.0.0.1', '3', 'bobby3', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2019-06-18 20:30:34.144591', '127.0.0.1', '4', 'bobby4', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2019-06-18 20:31:11.224709', '127.0.0.1', '5', 'bobby5', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2019-06-18 20:31:46.064960', '127.0.0.1', '6', 'bobby6', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2019-06-18 20:38:43.184973', '127.0.0.1', '1', 'Python高级核心技术97讲', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2019-06-26 17:19:37.874081', '127.0.0.1', '1', '第一个', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2019-06-26 17:19:53.124403', '127.0.0.1', '2', '第二个', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2019-06-26 17:28:28.423617', '127.0.0.1', '2', '第二个', 'change', '修改 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2019-06-26 17:28:35.827170', '127.0.0.1', '1', '第一个', 'change', '修改 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2019-06-26 17:32:06.146540', '127.0.0.1', '2', '第二个', 'change', '修改 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2019-06-26 17:32:12.981249', '127.0.0.1', '1', '第一个', 'change', '修改 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2019-06-26 17:34:14.948623', '127.0.0.1', '2', '第二个', 'change', '修改 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2019-06-26 17:34:21.555941', '127.0.0.1', '1', '第一个', 'change', '修改 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2019-06-26 17:40:22.201317', '127.0.0.1', '2', 'scrapy分布式爬虫打造搜索引擎', 'create', '已添加。', '6', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2019-06-26 17:41:58.977859', '127.0.0.1', '2', 'scrapy分布式爬虫打造搜索引擎', 'change', '修改 detail 和 image', '6', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2019-06-26 17:56:33.502888', '127.0.0.1', '2', 'scrapy分布式爬虫打造搜索引擎', 'change', '修改 learn_times', '6', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2019-06-26 18:05:40.862693', '127.0.0.1', '2', 'scrapy分布式爬虫打造搜索引擎', 'change', '修改 click_nums', '6', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2019-06-26 18:09:18.948805', '127.0.0.1', '1', '1-1 scrapy安装以及目录结构介绍', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2019-06-26 18:09:59.114512', '127.0.0.1', '2', '1-2 pycharm 调试scrapy 执行流程', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2019-06-26 18:10:27.794745', '127.0.0.1', '3', '1-3 xpath的用法', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2019-06-26 18:10:50.707246', '127.0.0.1', '4', '1-4 css选择器实现字段解析', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2019-06-26 18:12:37.411559', '127.0.0.1', '5', '1-5 编写spider爬取jobbole的所有文章', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2019-06-26 18:12:58.493491', '127.0.0.1', '6', '1-6 items设计', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2019-06-26 18:43:00.995190', '127.0.0.1', '5', '慕课网2', 'change', '修改 image', '14', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2019-06-26 18:43:11.515942', '127.0.0.1', '2', '北京大学', 'change', '修改 image', '14', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2019-06-26 18:43:43.501829', '127.0.0.1', '4', '南京大学', 'change', '修改 image', '14', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2019-06-26 18:43:51.257189', '127.0.0.1', '3', '清华大学', 'change', '修改 image', '14', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2019-06-26 18:44:05.998970', '127.0.0.1', '1', '慕课网', 'change', '修改 image', '14', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2019-06-26 18:51:49.834762', '127.0.0.1', '1', 'dddd', 'change', '修改 last_login，nick_name，gender，address，mobile 和 image', '12', '1');

-- ----------------------------
-- Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
