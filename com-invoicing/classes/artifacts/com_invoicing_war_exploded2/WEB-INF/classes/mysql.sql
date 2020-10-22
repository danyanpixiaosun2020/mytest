drop database if exists db;
create database db character set utf8;
use db;

create table users
(
	id bigint primary key auto_increment comment '用户ID，主键，标识列' ,
	username varchar(20) not null comment '用户名' ,
	password varchar(64) not null comment '密码'
);

create table plate
(
	id bigint primary key auto_increment comment '模块ID，主键，标识列' ,
	pname varchar(50) not null comment '模块名称'
);

create table news
(
	id bigint primary key auto_increment comment '新闻ID，主键，标识列' ,
	content varchar(512) not null comment '内容' ,
	type bigint not null comment '新闻类型' ,
	keywords varchar(32) not null comment '新闻关键字'
);

create table message
(
	id bigint primary key auto_increment comment '留言ID，主键，标识列' ,
	nId bigint not null comment '新闻id' ,
	uid  bigint  not null comment '用户id' ,
	content varchar(512) not null comment '内容'
);

insert into users values
	(null, 'admin', '123') ,
	(null, 'wang', '123') ,
	(null, 'li', '123') ;

insert into plate values
	(null, '政治') ,
	( null,'体育') ,
	(null,'娱乐') ,
	(null,'财经');

insert into message values
	(null,1,1 ,'真好') ,
	(null,1,2, '点赞') ,
	 (null,2,1 ,'真好') ,
	(null,2,2, '点赞')  ,
	 (null,3,1 ,'真好') ,
	(null,3,2, '点赞')  ,
	 (null,4,1 ,'真好') ,
	(null,4,2, '点赞')  ;
	
insert into news values
	(null, '7日，俄罗斯瓦尔代俱乐部举行线上研讨会，来自中国、俄罗斯、哈萨克斯坦、吉尔吉斯斯坦等国的专家学者参会，就疫情对地区和世界政治经济局势的影响进行探讨。', 1,'俄罗斯') ,
	(null, '瓦尔代俱乐部学术负责人卢基扬诺夫表示，疫情一方面成为全球挑战，另一方面加剧了国家间，特别是中美之间的对抗。这将冲击现有的国际格局，其他国家将可能被迫选边站队。。', 2,'疫情') ,
	(null, '在上海机场综合保税区内，品牌半导体跨境工业电商项目通过线上运营给企业带来新业务，并提升了保税区的仓库出租率。今年一季度，保税区的进出口额不降反升，同比增长3.1%。', 3,'上海') ,
	(null, '5月8日早盘，三大股指高开高走，深成指盘中站上11000点；午后券商股爆发，带动指数冲高，涨幅均逾1%，沪指一度突破2900点，随后维持高位盘整，', 4,'股市') ,
  (null, '7日，俄罗斯瓦尔代俱乐部举行线上研讨会，来自中国、俄罗斯、哈萨克斯坦、吉尔吉斯斯坦等国的专家学者参会，就疫情对地区和世界政治经济局势的影响进行探讨。', 1,'俄罗斯2') ,
	(null, '瓦尔代俱乐部学术负责人卢基扬诺夫表示，疫情一方面成为全球挑战，另一方面加剧了国家间，特别是中美之间的对抗。这将冲击现有的国际格局，其他国家将可能被迫选边站队。。', 2,'疫情2') ,
	(null, '在上海机场综合保税区内，品牌半导体跨境工业电商项目通过线上运营给企业带来新业务，并提升了保税区的仓库出租率。今年一季度，保税区的进出口额不降反升，同比增长3.1%。', 3,'上海2') ,
	(null, '5月8日早盘，三大股指高开高走，深成指盘中站上11000点；午后券商股爆发，带动指数冲高，涨幅均逾1%，沪指一度突破2900点，随后维持高位盘整，', 4,'股市2') ;
select * from users;
select * from plate;
select * from news;

select * from message;