CREATE TABLE `tb_user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `uname` VARCHAR(45) NULL ,
  `phone` VARCHAR(45) NULL ,
  `sex` VARCHAR(45) NULL ,
  `id_number` VARCHAR(45) NULL ,
  `code` VARCHAR(45) NULL ,
  `code_address` VARCHAR(45) NULL ,
  `password_prompt` VARCHAR(45) NULL ,
  `prompt_answer` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `tb_user` (`id`,`username`,`password`,`phone`,`uname`,`sex`,`id_number`,`code`,`code_address`,`password_prompt`,`prompt_answer`) VALUES (1,'18316481079','960615','18316481079','小宇','男','20165533202',NULL,NULL,NULL,NULL);
INSERT INTO `tb_user` (`id`,`username`,`password`,`phone`,`uname`,`sex`,`id_number`,`code`,`code_address`,`password_prompt`,`prompt_answer`) VALUES (2,'181026','181026','181026','181026','181026','181026','181026','181026','181026','181026');
  
  
  
