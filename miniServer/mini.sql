
SET NAMES UTF8;
DROP DATABASE IF EXISTS myMini;
CREATE DATABASE myMini CHARSET=UTF8;
USE myMini;
-- ----------------------------
-- Table structure for `mini_product`
-- ----------------------------
DROP TABLE IF EXISTS `mini_product`;
CREATE TABLE `mini_product` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(32) default NULL, 
  `brand`  varchar(32) default Null,  
  `oldPrice` decimal(10,2) default NULL,
  `newPrice` decimal(10,2) default NULL,
  `goodrate` int(32) default NULL,
  `pic` varchar(128) default NULL,
  `intro` varchar(128) default NULL,
  `arguNum` int(11) default NULL,
  `yunfei` varchar(128) default NULL,
  `fuwu` varchar(128) default NULL,
  `buyNum`  int(11) default NULL,
  `gongxiao`  varchar(128) default NULL,
  `zhuyi`  varchar(128) default NULL,
  `xinghao` varchar(32) default NULL,
  `picDetail`  varchar(128) default NULL,
  `isZiying` varchar(10) default NULL,
  PRIMARY KEY  (`pid`)
); 
-- ----------------------------
-- Records of spider_index_product
-- ----------------------------
INSERT INTO `mini_product` VALUES ('1','蒂佳婷Dr.Jart+蓝色药丸面膜两盒','蒂佳婷(Dr.Jart+)','123','98','89%','http://p1.global.jmstatic.com/product/003/402/3402568_std/3402568_200_200.jpg','透服帖、精华液多到满足~这真的是你见过很好的面膜纸！敷一片皮肤嫩到掐出水！','1000','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25g*5*2','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'	贝德玛净妍控油洁肤液500m','	贝德玛 (Bioderma)','132','45','89%','http://p1.global.jmstatic.com/product/001/407/1407892_std/1407892_200_200.jpg','透康水润双唇，绽放迷人微笑！Mentholatum曼秀雷敦天然植物润唇膏佛手柑4g','1000','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿,补水,舒缓','因个人肤质不同，如有不适请立即停止使用','500ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'Itsskin晶钻红参蜗牛化妆水','伊思(Its skin)','344','298','99%','http://p1.global.jmstatic.com/product/000/818/818506_std/818506_200_200.jpg','[蜗牛原液+红参提取物]内补水外修复，肌肤嫩白透亮！只需涂抹一次，水&乳功效一并兼得！','1000','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','1566','紧致,保湿,修护','因个人肤质不同，如有不适请立即停止使用','150ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');

INSERT INTO `mini_product` VALUES (NULL,'SNP海洋燕窝眼膜','Shining Nature Purity','199','100','89%','http://p1.global.jmstatic.com/product/003/402/3402568_std/3402568_dx_1000_400.jpg','SNP引以为傲的金丝燕窝精华，修复能力是蜂王浆的多倍，将水分牢牢锁在眼皮底层','1340','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25g*5*2(702027706)','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'凯筣丝汀魅惑大地4色教程眼影盘','凯筣丝汀','444','398','89%','http://p0.jmstatic.com/product/002/563/2563246_std/2563246_200_200.jpg','[凯筣丝汀魅惑]大地4色教程眼影盘，【内置步骤教程卡】菜鸟也能成为诱惑他的眼神达人！','666','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','2.8g','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');

INSERT INTO `mini_product` VALUES (NULL,'	城野医生毛孔对策收敛水','城野医生','223','166','89%','http://p1.global.jmstatic.com/product/002/009/2009849_std/2009849_200_200.jpg','日本城野医生毛孔对策收敛水一步清角栓黑头、二步收缩毛孔、三步滋润补水。','2555','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿,补水,去角质,去黑头','因个人肤质不同，如有不适请立即停止使用','180ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'多媚卡雅清洁冻膜','蒂佳婷(Dr.Jart+)','155','56','89%','http://p0.jmstatic.com/product/000/032/32923_std/32923_200_200.jpg','[欣兰黑里透白冻膜] 护肤达人都爱的“毛孔清道夫”！','1236','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25g*5*2(702027706)','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');

INSERT INTO `mini_product` VALUES (NULL,'后拱辰享阴阳气津水乳霜三件套盒','蒂佳婷(Dr.Jart+)','123','98','98%','http://p1.global.jmstatic.com/product/002/206/2206525_std/2206525_200_200.jpg','护肤拒绝东拼西凑！后·拱辰享阴阳气津水乳霜三件套盒，气津眼霜+睡眠修复面膜','1966','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','滋润','因个人肤质不同，如有不适请立即停止使用','25g*5*2','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'YSL圣罗兰迷魅亮彩唇膏','YSL','256','250','89%','http://p1.global.jmstatic.com/product/001/021/1021045_std/1021045_200_200.jpg','YSL圣罗兰迷魅亮彩唇膏4ml，迷人的色调赋予了双唇锦缎般的奢华色泽，唇膏均匀地涂抹于唇部，奶油质地丝般顺滑诱人','1855','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','699','滋润,润唇,丰唇,不易脱妆','因个人肤质不同，如有不适请立即停止使用','4ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'itsskin晶钻红参蜗牛眼霜2支','蒂佳婷(Dr.Jart+)','555','444','89%','http://p1.global.jmstatic.com/product/000/818/818505_std/818505_200_200.jpg','[蜗牛红参滚珠眼霜] （2支装），重磅来袭！用事实告诉你，“脂肪粒”和“营养吸收”真的不冲突！滚珠设计直接接触眼周肌肤，避免给脆弱的眼周肌肤带来伤害！紧致眼周肌肤；','1488','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','紧致,补水,滋润,去黑眼圈,修护','因个人肤质不同，如有不适请立即停止使用','2支*15ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');

INSERT INTO `mini_product` VALUES (NULL,'	小迷糊玻尿酸补水亮颜面膜21片','小迷糊','83','60','89%','http://p0.jmstatic.com/product/002/347/2347651_std/2347651_200_200.jpg','小迷糊玻尿酸补水亮颜面膜套装21片（复合玻尿酸补水竹炭面膜30ml或25ml*7片+黑米润肤亮颜黑面膜30ml或25ml*7片*2）','1555','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','	新老包装随机发货，具体以收到实物为准，介意的人士慎购','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25ml*7片*2盒)','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'珀莱雅(PROYA)玫瑰嫩肤补水6件套(洗颜霜120ml+保湿水120ml+保湿乳100ml+面膜贴26mlX6+晨醒水15ml+夜养水15ml)，深入毛孔','蒂佳婷(Dr.Jart+)','123','98','89%','http://p0.jmstatic.com/product/001/330/1330590_std/1330590_200_200.jpg','透服帖、精华液多到满足~这真的是就算敷到30分钟还感觉到水润！敷一片皮肤嫩到掐出水！','1256','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','180ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'	秀雷敦天然植物润唇膏佛手柑4g','	贝德玛 (Bioderma)','132','45','89%','http://p0.jmstatic.com/product/000/001/1686_std/1686_200_200.jpg','[康水润双唇]，绽放迷人微笑！Mentholatum曼秀雷敦天然植物润唇膏佛手柑4g，含乳木果油、杏维他命E及葡萄籽保持双唇柔嫩','1000','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿,补水,舒缓','因个人肤质不同，如有不适请立即停止使用','500ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');

INSERT INTO `mini_product` VALUES (NULL,'Itsskin晶钻红参蜗牛化妆水','伊思(Its skin)','344','298','99%','http://p1.global.jmstatic.com/product/003/258/3258110_std/3258110_200_200.jpg','实爱对了洗发水，每一天都“顺”变女神！被誉为洗发水中的“雪花秀”----韩国•吕(Ryoe)损伤修护护发乳400ml+洗发水400ml，大名鼎鼎的“红吕”','1000','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','1566','紧致,保湿,修护','因个人肤质不同，如有不适请立即停止使用','400ml+400ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'SNP海洋燕窝眼膜','Shining Nature Purity','199','100','89%','http://p0.jmstatic.com/product/004/325/4325876_std/4325876_200_200.jpg','S赋予双唇丝缎般细腻与浓郁的色泽质感。金色方管高定设计，如珠宝般纯粹高贵。无论是身成为隐藏于手袋内的一个美妆法宝。','1340','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25g*5*2(702027706)','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');


INSERT INTO `mini_product` VALUES (NULL,'SNP海洋燕窝眼膜','Shining Nature Purity','199','100','89%','http://p1.global.jmstatic.com/product/003/402/3402568_std/3402568_dx_1000_400.jpg','SNP引以为傲的金丝燕窝精华，修复能力是蜂王浆的多倍，将水分牢牢锁在眼皮底层','1340','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25g*5*2(702027706)','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'凯筣丝汀魅惑大地4色教程眼影盘','凯筣丝汀','444','398','89%','http://p1.global.jmstatic.com/product/003/881/3881778_std/3881778_200_200.jpg','凯筣丝汀魅惑大地4色教程眼影盘，【内置步骤教程卡】菜鸟也能成为诱惑他的眼神达人！','666','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','2.8g','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'	城野医生毛孔对策收敛水','城野医生','223','166','89%','http://p1.global.jmstatic.com/product/002/009/2009849_std/2009849_200_200.jpg','[日本城野医生毛孔对策收敛水]，毛孔黑头的对抗，一步清角栓黑头、二步收缩毛孔、三步滋润补水。','2555','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿,补水,去角质,去黑头','因个人肤质不同，如有不适请立即停止使用','180ml','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');

INSERT INTO `mini_product` VALUES (NULL,'多媚卡雅清洁冻膜','蒂佳婷(Dr.Jart+)','155','56','89%','http://p0.jmstatic.com/product/000/075/75989_std/75989_200_200.jpg','欣兰黑里透白冻膜500g，护肤达人都爱的“毛孔清道夫”！','1236','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','25g*5*2(702027706)','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');

INSERT INTO `mini_product` VALUES (NULL,'后拱辰享阴阳气津水乳霜三件套盒','蒂佳婷(Dr.Jart+)','123','98','98%','http://p1.global.jmstatic.com/product/003/861/3861434_std/3861434_200_200.jpg','护肤拒绝东拼西凑！后·拱辰享阴阳气津水乳霜三件套盒，阴阳平衡滋养液+阴阳平衡乳液+气津滋养霜+气津精华露+气津眼霜+睡眠修复面膜','1966','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','滋润','因个人肤质不同，如有不适请立即停止使用','25g*5*2','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','true');


INSERT INTO `mini_product` VALUES (NULL,'凯筣丝汀魅惑大地4色教程眼影盘','凯筣丝汀','444','398','89%','http://p0.jmstatic.com/product/002/563/2563246_std/2563246_200_200.jpg','[凯筣丝汀魅惑]大地4色教程眼影盘，【内置步骤教程卡】菜鸟也能成为诱惑他的眼神达人！','666','包邮政策： 本商品满299元或2件包邮 （新疆部分区域除外）','本商品支持7天拆封无条件退货','566','保湿，补水','因个人肤质不同，如有不适请立即停止使用','2.8g','http://p1.global.jmstatic.com/brand_authorization/9511/authorization_9511_global_1.jpg?t=1532400626','false');
-- ----------------------------
-- Table structure for `mini_shopCart`
-- ----------------------------
DROP TABLE IF EXISTS `mini_shopCart`;
CREATE TABLE `mini_shopCart` (
  `sid` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL, 
  `num` int(11) default NULL, 
  PRIMARY KEY  (`sid`)
);
INSERT INTO `mini_shopCart` VALUES (NULL,1,2);
INSERT INTO `mini_shopCart` VALUES (NULL,2,1);
INSERT INTO `mini_shopCart` VALUES (NULL,3,1);
-- ----------------------------
-- Table structure for `mini_user`
-- ----------------------------
DROP TABLE IF EXISTS `mini_user`;
CREATE TABLE `mini_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  `jifen` int(11) default NULL,
  `zhanghu`  int(11) default NULL,
  `coupon` int(11) default NULL,
  `isLogin` varChar(11) default Null,
  PRIMARY KEY  (`uid`)
) ;
-- ----------------------------
-- Records of mini_user
-- ----------------------------
INSERT INTO `mini_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0','11','2','0','false');
INSERT INTO `mini_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1','11','2','0','false');
INSERT INTO `mini_user` VALUES ('3','doudou','123456','dou@qq.com', '13501234569','img/avatar/default.png', '窦志强', '1','44','45','9','false');
INSERT INTO `mini_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0','1','44','45''9','false');

-- ----------------------------
-- Table structure for `spider_user_comment`
-- ----------------------------
DROP TABLE IF EXISTS `mini_comment`;
CREATE TABLE `mini_comment` (
  `pid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `content` varchar(360) default NULL,
  `time` varchar(16) default NULL,
  `arguPic` varchar(16) default NULL,
  PRIMARY KEY  (`pid`)
); 
INSERT INTO `mini_comment` VALUES ('1', '1','dingding', '好用', '2018-8-2');
INSERT INTO `mini_comment` VALUES ('2', '1','dingding', '不错不错', '2018-7-31');
INSERT INTO `mini_comment` VALUES ('3','1', 'dingding', '还行吧', '2018-8-31');
INSERT INTO `mini_comment` VALUES ('4','1','dingding', '有趣', '2018-9-9');
INSERT INTO `mini_comment` VALUES ('5','1', 'dingding', '可以', '2018-8-31');
INSERT INTO `mini_comment` VALUES ('6','1','dingding', '有趣', '2018-9-9');


-- ----------------------------
-- Table structure for `spider_order`
-- ----------------------------
DROP TABLE IF EXISTS `mini_order`;
CREATE TABLE `mini_order` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `address_id` int(11) default NULL,
  `status` int(11) default NULL,
  `order_time` bigint(20) default NULL,
  `pay_time` bigint(20) default NULL,
  `deliver_time` bigint(20) default NULL,
  `received_time` bigint(20) default NULL,
  `count` int(11),
  `amount` int(11),
  PRIMARY KEY  (`aid`)
);
-- ----------------------------
-- Records of spider_order
-- ----------------------------

-- ----------------------------
-- Table structure for `minir_detail`
-- ----------------------------
DROP TABLE IF EXISTS `mini_detail`;
CREATE TABLE `mini_detail`(
  `did` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `order_amount` varchar(128) default NULL,
  `order_count` int(11) default NULL,
  `order_status` varChar(16) default NULL,
  `user_phone` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of spider_order_detail
-- ----------------------------