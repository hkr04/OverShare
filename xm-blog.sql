/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : xm-blog

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 09/05/2024 21:02:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动名称',
  `descr` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动简介',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '活动内容',
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '开始时间',
  `end` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结束时间',
  `form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动形式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动地址',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主办方',
  `read_count` int(0) NULL DEFAULT 0 COMMENT '浏览量',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '活动1', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 0, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (3, '活动2', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-05-18', '线上', '百度搜80801', '毕业设计', 2, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (4, '活动3', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 1, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (5, '活动4', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-05-18', '线上', '百度搜80801', '毕业设计', 7, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (6, '活动5', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 2, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (7, '活动6', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 0, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (8, '活动7', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 1, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (9, '活动8', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 3, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (10, '活动9', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '2024-02-10', '2024-03-30', '线上', 'https://www.iconfont.cn/', '毕业设计', 10, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (11, '春日健康指南', '一年之计在于春，春季健康不容疏忽！有哪些春季需要注意的健康问题？有哪些需要科普的春季健康知识？\n关于春日健康，我们想和你一起聊聊！投稿参与【万物研究所·春日健康季活动】有奖话题，万元奖金等你来拿！', '<h1 data-we-empty-p=\"\" id=\"5i5nz\"><h1 id=\"ufm9q\">春日健康指南</h1><div><p>一年之计在于春，春季健康不容疏忽！有哪些春季需要注意的健康问题？有哪些需要科普的春季健康知识？<br/>关于春日健康，我们想和你一起聊聊！投稿参与【万物研究所·春日健康季活动】有奖话题，万元奖金等你来拿！</p></div><h1 id=\"ufm9q\"><img src=\"http://localhost:9091/files/1711271027852-HD1.png\" contenteditable=\"false\" style=\"max-width: 100%;\"/><br/></h1><h1 id=\"ufm9q\"><img src=\"http://localhost:9091/files/1711271033537-HD2.png\" contenteditable=\"false\" style=\"max-width: 100%;\"/></h1></h1>', '2024-02-10', '2024-03-30', '线下', '广东科技学院', '毕业设计', 98, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (12, '测试活动1', '测试活动1', '<p><img src=\"http://localhost:9091/files/1712820890668-HD1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1712820905726-HD2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><blockquote><p>😀</p></blockquote>', '2024-04-11', '2024-07-31', '线下', '广东省东莞市石排广东科技学院松山湖校区', '学习委员会', 13, 'http://localhost:9091/files/1712820841160-HD2.png');
INSERT INTO `activity` VALUES (13, '活动333', '活动333', '<p><img src=\"http://localhost:9091/files/1713180607360-HD2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '2024-04-15', '2024-04-15', '线上', 'http://localhost:8081/activity', '主办方1', 4, 'http://localhost:9091/files/1713180580629-HD1.png');

-- ----------------------------
-- Table structure for activity_sign
-- ----------------------------
DROP TABLE IF EXISTS `activity_sign`;
CREATE TABLE `activity_sign`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `activity_id` int(0) NULL DEFAULT NULL COMMENT '活动id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '报名时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动报名表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_sign
-- ----------------------------
INSERT INTO `activity_sign` VALUES (20, 10, 3, '2024-03-24 17:17:24');
INSERT INTO `activity_sign` VALUES (23, 12, 8, '2024-04-11 16:45:03');
INSERT INTO `activity_sign` VALUES (27, 12, 10, '2024-04-15 19:04:42');
INSERT INTO `activity_sign` VALUES (29, 5, 11, '2024-04-15 19:17:41');
INSERT INTO `activity_sign` VALUES (32, 12, 12, '2024-04-18 23:50:41');
INSERT INTO `activity_sign` VALUES (33, 12, 13, '2024-04-18 23:57:43');
INSERT INTO `activity_sign` VALUES (34, 12, 3, '2024-04-20 00:30:19');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9091/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin11@xm.com');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '发布人ID',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布日期',
  `read_count` int(0) NULL DEFAULT 0 COMMENT '浏览量',
  `category_id` int(0) NULL DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (30, '呢喃河上的幽灵—第三话 新颜与初漫', '<p><img src=\"http://localhost:9091/files/1711218123828-0547f8366c914e17c6b70e07f35fa61e_w2160_h1620_s916.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218127294-071bedaaa6a4b00cd6af4eddf274b784_w2160_h1620_s685.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218130082-38b2e63fa27d7dfb10201048e36d5c88_w2160_h1620_s572.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218132701-6d4c49d1c18d90b5618fb65909ade25f_w2160_h1620_s671.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218135126-a29e6b10df65ed21ab529676f8c89916_w2160_h1620_s529.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218137415-f8c2f60b8adb77cfd5b35a603f7529c3_w2160_h1620_s569.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '前情提要：\n记者贺初漫化名为贺新颜踏上呢喃岛。因迷路与受到惊吓失足滚落山坡，最终被岛上村民徐宁发现背回村内。\n\n我又来闪现更新了！抱歉鸽了那么久。下次更新估计会在两个月后，依旧是一人全包无小助手所以随缘更新！求心心，求评论，画原创真的很需要鼓励呀！感谢还在等这漫画的小伙们呀QWQ', 'http://localhost:9091/files/1711218008684-85ca49143df94c80ae765dbad388babc~tplv-k3u1fbpfcp-jj_189_126_0_0_q75.avis', '[\"绘画\",\"幽灵\",\"第三话\"]', 3, '2024-03-24', 12, 1);
INSERT INTO `blog` VALUES (31, '后母坏，还是继父恶？', '<h4 id=\"xpvu8\"><font size=\"4\">《周处除三害》很好看，台式黑帮片似乎有望取代港产片。此外，台剧在网飞的资金支持下，也咔咔发力，每年都有一两部火到国内的热播剧。</font></h4><h5><font size=\"4\" style=\"font-weight: normal;\">有人在微博上说，台片台剧的逐渐兴起和港片的日益衰败，和前者一开始就主动放弃了内地市场，而后者又大力迎合，多少有些关系。\n\n我不知道这个说法对不对，但能观察到的现象确实是这两年的台剧台片，在价值观上突飞猛进。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">&nbsp;我还记得小时候是根本不看台剧的，实在因为价值观巨大的土和过时：有一部片子，忘了叫什么名字，曾经全国热播，但剧情线似乎是男主因为“爱”强奸了女主，出狱之后，又用“爱”感动了女主，两人最后幸福地在一起了。（似乎是琼瑶剧？）我因为没看，所以不知道回忆是否准确，但我很清楚地记得，当年旁听到相关剧情的台词，简直想拿起菜刀砍死男主，以及所有让女主跟男主结合的配角。\n\n这两年的台剧就，咦？有点不一样了。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">而对比来看且令我痛心疾首的是，港剧和港片，尤其是爱情或者生活向的作品，变得其土无比：比如去年还算热门的电影《饭戏攻心》，WTF is this？！\n\n说回《周处除三害》里借女主之口说出的一小段剧情，就是香港仔把女主的妈妈从另一个男人手里救出来，但仍然长期家暴妈妈，妈妈替香港仔顶债顶罪，要坐十多年牢；等母亲去坐牢之后，女主从小就被继父霸占。\n\n这里有两条暗线，一是，为什么“妈妈”总是会碰到家暴自己的男性？“被家暴”也是一种习惯和特质。如果一名女性成长于一个暴力（比如父亲对母亲和子女施暴）的家庭，她有可能会形成吸引“施暴”伴侣的“受虐”气质，甚至主动去招惹对方的暴力；对比而言，如果是男性成长于同类家庭，他也有不小的可能会获得“施暴”的性格（当然，往好了说，他同样也有可能变得憎恨暴力）。换句话说，如果《周处除三害》往下推演，女主爱上了解救自己的男主并在一起，他们大概率会陷入病态的施暴与受虐关系。\n\n还有一条暗线是，继父性侵继女概率到底有多大？\n\n我以前一直很好奇，为什么在中西文化里，“后母”都永远是童话故事里的反派。后来明白了，在中世纪，“亲妈”的确活不长，平均年龄不过是30来岁，生娃时难产死去的概率相当不小。很自然，丈夫铁定是要续弦的，这是“后母”留下恶名的最大原因。\n\n反过来说，如果是父亲死了，母亲一般会独立抚养子女，再嫁的偏少。就算带着孩子再嫁，男孩也就还好，如果是女孩，大多又无法接受教育，难以留下对继父的控诉。\n\n从20世纪80年代开始，本地的离婚率逐渐走高，单亲家庭的孩子颇多。就我个人观察的范围来说，由离异母亲抚养的女孩，几乎都受过继父大大小小的骚扰（小指的是不恰当的抚摸、偷窥；大就是《周处除三害》里的情节再现）。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">&nbsp;我不知道这是因为我的取样范本有问题，还是普遍如此。\n\n做过类似观察的朋友，不妨来聊聊。</font><br/></h5>', '后母坏，还是继父恶？', 'http://localhost:9091/files/1711218331263-594dd79b39f84ba3ad070ec77188b874~tplv-k3u1fbpfcp-jj_189_126_0_0_q75.avis', '[\"写作\",\"关系\",\"周处除三害\"]', 6, '2024-03-24', 9, 2);
INSERT INTO `blog` VALUES (32, '💀填好个税，一年多给几千块 ~ 聊聊个人所得税，你该退税还是补税？写一个个税的计算器（退税、补税、个税）', '<h5><span style=\"font-weight: normal;\">为什么你需要补税？</span><br/><span style=\"font-weight: normal;\">大多数情况下，公司发工资会替你把税交了，这个行为叫预缴。</span><br/>为什么预缴呢？因为国家规定：</h5><blockquote><p><br/>《个人所得税扣缴申报管理办法(试行)》(国家税务总局公告2018年第61号发布) <br/>第六条：扣缴义务人向居民个人支付工资、薪金所得时,应当按照累计预扣法计算预扣税款,并按月办理扣缴申报。<br/><br/></p></blockquote><blockquote><p><br/>这也就是我们每个月发工资都会扣税的原因。<br/>那为什么需要补税呢？因为预缴是根据你在当前公司的收入进行缴税，公司会计算你的累进税率，你会发现每到年底税交的越来越高了，这是累进预缴导致的。<br/>有些人在年中换了工作了，新公司不知道你之前已经交到哪个阶段的个税了，因此预缴时计税金额会重新累计。<br/>因此补税的原因不外乎：<br/><br/><u>工作变更<br/>公司主体变更（如：公司拆分）<br/></u><br/>为什么说预缴是天才发明？<br/>预缴制简直是个天才发明，不但会大大减少逃税人数，而且能减轻税务工作量（转移至各公司），且可以让缴税的人对税率的感知没有那么强烈。<br/>达成这种效果主要原因有两点，分别是 损失厌恶 、 心理账户 。<br/>损失厌恶<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>牢记这句话。<br/>一个最简单的例子，短视频中经常会出现的 最有效的 6 条学习方式，最后一条最重要 。这种放大损失的语言，常常能诱发更高的完播率。<br/><br/>虽然我很讨厌以这种方式留住用户，但常常在刷到这类视频时，也忍不住多看一样，虽然知道它最终可能也没什么实质内容。<br/><br/>还有一种就是我们常常刷掉一个视频，又返回去看一眼，又刷掉又返回去。我常常会有这种心理，这个视频我是不是应该看一看的纠结。<br/>个税也是同理，个税预缴是减少我们的收益，而个税年终汇算则是直接让我们从口袋中掏钱。<br/>就算汇算综合到月度计算，同样也是，一种是公司扣完发给你，另一种是发给你之后你再掏出来一部分。大家感受一下这其中的区别。<br/>心理账户<br/>人们可能会将个税缴纳视作开销，而且是意外开销，意外开销总是让人痛苦的。<br/>比如我每个月 1w 块，其中 3k 拿来租房，3k 拿来吃饭， 2k 拿来娱乐，2k 拿来缴五险一金。<br/>这时候到年终汇算时，人们则容易苦不堪言。<br/>且这种带来的直接后果是，我想把税留到最后一天交，同时最后一天也很容易忘记交，因为大脑也不想要这种意外支出。<br/>最终则导致 漏交、拒交 个税的人数大大增加。<br/>专项附加扣除严谨度<br/><br/>子女教育（未婚，无接触）<br/>赡养老人（容易被查）<br/>继续教育 - 学历提升（基本不查）<br/><br/>学历提升可以选择一个对应学历，每个学历 4 年，共 16 年左右抵税<br/><br/><br/>继续教育 - 证书获取（基本不查）<br/><br/>证书获取有人一个证书可以一直抵税，建议： 营养师证、焊工证等<br/><br/><br/>租房买房（基本不查）<br/>大病医疗（未填过，未知）<br/><br/></p><p><br/></p></blockquote>', '一年一度个税年度综合汇算清缴的时间又到了，作为开发者的你，肯定过了起征点了吧。🫤\n去年退税退了 5676 ，今年看这个估计得补好几千，但是个税年度汇算清缴还没有预约到，抓紧提前算算金额，做做心理建设。\\同时，了解个税都扣在哪了，才可以让我们合理避税~\n下面我们简单聊聊 补税 和 预缴 ，顺便讲讲专项附加扣除应该怎么填。', 'http://localhost:9091/files/1711218674211-g.avis', '[\"个人所得税\"]', 3, '2024-03-24', 7, 2);
INSERT INTO `blog` VALUES (33, '神州志西游Q&A - 手游版本和存档的说明', '<p>目录<br/><br/>手游版怎么购买？<br/><br/>购买了iOS内测版，如何安装？<br/><br/>购买了安卓内测版，如何获得安装包？<br/><br/>如何跨平台存档同步 ？如何还原存档？<br/><br/><br/><br/>如果还有问题，请加入我们QQ群，找群管理私聊解决。<br/><br/>QQ群号：111111111（1群）222222222（2群）<br/><br/><br/><br/>手游版怎么购买？<br/><br/><br/>若是海外区苹果商店可直接下载：<a href=\"https://apps.apple.com/us/app/journey-to-the-west-mobile/id1669592311\" target=\"_blank\">https://apps.apple.com/us/app/journey-to-the-west-mobile/id1669592311</a>1<br/><br/>国区可在爱发电上购买内测版（iOS 和安卓，和PC版同步更新）：<a href=\"https://afdian.net/a/JTW_ZStudio\" target=\"_blank\">https://a/JTW_ZStudio</a>2<br/><br/>注意：今后国区有的正式版会通过邀请码或者激活码将已有内测版兑换成正式版。<br/><br/><br/><br/><br/><br/>购买了上iOS内测版，如何安装？<br/>我们通过Testflight来进行内测版的分发和更新。<br/><br/>第一步：上购买iOS内测版后，系统会和您发起对话，请将email留给我们，我们将把邀请码发到这个email地址中。<br/><br/>第二步：在应用商店下载“TestFlight”软件<br/></p>', '神州志西游Q&A - 手游版本和存档的说明', 'http://localhost:9091/files/1711218959758-szzxy.jpg', '[\"游戏\",\"神州志西游\"]', 6, '2024-03-24', 8, 3);
INSERT INTO `blog` VALUES (34, '【西游日记】23年12月更新', '<h1><a href=\"https://afdian.net/p/375dfe769fca11eea4fe5254001e7c00\" id=\"m4gkd\">【西游日记】23年12月更新</a></h1><article><p><b>12月21日开始进入<a href=\"https://store.steampowered.com/app/1449070/_/#app_reviews_hash\">Steam冬季大促，我们也有给力的折扣奉上</a>！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！</b></p><p>紫灵和青灵在释放技能时会进行形态切换。</p><p><img src=\"http://localhost:9091/files/1711219184635-szzxy2.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>重做了选人头像。<br/></p><p><img src=\"http://localhost:9091/files/1711219196653-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>我们对如下技能增加了残影特效：悟空的三头六臂，唐僧的超凡入圣，八戒的八戒归一，白龙的绝处逢生，沙僧的四象归元。是不是变得更酷了？</p><p><img src=\"http://localhost:9091/files/1711219208560-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>其他优化</p><ul><li>完善活体护甲的解释。</li><li>略微加强孟婆的技能。</li><li>优化邪恶结界特效。</li><li>大量素材优化。</li></ul><p><br/></p><p>漏洞修复</p><ul><li>修复移花接木多次叠加导致游戏速度变慢的问题。</li><li>修复卧虎藏龙被多重打出时变成基础效果的问题。</li><li>修复佛旨纶音减血不叠加的问题。</li><li>修复孟婆攻击附加易伤没有说明的问题。</li><li>修复蝙蝠尖牙技能在图鉴里飞行状态没有显示的问题。</li><li>修复阴神玉女的技能解释问题。</li></ul></article>', '12月21日开始进入Steam冬季大促，我们也有给力的折扣奉上！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！', 'http://localhost:9091/files/1711219144516-szzxy.jpg', '[\"西游日记\",\"游戏\"]', 6, '2024-03-24', 22, 3);
INSERT INTO `blog` VALUES (35, '古代官兵佩刀3种', '<h2 id=\"hhbsp\">来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！</h2><p>适合不同等级的角色佩戴使用。</p><p>文件格式：</p><p>📂古代官兵佩刀3种.skp</p><p><b>商品页直达：<a target=\"_blank\" href=\"https://xxxxxxxxxxxxxxxxx\">https://xxxxxxxxxxxxxxxxx</a></b><br/></p><p><img src=\"http://localhost:9091/files/1711219547340-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219551403-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219556089-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219559523-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219562491-d5.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！\n适合不同等级的角色佩戴，一次购买永久使用！', 'http://localhost:9091/files/1711219425384-d.jpeg', '[\"素材\",\"佩刀\",\"古代官兵\",\"可燃冰\"]', 3, '2024-03-24', 48, 7);
INSERT INTO `blog` VALUES (37, '信道带宽', '<h1><b id=\"pqj82\">信道带宽</b></h1><p>是信道能通过的最低频率,是信道能通过的最高频率,两者都是由信道的物理特性决定的。当组成信道的电路制成了,信道的带宽就决定了。为了使信号传输中的失真小一些,信道要有足够的带宽。</p><p><h2><b id=\"9jx8q\"> 模拟信道的带宽</b></h2>数字信道是一种离散信道,它只能传送取离散值的数字信号。信道的带宽决定了信道中能数据通信基础，不失真地传输的脉冲序列的最高速率。一个数字脉冲称为一个码元,用码元速率表示单位时间内信号波形的变换次数,即单位时间内通过信道传输的码元个数。若信号码元宽度为 T 秒,则码元速率 B=l/T。码元速率的单位叫波特 CBaud), 所以码元速率也叫波特率。早在 1924 年,贝尔实验室的研究员亨奈奎斯特 (Harry Nyquist) 就推导出了有限带宽无噪声信道的极限波特率,称为尼奎斯特定理。若信道带宽为 w, 则尼奎斯特定理指出最大码元速率为B=2W CBaud)奈奎斯特定理指定的信道容量也叫作奈奎斯特极限,这是由信道的物理特性决定的。超过奈奎斯特极限传送脉冲信号是不可能的,所以要进一步提高波特率必须改善信道带宽。</p><hr/><p><br/></p><p>码元携带的信息橘由码元取的离散值的个数决定。若码元取两个离散值,则一个码元携带</p><blockquote><p>1 位信息。若码元可取 4 种离散值,则一个码元携带两位信息。总之,一个码元<b>携带的信息 量<br/>n (位)与码元的种类数 N 有如下关系<br/>n=log2N (N=2n)<br/>单位时间内在信道上传送的信息量(位数)称为数据速率。在一定的波特率下提高速率的<br/>途径是用一个码元表示更多的位数。如果把两位编码为一个码元,则数据速率可成倍提高。有</b><br/>公式<br/>R=B log2N=2Wlog2N (bps)<br/>其中, R 表示数据速率,单位是每秒位 (bps 或 b/s) 。<br/>数据速率和波特率是两个不同的概念。仅当码元取两个离散值时两者的数值才相等。对千<br/>普通电话线路,带宽为 3000Hz, 最高波特率为 6000Baud, 最高数据速率可随着调制方式的不<br/>同而取不同的值。这些都是在无噪声的理想情况下的极限值。实际信道会受到各种噪声的 干扰,</p><hr/><p><br/></p><p>因而远远达不到按奈奎斯特定理计算出的数据传送速率。香衣 (Shannon) 的研究表明,有噪<br/>声信道的极限数据速率可由下面的公式计算<br/>C = Wlog2<br/> (气)<br/>这个公式叫作香衣定理,其中, W 为信道带宽, S 为信号的平均功率, N 为噪声平均功率,<br/>SIN 叫作信噪比。由于在实际使用中 S 与 N 的比值太大,故常取其分贝数 (dB) 。分贝与信噪<br/><b>比的关系为<br/>s<br/>dB=lOlog 10 一<br/>N<br/>例如,当 SIN=lOOO 时,信噪比为 30dB 。这个公式与信号取的离散值的个数无关,也就是<br/>说,无论用什么方式调制,只要给定了信噪比,则单位时间内最大的信息传输霾就确定了。例<br/>如,信道带宽为 3000Hz, 信噪比为 30dB, 则最大数据速率为<br/>C=30001ogi(l+l000)=3000X9 .97=30 OOObps</b></p></blockquote>', '信道带宽是信道能通过的最低频率,是信道能通过的最高频率,两者都是由信道的物理特性决定的。\n当组成信道的电路制成了,信道的带宽就决定了。为了使信号传输中的失真小一些,信道要有足够的带宽。', 'http://localhost:9091/files/1712825870900-1712825635385.jpg', '[\"技术\",\"信道带宽\"]', 8, '2024-04-11', 18, 6);
INSERT INTO `blog` VALUES (42, 'ceshi2', '<p><img src=\"http://localhost:9091/files/1713456061986-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1713456067406-1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '简介', 'http://localhost:9091/files/1713456044432-2.png', '[\"3d马头墙\",\"绘画\"]', 13, '2024-04-19', 5, 1);
INSERT INTO `blog` VALUES (43, '2022年文创盘点！那些好看又有趣的国风文创！', '<p data-we-empty-p=\"\" style=\"line-height:2;\"><b>前言</b><br/>近几年国内文创产品蓬勃发展，已经成为了大家获取生活乐趣的重要手段之一。纵观2022年，也有诸多好看、有趣、实用的文创产品成功出圈，在年底之际，购买文创作为新年礼物也是非常不错的选择~<br/>国风文创是以我国传统文化为灵感，设计而出的新潮流文创产品，随着文化自信的不断提升，大家对于国风设计的认知程度也越来越高，各大博物馆和不少文具品牌，都有许多亮眼产品推出，本篇为大家盘点一下2022年的爆款国风文创！<br/><b>故宫博物院-金桂浮月马克杯</b><br/></p><p data-we-empty-p=\"\" style=\"\"><img src=\"http://localhost:9091/files/1713801685520-1.png\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/></p><p data-we-empty-p=\"\" style=\"line-height:2;\">爆款的金桂浮月马克杯灵感上来自清代的紫檀边金桂月挂屏，杯顶是金色的月兔形象，手工描金上色，兔型非常可爱。杯身根据原作，绘制了宫廷、祥云、月兔、明月等形象，有着浪漫团圆的寓意。<br/></p><p data-we-empty-p=\"\" style=\"line-height:2;\"><img src=\"http://localhost:9091/files/1713801754296-2.png\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/><br/>马克杯专门配了一把304不锈钢的杯勺，并且做了镀金处理，挂在杯上，宛如圆月洒下的金色月光。<br/></p><p data-we-empty-p=\"\" style=\"line-height:2;\">整个杯子外观设计的整体感非常强，让人防佛置身月宫之中，又有兔年的元素寓意，很适合作为明年春节的新春礼物。<br/><b>甘肃博物馆-马踏飞燕玩偶</b><br/>甘肃省博物馆同样是历史悠久的国家一级博物馆，地处兰州。<br/></p><p>这款玩偶今年真的非常出圈，创意来自于甘肃博物馆镇馆之宝铜奔马。<br/></p><p data-we-empty-p=\"\" style=\"line-height:2;\"><img src=\"http://localhost:9091/files/1713801834527-3.png\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/><br/>整体采用深绿设计，符合文物青铜器的风格，绿色毛绒的马儿咧嘴傻笑，憨态可掬，丑萌本色，绿马又在如今环境下是美好的祝福。<br/></p><p data-we-empty-p=\"\" style=\"line-height:2;\"><img src=\"http://localhost:9091/files/1713801979381-4.png\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"30%\"/><br/><b>尾巴</b><br/>近几年可以说国风国潮是文创产品的一个爆点方向，在我看来，离不开大家对国风元素的文化认同和文创产品的精致设计，这也是部分国产文具产品升级的重要道路，希望它们可以越做越好！<br/>感谢大家的阅读，期待下次与大家的交流！<br/></p>', '好看又有趣的国风文创！', 'http://localhost:9091/files/1713801558792-被子.webp', '[\"绘画\",\"国风\",\"艺术\",\"故宫\",\"玩具\"]', 3, '2024-04-23', 3, 1);

-- ----------------------------
-- Table structure for blog_encrypt
-- ----------------------------
DROP TABLE IF EXISTS `blog_encrypt`;
CREATE TABLE `blog_encrypt`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '发布人ID',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布日期',
  `read_count` int(0) NULL DEFAULT 0 COMMENT '浏览量',
  `category_id` int(0) NULL DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_encrypt
-- ----------------------------
INSERT INTO `blog_encrypt` VALUES (30, '呢喃河上的幽灵—第三话 新颜与初漫    加密', '<p><img src=\"http://localhost:9091/files/1711218123828-0547f8366c914e17c6b70e07f35fa61e_w2160_h1620_s916.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218127294-071bedaaa6a4b00cd6af4eddf274b784_w2160_h1620_s685.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218130082-38b2e63fa27d7dfb10201048e36d5c88_w2160_h1620_s572.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218132701-6d4c49d1c18d90b5618fb65909ade25f_w2160_h1620_s671.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218135126-a29e6b10df65ed21ab529676f8c89916_w2160_h1620_s529.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218137415-f8c2f60b8adb77cfd5b35a603f7529c3_w2160_h1620_s569.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '前情提要：\n记者贺初漫化名为贺新颜踏上呢喃岛。因迷路与受到惊吓失足滚落山坡，最终被岛上村民徐宁发现背回村内。\n\n我又来闪现更新了！抱歉鸽了那么久。下次更新估计会在两个月后，依旧是一人全包无小助手所以随缘更新！求心心，求评论，画原创真的很需要鼓励呀！感谢还在等这漫画的小伙们呀QWQ', 'http://localhost:9091/files/1711218008684-85ca49143df94c80ae765dbad388babc~tplv-k3u1fbpfcp-jj_189_126_0_0_q75.avis', '[\"绘画\",\"幽灵\",\"第三话\"]', 3, '2024-03-24', 8, 1);
INSERT INTO `blog_encrypt` VALUES (31, '后母坏，还是继父恶？    加密', '<h4 id=\"xpvu8\"><font size=\"4\">《周处除三害》很好看，台式黑帮片似乎有望取代港产片。此外，台剧在网飞的资金支持下，也咔咔发力，每年都有一两部火到国内的热播剧。</font></h4><h5><font size=\"4\" style=\"font-weight: normal;\">有人在微博上说，台片台剧的逐渐兴起和港片的日益衰败，和前者一开始就主动放弃了内地市场，而后者又大力迎合，多少有些关系。\n\n我不知道这个说法对不对，但能观察到的现象确实是这两年的台剧台片，在价值观上突飞猛进。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">&nbsp;我还记得小时候是根本不看台剧的，实在因为价值观巨大的土和过时：有一部片子，忘了叫什么名字，曾经全国热播，但剧情线似乎是男主因为“爱”强奸了女主，出狱之后，又用“爱”感动了女主，两人最后幸福地在一起了。（似乎是琼瑶剧？）我因为没看，所以不知道回忆是否准确，但我很清楚地记得，当年旁听到相关剧情的台词，简直想拿起菜刀砍死男主，以及所有让女主跟男主结合的配角。\n\n这两年的台剧就，咦？有点不一样了。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">而对比来看且令我痛心疾首的是，港剧和港片，尤其是爱情或者生活向的作品，变得其土无比：比如去年还算热门的电影《饭戏攻心》，WTF is this？！\n\n说回《周处除三害》里借女主之口说出的一小段剧情，就是香港仔把女主的妈妈从另一个男人手里救出来，但仍然长期家暴妈妈，妈妈替香港仔顶债顶罪，要坐十多年牢；等母亲去坐牢之后，女主从小就被继父霸占。\n\n这里有两条暗线，一是，为什么“妈妈”总是会碰到家暴自己的男性？“被家暴”也是一种习惯和特质。如果一名女性成长于一个暴力（比如父亲对母亲和子女施暴）的家庭，她有可能会形成吸引“施暴”伴侣的“受虐”气质，甚至主动去招惹对方的暴力；对比而言，如果是男性成长于同类家庭，他也有不小的可能会获得“施暴”的性格（当然，往好了说，他同样也有可能变得憎恨暴力）。换句话说，如果《周处除三害》往下推演，女主爱上了解救自己的男主并在一起，他们大概率会陷入病态的施暴与受虐关系。\n\n还有一条暗线是，继父性侵继女概率到底有多大？\n\n我以前一直很好奇，为什么在中西文化里，“后母”都永远是童话故事里的反派。后来明白了，在中世纪，“亲妈”的确活不长，平均年龄不过是30来岁，生娃时难产死去的概率相当不小。很自然，丈夫铁定是要续弦的，这是“后母”留下恶名的最大原因。\n\n反过来说，如果是父亲死了，母亲一般会独立抚养子女，再嫁的偏少。就算带着孩子再嫁，男孩也就还好，如果是女孩，大多又无法接受教育，难以留下对继父的控诉。\n\n从20世纪80年代开始，本地的离婚率逐渐走高，单亲家庭的孩子颇多。就我个人观察的范围来说，由离异母亲抚养的女孩，几乎都受过继父大大小小的骚扰（小指的是不恰当的抚摸、偷窥；大就是《周处除三害》里的情节再现）。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">&nbsp;我不知道这是因为我的取样范本有问题，还是普遍如此。\n\n做过类似观察的朋友，不妨来聊聊。</font><br/></h5>', '后母坏，还是继父恶？', 'http://localhost:9091/files/1711218331263-594dd79b39f84ba3ad070ec77188b874~tplv-k3u1fbpfcp-jj_189_126_0_0_q75.avis', '[\"写作\",\"关系\",\"周处除三害\"]', 6, '2024-03-24', 2, 2);
INSERT INTO `blog_encrypt` VALUES (32, '💀填好个税，一年多给几千块 ~ 聊聊个人所得税，你该退税还是补税？   加密', '<h5><span style=\"font-weight: normal;\">为什么你需要补税？</span><br/><span style=\"font-weight: normal;\">大多数情况下，公司发工资会替你把税交了，这个行为叫预缴。</span><br/>为什么预缴呢？因为国家规定：</h5><blockquote><p><br/>《个人所得税扣缴申报管理办法(试行)》(国家税务总局公告2018年第61号发布) <br/>第六条：扣缴义务人向居民个人支付工资、薪金所得时,应当按照累计预扣法计算预扣税款,并按月办理扣缴申报。<br/><br/></p></blockquote><blockquote><p><br/>这也就是我们每个月发工资都会扣税的原因。<br/>那为什么需要补税呢？因为预缴是根据你在当前公司的收入进行缴税，公司会计算你的累进税率，你会发现每到年底税交的越来越高了，这是累进预缴导致的。<br/>有些人在年中换了工作了，新公司不知道你之前已经交到哪个阶段的个税了，因此预缴时计税金额会重新累计。<br/>因此补税的原因不外乎：<br/><br/><u>工作变更<br/>公司主体变更（如：公司拆分）<br/></u><br/>为什么说预缴是天才发明？<br/>预缴制简直是个天才发明，不但会大大减少逃税人数，而且能减轻税务工作量（转移至各公司），且可以让缴税的人对税率的感知没有那么强烈。<br/>达成这种效果主要原因有两点，分别是 损失厌恶 、 心理账户 。<br/>损失厌恶<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>牢记这句话。<br/>一个最简单的例子，短视频中经常会出现的 最有效的 6 条学习方式，最后一条最重要 。这种放大损失的语言，常常能诱发更高的完播率。<br/><br/>虽然我很讨厌以这种方式留住用户，但常常在刷到这类视频时，也忍不住多看一样，虽然知道它最终可能也没什么实质内容。<br/><br/>还有一种就是我们常常刷掉一个视频，又返回去看一眼，又刷掉又返回去。我常常会有这种心理，这个视频我是不是应该看一看的纠结。<br/>个税也是同理，个税预缴是减少我们的收益，而个税年终汇算则是直接让我们从口袋中掏钱。<br/>就算汇算综合到月度计算，同样也是，一种是公司扣完发给你，另一种是发给你之后你再掏出来一部分。大家感受一下这其中的区别。<br/>心理账户<br/>人们可能会将个税缴纳视作开销，而且是意外开销，意外开销总是让人痛苦的。<br/>比如我每个月 1w 块，其中 3k 拿来租房，3k 拿来吃饭， 2k 拿来娱乐，2k 拿来缴五险一金。<br/>这时候到年终汇算时，人们则容易苦不堪言。<br/>且这种带来的直接后果是，我想把税留到最后一天交，同时最后一天也很容易忘记交，因为大脑也不想要这种意外支出。<br/>最终则导致 漏交、拒交 个税的人数大大增加。<br/>专项附加扣除严谨度<br/><br/>子女教育（未婚，无接触）<br/>赡养老人（容易被查）<br/>继续教育 - 学历提升（基本不查）<br/><br/>学历提升可以选择一个对应学历，每个学历 4 年，共 16 年左右抵税<br/><br/><br/>继续教育 - 证书获取（基本不查）<br/><br/>证书获取有人一个证书可以一直抵税，建议： 营养师证、焊工证等<br/><br/><br/>租房买房（基本不查）<br/>大病医疗（未填过，未知）<br/><br/></p><p><br/></p></blockquote>', '一年一度个税年度综合汇算清缴的时间又到了，作为开发者的你，肯定过了起征点了吧。🫤\n去年退税退了 5676 ，今年看这个估计得补好几千，但是个税年度汇算清缴还没有预约到，抓紧提前算算金额，做做心理建设。\\同时，了解个税都扣在哪了，才可以让我们合理避税~\n下面我们简单聊聊 补税 和 预缴 ，顺便讲讲专项附加扣除应该怎么填。', 'http://localhost:9091/files/1711218674211-g.avis', '[\"个人所得税\"]', 3, '2024-03-24', 5, 2);
INSERT INTO `blog_encrypt` VALUES (33, '神州志西游Q&A - 手游版本和存档的说明      加密', '<p>目录<br/><br/>手游版怎么购买？<br/><br/>购买了iOS内测版，如何安装？<br/><br/>购买了安卓内测版，如何获得安装包？<br/><br/>如何跨平台存档同步 ？如何还原存档？<br/><br/><br/><br/>如果还有问题，请加入我们QQ群，找群管理私聊解决。<br/><br/>QQ群号：111111111（1群）222222222（2群）<br/><br/><br/><br/>手游版怎么购买？<br/><br/><br/>若是海外区苹果商店可直接下载：<a href=\"https://apps.apple.com/us/app/journey-to-the-west-mobile/id1669592311\" target=\"_blank\">https://apps.apple.com/us/app/journey-to-the-west-mobile/id1669592311</a>1<br/><br/>国区可在爱发电上购买内测版（iOS 和安卓，和PC版同步更新）：<a href=\"https://afdian.net/a/JTW_ZStudio\" target=\"_blank\">https://a/JTW_ZStudio</a>2<br/><br/>注意：今后国区有的正式版会通过邀请码或者激活码将已有内测版兑换成正式版。<br/><br/><br/><br/><br/><br/>购买了上iOS内测版，如何安装？<br/>我们通过Testflight来进行内测版的分发和更新。<br/><br/>第一步：上购买iOS内测版后，系统会和您发起对话，请将email留给我们，我们将把邀请码发到这个email地址中。<br/><br/>第二步：在应用商店下载“TestFlight”软件<br/></p>', '神州志西游Q&A - 手游版本和存档的说明', 'http://localhost:9091/files/1711218959758-szzxy.jpg', '[\"游戏\",\"神州志西游\"]', 6, '2024-03-24', 4, 3);
INSERT INTO `blog_encrypt` VALUES (34, '【西游日记】23年12月更新     加密', '<h1><a href=\"https://afdian.net/p/375dfe769fca11eea4fe5254001e7c00\" id=\"m4gkd\">【西游日记】23年12月更新</a></h1><article><p><b>12月21日开始进入<a href=\"https://store.steampowered.com/app/1449070/_/#app_reviews_hash\">Steam冬季大促，我们也有给力的折扣奉上</a>！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！</b></p><p>紫灵和青灵在释放技能时会进行形态切换。</p><p><img src=\"http://localhost:9091/files/1711219184635-szzxy2.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>重做了选人头像。<br/></p><p><img src=\"http://localhost:9091/files/1711219196653-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>我们对如下技能增加了残影特效：悟空的三头六臂，唐僧的超凡入圣，八戒的八戒归一，白龙的绝处逢生，沙僧的四象归元。是不是变得更酷了？</p><p><img src=\"http://localhost:9091/files/1711219208560-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>其他优化</p><ul><li>完善活体护甲的解释。</li><li>略微加强孟婆的技能。</li><li>优化邪恶结界特效。</li><li>大量素材优化。</li></ul><p><br/></p><p>漏洞修复</p><ul><li>修复移花接木多次叠加导致游戏速度变慢的问题。</li><li>修复卧虎藏龙被多重打出时变成基础效果的问题。</li><li>修复佛旨纶音减血不叠加的问题。</li><li>修复孟婆攻击附加易伤没有说明的问题。</li><li>修复蝙蝠尖牙技能在图鉴里飞行状态没有显示的问题。</li><li>修复阴神玉女的技能解释问题。</li></ul></article>', '12月21日开始进入Steam冬季大促，我们也有给力的折扣奉上！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！', 'http://localhost:9091/files/1711219144516-szzxy.jpg', '[\"西游日记\",\"游戏\"]', 6, '2024-03-24', 9, 3);
INSERT INTO `blog_encrypt` VALUES (35, '古代官兵佩刀3      加密', '<h2 id=\"hhbsp\">来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！</h2><p>适合不同等级的角色佩戴使用。</p><p>文件格式：</p><p>📂古代官兵佩刀3种.skp</p><p><b>商品页直达：<a target=\"_blank\" href=\"https://xxxxxxxxxxxxxxxxx\">https://xxxxxxxxxxxxxxxxx</a></b><br/></p><p><img src=\"http://localhost:9091/files/1711219547340-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219551403-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219556089-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219559523-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219562491-d5.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！\n适合不同等级的角色佩戴，一次购买永久使用！', 'http://localhost:9091/files/1711219425384-d.jpeg', '[\"素材\",\"佩刀\",\"古代官兵\",\"可燃冰\"]', 3, '2024-03-24', 26, 7);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '绘画');
INSERT INTO `category` VALUES (2, '写作');
INSERT INTO `category` VALUES (3, '游戏');
INSERT INTO `category` VALUES (4, '音乐');
INSERT INTO `category` VALUES (5, '博客');
INSERT INTO `category` VALUES (6, '技术');
INSERT INTO `category` VALUES (7, '素材');
INSERT INTO `category` VALUES (8, '动画');
INSERT INTO `category` VALUES (9, '虚拟偶像');
INSERT INTO `category` VALUES (10, '数码');
INSERT INTO `category` VALUES (14, '3d');

-- ----------------------------
-- Table structure for certification
-- ----------------------------
DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '本人照片',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `card_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `card1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证正面',
  `card2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证反面',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '常住地址',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '待审核' COMMENT '审核状态',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核理由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '认证信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of certification
-- ----------------------------
INSERT INTO `certification` VALUES (19, 8, '张三', 'http://localhost:9091/files/1712824251287-黄龙华440223200012224719.jpg', '13555555555', '110022022020202', 'http://localhost:9091/files/1712824254720-OIP-C.jpg', 'http://localhost:9091/files/1712824258154-OIP-C.jpg', '公司在', '审核通过', '审核通过');
INSERT INTO `certification` VALUES (21, 9, '刘希', 'http://localhost:9091/files/1713115314791-黄龙华440223200012224719.jpg', '13656565566', '440223222222222', 'http://localhost:9091/files/1713115323356-OIP-C.jpg', 'http://localhost:9091/files/1713115319435-OIP-C.jpg', '北京市', '审核通过', NULL);
INSERT INTO `certification` VALUES (23, 11, '张三三', 'http://localhost:9091/files/1713179981227-黄龙华440223200012224719.jpg', '13443434343', '440223333333333', 'http://localhost:9091/files/1713179984147-OIP-C.jpg', 'http://localhost:9091/files/1713179987779-OIP-C.jpg', '广东省', '审核通过', NULL);
INSERT INTO `certification` VALUES (24, 12, '黄龙华', 'http://localhost:9091/files/1713455503620-mmexport1633066092307.jpg', '18318333333', '231233255672242', 'http://localhost:9091/files/1713455508909-OIP-C.jpg', 'http://localhost:9091/files/1713455511583-黄龙华440223200012224719.jpg', '广东省', '审核通过', '审核通过');
INSERT INTO `certification` VALUES (25, 13, '黄龙华', 'http://localhost:9091/files/1713455962850-mmexport1633066092307.jpg', '18334764734', '237456174627823', 'http://localhost:9091/files/1713455968127-OIP-C.jpg', 'http://localhost:9091/files/1713455971387-OIP-C.jpg', '广东省', '审核通过', '审核通过');

-- ----------------------------
-- Table structure for circulars
-- ----------------------------
DROP TABLE IF EXISTS `circulars`;
CREATE TABLE `circulars`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '系统通知id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '被通知用户id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '通知内容',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '通知标题',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统通知表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of circulars
-- ----------------------------
INSERT INTO `circulars` VALUES (1, 3, '评论违规', '评论违规', '2024-03-13 01:40:06');
INSERT INTO `circulars` VALUES (2, 3, '报名超时', '报名超时', '2024-03-13 02:35:10');
INSERT INTO `circulars` VALUES (3, 3, '报名条件不符', '报名条件不符', '2024-03-13 02:36:12');
INSERT INTO `circulars` VALUES (4, 3, '报名条件不符', '报名条件不符', '2024-03-13 02:38:11');
INSERT INTO `circulars` VALUES (5, 3, '报名条件不符', '报名条件不符', '2024-03-13 02:38:16');
INSERT INTO `circulars` VALUES (6, 3, '报名条件不符', '报名条件不符', '2024-03-13 02:38:20');
INSERT INTO `circulars` VALUES (7, 6, '内容违规', '内容违规', '2024-03-13 21:57:43');
INSERT INTO `circulars` VALUES (8, 3, '水贴', '水贴', '2024-03-13 21:58:01');
INSERT INTO `circulars` VALUES (9, 8, '水评论', '水评论', '2024-04-11 15:36:46');
INSERT INTO `circulars` VALUES (10, 9, '不符合要求', '不符合要求', '2024-04-15 01:34:20');
INSERT INTO `circulars` VALUES (11, 9, '内容违规', '内容违规', '2024-04-15 01:34:38');
INSERT INTO `circulars` VALUES (12, 11, '有违规内容', '有违规内容', '2024-04-15 19:27:34');
INSERT INTO `circulars` VALUES (13, 3, '身份验证有问题', '身份验证有问题', '2024-04-15 19:30:58');
INSERT INTO `circulars` VALUES (14, 11, '身份有问题', '身份有问题', '2024-04-15 19:31:15');
INSERT INTO `circulars` VALUES (15, 12, '违规', '违规', '2024-04-19 00:02:25');
INSERT INTO `circulars` VALUES (16, 13, '违规', '违规', '2024-04-19 00:02:46');
INSERT INTO `circulars` VALUES (17, 3, '评论内容违规', '评论内容违规', '2024-04-20 01:14:51');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int(0) NULL DEFAULT NULL COMMENT '关联ID',
  `user_id` int(0) NOT NULL COMMENT '收藏人ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (42, 31, 1, '作品');
INSERT INTO `collect` VALUES (43, 11, 3, '活动');
INSERT INTO `collect` VALUES (44, 32, 3, '作品');
INSERT INTO `collect` VALUES (45, 30, 3, '作品');
INSERT INTO `collect` VALUES (46, 31, 8, '作品');
INSERT INTO `collect` VALUES (47, 11, 8, '活动');
INSERT INTO `collect` VALUES (48, 12, 8, '活动');
INSERT INTO `collect` VALUES (49, 37, 9, '作品');
INSERT INTO `collect` VALUES (50, 34, 9, '作品');
INSERT INTO `collect` VALUES (51, 11, 9, '活动');
INSERT INTO `collect` VALUES (52, 12, 9, '活动');
INSERT INTO `collect` VALUES (53, 34, 10, '作品');
INSERT INTO `collect` VALUES (54, 12, 10, '活动');
INSERT INTO `collect` VALUES (55, 37, 11, '作品');
INSERT INTO `collect` VALUES (56, 34, 11, '作品');
INSERT INTO `collect` VALUES (57, 5, 11, '活动');
INSERT INTO `collect` VALUES (58, 31, 12, '作品');
INSERT INTO `collect` VALUES (59, 12, 12, '活动');
INSERT INTO `collect` VALUES (60, 41, 13, '作品');
INSERT INTO `collect` VALUES (61, 12, 13, '活动');
INSERT INTO `collect` VALUES (62, 31, 3, '作品');
INSERT INTO `collect` VALUES (63, 42, 3, '作品');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '评论人',
  `pid` int(0) NULL DEFAULT NULL COMMENT '父级ID',
  `root_id` int(0) NULL DEFAULT NULL COMMENT '根节点ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `fid` int(0) NULL DEFAULT NULL COMMENT '关联ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (78, '已报名', 3, NULL, 78, '2024-03-24 17:16:43', 11, '活动');
INSERT INTO `comment` VALUES (79, '好看 期待下一话', 3, NULL, 79, '2024-03-24 17:18:27', 30, '作品');
INSERT INTO `comment` VALUES (80, '作者应该是周更', 6, 79, 79, '2024-03-24 18:33:45', 30, '作品');
INSERT INTO `comment` VALUES (81, '好看，催更！！！！', 6, NULL, 81, '2024-03-24 18:34:01', 30, '作品');
INSERT INTO `comment` VALUES (82, '建议加更[脱单doge][脱单doge]', 3, 80, 79, '2024-03-24 18:35:40', 30, '作品');
INSERT INTO `comment` VALUES (83, '你说的对', 8, NULL, 83, '2024-04-11 15:29:49', 31, '作品');
INSERT INTO `comment` VALUES (84, '已结束，可惜', 8, NULL, 84, '2024-04-11 15:30:45', 11, '活动');
INSERT INTO `comment` VALUES (87, '学到了', 9, NULL, 87, '2024-04-15 00:57:25', 37, '作品');
INSERT INTO `comment` VALUES (89, '已报名', 9, NULL, 89, '2024-04-15 01:19:00', 12, '活动');
INSERT INTO `comment` VALUES (91, '继续优化', 10, NULL, 91, '2024-04-15 19:04:21', 34, '作品');
INSERT INTO `comment` VALUES (92, '已报名', 10, 89, 89, '2024-04-15 19:04:51', 12, '活动');
INSERT INTO `comment` VALUES (95, '你说得对', 12, NULL, 95, '2024-04-18 23:49:39', 31, '作品');
INSERT INTO `comment` VALUES (97, '已报名', 12, NULL, 97, '2024-04-18 23:50:48', 12, '活动');
INSERT INTO `comment` VALUES (102, '已报名，期待(✧∀✧)\n', 3, NULL, 102, '2024-04-23 00:18:10', 13, '活动');
INSERT INTO `comment` VALUES (103, '上次已经得过奖了，这次也一定拿下', 3, 102, 102, '2024-04-23 00:18:46', 13, '活动');

-- ----------------------------
-- Table structure for concern
-- ----------------------------
DROP TABLE IF EXISTS `concern`;
CREATE TABLE `concern`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL COMMENT '关注用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关注时间',
  `creator_id` int(0) NULL DEFAULT NULL COMMENT '创作者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of concern
-- ----------------------------
INSERT INTO `concern` VALUES (10, 3, '2024-04-08 14:43:17', 6);
INSERT INTO `concern` VALUES (12, 6, '2024-04-11 11:35:23', 3);
INSERT INTO `concern` VALUES (16, 8, '2024-04-11 15:31:09', 6);
INSERT INTO `concern` VALUES (17, 8, '2024-04-11 15:31:33', 3);
INSERT INTO `concern` VALUES (20, 9, '2024-04-15 00:58:45', 6);
INSERT INTO `concern` VALUES (24, 10, '2024-04-15 19:06:44', 3);
INSERT INTO `concern` VALUES (26, 12, '2024-04-18 23:51:09', 8);
INSERT INTO `concern` VALUES (27, 12, '2024-04-18 23:51:23', 3);
INSERT INTO `concern` VALUES (28, 13, '2024-04-18 23:58:24', 12);
INSERT INTO `concern` VALUES (29, 13, '2024-04-18 23:58:32', 3);

-- ----------------------------
-- Table structure for homepage
-- ----------------------------
DROP TABLE IF EXISTS `homepage`;
CREATE TABLE `homepage`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `synopsis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '创作者个人主页' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homepage
-- ----------------------------
INSERT INTO `homepage` VALUES (1, 3, 'http://localhost:9091/files/1712135870852-title.jpg', '<p>只是在做自己喜欢的事。🙃<br/>让自己开心的前提下构建着自家世界。🙂<br/>除此之外偶尔会画一点点点同人。😄<br/>对每一位支持者都献上真挚的感谢，希望也能给你带来笑容！😀<br/></p>');
INSERT INTO `homepage` VALUES (2, 8, 'http://localhost:9091/files/1712826186721-szzxy.jpg', '<p>test</p>');
INSERT INTO `homepage` VALUES (3, 9, 'http://localhost:9091/files/1713115592568-AsusRogPg32Uqx_wallpaper_B_3840x2160.jpg', '<h2 id=\"28mht\">测试2号机</h2><p>👏<span style=\"font-size: 14px;\">🤜</span><br/></p>');
INSERT INTO `homepage` VALUES (4, 11, 'http://localhost:9091/files/1713180187673-title.jpg', '<p>正在创造小说<span style=\"font-size: 14px;\">😀</span></p>');
INSERT INTO `homepage` VALUES (5, 12, 'http://localhost:9091/files/1713455660508-背景1.jpeg', '<p>简介审核通过审核通过审核通过<span style=\"font-size: 14px;\">😇</span></p>');
INSERT INTO `homepage` VALUES (6, 13, 'http://localhost:9091/files/1713456026865-封面2.jpg', '<p>简介简介<span style=\"font-size: 14px;\">😙</span></p>');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int(0) NULL DEFAULT NULL COMMENT '关联ID',
  `user_id` int(0) NOT NULL COMMENT '点赞人ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (62, 31, 1, '作品');
INSERT INTO `likes` VALUES (64, 32, 3, '作品');
INSERT INTO `likes` VALUES (65, 10, 3, '活动');
INSERT INTO `likes` VALUES (66, 30, 3, '作品');
INSERT INTO `likes` VALUES (68, 11, 3, '活动');
INSERT INTO `likes` VALUES (69, 31, 8, '作品');
INSERT INTO `likes` VALUES (70, 11, 8, '活动');
INSERT INTO `likes` VALUES (71, 12, 8, '活动');
INSERT INTO `likes` VALUES (72, 37, 9, '作品');
INSERT INTO `likes` VALUES (73, 33, 9, '作品');
INSERT INTO `likes` VALUES (74, 33, 9, '作品');
INSERT INTO `likes` VALUES (75, 34, 9, '作品');
INSERT INTO `likes` VALUES (76, 35, 9, '作品');
INSERT INTO `likes` VALUES (77, 11, 9, '活动');
INSERT INTO `likes` VALUES (78, 12, 9, '活动');
INSERT INTO `likes` VALUES (79, 34, 10, '作品');
INSERT INTO `likes` VALUES (80, 12, 10, '活动');
INSERT INTO `likes` VALUES (81, 37, 11, '作品');
INSERT INTO `likes` VALUES (82, 34, 11, '作品');
INSERT INTO `likes` VALUES (83, 5, 11, '活动');
INSERT INTO `likes` VALUES (84, 40, 11, '作品');
INSERT INTO `likes` VALUES (85, 31, 12, '作品');
INSERT INTO `likes` VALUES (86, 12, 12, '活动');
INSERT INTO `likes` VALUES (87, 41, 13, '作品');
INSERT INTO `likes` VALUES (88, 12, 13, '活动');
INSERT INTO `likes` VALUES (89, 31, 3, '作品');
INSERT INTO `likes` VALUES (90, 42, 3, '作品');
INSERT INTO `likes` VALUES (91, 43, 3, '作品');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员档位标题',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员档位简介',
  `integral` decimal(10, 0) NULL DEFAULT NULL COMMENT '积分',
  `welfare_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '会员福利标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会员档次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (3, 3, '黄金搭档，年终巨献：超长精品付费节目！', '<h1>黄金搭档，年终巨献！</h1><p><b>时长138分钟</b>，快乐的时光也可以很长久！<br/>限时独家优惠价，只需<b>5</b>元，即可解锁收听！<br/>主播：崔化剂 老李头</p><p>【影视工作室“南栒映画”创始人，导演、作家、“生息海”乐队创始人；影视、音乐、文学多领域全开花，灵魂和身体永远都走在路上。】</p>', 100, '素材1');
INSERT INTO `member` VALUES (6, 3, 'test2', '<p><img src=\"http://localhost:9091/files/1712559832981-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 30, '素材2');
INSERT INTO `member` VALUES (7, 8, '测试1', '<p>测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1</p>', 1, '测试1');
INSERT INTO `member` VALUES (8, 9, '咨询答疑', '<p><b>答疑范围：</b></p><ol><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;范围1</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;范围2</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;范围3</li></ol>', 10, '三次咨询答疑机会');
INSERT INTO `member` VALUES (9, 11, '3d可动马偶', '<h1><b id=\"ol1dc\">马头墙su模型</b></h1><p><b>3d可动</b></p><p><b>无级调节</b></p><p>只需30积分</p><p><img src=\"http://localhost:9091/files/1713180298060-马2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 30, '3d可动马偶');
INSERT INTO `member` VALUES (10, 12, '可动马模型', '<p>可动马模型可动马模型可动马模型可动马模型可动马模型可动马模型</p>', 30, '可动马模型');
INSERT INTO `member` VALUES (11, 13, '会员1', '<p><img src=\"http://localhost:9091/files/1713456087445-马1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 30, '会员1');

-- ----------------------------
-- Table structure for membership_benefits
-- ----------------------------
DROP TABLE IF EXISTS `membership_benefits`;
CREATE TABLE `membership_benefits`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `member_id` int(0) NOT NULL COMMENT '关联id',
  `user_id` int(0) NOT NULL COMMENT '关联用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of membership_benefits
-- ----------------------------
INSERT INTO `membership_benefits` VALUES (1, 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3, 3);
INSERT INTO `membership_benefits` VALUES (2, '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 6, 3);
INSERT INTO `membership_benefits` VALUES (3, '没有福利', '<p>谢谢</p>', 7, 8);
INSERT INTO `membership_benefits` VALUES (4, '加v', '<p>请加v：7976sdsdas</p>', 8, 9);
INSERT INTO `membership_benefits` VALUES (5, '3d可动', '<p><img src=\"http://localhost:9091/files/1713180374053-马3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 9, 11);
INSERT INTO `membership_benefits` VALUES (6, '3d可动马压缩包', '<p><img src=\"http://localhost:9091/files/1713455698830-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1713455702606-马2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 10, 12);
INSERT INTO `membership_benefits` VALUES (7, '3d可动马', '<p><img src=\"http://localhost:9091/files/1713456102993-马3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 11, 13);

-- ----------------------------
-- Table structure for my_welfare
-- ----------------------------
DROP TABLE IF EXISTS `my_welfare`;
CREATE TABLE `my_welfare`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `user_id` int(0) NOT NULL COMMENT '购买人id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '购买时间',
  `db_user_id` int(0) NOT NULL COMMENT '创作者id',
  `member_id` int(0) NULL DEFAULT NULL COMMENT '福利id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_welfare
-- ----------------------------
INSERT INTO `my_welfare` VALUES (1, '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 6, '2024-04-08 17:01:38', 3, 6);
INSERT INTO `my_welfare` VALUES (2, '黄金搭档，年终巨献：超长精品付费节目', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 6, '2024-04-10 14:55:03', 3, 3);
INSERT INTO `my_welfare` VALUES (3, 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 8, '2024-04-11 15:32:20', 3, 3);
INSERT INTO `my_welfare` VALUES (4, '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 8, '2024-04-11 15:33:05', 3, 6);
INSERT INTO `my_welfare` VALUES (5, '没有福利', '<p>谢谢</p>', 9, '2024-04-15 00:58:00', 8, 7);
INSERT INTO `my_welfare` VALUES (6, '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 10, '2024-04-15 19:06:55', 3, 6);
INSERT INTO `my_welfare` VALUES (7, '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 11, '2024-04-15 19:16:21', 3, 6);
INSERT INTO `my_welfare` VALUES (8, '没有福利', '<p>谢谢</p>', 3, '2024-04-17 15:06:02', 8, 7);
INSERT INTO `my_welfare` VALUES (9, '没有福利', '<p>谢谢</p>', 12, '2024-04-18 23:51:11', 8, 7);
INSERT INTO `my_welfare` VALUES (10, 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 12, '2024-04-18 23:51:24', 3, 3);
INSERT INTO `my_welfare` VALUES (11, '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 12, '2024-04-18 23:51:27', 3, 6);
INSERT INTO `my_welfare` VALUES (12, '3d可动马压缩包', '<p><img src=\"http://localhost:9091/files/1713455698830-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1713455702606-马2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 13, '2024-04-18 23:58:21', 12, 10);
INSERT INTO `my_welfare` VALUES (13, 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 13, '2024-04-18 23:58:33', 3, 3);
INSERT INTO `my_welfare` VALUES (14, '3d可动马', '<p><img src=\"http://localhost:9091/files/1713456102993-马3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3, '2024-04-20 00:53:45', 13, 11);
INSERT INTO `my_welfare` VALUES (15, 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 10, '2024-04-23 00:38:29', 3, 3);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '热门活动进行中，欢迎参与', '热门活动进行中，欢迎参与', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '欢迎各位创作者多多投稿', '欢迎各位创作者多多投稿', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天项目正式启动', '今天项目正式启动', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `integral` decimal(10, 0) NULL DEFAULT NULL COMMENT '积分',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES (1, 3, '2024-04-03 09:45:06', 10, '签到');
INSERT INTO `records` VALUES (2, 3, '2024-04-03 10:47:12', 298, '充值');
INSERT INTO `records` VALUES (3, 3, '2024-04-03 10:56:43', 6, '充值');
INSERT INTO `records` VALUES (4, 3, '2024-04-03 10:57:31', 6, '充值');
INSERT INTO `records` VALUES (5, 3, '2024-04-03 11:00:41', 6, '充值');
INSERT INTO `records` VALUES (6, 3, '2024-04-03 11:01:17', 648, '充值');
INSERT INTO `records` VALUES (7, 3, '2024-04-05 14:45:37', 10, '充值');
INSERT INTO `records` VALUES (8, 3, '2024-04-05 14:45:45', 12, '充值');
INSERT INTO `records` VALUES (9, 3, '2024-04-05 15:21:06', 648, '充值');
INSERT INTO `records` VALUES (10, 3, '2024-04-05 17:49:22', 328, '充值');
INSERT INTO `records` VALUES (11, 3, '2024-04-08 16:44:25', 10, '充值');
INSERT INTO `records` VALUES (12, 3, '2024-04-08 16:44:30', 12, '充值');
INSERT INTO `records` VALUES (13, 6, '2024-04-08 17:00:07', 10, '充值');
INSERT INTO `records` VALUES (14, 6, '2024-04-08 17:01:01', 6, '充值');
INSERT INTO `records` VALUES (15, 6, '2024-04-08 17:01:30', 6, '充值');
INSERT INTO `records` VALUES (16, 6, '2024-04-08 17:01:38', 30, '开通会员扣除');
INSERT INTO `records` VALUES (17, 3, '2024-04-08 17:01:38', 30, '开通会员获取');
INSERT INTO `records` VALUES (18, 6, '2024-04-10 14:54:39', 10, '充值');
INSERT INTO `records` VALUES (19, 6, '2024-04-10 14:54:41', 98, '充值');
INSERT INTO `records` VALUES (20, 6, '2024-04-10 14:55:03', 100, '开通会员扣除');
INSERT INTO `records` VALUES (21, 3, '2024-04-10 14:55:03', 100, '开通会员获取');
INSERT INTO `records` VALUES (30, 8, '2024-04-11 15:29:00', 10, '签到');
INSERT INTO `records` VALUES (31, 8, '2024-04-11 15:29:04', 128, '充值');
INSERT INTO `records` VALUES (32, 8, '2024-04-11 15:31:45', 128, '充值');
INSERT INTO `records` VALUES (33, 8, '2024-04-11 15:32:20', 100, '开通会员扣除');
INSERT INTO `records` VALUES (34, 3, '2024-04-11 15:32:20', 100, '开通会员获取');
INSERT INTO `records` VALUES (35, 8, '2024-04-11 15:32:54', 6, '充值');
INSERT INTO `records` VALUES (36, 8, '2024-04-11 15:33:05', 30, '开通会员扣除');
INSERT INTO `records` VALUES (37, 3, '2024-04-11 15:33:05', 30, '开通会员获取');
INSERT INTO `records` VALUES (38, 8, '2024-04-11 16:44:30', 328, '充值');
INSERT INTO `records` VALUES (39, 8, '2024-04-11 17:13:15', 6, '充值');
INSERT INTO `records` VALUES (46, 9, '2024-04-15 00:56:33', 10, '签到');
INSERT INTO `records` VALUES (47, 9, '2024-04-15 00:56:41', 128, '充值');
INSERT INTO `records` VALUES (48, 9, '2024-04-15 00:58:00', 1, '开通会员扣除');
INSERT INTO `records` VALUES (49, 8, '2024-04-15 00:58:00', 1, '开通会员获取');
INSERT INTO `records` VALUES (50, 10, '2024-04-15 19:01:40', 10, '签到');
INSERT INTO `records` VALUES (51, 10, '2024-04-15 19:01:43', 128, '充值');
INSERT INTO `records` VALUES (52, 10, '2024-04-15 19:01:44', 128, '充值');
INSERT INTO `records` VALUES (53, 10, '2024-04-15 19:01:44', 128, '充值');
INSERT INTO `records` VALUES (54, 10, '2024-04-15 19:06:55', 30, '开通会员扣除');
INSERT INTO `records` VALUES (55, 3, '2024-04-15 19:06:55', 30, '开通会员获取');
INSERT INTO `records` VALUES (56, 11, '2024-04-15 19:15:52', 10, '签到');
INSERT INTO `records` VALUES (57, 11, '2024-04-15 19:16:01', 328, '充值');
INSERT INTO `records` VALUES (58, 11, '2024-04-15 19:16:21', 30, '开通会员扣除');
INSERT INTO `records` VALUES (59, 3, '2024-04-15 19:16:21', 30, '开通会员获取');
INSERT INTO `records` VALUES (60, 3, '2024-04-17 15:06:02', 1, '开通会员扣除');
INSERT INTO `records` VALUES (61, 8, '2024-04-17 15:06:02', 1, '开通会员获取');
INSERT INTO `records` VALUES (62, 12, '2024-04-18 23:50:55', 10, '签到');
INSERT INTO `records` VALUES (63, 12, '2024-04-18 23:50:58', 128, '充值');
INSERT INTO `records` VALUES (64, 12, '2024-04-18 23:51:11', 1, '开通会员扣除');
INSERT INTO `records` VALUES (65, 8, '2024-04-18 23:51:11', 1, '开通会员获取');
INSERT INTO `records` VALUES (66, 12, '2024-04-18 23:51:24', 100, '开通会员扣除');
INSERT INTO `records` VALUES (67, 3, '2024-04-18 23:51:24', 100, '开通会员获取');
INSERT INTO `records` VALUES (68, 12, '2024-04-18 23:51:27', 30, '开通会员扣除');
INSERT INTO `records` VALUES (69, 3, '2024-04-18 23:51:27', 30, '开通会员获取');
INSERT INTO `records` VALUES (70, 13, '2024-04-18 23:57:54', 10, '签到');
INSERT INTO `records` VALUES (71, 13, '2024-04-18 23:57:56', 12, '充值');
INSERT INTO `records` VALUES (72, 13, '2024-04-18 23:58:12', 128, '充值');
INSERT INTO `records` VALUES (73, 13, '2024-04-18 23:58:21', 30, '开通会员扣除');
INSERT INTO `records` VALUES (74, 12, '2024-04-18 23:58:21', 30, '开通会员获取');
INSERT INTO `records` VALUES (75, 13, '2024-04-18 23:58:33', 100, '开通会员扣除');
INSERT INTO `records` VALUES (76, 3, '2024-04-18 23:58:33', 100, '开通会员获取');
INSERT INTO `records` VALUES (77, 3, '2024-04-20 00:53:45', 30, '开通会员扣除');
INSERT INTO `records` VALUES (78, 13, '2024-04-20 00:53:45', 30, '开通会员获取');
INSERT INTO `records` VALUES (79, 3, '2024-04-20 14:13:41', 328, '充值');
INSERT INTO `records` VALUES (80, 10, '2024-04-23 00:38:29', 100, '开通会员扣除');
INSERT INTO `records` VALUES (81, 3, '2024-04-23 00:38:29', 100, '开通会员获取');

-- ----------------------------
-- Table structure for sign_in
-- ----------------------------
DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '记录Id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '签到时间',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '签到用户Id',
  `integral` decimal(10, 0) NULL DEFAULT NULL COMMENT '本次签到的积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sign_in
-- ----------------------------
INSERT INTO `sign_in` VALUES (33, '2024-03-07 19:49:30', 3, 10);
INSERT INTO `sign_in` VALUES (34, '2024-03-07 20:25:30', 6, 10);
INSERT INTO `sign_in` VALUES (35, '2024-03-09 04:55:27', 3, 10);
INSERT INTO `sign_in` VALUES (36, '2024-03-12 23:14:54', 3, 10);
INSERT INTO `sign_in` VALUES (39, '2024-04-03 09:25:35', 3, 10);
INSERT INTO `sign_in` VALUES (40, '2024-04-03 09:45:06', 3, 10);
INSERT INTO `sign_in` VALUES (41, '2024-04-05 14:45:37', 3, 10);
INSERT INTO `sign_in` VALUES (42, '2024-04-08 16:44:25', 3, 10);
INSERT INTO `sign_in` VALUES (51, '2024-04-11 15:29:00', 8, 10);
INSERT INTO `sign_in` VALUES (58, '2024-04-15 00:56:33', 9, 10);
INSERT INTO `sign_in` VALUES (59, '2024-04-15 19:01:40', 10, 10);
INSERT INTO `sign_in` VALUES (60, '2024-04-15 19:15:52', 11, 10);
INSERT INTO `sign_in` VALUES (61, '2024-04-17 15:05:43', 3, 10);
INSERT INTO `sign_in` VALUES (62, '2024-04-18 23:50:55', 12, 10);
INSERT INTO `sign_in` VALUES (63, '2024-04-18 23:57:54', 13, 10);
INSERT INTO `sign_in` VALUES (64, '2024-04-20 14:13:37', 3, 10);
INSERT INTO `sign_in` VALUES (65, '2024-04-23 00:26:06', 3, 10);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  `integral` decimal(10, 0) UNSIGNED NOT NULL COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'elysia', 'elysian', 'elysia', 'http://localhost:9091/files/1705558132617-1697438073596-avatar.png', 'USER', '女', '18383838383', '18383838383@163.com', '正在创作 毕业设计', '2000-12-22', 2657);
INSERT INTO `user` VALUES (6, 'kevin', 'elysian', 'kevin', 'http://localhost:9091/files/1705565856634-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg', 'USER', NULL, '18318338075', NULL, '简介简介简介简介简介', NULL, 110);
INSERT INTO `user` VALUES (8, 'test1', '123456789', 'test1', 'http://localhost:9091/files/1712820559058-1697438073596-avatar.png', 'USER', NULL, '12345678901', NULL, NULL, NULL, 337);
INSERT INTO `user` VALUES (9, 'num2', 'num2', 'num2', 'http://localhost:9091/files/1713113586356-1697438073596-avatar.png', 'USER', NULL, '13345678900', '1234tgfweqw3124123@123.com', NULL, NULL, 137);
INSERT INTO `user` VALUES (10, 'num3', '1234', 'num3', 'http://localhost:9091/files/1713178981743-头像.jpg', 'USER', NULL, '13456666666', '3231rewrer@163.com', NULL, NULL, 208);
INSERT INTO `user` VALUES (11, 'num4', '1234', 'num4', 'http://localhost:9091/files/1713179660497-头像2.jpg', 'USER', NULL, '13873737377', 'sssss22222@163.com', NULL, NULL, 308);
INSERT INTO `user` VALUES (12, 'user5', '12345', 'user5', 'http://localhost:9091/files/1713455395862-头像.jpg', 'USER', NULL, '13434344333', '23124fer2@163.COM', NULL, NULL, 37);
INSERT INTO `user` VALUES (13, 'user6', '1234', 'user6', 'http://localhost:9091/files/1713455922238-头像2.jpg', 'USER', NULL, '18363636332', 'husahfas@163.com', NULL, NULL, 30);

SET FOREIGN_KEY_CHECKS = 1;
