CREATE TABLE `pmtasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(100) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `parent_task_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tsk_prj_idx` (`project_id`),
  KEY `fk_tsk_usr_idx` (`user_id`),
  CONSTRAINT `fk_tsk_prj` FOREIGN KEY (`project_id`) REFERENCES `pmprojects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tsk_usr` FOREIGN KEY (`user_id`) REFERENCES `pmusers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
