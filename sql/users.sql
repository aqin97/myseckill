create table `users`(
	`id` int(11) NOT NULL auto_increment comment 'user的ID',
    `username` varchar(20) null comment '用户名',
    `kind` varchar(20) null comment '用户类型',
    `password` varchar(32) null comment '用户密码',
    primary key(`id`),
    unique key (`username`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;