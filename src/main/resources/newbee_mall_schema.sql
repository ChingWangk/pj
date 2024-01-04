SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- !!!!!!!!!!!!!!Table structure for tb_newbee_mall_shopper_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopper_user`;
CREATE TABLE `tb_newbee_mall_shopper_user`  (
                                              `shopper_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商家id',
                                              `login_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家登陆名称',
                                              `login_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家登陆密码',
                                              `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家显示昵称',
                                              `locked` tinyint(4) NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
                                              PRIMARY KEY (`shopper_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- !!!!!!!!!!!!!!!!!!Records of tb_newbee_mall_shopper_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_shopper_user` VALUES (1, 'shangjia1', 'e10adc3949ba59abbe56e057f20f883e', '邯郸', 0);
INSERT INTO `tb_newbee_mall_shopper_user` VALUES (2, 'shangjia2', 'e10adc3949ba59abbe56e057f20f883e', '江湾', 0);
INSERT INTO `tb_newbee_mall_shopper_user` VALUES (3, 'shangjia3', 'e10adc3949ba59abbe56e057f20f883e', '张江', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_admin_user`;
CREATE TABLE `tb_newbee_mall_admin_user`  (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint(4) NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_admin_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '十三', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (2, 'newbee-admin1', 'e10adc3949ba59abbe56e057f20f883e', '新蜂01', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (3, 'newbee-admin2', 'e10adc3949ba59abbe56e057f20f883e', '新蜂02', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_carousel`;
CREATE TABLE `tb_newbee_mall_carousel`  (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '首页轮播图主键id',
  `carousel_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '轮播图',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\'##\'' COMMENT '点击后的跳转地址(默认不跳转)',
  `carousel_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_carousel
-- ----------------------------
INSERT INTO `tb_newbee_mall_carousel` VALUES (2, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner1.png', 'https://github.com/', 13, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);
INSERT INTO `tb_newbee_mall_carousel` VALUES (5, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner2.png', 'https://github.com/', 0, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_price_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_price_history`;
CREATE TABLE `tb_newbee_mall_goods_price_history`  (
  `price_history_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '价格历史记录id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`price_history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_price_history
-- ----------------------------
-- 示例记录，您可以根据需要添加更多记录
INSERT INTO `tb_newbee_mall_goods_price_history` VALUES (1, 1, 1999.99, '2024-01-04 12:00:00');
INSERT INTO `tb_newbee_mall_goods_price_history` VALUES (2, 2, 299.99, '2024-01-04 13:30:00');

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_category`;
CREATE TABLE `tb_newbee_mall_goods_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '分类级别(1-一级分类 2-二级分类 3-三级分类)',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父分类id',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_category
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_category` VALUES (15, 1, 0, '家电 数码 手机', 100, 0, '2019-09-11 18:45:40', 0, '2019-09-11 18:45:40', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (16, 1, 0, '女装 男装 穿搭', 99, 0, '2019-09-11 18:46:07', 0, '2019-09-11 18:46:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (17, 2, 15, '家电', 10, 0, '2019-09-11 18:46:32', 0, '2019-09-11 18:46:32', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (18, 2, 15, '数码', 9, 0, '2019-09-11 18:46:43', 0, '2019-09-11 18:46:43', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (19, 2, 15, '手机', 8, 0, '2019-09-11 18:46:52', 0, '2019-09-11 18:46:52', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (20, 3, 17, '生活电器', 0, 0, '2019-09-11 18:47:38', 0, '2019-09-11 18:47:38', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (21, 3, 17, '厨房电器', 0, 0, '2019-09-11 18:47:49', 0, '2019-09-11 18:47:49', 0);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_info`;
CREATE TABLE `tb_newbee_mall_goods_info`  (
  `goods_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品表主键id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名',
  `goods_intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品简介',
  `goods_category_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联分类id',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品主图',
  `goods_carousel` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品轮播图',
  `goods_detail_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情',
  `original_price` int(11) NOT NULL DEFAULT 1 COMMENT '商品价格',
  `selling_price` int(11) NOT NULL DEFAULT 1 COMMENT '商品实际售价',
  `stock_num` int(11) NOT NULL DEFAULT 0 COMMENT '商品库存数量',
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品标签',
  `goods_sell_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '商品上架状态 0-下架 1-上架',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '添加者主键id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品添加时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改者主键id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品修改时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10896 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_info
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_info` (`goods_id`, `goods_name`, `goods_intro`, `goods_category_id`, `goods_cover_img`, `goods_carousel`, `goods_detail_content`, `original_price`, `selling_price`, `stock_num`, `tag`, `goods_sell_status`, `create_user`, `create_time`, `update_user`, `update_time`)
VALUES
	(10003,'无印良品 MUJI 基础润肤化妆水','滋润型 400ml',0,'/goods-img/87446ec4-e534-4b49-9f7d-9bea34665284.jpg','/goods-img/87446ec4-e534-4b49-9f7d-9bea34665284.jpg','<p>商品介绍加载中...</p>',100,100,1000,'',1,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10004,'无印良品 MUJI 柔和洁面泡沫','120g',0,'/goods-img/45854bdd-2ca5-423c-a609-3d336d9322b4.jpg','/goods-img/45854bdd-2ca5-423c-a609-3d336d9322b4.jpg','<p>商品介绍加载中...</p>',45,45,999,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10005,'无印良品 MUJI 基础润肤乳液','高保湿型 200ml',0,'/goods-img/7614ce78-0ebc-4275-a7cc-d16ad5f5f6ed.jpg','/goods-img/7614ce78-0ebc-4275-a7cc-d16ad5f5f6ed.jpg','<p>商品介绍加载中...</p>',83,83,998,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10006,'无印良品 MUJI 基础润肤乳液','滋润型 400ml',0,'/goods-img/ef75879d-3d3e-4bab-888d-1e4036491e11.jpg','/goods-img/ef75879d-3d3e-4bab-888d-1e4036491e11.jpg','<p>商品介绍加载中...</p>',100,100,1000,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10007,'无印良品 MUJI 基础润肤化妆水','高保湿型 400ml',0,'/goods-img/558422d1-640e-442d-a073-2b2bdd95c4ed.jpg','/goods-img/558422d1-640e-442d-a073-2b2bdd95c4ed.jpg','<p>商品介绍加载中...</p>',127,127,1000,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10008,'无印良品 MUJI 基础润肤化妆水','清爽型 200ml',0,'/goods-img/89660409-78b7-4d47-ae12-f94b3ce9664b.png','/goods-img/89660409-78b7-4d47-ae12-f94b3ce9664b.png','<p>商品介绍加载中...</p>',70,70,1000,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10009,'无印良品 MUJI 男式','无侧缝法兰绒 睡衣 海军蓝 L',0,'/goods-img/f172c500-21d0-42e3-95ce-aa9b84a2ef49.jpg','/goods-img/f172c500-21d0-42e3-95ce-aa9b84a2ef49.jpg','<p>商品介绍加载中...</p>',398,199,1000,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10010,'无印良品 MUJI 基础润肤洁面泡沫','200ml',0,'/goods-img/f87bdee1-ed48-4b49-b701-cc44f26a2699.jpg','/goods-img/f87bdee1-ed48-4b49-b701-cc44f26a2699.jpg','<p>商品介绍加载中...</p>',83,83,1000,'',0,0,'2019-09-18 13:18:47',0,'2020-10-13 10:41:59'),
	(10890,'小米 红米7 手机 Redmi7','AI双摄 拍照游戏手机 全网通双卡双待 亮黑色 4G+64G 全网通',51,'/goods-img/b6084354-1841-4241-ba7b-7e97186a9076.jpg','/goods-img/b6084354-1841-4241-ba7b-7e97186a9076.jpg','<p>商品介绍加载中...</p>',1299,808,1000,'',0,0,'2019-09-18 13:38:32',0,'2020-10-13 10:41:59'),
	(10891,'小米 红米7 手机 Redmi7','AI双摄 拍照游戏手机 全网通双卡双待 魅夜红 4G+64G 全网通',51,'/goods-img/7b4e03b1-eca7-42f5-8dda-14d02d3ab318.jpg','/goods-img/7b4e03b1-eca7-42f5-8dda-14d02d3ab318.jpg','<p>商品介绍加载中...</p>',1009,818,1000,'',0,0,'2019-09-18 13:38:32',0,'2020-10-13 10:41:59'),
	(10892,'小米 红米7 手机 Redmi7','AI双摄 拍照游戏手机 全网通双卡双待 梦幻蓝 3G+32G 全网通',51,'/goods-img/7bca8b59-35f3-480a-a95d-99efcbb8cfda.jpg','/goods-img/7bca8b59-35f3-480a-a95d-99efcbb8cfda.jpg','<p>商品介绍加载中...</p>',787,715,1000,'',0,0,'2019-09-18 13:38:32',0,'2020-10-13 10:41:59'),
	(10893,'HUAWEI Mate 30 Pro 双4000万徕卡电影四摄','超曲面OLED环幕屏 8GB+256GB 全网通4G版（星河银）',46,'/goods-img/mate30p2.png','/goods-img/mate30p2.png','<div id=\"activity_header\" style=\"margin:0px;padding:0px;color:#666666;font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\r\n<div style=\"margin:0px;padding:0px;text-align:center;\">\r\n	<br />\r\n</div>\r\n	</div>\r\n<div id=\"J-detail-content\" style=\"margin:0px;padding:0px;color:#666666;font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\r\n	<div style=\"margin:0px auto;padding:0px;\">\r\n		<img class=\"\" src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/huawei-1.jpg\" /><img border=\"0\" class=\"\" src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/huawei-3.jpg\" /> \r\n	</div>\r\n</div>',5399,5399,1000,'重构想象',0,0,'2019-09-19 23:17:39',0,'2020-10-13 10:41:59'),
	(10894,'HUAWEI Mate 30 Pro','超曲面OLED环幕屏 8GB+128GB 全网通4G版（翡冷翠）',46,'/goods-img/mate30p3.png','/goods-img/mate30p3.png','<div id=\"activity_header\" style=\"margin:0px;padding:0px;color:#666666;font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\r\n<div style=\"margin:0px;padding:0px;text-align:center;\">\r\n	<br />\r\n</div>\r\n	</div>\r\n<div id=\"J-detail-content\" style=\"margin:0px;padding:0px;color:#666666;font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\r\n	<div style=\"margin:0px auto;padding:0px;\">\r\n		<img class=\"\" src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/huawei-1.jpg\" /><img border=\"0\" class=\"\" src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/huawei-3.jpg\" /> \r\n	</div>\r\n</div>',5399,5399,995,'重构想象',0,0,'2019-09-19 23:20:24',0,'2020-10-13 10:41:59'),
	(10895,'HUAWEI Mate 30 4000万超感光徕卡影像','OLED全面屏 8GB+128GB 全网通4G版 （罗兰紫）',46,'/goods-img/mate30-3.png','/goods-img/mate30-3.png','<div id=\"activity_header\" style=\"margin:0px;padding:0px;color:#666666;font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\n<div style=\"margin:0px;padding:0px;text-align:center;\">\n	<br />\n</div>\n	</div>\n<div id=\"J-detail-content\" style=\"margin:0px;padding:0px;color:#666666;font-family:tahoma, arial, \" background-color:#ffffff;\"=\"\">\n	<div style=\"margin:0px auto;padding:0px;\">\n		<img class=\"\" src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/huawei-1.jpg\" /><img border=\"0\" class=\"\" src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/huawei-3.jpg\" /> \n	</div>\n</div>',3999,3999,964,'重构想象',0,0,'2019-09-19 23:22:22',0,'2020-10-13 10:41:59'),
	(10903,'华为 HUAWEI P40 冰霜银 全网通5G手机','麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦 6GB+128GB',46,'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/p40-silver.png','https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/p40-silver.png','<img src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/p40-detail.jpg\" alt=\"\" />',4399,4399,1997,'超感知影像',0,0,'2020-03-27 10:07:37',0,'2020-10-13 10:41:59'),
	(10905,'Apple iPhone12 (A2404) 蓝色 支持移动联通电信5G 双卡双待手机','A14仿生芯片，6.1英寸超视网膜XDR显示屏，超瓷晶面板，升维大提速，现实力登场！',47,'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iPhone12-blue.png','https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iPhone12-blue.png','<img src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iphone12-detail.jpg\" alt=\"\" />',6299,6299,1000,'升维，大提速。',0,0,'2020-10-14 10:30:06',0,'2020-10-14 10:30:06'),
	(10906,'Apple iPhone12 Pro (A2408) 128GB 海蓝色 支持移动联通电信5G 双卡双待手机','A14仿生芯片，6.1英寸超视网膜XDR显示屏，激光雷达扫描仪，超瓷晶面板，现实力登场！',47,'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iphone-12-pro-blue-hero.png','https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iphone-12-pro-blue-hero.png','<img src=\"https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iphone12pro-detail.jpg\" alt=\"\" />',8499,8499,2000,'自我再飞跃',0,0,'2020-10-14 10:32:55',0,'2020-10-14 10:32:55');

-- ----------------------------
-- Table structure for tb_newbee_mall_index_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_index_config`;
CREATE TABLE `tb_newbee_mall_index_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '首页配置项主键id',
  `config_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '显示字符(配置搜索时不可为空，其他可为空)',
  `config_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1-搜索框热搜 2-搜索下拉框热搜 3-(首页)热销商品 4-(首页)新品上线 5-(首页)为你推荐',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品id 默认为0',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '##' COMMENT '点击后的跳转地址(默认不跳转)',
  `config_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_index_config
-- ----------------------------
INSERT INTO `tb_newbee_mall_index_config` VALUES (1, '热销商品 iPhone XR', 3, 10284, '##', 10, 0, '2019-09-18 17:04:56', 0, '2019-09-18 17:04:56', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (2, '热销商品 华为 Mate20', 3, 10779, '##', 100, 0, '2019-09-18 17:05:27', 0, '2019-09-18 17:05:27', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (3, '热销商品 荣耀8X', 3, 10700, '##', 300, 0, '2019-09-18 17:08:02', 0, '2019-09-18 17:08:02', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (4, '热销商品 Apple AirPods', 3, 10159, '##', 101, 0, '2019-09-18 17:08:56', 0, '2019-09-18 17:08:56', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (5, '新品上线 Macbook Pro', 4, 10269, '##', 100, 0, '2019-09-18 17:10:36', 0, '2019-09-18 17:10:36', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (6, '新品上线 荣耀 9X Pro', 4, 10755, '##', 100, 0, '2019-09-18 17:11:05', 0, '2019-09-18 17:11:05', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (7, '新品上线 iPhone 11', 4, 10283, '##', 102, 0, '2019-09-18 17:11:44', 0, '2019-09-18 17:11:44', 0);
-- ----------------------------
-- Table structure for tb_newbee_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order`;
CREATE TABLE `tb_newbee_mall_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单表主键id',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户主键id',
  `total_price` int(11) NOT NULL DEFAULT 1 COMMENT '订单总价',
  `pay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付状态:0.未支付,1.支付成功,-1:支付失败',
  `pay_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0.无 1.支付宝支付 2.微信支付',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态:0.待支付 1.已支付 2.配货完成 3:出库成功 4.交易成功 -1.手动关闭 -2.超时关闭 -3.商家关闭',
  `extra_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单body',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人收货地址',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order
-- ----------------------------
INSERT INTO `tb_newbee_mall_order` VALUES (1, '15688187285093508', 1, 2492, 1, 2, '2019-09-18 23:00:18', -1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:53:07', '2019-09-18 22:55:32');
INSERT INTO `tb_newbee_mall_order` VALUES (2, '15688188616936181', 1, 135, 1, 1, '2019-09-18 23:01:06', 1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:55:20', '2019-09-18 23:01:06');
INSERT INTO `tb_newbee_mall_order` VALUES (3, '15689089426956979', 1, 15487, 1, 1, '2019-09-20 00:16:03', 3, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:56:40', '2019-09-20 00:10:39');
INSERT INTO `tb_newbee_mall_order` VALUES (4, '15689090398492576', 1, 8499, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:58:18', '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order` VALUES (5, '15689096266448452', 1, 115, 1, 2, '2019-09-20 00:13:52', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-20 00:08:04', '2019-09-20 00:13:52');
INSERT INTO `tb_newbee_mall_order` VALUES (6, '15691645776131562', 7, 7998, 1, 1, '2019-09-22 23:05:53', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 22:57:15', '2019-09-22 23:05:53');
INSERT INTO `tb_newbee_mall_order` VALUES (7, '15691648465397435', 7, 13998, 1, 2, '2019-09-22 23:07:38', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:01:44', '2019-09-22 23:02:10');

-- ----------------------------
-- Table structure for tb_newbee_mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order_item`;
CREATE TABLE `tb_newbee_mall_order_item`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单关联购物项主键id',
  `order_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '订单主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的名称(订单快照)',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的主图(订单快照)',
  `selling_price` int(11) NOT NULL DEFAULT 1 COMMENT '下单时商品的价格(订单快照)',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(订单快照)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_order_item` VALUES (1, 1, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 2, '2019-09-18 22:53:07');
INSERT INTO `tb_newbee_mall_order_item` VALUES (2, 2, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (3, 2, 10158, '无印良品 女式粗棉线条纹长袖T恤', 'http://localhost:28089/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (4, 3, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (5, 3, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (6, 4, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order_item` VALUES (7, 5, 10104, '无印良品 MUJI 修正带', '/goods-img/98ce17e1-890e-4eaf-856a-7fce8ffebc4c.jpg', 15, 1, '2019-09-20 00:08:04');

-- ----------------------------
-- Table structure for tb_newbee_mall_shopping_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopping_cart_item`;
CREATE TABLE `tb_newbee_mall_shopping_cart_item`  (
  `cart_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物项主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(最大为5)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- !!!!!!!!!!!!!Table structure for tb_newbee_mall_shopping_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopping_cart_item`;
CREATE TABLE `tb_newbee_mall_shopping_cart_item`  (
  `cart_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物项主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(最大为5)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `low_price` int(11) NOT NULL DEFAULT 1 COMMENT '用户设置的最低价格',
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_newbee_mall_user_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user_message`;
CREATE TABLE `tb_newbee_mall_user_message`  (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `goods_id` bigint(20) NOT NULL COMMENT '商品id',
  `seller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '售卖商家',
  `platform` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '平台',
  `current_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '当前价格',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息创建时间',
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_user_message
-- ----------------------------
INSERT INTO `tb_newbee_mall_user_message` VALUES (1, 1, 101, '商家1', '平台A', 99.99, '2023-01-04 12:00:00');
INSERT INTO `tb_newbee_mall_user_message` VALUES (2, 2, 102, '商家2', '平台B', 199.99, '2023-01-04 12:15:00');

-- ----------------------------
-- Table structure for tb_newbee_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user`;
CREATE TABLE `tb_newbee_mall_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `login_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登陆名称(默认为手机号)',
  `password_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'MD5加密后的密码',
  `introduce_sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货地址',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '锁定标识字段(0-未锁定 1-已锁定)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_user` VALUES (1, '十三', '13700002703', 'e10adc3949ba59abbe56e057f20f883e', '我不怕千万人阻挡，只怕自己投降', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-09-22 08:44:57');
INSERT INTO `tb_newbee_mall_user` VALUES (6, '测试用户1', '13711113333', 'dda01dc6d334badcd031102be6bee182', '测试用户1', '上海浦东新区XX路XX号 999 137xxxx7797', 0, 0, '2019-08-29 10:51:39');
INSERT INTO `tb_newbee_mall_user` VALUES (7, '测试用户2测试用户2测试用户2测试用户2', '13811113333', 'dda01dc6d334badcd031102be6bee182', '测试用户2', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:08');
INSERT INTO `tb_newbee_mall_user` VALUES (8, '测试用户3', '13911113333', 'dda01dc6d334badcd031102be6bee182', '测试用户3', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:16');