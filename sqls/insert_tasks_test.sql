INSERT INTO `pmspa`.`pmtasks`
(
`task_name`,
`project_id`,
`parent_task_id`,
`user_id`,
`priority`,
`start_date`,
`end_date`,
`status`)
VALUES
(
'Create User Screen',
1,
1,
1001,
10,
'2018-01-30',
'2018-06-30',
'I');

update pmspa.pmtasks set user_id = null, priority = null, start_date = null, end_date = null, status = null where id = 1;
