
CREATE TABLE `pmprojects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `proj_name` varchar(100) NOT NULL,
  `manager_id` bigint(20) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` varchar(15) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prj_usr_idx` (`manager_id`),
  CONSTRAINT `fk_prj_usr` FOREIGN KEY (`manager_id`) REFERENCES `pmusers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
