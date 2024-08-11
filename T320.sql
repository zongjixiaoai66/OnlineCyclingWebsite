/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t320`;
CREATE DATABASE IF NOT EXISTS `t320` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t320`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/zaixianqixingwangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/zaixianqixingwangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/zaixianqixingwangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'luxian_types', '路线类型', 1, '路线类型1', NULL, NULL, '2022-04-28 11:26:17'),
	(2, 'luxian_types', '路线类型', 2, '路线类型2', NULL, NULL, '2022-04-28 11:26:17'),
	(3, 'luxian_types', '路线类型', 3, '路线类型3', NULL, NULL, '2022-04-28 11:26:17'),
	(4, 'luxian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-28 11:26:17'),
	(5, 'qijiriji_types', '骑记类型', 1, '骑记类型1', NULL, NULL, '2022-04-28 11:26:17'),
	(6, 'qijiriji_types', '骑记类型', 2, '骑记类型2', NULL, NULL, '2022-04-28 11:26:17'),
	(7, 'qijiriji_types', '骑记类型', 3, '骑记类型3', NULL, NULL, '2022-04-28 11:26:17'),
	(8, 'qijiriji_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-28 11:26:17'),
	(9, 'xinshouzhishi_types', '知识类型', 1, '知识类型1', NULL, NULL, '2022-04-28 11:26:17'),
	(10, 'xinshouzhishi_types', '知识类型', 2, '知识类型2', NULL, NULL, '2022-04-28 11:26:17'),
	(11, 'xinshouzhishi_types', '知识类型', 3, '知识类型3', NULL, NULL, '2022-04-28 11:26:17'),
	(12, 'xinshouzhishi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-28 11:26:17'),
	(13, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2022-04-28 11:26:17'),
	(14, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2022-04-28 11:26:17'),
	(15, 'news_types', '新闻类型', 3, '新闻类型3', NULL, NULL, '2022-04-28 11:26:17'),
	(16, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-04-28 11:26:18'),
	(17, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-04-28 11:26:18'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-28 11:26:18'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-28 11:26:18');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛信息';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, '帖子标题2', 2, NULL, '发布内容2', NULL, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, '帖子标题3', 1, NULL, '发布内容3', NULL, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, '帖子标题4', 2, NULL, '发布内容4', NULL, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, '帖子标题5', 3, NULL, '发布内容5', NULL, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(6, NULL, 1, NULL, '登录后才能看到详情页面和评论、留言', 5, 2, '2022-04-28 11:56:20', NULL, '2022-04-28 11:56:20'),
	(7, NULL, NULL, 1, '管理评论221', 5, 2, '2022-04-28 12:02:03', NULL, '2022-04-28 12:02:03'),
	(8, NULL, 1, NULL, '1', 3, 2, '2024-08-04 01:28:55', NULL, '2024-08-04 01:28:55');

DROP TABLE IF EXISTS `luxian`;
CREATE TABLE IF NOT EXISTS `luxian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `luxian_name` varchar(200) DEFAULT NULL COMMENT '路线标题  Search111 ',
  `luxian_types` int DEFAULT NULL COMMENT '路线类型 Search111',
  `luxian_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `luxian_content` text COMMENT '详情内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='路线攻略';

DELETE FROM `luxian`;
INSERT INTO `luxian` (`id`, `luxian_name`, `luxian_types`, `luxian_photo`, `yonghu_id`, `luxian_content`, `insert_time`, `create_time`) VALUES
	(1, '路线标题1', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian1.jpg', 3, '详情内容1', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, '路线标题2', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian2.jpg', 3, '详情内容2', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, '路线标题3', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian3.jpg', 2, '详情内容3', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, '路线标题4', 2, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian4.jpg', 1, '详情内容4', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, '路线标题5', 2, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian5.jpg', 2, '详情内容5', '2022-04-28 11:47:44', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `luxian_collection`;
CREATE TABLE IF NOT EXISTS `luxian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int DEFAULT NULL COMMENT '路线攻略',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `luxian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='路线攻略收藏';

DELETE FROM `luxian_collection`;
INSERT INTO `luxian_collection` (`id`, `luxian_id`, `yonghu_id`, `luxian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, 2, 2, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, 3, 2, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, 5, 2, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(6, 5, 1, 1, '2022-04-28 11:56:36', '2022-04-28 11:56:36'),
	(7, 3, 1, 1, '2024-08-04 01:29:01', '2024-08-04 01:29:01');

DROP TABLE IF EXISTS `luxian_liuyan`;
CREATE TABLE IF NOT EXISTS `luxian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int DEFAULT NULL COMMENT '路线攻略',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `luxian_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='路线攻略留言';

DELETE FROM `luxian_liuyan`;
INSERT INTO `luxian_liuyan` (`id`, `luxian_id`, `yonghu_id`, `luxian_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-28 11:47:44', '回复信息1', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, 2, 1, '留言内容2', '2022-04-28 11:47:44', '回复信息2', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, 3, 3, '留言内容3', '2022-04-28 11:47:44', '回复信息3', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, 4, 2, '留言内容4', '2022-04-28 11:47:44', '回复信息4自己发布的路线被评论可以回复不能删除', '2022-04-28 12:00:18', '2022-04-28 11:47:44'),
	(5, 5, 1, '留言内容5', '2022-04-28 11:47:44', '回复信息5', '2022-04-28 11:47:44', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='新闻赛事';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻标题1', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/news1.jpg', '2022-04-28 11:47:44', '新闻详情1', '2022-04-28 11:47:44'),
	(2, '新闻标题2', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/news2.jpg', '2022-04-28 11:47:44', '新闻详情2', '2022-04-28 11:47:44'),
	(3, '新闻标题3', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/news3.jpg', '2022-04-28 11:47:44', '新闻详情3', '2022-04-28 11:47:44'),
	(4, '新闻标题4', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/news4.jpg', '2022-04-28 11:47:44', '新闻详情4', '2022-04-28 11:47:44'),
	(5, '新闻标题5', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/news5.jpg', '2022-04-28 11:47:44', '新闻详情5', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `qijiriji`;
CREATE TABLE IF NOT EXISTS `qijiriji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qijiriji_name` varchar(200) DEFAULT NULL COMMENT '骑记标题  Search111 ',
  `qijiriji_types` int DEFAULT NULL COMMENT '骑记类型 Search111',
  `qijiriji_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qijiriji_content` text COMMENT '详情内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='骑记分享';

DELETE FROM `qijiriji`;
INSERT INTO `qijiriji` (`id`, `qijiriji_name`, `qijiriji_types`, `qijiriji_photo`, `yonghu_id`, `qijiriji_content`, `insert_time`, `create_time`) VALUES
	(1, '骑记标题1', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian1.jpg', 3, '详情内容1', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, '骑记标题2', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian2.jpg', 3, '详情内容2', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, '骑记标题3', 2, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian3.jpg', 3, '详情内容3', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, '骑记标题4', 2, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian4.jpg', 3, '详情内容4', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, '骑记标题5', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian5.jpg', 2, '详情内容5', '2022-04-28 11:47:44', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `qijiriji_collection`;
CREATE TABLE IF NOT EXISTS `qijiriji_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qijiriji_id` int DEFAULT NULL COMMENT '骑记分享',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qijiriji_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='骑记分享收藏';

DELETE FROM `qijiriji_collection`;
INSERT INTO `qijiriji_collection` (`id`, `qijiriji_id`, `yonghu_id`, `qijiriji_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 3, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, 3, 2, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, 4, 1, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, 5, 3, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(7, 1, 1, 1, '2024-08-04 01:29:12', '2024-08-04 01:29:12');

DROP TABLE IF EXISTS `qijiriji_liuyan`;
CREATE TABLE IF NOT EXISTS `qijiriji_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qijiriji_id` int DEFAULT NULL COMMENT '骑记分享',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `qijiriji_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='骑记分享留言';

DELETE FROM `qijiriji_liuyan`;
INSERT INTO `qijiriji_liuyan` (`id`, `qijiriji_id`, `yonghu_id`, `qijiriji_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2022-04-28 11:47:44', '回复信息1', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, 2, 1, '留言内容2', '2022-04-28 11:47:44', '回复信息2', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, 3, 1, '留言内容3', '2022-04-28 11:47:44', '回复信息3', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, 4, 2, '留言内容4', '2022-04-28 11:47:44', '回复信息4', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, 5, 3, '留言内容5', '2022-04-28 11:47:44', '回复信息5', '2022-04-28 11:47:44', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '6etznaun58yqcudsjt4ripa99cok8bde', '2022-04-28 11:17:45', '2024-08-04 02:27:17'),
	(2, 1, 'a1', 'yonghu', '用户', 'tvhealu4awqf1ggp1ayzcxnqclzkzc2d', '2022-04-28 11:24:08', '2024-08-04 02:28:44'),
	(3, 2, 'a2', 'yonghu', '用户', 'li66s1oh5nryzxrxso5840a2lxu3m5p6', '2022-04-28 12:01:19', '2022-04-28 13:01:19');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `xinshouzhishi`;
CREATE TABLE IF NOT EXISTS `xinshouzhishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xinshouzhishi_name` varchar(200) DEFAULT NULL COMMENT '知识标题  Search111 ',
  `xinshouzhishi_types` int DEFAULT NULL COMMENT '知识类型 Search111',
  `xinshouzhishi_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xinshouzhishi_content` text COMMENT '详情内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='新手知识';

DELETE FROM `xinshouzhishi`;
INSERT INTO `xinshouzhishi` (`id`, `xinshouzhishi_name`, `xinshouzhishi_types`, `xinshouzhishi_photo`, `yonghu_id`, `xinshouzhishi_content`, `insert_time`, `create_time`) VALUES
	(1, '知识标题1', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian1.jpg', 3, '详情内容1', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, '知识标题2', 2, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian2.jpg', 2, '详情内容2', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, '知识标题3', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian3.jpg', 1, '详情内容3', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, '知识标题4', 1, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian4.jpg', 1, '详情内容4', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, '知识标题5', 3, 'http://localhost:8080/zaixianqixingwangzhan/upload/luxian5.jpg', 1, '详情内容5', '2022-04-28 11:47:44', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `xinshouzhishi_collection`;
CREATE TABLE IF NOT EXISTS `xinshouzhishi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinshouzhishi_id` int DEFAULT NULL COMMENT '新手知识',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xinshouzhishi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='新手知识收藏';

DELETE FROM `xinshouzhishi_collection`;
INSERT INTO `xinshouzhishi_collection` (`id`, `xinshouzhishi_id`, `yonghu_id`, `xinshouzhishi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, 2, 3, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, 5, 3, 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(6, 3, 1, 1, '2024-08-04 01:29:18', '2024-08-04 01:29:18');

DROP TABLE IF EXISTS `xinshouzhishi_liuyan`;
CREATE TABLE IF NOT EXISTS `xinshouzhishi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinshouzhishi_id` int DEFAULT NULL COMMENT '新手知识',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xinshouzhishi_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='新手知识留言';

DELETE FROM `xinshouzhishi_liuyan`;
INSERT INTO `xinshouzhishi_liuyan` (`id`, `xinshouzhishi_id`, `yonghu_id`, `xinshouzhishi_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-28 11:47:44', '回复信息1', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, 3, 3, '留言内容3', '2022-04-28 11:47:44', '回复信息3', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(4, 4, 2, '留言内容4', '2022-04-28 11:47:44', '回复信息4', '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(5, 5, 3, '留言内容5', '2022-04-28 11:47:44', '回复信息5', '2022-04-28 11:47:44', '2022-04-28 11:47:44');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/zaixianqixingwangzhan/upload/yonghu1.jpg', 2, '17703786901', '1@qq.com', 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/zaixianqixingwangzhan/upload/yonghu2.jpg', 2, '17703786902', '2@qq.com', 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/zaixianqixingwangzhan/upload/yonghu3.jpg', 1, '17703786903', '3@qq.com', 1, '2022-04-28 11:47:44', '2022-04-28 11:47:44');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
