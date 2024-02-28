/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmkn0jp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmkn0jp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmkn0jp`;

/*Table structure for table `biaoqian` */

DROP TABLE IF EXISTS `biaoqian`;

CREATE TABLE `biaoqian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='标签';

/*Data for the table `biaoqian` */

insert  into `biaoqian`(`id`,`addtime`,`biaoqian`) values (21,'2021-04-10 20:14:48','文学类'),(22,'2021-04-10 20:14:48','情感治愈'),(23,'2021-04-10 20:14:48','可爱浪漫');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057475310 DEFAULT CHARSET=utf8 COMMENT='私信';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-04-10 20:14:48',1,1,'提问1','回复1',1),(82,'2021-04-10 20:14:48',2,2,'提问2','回复2',2),(83,'2021-04-10 20:14:48',3,3,'提问3','回复3',3),(84,'2021-04-10 20:14:48',4,4,'提问4','回复4',4),(85,'2021-04-10 20:14:48',5,5,'提问5','回复5',5),(86,'2021-04-10 20:14:48',6,6,'提问6','回复6',6),(1618057475309,'2021-04-10 20:24:34',1618057266199,NULL,'作者你好吖，好喜欢你',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmkn0jp/upload/1618058111026.jfif'),(2,'picture2','http://localhost:8080/ssmkn0jp/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmkn0jp/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussyouxiuzuozhe` */

DROP TABLE IF EXISTS `discussyouxiuzuozhe`;

CREATE TABLE `discussyouxiuzuozhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057351095 DEFAULT CHARSET=utf8 COMMENT='优秀作者评论表';

/*Data for the table `discussyouxiuzuozhe` */

insert  into `discussyouxiuzuozhe`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-10 20:14:48',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-04-10 20:14:48',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-04-10 20:14:48',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-04-10 20:14:48',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-04-10 20:14:48',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-04-10 20:14:48',6,6,'用户名6','评论内容6','回复内容6'),(1618057351094,'2021-04-10 20:22:30',61,1618057266199,'11','写集','');

/*Table structure for table `discusszuopin` */

DROP TABLE IF EXISTS `discusszuopin`;

CREATE TABLE `discusszuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='作品评论表';

/*Data for the table `discusszuopin` */

insert  into `discusszuopin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-10 20:14:48',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-10 20:14:48',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-10 20:14:48',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-10 20:14:48',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-10 20:14:48',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-10 20:14:48',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszuopinji` */

DROP TABLE IF EXISTS `discusszuopinji`;

CREATE TABLE `discusszuopinji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057316356 DEFAULT CHARSET=utf8 COMMENT='作品集评论表';

/*Data for the table `discusszuopinji` */

insert  into `discusszuopinji`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-10 20:14:48',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-04-10 20:14:48',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-04-10 20:14:48',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-04-10 20:14:48',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-04-10 20:14:48',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-04-10 20:14:48',6,6,'用户名6','评论内容6','回复内容6'),(1618057316355,'2021-04-10 20:21:55',46,1618057266199,'11','好看','');

/*Table structure for table `fangkehuaxiang` */

DROP TABLE IF EXISTS `fangkehuaxiang`;

CREATE TABLE `fangkehuaxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='访客画像';

/*Data for the table `fangkehuaxiang` */

insert  into `fangkehuaxiang`(`id`,`addtime`,`nianling`,`xingbie`) values (51,'2021-04-10 20:14:48',1,'男'),(52,'2021-04-10 20:14:48',2,'男'),(53,'2021-04-10 20:14:48',3,'男'),(54,'2021-04-10 20:14:48',4,'男'),(55,'2021-04-10 20:14:48',5,'男'),(56,'2021-04-10 20:14:48',6,'男');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='作品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-10 20:14:48','标题1','好的一本数','http://localhost:8080/ssmkn0jp/upload/news_picture1.jpg','<p>高等数学</p>'),(103,'2021-04-10 20:14:48','标题3','简介3','http://localhost:8080/ssmkn0jp/upload/news_picture3.jpg','内容3'),(104,'2021-04-10 20:14:48','标题4','简介4','http://localhost:8080/ssmkn0jp/upload/news_picture4.jpg','内容4'),(105,'2021-04-10 20:14:48','标题5','简介5','http://localhost:8080/ssmkn0jp/upload/news_picture5.jpg','内容5'),(106,'2021-04-10 20:14:48','标题6','简介6','http://localhost:8080/ssmkn0jp/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057339041 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1618057301427,'2021-04-10 20:21:40',1618057266199,46,'zuopinji','标题6','http://localhost:8080/ssmkn0jp/upload/zuopinji_fengmian6.jpg'),(1618057339040,'2021-04-10 20:22:18',1618057266199,61,'youxiuzuozhe','作者姓名1','http://localhost:8080/ssmkn0jp/upload/youxiuzuozhe_zuozhezhaopian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618057266199,'11','yonghu','用户','5cfmdvinn974eto89ewcetyjr2mx0i2v','2021-04-10 20:21:21','2021-04-10 21:21:22'),(2,1,'abo','users','管理员','wehkylqfcb2z3lh2rssh2v8zpa1m0hnl','2021-04-10 20:26:53','2021-04-10 21:26:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-10 20:14:48');

/*Table structure for table `wodefenxiang` */

DROP TABLE IF EXISTS `wodefenxiang`;

CREATE TABLE `wodefenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zuopinjijianjie` varchar(200) DEFAULT NULL COMMENT '作品集简介',
  `zuozhemingcheng` varchar(200) DEFAULT NULL COMMENT '作者名称',
  `zuozhejianjie` varchar(200) DEFAULT NULL COMMENT '作者简介',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057325783 DEFAULT CHARSET=utf8 COMMENT='我的分享';

/*Data for the table `wodefenxiang` */

insert  into `wodefenxiang`(`id`,`addtime`,`biaoti`,`biaoqian`,`fengmian`,`zuopinjijianjie`,`zuozhemingcheng`,`zuozhejianjie`,`zhanghao`,`xingming`,`userid`) values (71,'2021-04-10 20:14:48','标题1','标签1','http://localhost:8080/ssmkn0jp/upload/wodefenxiang_fengmian1.jpg','作品集简介1','作者名称1','作者简介1','账号1','姓名1',1),(72,'2021-04-10 20:14:48','标题2','标签2','http://localhost:8080/ssmkn0jp/upload/wodefenxiang_fengmian2.jpg','作品集简介2','作者名称2','作者简介2','账号2','姓名2',2),(73,'2021-04-10 20:14:48','标题3','标签3','http://localhost:8080/ssmkn0jp/upload/wodefenxiang_fengmian3.jpg','作品集简介3','作者名称3','作者简介3','账号3','姓名3',3),(74,'2021-04-10 20:14:48','标题4','标签4','http://localhost:8080/ssmkn0jp/upload/wodefenxiang_fengmian4.jpg','作品集简介4','作者名称4','作者简介4','账号4','姓名4',4),(75,'2021-04-10 20:14:48','标题5','标签5','http://localhost:8080/ssmkn0jp/upload/wodefenxiang_fengmian5.jpg','作品集简介5','作者名称5','作者简介5','账号5','姓名5',5),(76,'2021-04-10 20:14:48','标题6','标签6','http://localhost:8080/ssmkn0jp/upload/wodefenxiang_fengmian6.jpg','作品集简介6','作者名称6','作者简介6','账号6','姓名6',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxiyouxiang` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057667676 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`lianxidianhua`,`lianxiyouxiang`,`zhaopian`) values (11,'2021-04-10 20:14:48','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmkn0jp/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-10 20:14:48','用户2','123456','姓名2','女','13823888882','773890002@qq.com','http://localhost:8080/ssmkn0jp/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-10 20:14:48','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmkn0jp/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-10 20:14:48','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmkn0jp/upload/yonghu_zhaopian4.jpg'),(16,'2021-04-10 20:14:48','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmkn0jp/upload/yonghu_zhaopian6.jpg'),(1618057266199,'2021-04-10 20:21:06','111','1','王五','女','13800138000','1213414@qq.com','http://localhost:8080/ssmkn0jp/upload/1618057431599.png'),(1618057667675,'2021-04-10 20:27:47','101','111','王五','男','13800138000','qq1313@qq.com','http://localhost:8080/ssmkn0jp/upload/1618057664749.jpg');

/*Table structure for table `youxiuzuozhe` */

DROP TABLE IF EXISTS `youxiuzuozhe`;

CREATE TABLE `youxiuzuozhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuozhexingming` varchar(200) DEFAULT NULL COMMENT '作者姓名',
  `zuoyouming` varchar(200) DEFAULT NULL COMMENT '座右铭',
  `zuozhezhaopian` varchar(200) DEFAULT NULL COMMENT '作者照片',
  `wangqizuopin` longtext COMMENT '往期作品',
  `zuozhejianjie` longtext COMMENT '作者简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618058007605 DEFAULT CHARSET=utf8 COMMENT='优秀作者';

/*Data for the table `youxiuzuozhe` */

insert  into `youxiuzuozhe`(`id`,`addtime`,`zuozhexingming`,`zuoyouming`,`zuozhezhaopian`,`wangqizuopin`,`zuozhejianjie`,`thumbsupnum`,`crazilynum`,`clicktime`) values (62,'2021-04-10 20:14:48','作者姓名2','座右铭2','http://localhost:8080/ssmkn0jp/upload/youxiuzuozhe_zuozhezhaopian2.jpg','往期作品2','作者简介2',2,2,'2021-04-10 20:14:48'),(63,'2021-04-10 20:14:48','作者姓名3','座右铭3','http://localhost:8080/ssmkn0jp/upload/youxiuzuozhe_zuozhezhaopian3.jpg','往期作品3','作者简介3',3,3,'2021-04-10 20:14:48'),(64,'2021-04-10 20:14:48','作者姓名4','座右铭4','http://localhost:8080/ssmkn0jp/upload/youxiuzuozhe_zuozhezhaopian4.jpg','往期作品4','作者简介4',4,4,'2021-04-10 20:14:48'),(65,'2021-04-10 20:14:48','作者姓名5','座右铭5','http://localhost:8080/ssmkn0jp/upload/youxiuzuozhe_zuozhezhaopian5.jpg','往期作品5','作者简介5',5,5,'2021-04-10 20:14:48'),(66,'2021-04-10 20:14:48','作者姓名6','座右铭6','http://localhost:8080/ssmkn0jp/upload/youxiuzuozhe_zuozhezhaopian6.jpg','往期作品6','作者简介6',6,6,'2021-04-10 20:14:48'),(1618058007604,'2021-04-10 20:33:26','海子','村田的浪漫','http://localhost:8080/ssmkn0jp/upload/1618057965922.jpg','我的会议不是我的','<p>现代伟大诗人</p>',0,0,NULL);

/*Table structure for table `zuopin` */

DROP TABLE IF EXISTS `zuopin`;

CREATE TABLE `zuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinmingcheng` varchar(200) NOT NULL COMMENT '作品名称',
  `zuopinfenlei` varchar(200) NOT NULL COMMENT '作品分类',
  `zuopinfengmian` varchar(200) DEFAULT NULL COMMENT '作品封面',
  `zuopinneirong` varchar(200) DEFAULT NULL COMMENT '作品内容',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `zuopinjianjie` longtext COMMENT '作品简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057813887 DEFAULT CHARSET=utf8 COMMENT='作品';

/*Data for the table `zuopin` */

insert  into `zuopin`(`id`,`addtime`,`zuopinmingcheng`,`zuopinfenlei`,`zuopinfengmian`,`zuopinneirong`,`faburiqi`,`zuopinjianjie`,`thumbsupnum`,`crazilynum`) values (31,'2021-04-10 20:14:48','作品名称1','作品分类1','http://localhost:8080/ssmkn0jp/upload/zuopin_zuopinfengmian1.jpg','http://localhost:8080/ssmkn0jp/upload/1618057870304.pptx','2021-04-24 20:14:48','作品简介1',1,1),(32,'2021-04-10 20:14:48','作品名称2','作品分类2','http://localhost:8080/ssmkn0jp/upload/zuopin_zuopinfengmian2.jpg','','2021-04-10 20:14:48','作品简介2',2,2),(33,'2021-04-10 20:14:48','作品名称3','作品分类3','http://localhost:8080/ssmkn0jp/upload/zuopin_zuopinfengmian3.jpg','','2021-04-10 20:14:48','作品简介3',3,3),(34,'2021-04-10 20:14:48','作品名称4','作品分类4','http://localhost:8080/ssmkn0jp/upload/zuopin_zuopinfengmian4.jpg','','2021-04-10 20:14:48','作品简介4',4,4),(35,'2021-04-10 20:14:48','作品名称5','作品分类5','http://localhost:8080/ssmkn0jp/upload/zuopin_zuopinfengmian5.jpg','','2021-04-10 20:14:48','作品简介5',5,5),(36,'2021-04-10 20:14:48','作品名称6','作品分类6','http://localhost:8080/ssmkn0jp/upload/zuopin_zuopinfengmian6.jpg','','2021-04-10 20:14:48','作品简介6',6,6),(1618057813886,'2021-04-10 20:30:13','爱的幻想','情感治愈','http://localhost:8080/ssmkn0jp/upload/1618057778348.png','http://localhost:8080/ssmkn0jp/upload/1618057784954.docx','2021-04-15 00:00:00','写了一个人对爱的幻想',0,0);

/*Table structure for table `zuopinji` */

DROP TABLE IF EXISTS `zuopinji`;

CREATE TABLE `zuopinji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zuopinjijianjie` longtext COMMENT '作品集简介',
  `zuopinmingcheng` varchar(200) DEFAULT NULL COMMENT '作品名称',
  `zuozhexingming` varchar(200) DEFAULT NULL COMMENT '作者姓名',
  `zuozhejianjie` longtext COMMENT '作者简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618057849588 DEFAULT CHARSET=utf8 COMMENT='作品集';

/*Data for the table `zuopinji` */

insert  into `zuopinji`(`id`,`addtime`,`biaoti`,`biaoqian`,`fengmian`,`zuopinjijianjie`,`zuopinmingcheng`,`zuozhexingming`,`zuozhejianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`userid`) values (41,'2021-04-10 20:14:48','标题1','标签1','http://localhost:8080/ssmkn0jp/upload/zuopinji_fengmian1.jpg','作品集简介1','作品名称1','作者姓名1','作者简介1',1,1,'2021-04-10 20:14:48',1,1),(43,'2021-04-10 20:14:48','标题3','标签3','http://localhost:8080/ssmkn0jp/upload/zuopinji_fengmian3.jpg','作品集简介3','作品名称3','作者姓名3','作者简介3',3,3,'2021-04-10 20:14:48',3,3),(44,'2021-04-10 20:14:48','标题4','标签4','http://localhost:8080/ssmkn0jp/upload/zuopinji_fengmian4.jpg','作品集简介4','作品名称4','作者姓名4','作者简介4',4,4,'2021-04-10 20:14:48',4,4),(45,'2021-04-10 20:14:48','标题5','标签5','http://localhost:8080/ssmkn0jp/upload/zuopinji_fengmian5.jpg','作品集简介5','作品名称5','作者姓名5','作者简介5',5,5,'2021-04-10 20:14:48',5,5),(46,'2021-04-10 20:14:48','标题6','标签6','http://localhost:8080/ssmkn0jp/upload/zuopinji_fengmian6.jpg','作品集简介6','作品名称6','作者姓名6','作者简介6',7,7,'2021-04-10 20:24:12',11,6),(1618057849587,'2021-04-10 20:30:49','我的作品集','情感治愈','http://localhost:8080/ssmkn0jp/upload/1618057838366.jpg','爱耍的','爱的幻想','李四','奥迪阿达你',0,0,NULL,0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
