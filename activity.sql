/*
 Navicat Premium Data Transfer

 Source Server         : OverShare
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : mysql

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 09/06/2024 10:38:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动名称',
  `descr` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动简介',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '活动内容',
  `applystart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '报名开始时间',
  `applyend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '报名结束时间',
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '竞赛开始时间',
  `end` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结束时间',
  `form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动形式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '活动地址',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主办方',
  `read_count` int NULL DEFAULT 0 COMMENT '浏览量',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '活动' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '活动1', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 0, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (3, '活动2', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-05-18', '线上', '百度搜80801', '毕业设计', 2, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (4, '活动3', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 1, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (5, '活动4', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-05-18', '线上', '百度搜80801', '毕业设计', 7, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (6, '活动5', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 2, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (7, '活动6', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 0, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (8, '活动7', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 1, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (9, '活动8', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-02-18', '线上', '百度搜80801', '毕业设计', 3, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (10, '活动9', '活动1', '<h1 data-we-empty-p=\"\" id=\"5i5nz\">大苏打萨达萨达是大苏打啊SD撒D撒大 ADam送达</h1><p>是AD阿萨大撒大撒DASSADASD</p><p><img src=\"http://localhost:9091/files/1706711223053-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><br/></p>', '', NULL, '2024-02-10', '2024-03-30', '线上', 'https://www.iconfont.cn/', '毕业设计', 10, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (11, '春日健康指南', '一年之计在于春，春季健康不容疏忽！有哪些春季需要注意的健康问题？有哪些需要科普的春季健康知识？\n关于春日健康，我们想和你一起聊聊！投稿参与【万物研究所·春日健康季活动】有奖话题，万元奖金等你来拿！', '<h1 data-we-empty-p=\"\" id=\"5i5nz\"><h1 id=\"ufm9q\">春日健康指南</h1><div><p>一年之计在于春，春季健康不容疏忽！有哪些春季需要注意的健康问题？有哪些需要科普的春季健康知识？<br/>关于春日健康，我们想和你一起聊聊！投稿参与【万物研究所·春日健康季活动】有奖话题，万元奖金等你来拿！</p></div><h1 id=\"ufm9q\"><img src=\"http://localhost:9091/files/1711271027852-HD1.png\" contenteditable=\"false\" style=\"max-width: 100%;\"/><br/></h1><h1 id=\"ufm9q\"><img src=\"http://localhost:9091/files/1711271033537-HD2.png\" contenteditable=\"false\" style=\"max-width: 100%;\"/></h1></h1>', '', NULL, '2024-02-10', '2024-03-30', '线下', '广东科技学院', '毕业设计', 98, 'http://localhost:9091/files/1706711173727-ROG-Prism_Wallpaper_4k.jpg');
INSERT INTO `activity` VALUES (12, '测试活动1', '测试活动1', '<p><img src=\"http://localhost:9091/files/1712820890668-HD1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1712820905726-HD2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><blockquote><p>😀</p></blockquote>', '', NULL, '2024-04-11', '2024-07-31', '线下', '广东省东莞市石排广东科技学院松山湖校区', '学习委员会', 13, 'http://localhost:9091/files/1712820841160-HD2.png');
INSERT INTO `activity` VALUES (13, '活动333', '活动333', '<p><img src=\"http://localhost:9091/files/1713180607360-HD2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '', NULL, '2024-04-15', '2024-04-15', '线上', 'http://localhost:8081/activity', '主办方1', 4, 'http://localhost:9091/files/1713180580629-HD1.png');

SET FOREIGN_KEY_CHECKS = 1;
