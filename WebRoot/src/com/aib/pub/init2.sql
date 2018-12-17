use web;
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` BIGINT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NULL ,
  `phone` VARCHAR(45) NULL ,
  `goodsname` VARCHAR(45) NULL ,
  `type` VARCHAR(45) NULL ,
  `data` VARCHAR(45) NULL ,
  `add` VARCHAR(45) NULL ,
  `img` VARCHAR(45) NULL ,
  `title` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_goods` (`id`,`username`,`phone`,`goodsname`,`type`,`data`,`add`,`img`,`title`) VALUES (1,'18316481079','18316481079','饭卡','lost','2018-10-20','在哪里漏了',NULL,'找不到');
INSERT INTO `tb_goods` (`id`,`username`,`phone`,`goodsname`,`type`,`data`,`add`,`img`,`title`) VALUES (2,'974965436','974965436','饭卡','found','2018-10-21','在哪里捡到',NULL,'找失主');