/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - cantingdiancai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cantingdiancai` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `cantingdiancai`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'guanggao_types','广告类型',1,'广告类型1',NULL,NULL,'2023-04-04 11:15:45'),(39,'guanggao_types','广告类型',2,'广告类型2',NULL,NULL,'2023-04-04 11:15:45'),(40,'guanggao_types','广告类型',3,'广告类型3',NULL,NULL,'2023-04-04 11:15:45'),(41,'shangjia_types','店家类型',1,'店家类型1',NULL,NULL,'2023-04-04 11:15:45'),(42,'shangjia_types','店家类型',2,'店家类型2',NULL,NULL,'2023-04-04 11:15:45'),(43,'shangjia_types','店家类型',3,'店家类型3',NULL,NULL,'2023-04-04 11:15:45'),(44,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-04 11:15:45'),(45,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-04 11:15:46'),(46,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-04 11:15:46'),(47,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-04 11:15:46'),(48,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-04 11:15:46'),(49,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-04 11:15:46'),(50,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-04 11:15:46'),(51,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-04 11:15:46'),(52,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-04 11:15:46'),(53,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-04 11:15:46'),(54,'shangpin_order_types','订单类型',103,'已出餐',NULL,NULL,'2023-04-04 11:15:46'),(55,'shangpin_order_types','订单类型',104,'已取餐',NULL,NULL,'2023-04-04 11:15:46'),(56,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-04 11:15:46'),(57,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-04 11:15:46'),(58,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-04-04 11:15:46'),(59,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-04-04 11:15:46'),(60,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-04 11:15:46'),(61,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-04 11:15:46'),(62,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-04 11:15:46'),(63,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-04 11:15:46');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '店家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',278,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',109,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',92,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',464,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',380,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',302,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(7,'帖子标题7',1,NULL,NULL,'发布内容7',88,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',464,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',498,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',188,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',381,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',473,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',43,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',172,1,'2023-04-04 11:15:53','2023-04-04 11:15:53','2023-04-04 11:15:53'),(15,NULL,1,NULL,NULL,'登录后才可以查看数据详情页',14,2,'2023-04-04 11:30:53',NULL,'2023-04-04 11:30:53'),(16,NULL,NULL,1,NULL,'商家登录只能看到自己相关内容11',14,2,'2023-04-04 11:32:44',NULL,'2023-04-04 11:32:44'),(17,NULL,NULL,NULL,1,'11111111111',14,2,'2023-04-04 11:34:22',NULL,'2023-04-04 11:34:22');

/*Table structure for table `guanggao` */

DROP TABLE IF EXISTS `guanggao`;

CREATE TABLE `guanggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '店家',
  `guanggao_name` varchar(200) DEFAULT NULL COMMENT '广告标题  Search111 ',
  `guanggao_photo` varchar(200) DEFAULT NULL COMMENT '广告照片',
  `guanggao_types` int(11) DEFAULT NULL COMMENT '广告类型 Search111',
  `guanggao_clicknum` int(11) DEFAULT NULL COMMENT '广告热度',
  `guanggao_content` longtext COMMENT '广告详情',
  `guanggao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='广告';

/*Data for the table `guanggao` */

insert  into `guanggao`(`id`,`shangjia_id`,`guanggao_name`,`guanggao_photo`,`guanggao_types`,`guanggao_clicknum`,`guanggao_content`,`guanggao_delete`,`insert_time`,`create_time`) values (1,3,'广告标题1','upload/shangpin1.jpg',3,350,'广告详情1',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(2,1,'广告标题2','upload/shangpin2.jpg',3,165,'广告详情2',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(3,2,'广告标题3','upload/shangpin3.jpg',1,482,'广告详情3',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(4,1,'广告标题4','upload/shangpin4.jpg',3,39,'广告详情4',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(5,2,'广告标题5','upload/shangpin5.jpg',1,400,'广告详情5',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(6,1,'广告标题6','upload/shangpin6.jpg',3,119,'广告详情6',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(7,2,'广告标题7','upload/shangpin7.jpg',3,117,'广告详情7',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(8,2,'广告标题8','upload/shangpin1.jpg',2,275,'广告详情8',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(9,3,'广告标题9','upload/shangpin2.jpg',3,145,'广告详情9',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(10,2,'广告标题10','upload/shangpin3.jpg',3,374,'广告详情10',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(11,2,'广告标题11','upload/shangpin4.jpg',3,150,'广告详情11',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(12,3,'广告标题12','upload/shangpin5.jpg',2,428,'广告详情12',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(13,1,'广告标题13','upload/shangpin6.jpg',2,157,'广告详情13',1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(14,2,'广告标题14','upload/shangpin7.jpg',3,334,'广告详情14',1,'2023-04-04 11:15:53','2023-04-04 11:15:53');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='菜品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'资讯标题1',1,'upload/news1.jpg','2023-04-04 11:15:53','资讯详情1','2023-04-04 11:15:53'),(2,'资讯标题2',1,'upload/news2.jpg','2023-04-04 11:15:53','资讯详情2','2023-04-04 11:15:53'),(3,'资讯标题3',2,'upload/news3.jpg','2023-04-04 11:15:53','资讯详情3','2023-04-04 11:15:53'),(4,'资讯标题4',1,'upload/news4.jpg','2023-04-04 11:15:53','资讯详情4','2023-04-04 11:15:53'),(5,'资讯标题5',1,'upload/news5.jpg','2023-04-04 11:15:53','资讯详情5','2023-04-04 11:15:53'),(6,'资讯标题6',2,'upload/news6.jpg','2023-04-04 11:15:53','资讯详情6','2023-04-04 11:15:53'),(7,'资讯标题7',2,'upload/news7.jpg','2023-04-04 11:15:53','资讯详情7','2023-04-04 11:15:53'),(8,'资讯标题8',1,'upload/news8.jpg','2023-04-04 11:15:53','资讯详情8','2023-04-04 11:15:53'),(9,'资讯标题9',1,'upload/news9.jpg','2023-04-04 11:15:53','资讯详情9','2023-04-04 11:15:53'),(10,'资讯标题10',1,'upload/news10.jpg','2023-04-04 11:15:53','资讯详情10','2023-04-04 11:15:53'),(11,'资讯标题11',1,'upload/news11.jpg','2023-04-04 11:15:53','资讯详情11','2023-04-04 11:15:53'),(12,'资讯标题12',2,'upload/news12.jpg','2023-04-04 11:15:53','资讯详情12','2023-04-04 11:15:53'),(13,'资讯标题13',2,'upload/news13.jpg','2023-04-04 11:15:53','资讯详情13','2023-04-04 11:15:53'),(14,'资讯标题14',2,'upload/news14.jpg','2023-04-04 11:15:53','资讯详情14','2023-04-04 11:15:53');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '店家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_types` int(11) DEFAULT NULL COMMENT '店家类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '店家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','店家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',3,'419.30','店家介绍1',1,'2023-04-04 11:15:53'),(2,'a2','123456','店家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',3,'476.67','店家介绍2',1,'2023-04-04 11:15:53'),(3,'a3','123456','店家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',1,'522.58','店家介绍3',1,'2023-04-04 11:15:53');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '店家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`zan_number`,`cai_number`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,2,'商品名称1','1680578153875','upload/shangpin1.jpg',1,101,'983.40','308.93',334,233,445,'商品介绍1',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(2,1,'商品名称2','1680578153785','upload/shangpin2.jpg',1,101,'785.43','150.29',189,133,22,'商品介绍2',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(3,2,'商品名称3','1680578153831','upload/shangpin3.jpg',1,102,'801.26','205.38',289,452,486,'商品介绍3',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(4,3,'商品名称4','1680578153861','upload/shangpin4.jpg',3,103,'805.83','209.79',446,89,263,'商品介绍4',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(5,3,'商品名称5','1680578153872','upload/shangpin5.jpg',3,105,'833.14','114.75',42,9,393,'商品介绍5',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(6,2,'商品名称6','1680578153833','upload/shangpin6.jpg',2,106,'656.76','13.91',121,241,2,'商品介绍6',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(7,2,'商品名称7','1680578153810','upload/shangpin7.jpg',3,107,'731.25','98.73',106,387,96,'商品介绍7',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(8,3,'商品名称8','1680578153838','upload/shangpin1.jpg',2,108,'895.97','290.82',462,233,154,'商品介绍8',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(9,2,'商品名称9','1680578153810','upload/shangpin2.jpg',3,108,'687.09','74.55',421,167,362,'商品介绍9',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(10,1,'商品名称10','1680578153788','upload/shangpin3.jpg',2,1010,'764.10','497.94',337,310,378,'商品介绍10',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(11,3,'商品名称11','1680578153786','upload/shangpin4.jpg',3,1011,'871.37','452.36',168,168,407,'商品介绍11',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(12,3,'商品名称12','1680578153810','upload/shangpin5.jpg',2,1012,'974.83','223.83',373,83,455,'商品介绍12',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(13,3,'商品名称13','1680578153807','upload/shangpin6.jpg',1,1013,'947.23','294.11',162,444,61,'商品介绍13',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(14,3,'商品名称14','1680578153786','upload/shangpin7.jpg',2,1014,'595.33','291.88',328,374,422,'商品介绍14',1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(2,2,3,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(3,3,1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(4,4,2,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(5,5,1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(6,6,1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(7,7,1,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(8,8,3,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(9,9,2,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(10,10,3,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(11,11,3,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(13,13,2,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(14,14,3,1,'2023-04-04 11:15:53','2023-04-04 11:15:53'),(15,9,1,2,'2023-04-04 11:25:53','2023-04-04 11:25:53'),(16,3,1,2,'2023-04-04 11:30:16','2023-04-04 11:30:16'),(17,4,1,3,'2023-04-04 11:30:26','2023-04-04 11:30:26'),(18,2,1,2,'2023-04-04 11:30:40','2023-04-04 11:30:40');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-04 11:15:53','回复信息1','2023-04-04 11:15:53','2023-04-04 11:15:53'),(2,2,2,'评价内容2','2023-04-04 11:15:53','回复信息2','2023-04-04 11:15:53','2023-04-04 11:15:53'),(3,3,3,'评价内容3','2023-04-04 11:15:53','回复信息3','2023-04-04 11:15:53','2023-04-04 11:15:53'),(4,4,1,'评价内容4','2023-04-04 11:15:53','回复信息4','2023-04-04 11:15:53','2023-04-04 11:15:53'),(5,5,1,'评价内容5','2023-04-04 11:15:53','回复信息5','2023-04-04 11:15:53','2023-04-04 11:15:53'),(6,6,1,'评价内容6','2023-04-04 11:15:53','回复信息6','2023-04-04 11:15:53','2023-04-04 11:15:53'),(7,7,1,'评价内容7','2023-04-04 11:15:53','回复信息7','2023-04-04 11:15:53','2023-04-04 11:15:53'),(8,8,1,'评价内容8','2023-04-04 11:15:53','回复信息8','2023-04-04 11:15:53','2023-04-04 11:15:53'),(9,9,2,'评价内容9','2023-04-04 11:15:53','回复信息9','2023-04-04 11:15:53','2023-04-04 11:15:53'),(10,10,1,'评价内容10','2023-04-04 11:15:53','回复信息10','2023-04-04 11:15:53','2023-04-04 11:15:53'),(11,11,1,'评价内容11','2023-04-04 11:15:53','回复信息11','2023-04-04 11:15:53','2023-04-04 11:15:53'),(12,12,2,'评价内容12','2023-04-04 11:15:53','回复信息12','2023-04-04 11:15:53','2023-04-04 11:15:53'),(13,13,2,'评价内容13','2023-04-04 11:15:53','回复信息13','2023-04-04 11:15:53','2023-04-04 11:15:53'),(14,14,2,'评价内容14','2023-04-04 11:15:53','回复信息14','2023-04-04 11:15:53','2023-04-04 11:15:53'),(15,2,1,'购买商品后才可以评论11111','2023-04-04 11:34:45','11111111111','2023-04-04 11:34:58','2023-04-04 11:34:45');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1680579108610',2,1,1,'150.29',105,1,'2023-04-04 11:31:49','2023-04-04 11:31:49'),(2,'1680579108610',4,1,1,'209.79',101,1,'2023-04-04 11:31:49','2023-04-04 11:31:49'),(3,'1680579108610',3,1,1,'205.38',101,1,'2023-04-04 11:31:49','2023-04-04 11:31:49'),(4,'1680579108610',9,1,1,'74.55',101,1,'2023-04-04 11:31:49','2023-04-04 11:31:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','xfpom7h85rmgzdbypm3ajf7b384hfrcz','2023-04-04 11:18:20','2023-04-04 12:35:32'),(2,1,'a1','yonghu','用户','ttb92kemaf51rvlvnvz9ov1zfyck3sf8','2023-04-04 11:18:30','2023-04-04 12:30:08'),(3,1,'a1','shangjia','店家','an71yacl6ljej9tkc5u4g4oo1p9cbszq','2023-04-04 11:32:04','2023-04-04 12:34:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-04 11:15:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','99505.10','2023-04-04 11:15:53'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','25.20','2023-04-04 11:15:53'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','441.43','2023-04-04 11:15:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
