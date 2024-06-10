/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80300
Source Host           : localhost:3306
Source Database       : overshare

Target Server Type    : MYSQL
Target Server Version : 80300
File Encoding         : 65001

Date: 2024-06-10 14:17:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动名称',
  `descr` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动简介',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '活动内容',
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '竞赛开始时间',
  `end` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '竞赛结束时间',
  `applystart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '报名开始时间',
  `applyend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '报名结束时间',
  `form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动形式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动地址',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主办方',
  `read_count` int DEFAULT '0' COMMENT '浏览量',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='活动';

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '中国“互联网+”创新创业大赛', '中国“互联网+”大学生创新创业大赛，由教育部与政府、各高校共同主办的一项技能大赛。大赛旨在深化高等教育综合改革，激发大学生的创造力，培养造就“大众创业、万众创新”的主力军；推动赛事成果转化，促进“互联网+”新业态形成，服务经济提质增效升级；以创新引领创业、创业带动就业，推动高校毕业生更高质量创业就业。', '<p><strong>一、大赛主题</strong></p><p>　　我敢闯，我会创。</p><p>　　<strong>二、总体目标</strong></p><p>　　更中国、更国际、更教育、更全面、更创新、更协同，落实立德树人根本任务，传承和弘扬红色基因，聚焦“五育”融合创新创业教育实践，开启创新创业教育改革新征程，激发青年学生创新创造热情，打造共建共享、融通中外的国际创新创业盛会，让青春在全面建设社会主义现代化国家的火热实践中绽放绚丽之花。</p><p>　　——更中国。更深层次、更广范围体现红色基因传承，充分展现新发展阶段高水平创新创业教育的丰硕成果，集中展示新发展理念引领下创新创业人才培养的中国方案，提升新时代中国高等教育的感召力。</p><p>　　——更国际。深化创新创业教育国际交流合作，汇聚全球知名高校、企业和创业者，服务以国内大循环为主体、国内国际双循环相互促进的新发展格局，搭建全球性创新创业竞赛平台，提升新时代中国高等教育的影响力。</p><p>　　——更教育。推动思想政治教育、专业教育与创新创业教育深度融合，弘扬劳动精神，加强学生创新实践能力培养，造就敢想敢为又善作善成的新时代好青年，提升新时代中国高等教育的塑造力。</p><p>　　——更全面。推进职普融通、产教融合、科教融汇，鼓励各学段学生积极参赛，形成创新创业教育在高等教育、职业教育、基础教育、留学生教育等各类各学段的全覆盖，打通人才培养各环节，提升新时代中国高等教育的引领力。</p><p>　　——更创新。积极开辟发展新领域新赛道，不断塑造发展新动能新优势，丰富竞赛内容和形式，激发全社会创新创业创造动能，促进高校创新成果转化应用，服务国家创新发展，提升新时代中国高等教育的创造力。</p><p>　　——更协同。充分发挥大赛平台纽带作用，促进优质资源互联互通，推动形成开放大学、开放产业、开放问题的良好氛围，助推大赛项目落地转化，营造支持青年大学生创新创业、共同合作、互相包容、互相支持的良好生态。</p><p>　　<strong>三、主要任务</strong></p><p>　　以赛促教，探索人才培养新途径。全面提高人才自主培养质量，强化高校课程思政建设，深入推进新工科、新医科、新农科、新文科建设，深化创新创业教育改革，引领各类学校人才培养范式深刻变革，形成新的人才培养质量观和质量标准，切实提高学生的创新精神、创业意识和创新创业能力。</p><p>　　以赛促学，培养创新创业生力军。着力造就拔尖创新人才，激励广大青年扎根中国大地了解国情民情，在创新创业中增长智慧才干，怀抱梦想又脚踏实地，敢想敢为又善作善成，做有理想、敢担当、能吃苦、肯奋斗的新时代好青年。</p><p>　　以赛促创，搭建产教融合新平台。把教育融入经济社会发展，推动成果转化和产学研用融合，促进教育链、人才链与产业链、创新链有机衔接，以创新引领创业、以创业带动就业，推动形成高校毕业生更高质量创业就业的新局面。</p><p>　　<strong>四、大赛内容</strong></p><p>　　（一）主体赛事。包括高教主赛道、“青年红色筑梦之旅”赛道、职教赛道、产业命题赛道和萌芽赛道（详见附件1—5）。</p><p>　　（二）“青年红色筑梦之旅”活动（详见附件2）。</p><p>　　（三）同期活动。即世界大学生创新创业联盟成立仪式、世界大学生创新创业指数发布会、大赛优秀项目资源对接会等系列活动。</p><p>　　<strong>五、组织机构</strong></p><p>　　（一）大赛由教育部、中央统战部、中央网信办、国家发展改革委、工业和信息化部、人力资源社会保障部、农业农村部、中国科学院、中国工程院、国家知识产权局、国家乡村振兴局、共青团中央和天津市人民政府共同主办，天津大学承办。</p><p>　　（二）大赛设立组织委员会（以下简称大赛组委会），由教育部和天津市人民政府主要负责同志担任主任、教育部和天津市分管负责同志担任副主任、教育部高等教育司主要负责同志担任秘书长、有关部门（单位）负责同志作为成员，负责大赛的组织实施。</p><p>　　（三）大赛设立专家委员会，负责项目评审等工作。</p><p>　　（四）大赛设立纪律与监督委员会，负责对赛事组织、参赛项目评审、协办单位相关工作等进行监督，对违反大赛纪律的行为予以处理。</p><p>　　（五）大赛总决赛由中国建设银行冠名支持，各省级教育行政部门可积极争取中国建设银行分支机构对省级赛事的赞助支持。</p><p>　　（六）各省级教育行政部门可成立相应的赛事机构，负责本地比赛的组织实施、项目评审和推荐等工作。</p><p>　　<strong>六、参赛要求</strong></p><p>　　（一）参赛项目能够紧密结合经济社会各领域现实需求，充分体现高校在新工科、新医科、新农科、新文科建设方面取得的成果，培育新产品、新服务、新业态、新模式，促进制造业、农业、卫生、能源、环保、战略性新兴产业等产业转型升级，促进数字技术与教育、医疗、交通、金融、消费生活、文化传播等深度融合（各赛道参赛项目类型详见附件）。</p><p>　　（二）参赛项目应弘扬正能量，践行社会主义核心价值观，真实、健康、合法。不得含有任何违反《中华人民共和国宪法》及其他法律法规的内容。所涉及的发明创造、专利技术、资源等必须拥有清晰合法的知识产权或物权。如有抄袭盗用他人成果、提供虚假材料等违反相关法律法规或违背大赛精神的行为，一经发现即刻丧失参赛资格、所获奖项等相关权利，并自负一切法律责任。</p><p>　　（三）参赛项目只能选择一个符合要求的赛道报名参赛，根据参赛团队负责人的学籍或学历确定参赛团队所代表的参赛学校，且代表的参赛学校具有唯一性。参赛团队须在报名系统中将项目所涉及的材料按时如实填写提交。已获本大赛往届总决赛各赛道金奖和银奖的项目，不可报名参加本届大赛。</p><p>　　（四）参赛人员（不含产业命题赛道参赛项目成员中的教师）年龄不超过35岁（1988年3月1日及以后出生）。</p><p>　　（五）各省级教育行政部门及各有关学校要严格开展参赛项目审查工作，确保参赛项目的合规性和真实性。审查主要包括参赛资格以及项目所涉及的科技成果、知识产权、财务状况、运营、荣誉奖项等方面。</p>', '2024-06-08', '2024-06-30', '2024-05-10', '2024-06-25', '线上', 'https://cy.ncss.cn/', '教育部', '37', 'http://localhost:9091/files/1717837652560-7ef360eb-e943-437b-9deb-53992d40a526.jpg');
INSERT INTO `activity` VALUES ('2', '2024第三届大学生算法大赛', '为了深入贯彻党的二十大提出的构建新一代信息技术、人工智能增长引擎,加快发展数字经济，促进数字经济和实体经济深度融合，打造具有国际竞争力的数字产业集群的政策方针，同时积极响应教育部、国家发展改革委、财政部三部委发文加快人工智能领域人才培养的文件精神，中国电子学会现代教育技术分会决定面向全国高等学校在读全日制研究生和大学生举办2024第三届大学生算法大赛，旨在促进大学生学习计算机领域专业知识与技能的兴趣，邀发大学生在信息技术和人工智能的算法编程领域勇于发现问题、提出问题和解决问题，有效提升算法设计、逻辑推理、数学建模、编程实现和计算机系统能力，培养团队合作意识、挑战精神和创新能力。', '<p>为了深入贯彻党的二十大提出的构建新一代信息技术、人工智能增长引擎,加快发展数字经济，促进数字经济和实体经济深度融合，打造具有国际竞争力的数字产业集群的政策方针，同时积极响应教育部、国家发展改革委、财政部三部委发文加快人工智能领域人才培养的文件精神，中国电子学会现代教育技术分会决定面向全国高等学校在读全日制研究生和大学生举办<strong>2024第三届大学生算法大赛</strong>，旨在促进大学生学习计算机领域专业知识与技能的兴趣，邀发大学生在信息技术和人工智能的算法编程领域勇于发现问题、提出问题和解决问题，有效提升算法设计、逻辑推理、数学建模、编程实现和计算机系统能力，培养团队合作意识、挑战精神和创新能力。<br/></p><h2>指导单位</h2><p><strong>中国电子学会</strong></p><p>（工信部直属事业单位、学会是民政部5A级科技社团组织、人社部继续教育基地、中国科协五星级科技社团、世界一流科技社团）</p><p><a href=\"https://www.cie.org.cn/\"><img alt=\"\" src=\"https://publicqn.saikr.com/2023/11/22/500_655dd52b1c4d1.png\"/></a></p><p>&nbsp;</p><h2>主办单位</h2><p><strong>中国电子学会现代教育技术分会</strong></p><p>&nbsp;</p><h2>参赛对象</h2><p>普通高等院校、高职院校、二级学院、独立学院、本、专科在校大学生及研究生均可报名参加，专业不限；其他社会人员也可以报名参赛。</p><p>&nbsp;</p><h2>赛程安排</h2><p>报名时间：即日起 - 2024年6月30日</p><p>测试时间:&nbsp; 2024年7月6日14:00-19:00（建议同学们参加，提前熟悉考试流程，测试账号密码）</p><p>比赛时间:&nbsp; 2024年7月7日14:00-19:00</p><p>&nbsp;</p><h2>大赛赛制</h2><p>本届大赛采用<strong>ACM赛制</strong>，在规定的时间内进行代码提交，由系统自动判题，可以实时看到排名，试题只有通过才计分，未通过试题可以修改后再次提交，通过后计分但罚时，最后根据解题数量和用时进行排名。<strong>选手可携带任何非电子类资料。</strong></p>', '2024-06-14', '2024-06-30', '2024-05-01', '2024-05-30', '线上', 'https://www.saikr.com/vse/algorithm/2024', '中国电子学会现代教育技术分会', '11', 'http://localhost:9091/files/1717867752783-contest6629f710b3d591.293102401714027823135.png');
INSERT INTO `activity` VALUES ('3', '第三届“量旋杯”大湾区量子计算挑战赛', '“量旋杯”大湾区量子计算挑战赛，这一专门针对量子计算算法编程的高级赛事，从2021年开始，已成功举办两届，为全国众多学生群体带来了宝贵的竞赛经验和求职/升学发展机会。\n\n \n\n2024第三届“量旋杯”大湾区量子计算挑战赛现火热报名中！本届“量旋杯”针对海内外高校学生，设置了“公开组”和“量子国际象棋组”两大赛道。如果你对量子计算有相关了解，并希望应用量子计算的知识来解决具体的问题，期待你来参与本次竞赛，在国际级的知识交流与竞技平台中展现你的实力。 ', '<p>量子国际象棋是一种结合了量子计算和国际象棋规则的新型棋类游戏，在经典国际象棋中增添量子叠加、纠缠和测量等概念，提升游戏复杂性与趣味性。</p><p>&nbsp;</p><p>量子国际象棋组以个人赛的网络竞赛为主要形式，全部选手混合编排。参赛对象要求不限年龄、不限专业背景、不限国籍，让全球不同年龄段的爱好者们通过网络“互联互通”。</p>', '2024-04-27', '2024-06-23', '2024-03-15', '2024-04-30', '线上', '无', '“量旋杯”组委会', '4', 'http://localhost:9091/files/1717865087471-contest665693a63ff9c8.523813561716949932030.jpg');
INSERT INTO `activity` VALUES ('4', '2024年全国大学生高新技术竞赛—数据库实操竞赛', '为贯彻关于国家高新技术产业发展的重要指示精神，进一步明确“十四五”国家高新区的发展思路和重点任务，根据《中华人民共和国国民经济和社会发展第十四个五年规划和 2035年远景目标纲要》《国务院关于促进国家高新技术产业开发区高质量发展的若干意见》等文件指示。经研究决定，面向全国大学生举办“2024‘物联杯’全国大学生高新技术竞赛—数学竞赛”。', '<h1>一、竞赛背景</h1><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为贯彻关于国家高新技术产业发展的重要指示精神，进一步明确“十四五”国家高新区的发展思路和重点任务，根据《中华人民共和国国民经济和社会发展第十四个五年规划和 2035年远景目标纲要》《国务院关于促进国家高新技术产业开发区高质量发展的若干意见》等文件指示。经研究决定，面向全国大学生举办“2024‘物联杯’全国大学生高新技术竞赛—数学竞赛”。</p><p>&nbsp;</p><h1>二、主办单位</h1><p>&nbsp;</p><p><img alt=\"\" src=\"https://publicqn.saikr.com/2024/02/05/315_65c07ccca6fb1.png\"/></p><p>&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国国际科技促进会物联网工作委员会是致力于促进我国物联网科技产业化、产业物联网科技化的科促会非独立法人分支机构，定位于成为万物互联时代敢为人先、担当作为的“科技产业化侦察员、产业科技化司号员”。</p><p>&nbsp;</p><p>&nbsp;</p><h1>三、参赛对象</h1><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 普通高等院校、高职院校、二级学院、独立学院、本、专科在校大学生及研究生均可报名参加，专业不限；其他社会人员也可以报名参赛。</p><p>&nbsp;</p><h1>四、竞赛规则</h1><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本次竞赛<strong>以MySQL为应用背景</strong>，以<strong>数据库基础知识</strong>、<strong>数据库操作应用</strong>为竞赛内容。数据库操作包括：数据库单表表查询、数据库链接查询、数据库嵌套查询、数据库常用函数、数据库更新操作、视图机器应用、SQL编程。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 竞赛最终将以<strong>客观题考试+实操考试</strong>进行（客观题考试30分，实操考试70分）</p><p>&nbsp;</p><h1>五、赛程安排</h1><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 竞赛分两场进行，参赛者可根据自身学习进度，<strong>任意参加其中一场</strong>。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报名时间：即日起至2024年9月6日</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第一场竞赛时间：2024年7月13日9:00—11:30</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二场竞赛时间：2024年9月7日9:00—11:30</p><p>&nbsp;</p><h1>六、竞赛奖项</h1><p><strong>学生奖项</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本次竞赛依据分数进行进行评奖，设立一、二、三等奖：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一等奖：成绩在<strong>90-100分；</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 二等奖：成绩在<strong>80-89分；</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 三等奖：成绩在<strong>60-79分；</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;优秀奖：若干（成功参加竞赛即可获得优秀奖）</strong></p>', '2024-04-24', '2024-07-12', '2023-03-01', '2024-03-31', '线上', '暂无', '工业和信息化部工业文化发展中心', '4', 'http://localhost:9091/files/1717865255198-contest6629c4cba365e1.861536001714013463292.png');
INSERT INTO `activity` VALUES ('5', '2024“中促杯”全国大学生数据分析大赛', '近年来，“大数据、云计算、互联网+、区块链”等概念在政府文件中频繁出现，数字经济也多次在政府工作报告中被提及，进一步强调了数字经济的重要地位与时代意义，并提出“数字经济事关国家发展大局，发展数字经济是把握新一轮科技革命与产业变革新机遇的战略选择”的重要指示。如今，数字经济的重要地位被提升至一个新的高度。', '<h1><strong>一、组织单位</strong></h1><p>指导单位：</p><p><a href=\"https://www.ciapst.org/\"><img alt=\"\" src=\"https://publicqn.saikr.com/2024/01/29/824_65b71574ebfe8.png\"/></a></p><p><a href=\"https://www.ciapst.org/\">（国家民政部登记）</a></p><p>&nbsp;</p><p>主办单位：</p><p><a href=\"http://www.ciapst-edu.com/\"><img alt=\"\" src=\"https://publicqn.saikr.com/2024/01/29/426_65b714ea8d226.png\"/></a></p><p><a href=\"http://www.ciapst-edu.com/\">（点击跳转主办方官网）</a></p><p>&nbsp;</p><h1>二、参赛对象及组别</h1><p><img alt=\"\" src=\"https://publicqn.saikr.com/2024/02/02/770_65bcb9421dc4d.png\"/></p><p>&nbsp;</p><h1>三、赛程安排&nbsp;</h1><p>1、报名日期：即日起—2024.6.15</p><p>2、提交日期：2024.5.15—2024.6.18</p><p>3、获奖名单公示期：预计六月底，详细以最终通知时间为准</p><p>4、证书发放：预计七月中旬</p><p>&nbsp;</p><h1>四、参赛须知</h1><p>题目范围 赛题设计两个方向，具体题目以大赛官网通知为准。参赛选手按照要求任选其一进行作答、提交即可。 &nbsp; &nbsp;</p><p>1、数据统计分析方向。</p><p>2、文本分析方向。</p>', '2024-02-23', '2024-06-15', '2024-02-05', '2024-04-10', '线上', '暂无', '中国国际科技促进会综合素质与职业发展教育专业委员会', '49', 'http://localhost:9091/files/1717867752784-contest65bcb1eaa25423.175843081706865134351.png');

-- ----------------------------
-- Table structure for activity_sign
-- ----------------------------
DROP TABLE IF EXISTS `activity_sign`;
CREATE TABLE `activity_sign` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '报名时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='活动报名表';

-- ----------------------------
-- Records of activity_sign
-- ----------------------------
INSERT INTO `activity_sign` VALUES ('53', '1', '14', '2024-06-10 12:59:44');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '管理员', 'http://localhost:9091/files/1717861781556-img5.png', 'ADMIN', '13677889922', 'admin11@xm.com');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签',
  `user_id` int DEFAULT NULL COMMENT '发布人ID',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布日期',
  `read_count` int DEFAULT '0' COMMENT '浏览量',
  `category_id` int DEFAULT NULL COMMENT '分类ID',
  `contest_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='博客信息';

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('34', '【西游日记】23年12月更新', '<h1><a href=\"https://afdian.net/p/375dfe769fca11eea4fe5254001e7c00\" id=\"m4gkd\">【西游日记】23年12月更新</a></h1><article><p><b>12月21日开始进入<a href=\"https://store.steampowered.com/app/1449070/_/#app_reviews_hash\">Steam冬季大促，我们也有给力的折扣奉上</a>！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！</b></p><p>紫灵和青灵在释放技能时会进行形态切换。</p><p><img src=\"http://localhost:9091/files/1711219184635-szzxy2.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>重做了选人头像。<br/></p><p><img src=\"http://localhost:9091/files/1711219196653-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>我们对如下技能增加了残影特效：悟空的三头六臂，唐僧的超凡入圣，八戒的八戒归一，白龙的绝处逢生，沙僧的四象归元。是不是变得更酷了？</p><p><img src=\"http://localhost:9091/files/1711219208560-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>其他优化</p><ul><li>完善活体护甲的解释。</li><li>略微加强孟婆的技能。</li><li>优化邪恶结界特效。</li><li>大量素材优化。</li></ul><p><br/></p><p>漏洞修复</p><ul><li>修复移花接木多次叠加导致游戏速度变慢的问题。</li><li>修复卧虎藏龙被多重打出时变成基础效果的问题。</li><li>修复佛旨纶音减血不叠加的问题。</li><li>修复孟婆攻击附加易伤没有说明的问题。</li><li>修复蝙蝠尖牙技能在图鉴里飞行状态没有显示的问题。</li><li>修复阴神玉女的技能解释问题。</li></ul></article>', '12月21日开始进入Steam冬季大促，我们也有给力的折扣奉上！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！', 'http://localhost:9091/files/1711219144516-szzxy.jpg', '[\"西游日记\",\"游戏\"]', '6', '2024-03-24', '22', '3', null);
INSERT INTO `blog` VALUES ('35', '古代官兵佩刀3种', '<h2 id=\"hhbsp\">来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！</h2><p>适合不同等级的角色佩戴使用。</p><p>文件格式：</p><p>?古代官兵佩刀3种.skp</p><p><b>商品页直达：<a target=\"_blank\" href=\"https://xxxxxxxxxxxxxxxxx\">https://xxxxxxxxxxxxxxxxx</a></b><br/></p><p><img src=\"http://localhost:9091/files/1711219547340-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219551403-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219556089-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219559523-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219562491-d5.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！\n适合不同等级的角色佩戴，一次购买永久使用！', 'http://localhost:9091/files/1711219425384-d.jpeg', '[\"素材\",\"佩刀\",\"古代官兵\",\"可燃冰\"]', '3', '2024-03-24', '50', '7', null);
INSERT INTO `blog` VALUES ('37', '信道带宽', '<h1><b id=\"pqj82\">信道带宽</b></h1><p>是信道能通过的最低频率,是信道能通过的最高频率,两者都是由信道的物理特性决定的。当组成信道的电路制成了,信道的带宽就决定了。为了使信号传输中的失真小一些,信道要有足够的带宽。</p><p><h2><b id=\"9jx8q\"> 模拟信道的带宽</b></h2>数字信道是一种离散信道,它只能传送取离散值的数字信号。信道的带宽决定了信道中能数据通信基础，不失真地传输的脉冲序列的最高速率。一个数字脉冲称为一个码元,用码元速率表示单位时间内信号波形的变换次数,即单位时间内通过信道传输的码元个数。若信号码元宽度为 T 秒,则码元速率 B=l/T。码元速率的单位叫波特 CBaud), 所以码元速率也叫波特率。早在 1924 年,贝尔实验室的研究员亨奈奎斯特 (Harry Nyquist) 就推导出了有限带宽无噪声信道的极限波特率,称为尼奎斯特定理。若信道带宽为 w, 则尼奎斯特定理指出最大码元速率为B=2W CBaud)奈奎斯特定理指定的信道容量也叫作奈奎斯特极限,这是由信道的物理特性决定的。超过奈奎斯特极限传送脉冲信号是不可能的,所以要进一步提高波特率必须改善信道带宽。</p><hr/><p><br/></p><p>码元携带的信息橘由码元取的离散值的个数决定。若码元取两个离散值,则一个码元携带</p><blockquote><p>1 位信息。若码元可取 4 种离散值,则一个码元携带两位信息。总之,一个码元<b>携带的信息 量<br/>n (位)与码元的种类数 N 有如下关系<br/>n=log2N (N=2n)<br/>单位时间内在信道上传送的信息量(位数)称为数据速率。在一定的波特率下提高速率的<br/>途径是用一个码元表示更多的位数。如果把两位编码为一个码元,则数据速率可成倍提高。有</b><br/>公式<br/>R=B log2N=2Wlog2N (bps)<br/>其中, R 表示数据速率,单位是每秒位 (bps 或 b/s) 。<br/>数据速率和波特率是两个不同的概念。仅当码元取两个离散值时两者的数值才相等。对千<br/>普通电话线路,带宽为 3000Hz, 最高波特率为 6000Baud, 最高数据速率可随着调制方式的不<br/>同而取不同的值。这些都是在无噪声的理想情况下的极限值。实际信道会受到各种噪声的 干扰,</p><hr/><p><br/></p><p>因而远远达不到按奈奎斯特定理计算出的数据传送速率。香衣 (Shannon) 的研究表明,有噪<br/>声信道的极限数据速率可由下面的公式计算<br/>C = Wlog2<br/> (气)<br/>这个公式叫作香衣定理,其中, W 为信道带宽, S 为信号的平均功率, N 为噪声平均功率,<br/>SIN 叫作信噪比。由于在实际使用中 S 与 N 的比值太大,故常取其分贝数 (dB) 。分贝与信噪<br/><b>比的关系为<br/>s<br/>dB=lOlog 10 一<br/>N<br/>例如,当 SIN=lOOO 时,信噪比为 30dB 。这个公式与信号取的离散值的个数无关,也就是<br/>说,无论用什么方式调制,只要给定了信噪比,则单位时间内最大的信息传输霾就确定了。例<br/>如,信道带宽为 3000Hz, 信噪比为 30dB, 则最大数据速率为<br/>C=30001ogi(l+l000)=3000X9 .97=30 OOObps</b></p></blockquote>', '信道带宽是信道能通过的最低频率,是信道能通过的最高频率,两者都是由信道的物理特性决定的。\n当组成信道的电路制成了,信道的带宽就决定了。为了使信号传输中的失真小一些,信道要有足够的带宽。', 'http://localhost:9091/files/1712825870900-1712825635385.jpg', '[\"技术\",\"信道带宽\"]', '8', '2024-04-11', '18', '6', null);
INSERT INTO `blog` VALUES ('42', 'ceshi2', '<p><img src=\"http://localhost:9091/files/1713456061986-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1713456067406-1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '简介', 'http://localhost:9091/files/1713456044432-2.png', '[\"3d马头墙\",\"绘画\"]', '13', '2024-04-19', '6', '1', null);
INSERT INTO `blog` VALUES ('44', '这是一个测试作品', '', '测试', null, '[]', '14', '2024-06-07', '3', '1', null);
INSERT INTO `blog` VALUES ('47', '1', '', '11', null, '[]', '14', '2024-06-08', '3', '1', '13');
INSERT INTO `blog` VALUES ('48', '2', '', '222', null, '[]', '14', '2024-06-08', '14', '1', '7');
INSERT INTO `blog` VALUES ('50', '互联网+招募', '<p>团队介绍</p><p>需求</p>', '互联网+招募', 'http://localhost:9091/files/1717837652560-7ef360eb-e943-437b-9deb-53992d40a526.jpg', '[]', '14', '2024-06-08', '189', '1', '1');

-- ----------------------------
-- Table structure for blog_encrypt
-- ----------------------------
DROP TABLE IF EXISTS `blog_encrypt`;
CREATE TABLE `blog_encrypt` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签',
  `user_id` int DEFAULT NULL COMMENT '发布人ID',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布日期',
  `read_count` int DEFAULT '0' COMMENT '浏览量',
  `category_id` int DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='博客信息';

-- ----------------------------
-- Records of blog_encrypt
-- ----------------------------
INSERT INTO `blog_encrypt` VALUES ('30', '呢喃河上的幽灵—第三话 新颜与初漫    加密', '<p><img src=\"http://localhost:9091/files/1711218123828-0547f8366c914e17c6b70e07f35fa61e_w2160_h1620_s916.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218127294-071bedaaa6a4b00cd6af4eddf274b784_w2160_h1620_s685.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218130082-38b2e63fa27d7dfb10201048e36d5c88_w2160_h1620_s572.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218132701-6d4c49d1c18d90b5618fb65909ade25f_w2160_h1620_s671.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218135126-a29e6b10df65ed21ab529676f8c89916_w2160_h1620_s529.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711218137415-f8c2f60b8adb77cfd5b35a603f7529c3_w2160_h1620_s569.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '前情提要：\n记者贺初漫化名为贺新颜踏上呢喃岛。因迷路与受到惊吓失足滚落山坡，最终被岛上村民徐宁发现背回村内。\n\n我又来闪现更新了！抱歉鸽了那么久。下次更新估计会在两个月后，依旧是一人全包无小助手所以随缘更新！求心心，求评论，画原创真的很需要鼓励呀！感谢还在等这漫画的小伙们呀QWQ', 'http://localhost:9091/files/1711218008684-85ca49143df94c80ae765dbad388babc~tplv-k3u1fbpfcp-jj_189_126_0_0_q75.avis', '[\"绘画\",\"幽灵\",\"第三话\"]', '3', '2024-03-24', '8', '1');
INSERT INTO `blog_encrypt` VALUES ('31', '后母坏，还是继父恶？    加密', '<h4 id=\"xpvu8\"><font size=\"4\">《周处除三害》很好看，台式黑帮片似乎有望取代港产片。此外，台剧在网飞的资金支持下，也咔咔发力，每年都有一两部火到国内的热播剧。</font></h4><h5><font size=\"4\" style=\"font-weight: normal;\">有人在微博上说，台片台剧的逐渐兴起和港片的日益衰败，和前者一开始就主动放弃了内地市场，而后者又大力迎合，多少有些关系。\n\n我不知道这个说法对不对，但能观察到的现象确实是这两年的台剧台片，在价值观上突飞猛进。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">&nbsp;我还记得小时候是根本不看台剧的，实在因为价值观巨大的土和过时：有一部片子，忘了叫什么名字，曾经全国热播，但剧情线似乎是男主因为“爱”强奸了女主，出狱之后，又用“爱”感动了女主，两人最后幸福地在一起了。（似乎是琼瑶剧？）我因为没看，所以不知道回忆是否准确，但我很清楚地记得，当年旁听到相关剧情的台词，简直想拿起菜刀砍死男主，以及所有让女主跟男主结合的配角。\n\n这两年的台剧就，咦？有点不一样了。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">而对比来看且令我痛心疾首的是，港剧和港片，尤其是爱情或者生活向的作品，变得其土无比：比如去年还算热门的电影《饭戏攻心》，WTF is this？！\n\n说回《周处除三害》里借女主之口说出的一小段剧情，就是香港仔把女主的妈妈从另一个男人手里救出来，但仍然长期家暴妈妈，妈妈替香港仔顶债顶罪，要坐十多年牢；等母亲去坐牢之后，女主从小就被继父霸占。\n\n这里有两条暗线，一是，为什么“妈妈”总是会碰到家暴自己的男性？“被家暴”也是一种习惯和特质。如果一名女性成长于一个暴力（比如父亲对母亲和子女施暴）的家庭，她有可能会形成吸引“施暴”伴侣的“受虐”气质，甚至主动去招惹对方的暴力；对比而言，如果是男性成长于同类家庭，他也有不小的可能会获得“施暴”的性格（当然，往好了说，他同样也有可能变得憎恨暴力）。换句话说，如果《周处除三害》往下推演，女主爱上了解救自己的男主并在一起，他们大概率会陷入病态的施暴与受虐关系。\n\n还有一条暗线是，继父性侵继女概率到底有多大？\n\n我以前一直很好奇，为什么在中西文化里，“后母”都永远是童话故事里的反派。后来明白了，在中世纪，“亲妈”的确活不长，平均年龄不过是30来岁，生娃时难产死去的概率相当不小。很自然，丈夫铁定是要续弦的，这是“后母”留下恶名的最大原因。\n\n反过来说，如果是父亲死了，母亲一般会独立抚养子女，再嫁的偏少。就算带着孩子再嫁，男孩也就还好，如果是女孩，大多又无法接受教育，难以留下对继父的控诉。\n\n从20世纪80年代开始，本地的离婚率逐渐走高，单亲家庭的孩子颇多。就我个人观察的范围来说，由离异母亲抚养的女孩，几乎都受过继父大大小小的骚扰（小指的是不恰当的抚摸、偷窥；大就是《周处除三害》里的情节再现）。</font></h5><h5><font size=\"4\" style=\"font-weight: normal;\">&nbsp;我不知道这是因为我的取样范本有问题，还是普遍如此。\n\n做过类似观察的朋友，不妨来聊聊。</font><br/></h5>', '后母坏，还是继父恶？', 'http://localhost:9091/files/1711218331263-594dd79b39f84ba3ad070ec77188b874~tplv-k3u1fbpfcp-jj_189_126_0_0_q75.avis', '[\"写作\",\"关系\",\"周处除三害\"]', '6', '2024-03-24', '2', '2');
INSERT INTO `blog_encrypt` VALUES ('32', '?填好个税，一年多给几千块 ~ 聊聊个人所得税，你该退税还是补税？   加密', '<h5><span style=\"font-weight: normal;\">为什么你需要补税？</span><br/><span style=\"font-weight: normal;\">大多数情况下，公司发工资会替你把税交了，这个行为叫预缴。</span><br/>为什么预缴呢？因为国家规定：</h5><blockquote><p><br/>《个人所得税扣缴申报管理办法(试行)》(国家税务总局公告2018年第61号发布) <br/>第六条：扣缴义务人向居民个人支付工资、薪金所得时,应当按照累计预扣法计算预扣税款,并按月办理扣缴申报。<br/><br/></p></blockquote><blockquote><p><br/>这也就是我们每个月发工资都会扣税的原因。<br/>那为什么需要补税呢？因为预缴是根据你在当前公司的收入进行缴税，公司会计算你的累进税率，你会发现每到年底税交的越来越高了，这是累进预缴导致的。<br/>有些人在年中换了工作了，新公司不知道你之前已经交到哪个阶段的个税了，因此预缴时计税金额会重新累计。<br/>因此补税的原因不外乎：<br/><br/><u>工作变更<br/>公司主体变更（如：公司拆分）<br/></u><br/>为什么说预缴是天才发明？<br/>预缴制简直是个天才发明，不但会大大减少逃税人数，而且能减轻税务工作量（转移至各公司），且可以让缴税的人对税率的感知没有那么强烈。<br/>达成这种效果主要原因有两点，分别是 损失厌恶 、 心理账户 。<br/>损失厌恶<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>人们对损失的敏感程度通常远远大于对同等价值的收益的敏感程度<br/>牢记这句话。<br/>一个最简单的例子，短视频中经常会出现的 最有效的 6 条学习方式，最后一条最重要 。这种放大损失的语言，常常能诱发更高的完播率。<br/><br/>虽然我很讨厌以这种方式留住用户，但常常在刷到这类视频时，也忍不住多看一样，虽然知道它最终可能也没什么实质内容。<br/><br/>还有一种就是我们常常刷掉一个视频，又返回去看一眼，又刷掉又返回去。我常常会有这种心理，这个视频我是不是应该看一看的纠结。<br/>个税也是同理，个税预缴是减少我们的收益，而个税年终汇算则是直接让我们从口袋中掏钱。<br/>就算汇算综合到月度计算，同样也是，一种是公司扣完发给你，另一种是发给你之后你再掏出来一部分。大家感受一下这其中的区别。<br/>心理账户<br/>人们可能会将个税缴纳视作开销，而且是意外开销，意外开销总是让人痛苦的。<br/>比如我每个月 1w 块，其中 3k 拿来租房，3k 拿来吃饭， 2k 拿来娱乐，2k 拿来缴五险一金。<br/>这时候到年终汇算时，人们则容易苦不堪言。<br/>且这种带来的直接后果是，我想把税留到最后一天交，同时最后一天也很容易忘记交，因为大脑也不想要这种意外支出。<br/>最终则导致 漏交、拒交 个税的人数大大增加。<br/>专项附加扣除严谨度<br/><br/>子女教育（未婚，无接触）<br/>赡养老人（容易被查）<br/>继续教育 - 学历提升（基本不查）<br/><br/>学历提升可以选择一个对应学历，每个学历 4 年，共 16 年左右抵税<br/><br/><br/>继续教育 - 证书获取（基本不查）<br/><br/>证书获取有人一个证书可以一直抵税，建议： 营养师证、焊工证等<br/><br/><br/>租房买房（基本不查）<br/>大病医疗（未填过，未知）<br/><br/></p><p><br/></p></blockquote>', '一年一度个税年度综合汇算清缴的时间又到了，作为开发者的你，肯定过了起征点了吧。?\n去年退税退了 5676 ，今年看这个估计得补好几千，但是个税年度汇算清缴还没有预约到，抓紧提前算算金额，做做心理建设。\\同时，了解个税都扣在哪了，才可以让我们合理避税~\n下面我们简单聊聊 补税 和 预缴 ，顺便讲讲专项附加扣除应该怎么填。', 'http://localhost:9091/files/1711218674211-g.avis', '[\"个人所得税\"]', '3', '2024-03-24', '5', '2');
INSERT INTO `blog_encrypt` VALUES ('33', '神州志西游Q&A - 手游版本和存档的说明      加密', '<p>目录<br/><br/>手游版怎么购买？<br/><br/>购买了iOS内测版，如何安装？<br/><br/>购买了安卓内测版，如何获得安装包？<br/><br/>如何跨平台存档同步 ？如何还原存档？<br/><br/><br/><br/>如果还有问题，请加入我们QQ群，找群管理私聊解决。<br/><br/>QQ群号：111111111（1群）222222222（2群）<br/><br/><br/><br/>手游版怎么购买？<br/><br/><br/>若是海外区苹果商店可直接下载：<a href=\"https://apps.apple.com/us/app/journey-to-the-west-mobile/id1669592311\" target=\"_blank\">https://apps.apple.com/us/app/journey-to-the-west-mobile/id1669592311</a>1<br/><br/>国区可在爱发电上购买内测版（iOS 和安卓，和PC版同步更新）：<a href=\"https://afdian.net/a/JTW_ZStudio\" target=\"_blank\">https://a/JTW_ZStudio</a>2<br/><br/>注意：今后国区有的正式版会通过邀请码或者激活码将已有内测版兑换成正式版。<br/><br/><br/><br/><br/><br/>购买了上iOS内测版，如何安装？<br/>我们通过Testflight来进行内测版的分发和更新。<br/><br/>第一步：上购买iOS内测版后，系统会和您发起对话，请将email留给我们，我们将把邀请码发到这个email地址中。<br/><br/>第二步：在应用商店下载“TestFlight”软件<br/></p>', '神州志西游Q&A - 手游版本和存档的说明', 'http://localhost:9091/files/1711218959758-szzxy.jpg', '[\"游戏\",\"神州志西游\"]', '6', '2024-03-24', '4', '3');
INSERT INTO `blog_encrypt` VALUES ('34', '【西游日记】23年12月更新     加密', '<h1><a href=\"https://afdian.net/p/375dfe769fca11eea4fe5254001e7c00\" id=\"m4gkd\">【西游日记】23年12月更新</a></h1><article><p><b>12月21日开始进入<a href=\"https://store.steampowered.com/app/1449070/_/#app_reviews_hash\">Steam冬季大促，我们也有给力的折扣奉上</a>！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！</b></p><p>紫灵和青灵在释放技能时会进行形态切换。</p><p><img src=\"http://localhost:9091/files/1711219184635-szzxy2.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>重做了选人头像。<br/></p><p><img src=\"http://localhost:9091/files/1711219196653-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>我们对如下技能增加了残影特效：悟空的三头六臂，唐僧的超凡入圣，八戒的八戒归一，白龙的绝处逢生，沙僧的四象归元。是不是变得更酷了？</p><p><img src=\"http://localhost:9091/files/1711219208560-szzxy3.jpg.gif\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>其他优化</p><ul><li>完善活体护甲的解释。</li><li>略微加强孟婆的技能。</li><li>优化邪恶结界特效。</li><li>大量素材优化。</li></ul><p><br/></p><p>漏洞修复</p><ul><li>修复移花接木多次叠加导致游戏速度变慢的问题。</li><li>修复卧虎藏龙被多重打出时变成基础效果的问题。</li><li>修复佛旨纶音减血不叠加的问题。</li><li>修复孟婆攻击附加易伤没有说明的问题。</li><li>修复蝙蝠尖牙技能在图鉴里飞行状态没有显示的问题。</li><li>修复阴神玉女的技能解释问题。</li></ul></article>', '12月21日开始进入Steam冬季大促，我们也有给力的折扣奉上！欢迎大家购买神州志送给朋友当圣诞礼物哦！本月，我们进行了大量的素材优化，同时对于DLC的开发也在有条不紊地进行中！', 'http://localhost:9091/files/1711219144516-szzxy.jpg', '[\"西游日记\",\"游戏\"]', '6', '2024-03-24', '9', '3');
INSERT INTO `blog_encrypt` VALUES ('35', '古代官兵佩刀3      加密', '<h2 id=\"hhbsp\">来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！</h2><p>适合不同等级的角色佩戴使用。</p><p>文件格式：</p><p>?古代官兵佩刀3种.skp</p><p><b>商品页直达：<a target=\"_blank\" href=\"https://xxxxxxxxxxxxxxxxx\">https://xxxxxxxxxxxxxxxxx</a></b><br/></p><p><img src=\"http://localhost:9091/files/1711219547340-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219551403-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219556089-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219559523-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1711219562491-d5.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '来自漫画作者可燃冰老师设计的二次贩售模型稿件：古代官兵佩刀3种！\n适合不同等级的角色佩戴，一次购买永久使用！', 'http://localhost:9091/files/1711219425384-d.jpeg', '[\"素材\",\"佩刀\",\"古代官兵\",\"可燃冰\"]', '3', '2024-03-24', '26', '7');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='博客分类';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '创新创业');
INSERT INTO `category` VALUES ('2', '程序设计');
INSERT INTO `category` VALUES ('3', '数学建模');
INSERT INTO `category` VALUES ('4', '文体竞赛');
INSERT INTO `category` VALUES ('5', '商业模拟');

-- ----------------------------
-- Table structure for certification
-- ----------------------------
DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int DEFAULT NULL COMMENT '账号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '本人照片',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系方式',
  `card_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证号码',
  `card1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证正面',
  `card2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身份证反面',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '常住地址',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '待审核' COMMENT '审核状态',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审核理由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='认证信息';

-- ----------------------------
-- Records of certification
-- ----------------------------
INSERT INTO `certification` VALUES ('19', '8', '张三', 'http://localhost:9091/files/1712824251287-黄龙华440223200012224719.jpg', '13555555555', '110022022020202', 'http://localhost:9091/files/1712824254720-OIP-C.jpg', 'http://localhost:9091/files/1712824258154-OIP-C.jpg', '公司在', '审核通过', '审核通过');
INSERT INTO `certification` VALUES ('21', '9', '刘希', 'http://localhost:9091/files/1713115314791-黄龙华440223200012224719.jpg', '13656565566', '440223222222222', 'http://localhost:9091/files/1713115323356-OIP-C.jpg', 'http://localhost:9091/files/1713115319435-OIP-C.jpg', '北京市', '审核通过', null);
INSERT INTO `certification` VALUES ('23', '11', '张三三', 'http://localhost:9091/files/1713179981227-黄龙华440223200012224719.jpg', '13443434343', '440223333333333', 'http://localhost:9091/files/1713179984147-OIP-C.jpg', 'http://localhost:9091/files/1713179987779-OIP-C.jpg', '广东省', '审核通过', null);
INSERT INTO `certification` VALUES ('25', '13', '黄龙华', 'http://localhost:9091/files/1713455962850-mmexport1633066092307.jpg', '18334764734', '237456174627823', 'http://localhost:9091/files/1713455968127-OIP-C.jpg', 'http://localhost:9091/files/1713455971387-OIP-C.jpg', '广东省', '审核通过', '审核通过');
INSERT INTO `certification` VALUES ('26', '14', '张三', 'http://localhost:9091/files/1717768601872-ac.png', '15123082178', '111111111111111', 'http://localhost:9091/files/1717768604869-ac.png', 'http://localhost:9091/files/1717768608725-ac.png', '武汉', '审核通过', null);

-- ----------------------------
-- Table structure for circulars
-- ----------------------------
DROP TABLE IF EXISTS `circulars`;
CREATE TABLE `circulars` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '系统通知id',
  `user_id` int DEFAULT NULL COMMENT '被通知用户id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '通知内容',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '通知标题',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统通知表';

-- ----------------------------
-- Records of circulars
-- ----------------------------
INSERT INTO `circulars` VALUES ('1', '3', '评论违规', '评论违规', '2024-03-13 01:40:06');
INSERT INTO `circulars` VALUES ('2', '3', '报名超时', '报名超时', '2024-03-13 02:35:10');
INSERT INTO `circulars` VALUES ('3', '3', '报名条件不符', '报名条件不符', '2024-03-13 02:36:12');
INSERT INTO `circulars` VALUES ('4', '3', '报名条件不符', '报名条件不符', '2024-03-13 02:38:11');
INSERT INTO `circulars` VALUES ('5', '3', '报名条件不符', '报名条件不符', '2024-03-13 02:38:16');
INSERT INTO `circulars` VALUES ('6', '3', '报名条件不符', '报名条件不符', '2024-03-13 02:38:20');
INSERT INTO `circulars` VALUES ('7', '6', '内容违规', '内容违规', '2024-03-13 21:57:43');
INSERT INTO `circulars` VALUES ('8', '3', '水贴', '水贴', '2024-03-13 21:58:01');
INSERT INTO `circulars` VALUES ('9', '8', '水评论', '水评论', '2024-04-11 15:36:46');
INSERT INTO `circulars` VALUES ('10', '9', '不符合要求', '不符合要求', '2024-04-15 01:34:20');
INSERT INTO `circulars` VALUES ('11', '9', '内容违规', '内容违规', '2024-04-15 01:34:38');
INSERT INTO `circulars` VALUES ('12', '11', '有违规内容', '有违规内容', '2024-04-15 19:27:34');
INSERT INTO `circulars` VALUES ('13', '3', '身份验证有问题', '身份验证有问题', '2024-04-15 19:30:58');
INSERT INTO `circulars` VALUES ('14', '11', '身份有问题', '身份有问题', '2024-04-15 19:31:15');
INSERT INTO `circulars` VALUES ('15', '12', '违规', '违规', '2024-04-19 00:02:25');
INSERT INTO `circulars` VALUES ('16', '13', '违规', '违规', '2024-04-19 00:02:46');
INSERT INTO `circulars` VALUES ('17', '3', '评论内容违规', '评论内容违规', '2024-04-20 01:14:51');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int DEFAULT NULL COMMENT '关联ID',
  `user_id` int NOT NULL COMMENT '收藏人ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='收藏';

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('73', '5', '14', '竞赛');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `user_id` int DEFAULT NULL COMMENT '评论人',
  `pid` int DEFAULT NULL COMMENT '父级ID',
  `root_id` int DEFAULT NULL COMMENT '根节点ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论时间',
  `fid` int DEFAULT NULL COMMENT '关联ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('107', '111', '15', null, '107', '2024-06-10 11:41:57', '50', '帖子');

-- ----------------------------
-- Table structure for concern
-- ----------------------------
DROP TABLE IF EXISTS `concern`;
CREATE TABLE `concern` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '关注用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关注时间',
  `creator_id` int DEFAULT NULL COMMENT '创作者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of concern
-- ----------------------------
INSERT INTO `concern` VALUES ('10', '3', '2024-04-08 14:43:17', '6');
INSERT INTO `concern` VALUES ('12', '6', '2024-04-11 11:35:23', '3');
INSERT INTO `concern` VALUES ('16', '8', '2024-04-11 15:31:09', '6');
INSERT INTO `concern` VALUES ('17', '8', '2024-04-11 15:31:33', '3');
INSERT INTO `concern` VALUES ('20', '9', '2024-04-15 00:58:45', '6');
INSERT INTO `concern` VALUES ('24', '10', '2024-04-15 19:06:44', '3');
INSERT INTO `concern` VALUES ('26', '12', '2024-04-18 23:51:09', '8');
INSERT INTO `concern` VALUES ('27', '12', '2024-04-18 23:51:23', '3');
INSERT INTO `concern` VALUES ('28', '13', '2024-04-18 23:58:24', '12');
INSERT INTO `concern` VALUES ('29', '13', '2024-04-18 23:58:32', '3');

-- ----------------------------
-- Table structure for homepage
-- ----------------------------
DROP TABLE IF EXISTS `homepage`;
CREATE TABLE `homepage` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `synopsis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='创作者个人主页';

-- ----------------------------
-- Records of homepage
-- ----------------------------
INSERT INTO `homepage` VALUES ('1', '3', 'http://localhost:9091/files/1712135870852-title.jpg', '<p>只是在做自己喜欢的事。?<br/>让自己开心的前提下构建着自家世界。?<br/>除此之外偶尔会画一点点点同人。?<br/>对每一位支持者都献上真挚的感谢，希望也能给你带来笑容！?<br/></p>');
INSERT INTO `homepage` VALUES ('2', '8', 'http://localhost:9091/files/1712826186721-szzxy.jpg', '<p>test</p>');
INSERT INTO `homepage` VALUES ('3', '9', 'http://localhost:9091/files/1713115592568-AsusRogPg32Uqx_wallpaper_B_3840x2160.jpg', '<h2 id=\"28mht\">测试2号机</h2><p>?<span style=\"font-size: 14px;\">?</span><br/></p>');
INSERT INTO `homepage` VALUES ('4', '11', 'http://localhost:9091/files/1713180187673-title.jpg', '<p>正在创造小说<span style=\"font-size: 14px;\">?</span></p>');
INSERT INTO `homepage` VALUES ('5', '12', 'http://localhost:9091/files/1713455660508-背景1.jpeg', '<p>简介审核通过审核通过审核通过<span style=\"font-size: 14px;\">?</span></p>');
INSERT INTO `homepage` VALUES ('6', '13', 'http://localhost:9091/files/1713456026865-封面2.jpg', '<p>简介简介<span style=\"font-size: 14px;\">?</span></p>');
INSERT INTO `homepage` VALUES ('7', '14', 'http://localhost:9091/files/1717837652560-7ef360eb-e943-437b-9deb-53992d40a526.jpg', '<p>主页简介！！</p>');
INSERT INTO `homepage` VALUES ('8', '15', 'http://localhost:9091/files/1717863305323-]1OBR0~JLU2U@UG$F{ZJPVS.png', '<p>珞珈山的菜鸡程序员</p>');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int DEFAULT NULL COMMENT '关联ID',
  `user_id` int NOT NULL COMMENT '点赞人ID',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模块',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='点赞';

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('109', '5', '14', '竞赛');
INSERT INTO `likes` VALUES ('110', '1', '14', '竞赛');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会员档位标题',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会员档位简介',
  `integral` decimal(10,0) DEFAULT NULL COMMENT '积分',
  `welfare_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会员福利标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='会员档次表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('3', '3', '黄金搭档，年终巨献：超长精品付费节目！', '<h1>黄金搭档，年终巨献！</h1><p><b>时长138分钟</b>，快乐的时光也可以很长久！<br/>限时独家优惠价，只需<b>5</b>元，即可解锁收听！<br/>主播：崔化剂 老李头</p><p>【影视工作室“南栒映画”创始人，导演、作家、“生息海”乐队创始人；影视、音乐、文学多领域全开花，灵魂和身体永远都走在路上。】</p>', '100', '素材1');
INSERT INTO `member` VALUES ('6', '3', 'test2', '<p><img src=\"http://localhost:9091/files/1712559832981-d3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '30', '素材2');
INSERT INTO `member` VALUES ('7', '8', '测试1', '<p>测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1测试1</p>', '1', '测试1');
INSERT INTO `member` VALUES ('8', '9', '咨询答疑', '<p><b>答疑范围：</b></p><ol><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;范围1</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;范围2</li><li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;范围3</li></ol>', '10', '三次咨询答疑机会');
INSERT INTO `member` VALUES ('9', '11', '3d可动马偶', '<h1><b id=\"ol1dc\">马头墙su模型</b></h1><p><b>3d可动</b></p><p><b>无级调节</b></p><p>只需30积分</p><p><img src=\"http://localhost:9091/files/1713180298060-马2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '30', '3d可动马偶');
INSERT INTO `member` VALUES ('10', '12', '可动马模型', '<p>可动马模型可动马模型可动马模型可动马模型可动马模型可动马模型</p>', '30', '可动马模型');
INSERT INTO `member` VALUES ('11', '13', '会员1', '<p><img src=\"http://localhost:9091/files/1713456087445-马1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '30', '会员1');

-- ----------------------------
-- Table structure for membership_benefits
-- ----------------------------
DROP TABLE IF EXISTS `membership_benefits`;
CREATE TABLE `membership_benefits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `member_id` int NOT NULL COMMENT '关联id',
  `user_id` int NOT NULL COMMENT '关联用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of membership_benefits
-- ----------------------------
INSERT INTO `membership_benefits` VALUES ('1', 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '3', '3');
INSERT INTO `membership_benefits` VALUES ('2', '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '6', '3');
INSERT INTO `membership_benefits` VALUES ('3', '没有福利', '<p>谢谢</p>', '7', '8');
INSERT INTO `membership_benefits` VALUES ('4', '加v', '<p>请加v：7976sdsdas</p>', '8', '9');
INSERT INTO `membership_benefits` VALUES ('5', '3d可动', '<p><img src=\"http://localhost:9091/files/1713180374053-马3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '9', '11');
INSERT INTO `membership_benefits` VALUES ('6', '3d可动马压缩包', '<p><img src=\"http://localhost:9091/files/1713455698830-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1713455702606-马2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '10', '12');
INSERT INTO `membership_benefits` VALUES ('7', '3d可动马', '<p><img src=\"http://localhost:9091/files/1713456102993-马3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '11', '13');

-- ----------------------------
-- Table structure for my_welfare
-- ----------------------------
DROP TABLE IF EXISTS `my_welfare`;
CREATE TABLE `my_welfare` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `user_id` int NOT NULL COMMENT '购买人id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '购买时间',
  `db_user_id` int NOT NULL COMMENT '创作者id',
  `member_id` int DEFAULT NULL COMMENT '福利id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of my_welfare
-- ----------------------------
INSERT INTO `my_welfare` VALUES ('1', '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '6', '2024-04-08 17:01:38', '3', '6');
INSERT INTO `my_welfare` VALUES ('2', '黄金搭档，年终巨献：超长精品付费节目', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '6', '2024-04-10 14:55:03', '3', '3');
INSERT INTO `my_welfare` VALUES ('3', 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '8', '2024-04-11 15:32:20', '3', '3');
INSERT INTO `my_welfare` VALUES ('4', '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '8', '2024-04-11 15:33:05', '3', '6');
INSERT INTO `my_welfare` VALUES ('5', '没有福利', '<p>谢谢</p>', '9', '2024-04-15 00:58:00', '8', '7');
INSERT INTO `my_welfare` VALUES ('6', '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '10', '2024-04-15 19:06:55', '3', '6');
INSERT INTO `my_welfare` VALUES ('7', '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '11', '2024-04-15 19:16:21', '3', '6');
INSERT INTO `my_welfare` VALUES ('8', '没有福利', '<p>谢谢</p>', '3', '2024-04-17 15:06:02', '8', '7');
INSERT INTO `my_welfare` VALUES ('9', '没有福利', '<p>谢谢</p>', '12', '2024-04-18 23:51:11', '8', '7');
INSERT INTO `my_welfare` VALUES ('10', 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '12', '2024-04-18 23:51:24', '3', '3');
INSERT INTO `my_welfare` VALUES ('11', '素材2', '<p><img src=\"http://localhost:9091/files/1712559859751-d2.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9091/files/1712559866754-d4.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '12', '2024-04-18 23:51:27', '3', '6');
INSERT INTO `my_welfare` VALUES ('12', '3d可动马压缩包', '<p><img src=\"http://localhost:9091/files/1713455698830-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p><img src=\"http://localhost:9091/files/1713455702606-马2.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '13', '2024-04-18 23:58:21', '12', '10');
INSERT INTO `my_welfare` VALUES ('13', 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '13', '2024-04-18 23:58:33', '3', '3');
INSERT INTO `my_welfare` VALUES ('14', '3d可动马', '<p><img src=\"http://localhost:9091/files/1713456102993-马3.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '3', '2024-04-20 00:53:45', '13', '11');
INSERT INTO `my_welfare` VALUES ('15', 'text12', '<p><img src=\"http://localhost:9091/files/1712557967108-d.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '10', '2024-04-23 00:38:29', '3', '3');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', 'OverShare：大学生竞赛信息分享平台', 'OverShare：大学生竞赛信息分享平台', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES ('4', 'OverShare竞赛信息分享平台 专注大学生竞赛信息 为大学生提供优质原创内容', 'OverShare竞赛信息分享平台\n专注大学生竞赛信息\n为大学生提供优质原创内容', '2024-06-09', 'admin');
INSERT INTO `notice` VALUES ('5', 'OverShare竞赛信息平台提供免费的赛事导航、报名和竞赛服务!', 'OverShare竞赛信息平台提供免费的赛事导航、报名和竞赛服务!', '2024-06-09', 'admin');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时间',
  `integral` decimal(10,0) DEFAULT NULL COMMENT '积分',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES ('1', '3', '2024-04-03 09:45:06', '10', '签到');
INSERT INTO `records` VALUES ('2', '3', '2024-04-03 10:47:12', '298', '充值');
INSERT INTO `records` VALUES ('3', '3', '2024-04-03 10:56:43', '6', '充值');
INSERT INTO `records` VALUES ('4', '3', '2024-04-03 10:57:31', '6', '充值');
INSERT INTO `records` VALUES ('5', '3', '2024-04-03 11:00:41', '6', '充值');
INSERT INTO `records` VALUES ('6', '3', '2024-04-03 11:01:17', '648', '充值');
INSERT INTO `records` VALUES ('7', '3', '2024-04-05 14:45:37', '10', '充值');
INSERT INTO `records` VALUES ('8', '3', '2024-04-05 14:45:45', '12', '充值');
INSERT INTO `records` VALUES ('9', '3', '2024-04-05 15:21:06', '648', '充值');
INSERT INTO `records` VALUES ('10', '3', '2024-04-05 17:49:22', '328', '充值');
INSERT INTO `records` VALUES ('11', '3', '2024-04-08 16:44:25', '10', '充值');
INSERT INTO `records` VALUES ('12', '3', '2024-04-08 16:44:30', '12', '充值');
INSERT INTO `records` VALUES ('13', '6', '2024-04-08 17:00:07', '10', '充值');
INSERT INTO `records` VALUES ('14', '6', '2024-04-08 17:01:01', '6', '充值');
INSERT INTO `records` VALUES ('15', '6', '2024-04-08 17:01:30', '6', '充值');
INSERT INTO `records` VALUES ('16', '6', '2024-04-08 17:01:38', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('17', '3', '2024-04-08 17:01:38', '30', '开通会员获取');
INSERT INTO `records` VALUES ('18', '6', '2024-04-10 14:54:39', '10', '充值');
INSERT INTO `records` VALUES ('19', '6', '2024-04-10 14:54:41', '98', '充值');
INSERT INTO `records` VALUES ('20', '6', '2024-04-10 14:55:03', '100', '开通会员扣除');
INSERT INTO `records` VALUES ('21', '3', '2024-04-10 14:55:03', '100', '开通会员获取');
INSERT INTO `records` VALUES ('30', '8', '2024-04-11 15:29:00', '10', '签到');
INSERT INTO `records` VALUES ('31', '8', '2024-04-11 15:29:04', '128', '充值');
INSERT INTO `records` VALUES ('32', '8', '2024-04-11 15:31:45', '128', '充值');
INSERT INTO `records` VALUES ('33', '8', '2024-04-11 15:32:20', '100', '开通会员扣除');
INSERT INTO `records` VALUES ('34', '3', '2024-04-11 15:32:20', '100', '开通会员获取');
INSERT INTO `records` VALUES ('35', '8', '2024-04-11 15:32:54', '6', '充值');
INSERT INTO `records` VALUES ('36', '8', '2024-04-11 15:33:05', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('37', '3', '2024-04-11 15:33:05', '30', '开通会员获取');
INSERT INTO `records` VALUES ('38', '8', '2024-04-11 16:44:30', '328', '充值');
INSERT INTO `records` VALUES ('39', '8', '2024-04-11 17:13:15', '6', '充值');
INSERT INTO `records` VALUES ('46', '9', '2024-04-15 00:56:33', '10', '签到');
INSERT INTO `records` VALUES ('47', '9', '2024-04-15 00:56:41', '128', '充值');
INSERT INTO `records` VALUES ('48', '9', '2024-04-15 00:58:00', '1', '开通会员扣除');
INSERT INTO `records` VALUES ('49', '8', '2024-04-15 00:58:00', '1', '开通会员获取');
INSERT INTO `records` VALUES ('50', '10', '2024-04-15 19:01:40', '10', '签到');
INSERT INTO `records` VALUES ('51', '10', '2024-04-15 19:01:43', '128', '充值');
INSERT INTO `records` VALUES ('52', '10', '2024-04-15 19:01:44', '128', '充值');
INSERT INTO `records` VALUES ('53', '10', '2024-04-15 19:01:44', '128', '充值');
INSERT INTO `records` VALUES ('54', '10', '2024-04-15 19:06:55', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('55', '3', '2024-04-15 19:06:55', '30', '开通会员获取');
INSERT INTO `records` VALUES ('56', '11', '2024-04-15 19:15:52', '10', '签到');
INSERT INTO `records` VALUES ('57', '11', '2024-04-15 19:16:01', '328', '充值');
INSERT INTO `records` VALUES ('58', '11', '2024-04-15 19:16:21', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('59', '3', '2024-04-15 19:16:21', '30', '开通会员获取');
INSERT INTO `records` VALUES ('60', '3', '2024-04-17 15:06:02', '1', '开通会员扣除');
INSERT INTO `records` VALUES ('61', '8', '2024-04-17 15:06:02', '1', '开通会员获取');
INSERT INTO `records` VALUES ('62', '12', '2024-04-18 23:50:55', '10', '签到');
INSERT INTO `records` VALUES ('63', '12', '2024-04-18 23:50:58', '128', '充值');
INSERT INTO `records` VALUES ('64', '12', '2024-04-18 23:51:11', '1', '开通会员扣除');
INSERT INTO `records` VALUES ('65', '8', '2024-04-18 23:51:11', '1', '开通会员获取');
INSERT INTO `records` VALUES ('66', '12', '2024-04-18 23:51:24', '100', '开通会员扣除');
INSERT INTO `records` VALUES ('67', '3', '2024-04-18 23:51:24', '100', '开通会员获取');
INSERT INTO `records` VALUES ('68', '12', '2024-04-18 23:51:27', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('69', '3', '2024-04-18 23:51:27', '30', '开通会员获取');
INSERT INTO `records` VALUES ('70', '13', '2024-04-18 23:57:54', '10', '签到');
INSERT INTO `records` VALUES ('71', '13', '2024-04-18 23:57:56', '12', '充值');
INSERT INTO `records` VALUES ('72', '13', '2024-04-18 23:58:12', '128', '充值');
INSERT INTO `records` VALUES ('73', '13', '2024-04-18 23:58:21', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('74', '12', '2024-04-18 23:58:21', '30', '开通会员获取');
INSERT INTO `records` VALUES ('75', '13', '2024-04-18 23:58:33', '100', '开通会员扣除');
INSERT INTO `records` VALUES ('76', '3', '2024-04-18 23:58:33', '100', '开通会员获取');
INSERT INTO `records` VALUES ('77', '3', '2024-04-20 00:53:45', '30', '开通会员扣除');
INSERT INTO `records` VALUES ('78', '13', '2024-04-20 00:53:45', '30', '开通会员获取');
INSERT INTO `records` VALUES ('79', '3', '2024-04-20 14:13:41', '328', '充值');
INSERT INTO `records` VALUES ('80', '10', '2024-04-23 00:38:29', '100', '开通会员扣除');
INSERT INTO `records` VALUES ('81', '3', '2024-04-23 00:38:29', '100', '开通会员获取');
INSERT INTO `records` VALUES ('82', '14', '2024-06-08 11:18:39', '10', '签到');

-- ----------------------------
-- Table structure for sign_in
-- ----------------------------
DROP TABLE IF EXISTS `sign_in`;
CREATE TABLE `sign_in` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '记录Id',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签到时间',
  `user_id` int DEFAULT NULL COMMENT '签到用户Id',
  `integral` decimal(10,0) DEFAULT NULL COMMENT '本次签到的积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sign_in
-- ----------------------------
INSERT INTO `sign_in` VALUES ('33', '2024-03-07 19:49:30', '3', '10');
INSERT INTO `sign_in` VALUES ('34', '2024-03-07 20:25:30', '6', '10');
INSERT INTO `sign_in` VALUES ('35', '2024-03-09 04:55:27', '3', '10');
INSERT INTO `sign_in` VALUES ('36', '2024-03-12 23:14:54', '3', '10');
INSERT INTO `sign_in` VALUES ('39', '2024-04-03 09:25:35', '3', '10');
INSERT INTO `sign_in` VALUES ('40', '2024-04-03 09:45:06', '3', '10');
INSERT INTO `sign_in` VALUES ('41', '2024-04-05 14:45:37', '3', '10');
INSERT INTO `sign_in` VALUES ('42', '2024-04-08 16:44:25', '3', '10');
INSERT INTO `sign_in` VALUES ('51', '2024-04-11 15:29:00', '8', '10');
INSERT INTO `sign_in` VALUES ('58', '2024-04-15 00:56:33', '9', '10');
INSERT INTO `sign_in` VALUES ('59', '2024-04-15 19:01:40', '10', '10');
INSERT INTO `sign_in` VALUES ('60', '2024-04-15 19:15:52', '11', '10');
INSERT INTO `sign_in` VALUES ('61', '2024-04-17 15:05:43', '3', '10');
INSERT INTO `sign_in` VALUES ('62', '2024-04-18 23:50:55', '12', '10');
INSERT INTO `sign_in` VALUES ('63', '2024-04-18 23:57:54', '13', '10');
INSERT INTO `sign_in` VALUES ('64', '2024-04-20 14:13:37', '3', '10');
INSERT INTO `sign_in` VALUES ('65', '2024-04-23 00:26:06', '3', '10');
INSERT INTO `sign_in` VALUES ('66', '2024-06-08 11:18:39', '14', '10');
INSERT INTO `sign_in` VALUES ('67', '2024-06-09 14:22:51', '14', '10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色标识',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简介',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `integral` decimal(10,0) unsigned NOT NULL COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'elysia', 'elysian', 'elysia', 'http://localhost:9091/files/1705558132617-1697438073596-avatar.png', 'USER', '女', '18383838383', '18383838383@163.com', '正在创作 毕业设计', '2000-12-22', '2657');
INSERT INTO `user` VALUES ('6', 'kevin', 'elysian', 'kevin', 'http://localhost:9091/files/1705565856634-ROG_FLOW_X13_product_wallpaper_3840x2400.jpg', 'USER', null, '18318338075', null, '简介简介简介简介简介', null, '110');
INSERT INTO `user` VALUES ('8', 'test1', '123456789', 'test1', 'http://localhost:9091/files/1712820559058-1697438073596-avatar.png', 'USER', null, '12345678901', null, null, null, '337');
INSERT INTO `user` VALUES ('9', 'num2', 'num2', 'num2', 'http://localhost:9091/files/1713113586356-1697438073596-avatar.png', 'USER', null, '13345678900', '1234tgfweqw3124123@123.com', null, null, '137');
INSERT INTO `user` VALUES ('10', 'num3', '1234', 'num3', 'http://localhost:9091/files/1713178981743-头像.jpg', 'USER', null, '13456666666', '3231rewrer@163.com', null, null, '208');
INSERT INTO `user` VALUES ('11', 'num4', '1234', 'num4', 'http://localhost:9091/files/1713179660497-头像2.jpg', 'USER', null, '13873737377', 'sssss22222@163.com', null, null, '308');
INSERT INTO `user` VALUES ('12', 'user5', '12345', 'user5', 'http://localhost:9091/files/1713455395862-头像.jpg', 'USER', null, '13434344333', '23124fer2@163.COM', null, null, '37');
INSERT INTO `user` VALUES ('14', 'test', '123', 'test', null, 'USER', null, null, null, null, null, '20');
INSERT INTO `user` VALUES ('15', 'sanqi', 'sanqi', 'sanqi', 'http://localhost:9091/files/1717863322272-nullac90a74e3237353.jpg', 'USER', null, '13002859313', '1078825799@qq.com', null, null, '0');
