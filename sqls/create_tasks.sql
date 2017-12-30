CREATE TABLE `pmtasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(100) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `parent_task_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tsk_prj_idx` (`project_id`),
  KEY `fk_tsk_usr_idx` (`user_id`),
  KEY `fk_tsk_tsk_idx` (`parent_task_id`),
  CONSTRAINT `fk_tsk_prj` FOREIGN KEY (`project_id`) REFERENCES `pmprojects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tsk_tsk` FOREIGN KEY (`parent_task_id`) REFERENCES `pmtasks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tsk_usr` FOREIGN KEY (`user_id`) REFERENCES `pmusers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
