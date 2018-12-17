use web;
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
 
`id` bigint(11) NOT NULL AUTO_INCREMENT,
 
`username` varchar(45) DEFAULT NULL,
 
`password` varchar(45) DEFAULT NULL,
 
`uname` varchar(45) DEFAULT NULL,
 
`phone` varchar(45) DEFAULT NULL,
 
`seex` varchar(45) DEFAULT NULL,
 
`id_number` varchar(45) DEFAULT NULL,
 
`code` varchar(45) DEFAULT NULL,
 
`code_address` varchar(45) DEFAULT NULL,

`password_prompt` varchar(45) DEFAULT NULL,
  
`prompt_answer` varchar(45) DEFAULT NULL,
 
PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;