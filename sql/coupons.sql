create table `coupon_test`(
	`id` bigint(20) not null auto_increment comment '优惠券的id',
	`username` varchar(20) not null comment '和该优惠券关联的用户名',
    `coupon_name` varchar(20) not null comment '优惠券名称',
    `amount` bigint(20) null comment '优惠券抵扣金额',
    `left` bigint(20) null comment '优惠券剩余数量',
    `stock` double null comment '库存',
    `desccription` varchar(60) null comment '描述',
    primary key(`id`),
    key(`username`)
)engine=InnoDB default charset=utf8mb4;

