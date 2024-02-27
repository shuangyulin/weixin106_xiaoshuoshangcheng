/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmz4i49
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmz4i49` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmz4i49`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616897120963 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-28 09:06:55',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-28 09:06:55',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-28 09:06:55',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-28 09:06:55',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-28 09:06:55',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-28 09:06:55',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616896729291,'2021-03-28 09:58:49',1616896673356,'中一大厦(新中路店)','陈一','12312312312','是'),(1616897120962,'2021-03-28 10:05:20',1616896995668,'中一大厦(新中路店)','张一','12345678956','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xiaoshuoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616897073428 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

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
) ENGINE=InnoDB AUTO_INCREMENT=1616897148949 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-03-28 09:06:55',1,1,'提问1','回复1',1),(42,'2021-03-28 09:06:55',2,2,'提问2','回复2',2),(43,'2021-03-28 09:06:55',3,3,'提问3','回复3',3),(44,'2021-03-28 09:06:55',4,4,'提问4','回复4',4),(45,'2021-03-28 09:06:55',5,5,'提问5','回复5',5),(46,'2021-03-28 09:06:55',6,6,'提问6','回复6',6),(1616896712235,'2021-03-28 09:58:31',1616896673356,NULL,'请问活动开展几天',NULL,0),(1616896784706,'2021-03-28 09:59:44',1616896673356,1,NULL,'3天',NULL),(1616897097635,'2021-03-28 10:04:57',1616896995668,NULL,'请问有狼图腾小说吗',NULL,0),(1616897148948,'2021-03-28 10:05:48',1616896995668,1,NULL,'有的',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmz4i49/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmz4i49/upload/1616896655764.jpg'),(3,'picture3','http://localhost:8080/ssmz4i49/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussxiaoshuoxinxi` */

DROP TABLE IF EXISTS `discussxiaoshuoxinxi`;

CREATE TABLE `discussxiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616897186830 DEFAULT CHARSET=utf8 COMMENT='小说信息评论表';

/*Data for the table `discussxiaoshuoxinxi` */

insert  into `discussxiaoshuoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-28 09:06:55',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-28 09:06:55',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-28 09:06:55',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-28 09:06:55',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-28 09:06:55',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-28 09:06:55',6,6,'用户名6','评论内容6','回复内容6'),(1616896856477,'2021-03-28 10:00:56',1616896611085,1616896673356,'1','这个故事还是挺有趣且讽刺的，这是我第一次读莫言的作品，感觉语言挺滑稽且接地气，后面的反转余味很足；','SDFRTR'),(1616897186829,'2021-03-28 10:06:26',1616896611085,1616896995668,'2','小说很不错，值得购买','');

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
) ENGINE=InnoDB AUTO_INCREMENT=1616896642149 DEFAULT CHARSET=utf8 COMMENT='小说资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-28 09:06:55','标题1','简介1','http://localhost:8080/ssmz4i49/upload/1616896094357.jpg','<p>内容1</p>'),(92,'2021-03-28 09:06:55','标题2','简介2','http://localhost:8080/ssmz4i49/upload/1616896100935.jpg','<p>内容2</p>'),(94,'2021-03-28 09:06:55','标题4','简介4','http://localhost:8080/ssmz4i49/upload/1616896117171.jpg','<p>内容4</p>'),(95,'2021-03-28 09:06:55','标题5','简介5','http://localhost:8080/ssmz4i49/upload/1616896124963.jpg','<p>内容5</p>'),(96,'2021-03-28 09:06:55','标题6','简介6','http://localhost:8080/ssmz4i49/upload/1616896138687.jpg','<p>内容6</p>'),(1616896642148,'2021-03-28 09:57:21','小说优惠资讯','优惠','http://localhost:8080/ssmz4i49/upload/1616896623647.jpg','<p>全场小说参与优惠活动</p><p><img src=\"http://localhost:8080/ssmz4i49/upload/1616896640179.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xiaoshuoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616897125341 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616896753393,'2021-03-28 09:59:12','20213289591160600000','xiaoshuoxinxi',1616896673356,1616896611085,'晚熟的人','http://localhost:8080/ssmz4i49/upload/1616896574460.jpg',2,39,39,78,78,1,'已完成','中一大厦(新中路店)'),(1616897125340,'2021-03-28 10:05:24','20213281052371711299','xiaoshuoxinxi',1616896995668,1616896611085,'晚熟的人','http://localhost:8080/ssmz4i49/upload/1616896574460.jpg',3,39,39,117,117,1,'已完成','中一大厦(新中路店)');

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
) ENGINE=InnoDB AUTO_INCREMENT=1616897075244 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616897068083,'2021-03-28 10:04:27',1616896995668,1616896611085,'xiaoshuoxinxi','晚熟的人','http://localhost:8080/ssmz4i49/upload/1616896574460.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','wnemtrqc9tpvhywb5i1kg6uk1utvbatz','2021-03-28 09:46:12','2021-03-28 10:54:54'),(2,11,'用户1','yonghu','用户','5kzghi7id14a9hfbgk437mbnx10ua0qy','2021-03-28 09:50:34','2021-03-28 10:55:29'),(3,1616896673356,'1','yonghu','用户','gwznigir2phhpgaq5vrx1a9blbixebwh','2021-03-28 09:57:58','2021-03-28 10:57:59'),(4,1616896995668,'2','yonghu','用户','ayg2hucvabaa6l2e148r2xavvhez8tzx','2021-03-28 10:03:22','2021-03-28 11:06:41');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-28 09:06:56');

/*Table structure for table `xiaoshuofenlei` */

DROP TABLE IF EXISTS `xiaoshuofenlei`;

CREATE TABLE `xiaoshuofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616896556146 DEFAULT CHARSET=utf8 COMMENT='小说分类';

/*Data for the table `xiaoshuofenlei` */

insert  into `xiaoshuofenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-03-28 09:06:55','分类1'),(22,'2021-03-28 09:06:55','分类2'),(23,'2021-03-28 09:06:55','分类3'),(24,'2021-03-28 09:06:55','分类4'),(1616896549785,'2021-03-28 09:55:49','文学小说'),(1616896556145,'2021-03-28 09:55:55','古典小说');

/*Table structure for table `xiaoshuoxinxi` */

DROP TABLE IF EXISTS `xiaoshuoxinxi`;

CREATE TABLE `xiaoshuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshuomingcheng` varchar(200) NOT NULL COMMENT '小说名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `zongzhangjie` varchar(200) DEFAULT NULL COMMENT '总章节',
  `xiaoshuojianjie` longtext COMMENT '小说简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616896611086 DEFAULT CHARSET=utf8 COMMENT='小说信息';

/*Data for the table `xiaoshuoxinxi` */

insert  into `xiaoshuoxinxi`(`id`,`addtime`,`xiaoshuomingcheng`,`fenlei`,`tupian`,`zuozhe`,`chubanshe`,`zongzhangjie`,`xiaoshuojianjie`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-28 09:06:55','小说名称1','分类1','http://localhost:8080/ssmz4i49/upload/1616896016357.jpg','作者1','出版社1','总章节1','<p>小说简介1</p>','2021-03-28 09:46:26',2,99.9),(32,'2021-03-28 09:06:55','小说名称2','分类2','http://localhost:8080/ssmz4i49/upload/1616896023949.jpg','作者2','出版社2','总章节2','<p>小说简介2</p>','2021-03-28 10:04:32',4,99.9),(33,'2021-03-28 09:06:55','小说名称3','分类3','http://localhost:8080/ssmz4i49/upload/1616896035400.jpg','作者3','出版社3','总章节3','<p>小说简介3</p>','2021-03-28 09:47:07',4,99.9),(34,'2021-03-28 09:06:55','小说名称4','分类4','http://localhost:8080/ssmz4i49/upload/1616896048626.jpg','作者4','出版社4','总章节4','<p>小说简介4</p>','2021-03-28 09:47:21',5,99.9),(35,'2021-03-28 09:06:55','小说名称5','分类2','http://localhost:8080/ssmz4i49/upload/1616896061377.jpg','作者5','出版社5','总章节5','<p>小说简介5</p>','2021-03-28 09:47:32',6,99.9),(1616896611085,'2021-03-28 09:56:50','晚熟的人','文学小说','http://localhost:8080/ssmz4i49/upload/1616896574460.jpg','莫言','人民文学出版社','48章节','<p>莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外；</p>','2021-03-28 10:06:48',15,39);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616896995669 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`money`) values (11,'2021-03-28 09:06:55','用户1','123456','姓名1','男','http://localhost:8080/ssmz4i49/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-28 09:06:55','用户2','123456','姓名2','男','http://localhost:8080/ssmz4i49/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-28 09:06:55','用户3','123456','姓名3','男','http://localhost:8080/ssmz4i49/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-28 09:06:55','用户4','123456','姓名4','男','http://localhost:8080/ssmz4i49/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-28 09:06:55','用户5','123456','姓名5','男','http://localhost:8080/ssmz4i49/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-28 09:06:55','用户6','123456','姓名6','男','http://localhost:8080/ssmz4i49/upload/yonghu_touxiang6.jpg','13823888886',100),(1616896673356,'2021-03-28 09:57:53','1','1','陈一','女','http://localhost:8080/ssmz4i49/upload/1616896687032.jpg','12312312312',1922),(1616896995668,'2021-03-28 10:03:15','2','2','张一','女','http://localhost:8080/ssmz4i49/upload/1616897006628.jpeg','12345678956',883);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
