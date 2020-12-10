use app;

insert into role(code,name) values('ADMIN','Administrator');
insert into role(code,name) values('USER','Employee');

insert into user(username,password,fullname,status)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Administrator',1);
insert into user(username,password,fullname,status)
values('user1','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee01',1);
insert into user(username,password,fullname,status)
values('user2','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee02',1);

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,2);
INSERT INTO user_role(userid,roleid) VALUES (3,2);

INSERT INTO `app`.`category` (`code`, `name`) VALUES ('The-thao', 'The thao');
INSERT INTO `app`.`category` (`code`, `name`) VALUES ('Van-hoc', 'Van Hoc');
INSERT INTO `app`.`category` (`code`, `name`) VALUES ('Thoi-su', 'Thoi su');

INSERT INTO `app`.`new` (`content`, `shortdescription`, `thumbnail`, `title`, `category_id`) VALUES ('The thao 01', 'The thao 01', 'The thao 01', 'The thao 01', '1');
INSERT INTO `app`.`new` (`content`, `shortdescription`, `thumbnail`, `title`, `category_id`) VALUES ('Van hoc 01', 'Van hoc 01', 'Van hoc 01', 'Van hoc 01', '2');
INSERT INTO `app`.`new` (`content`, `shortdescription`, `thumbnail`, `title`, `category_id`) VALUES ('Thoi su 01', 'Thoi su 01', 'Thoi su 01', 'Thoi su 01', '3');
INSERT INTO `app`.`new` (`content`, `shortdescription`, `thumbnail`, `title`, `category_id`) VALUES ('The thao 02', 'The thao 02', 'The thao 02', 'The thao 02', '1');

insert into project(code,name) values('MSW','Project MSW');
insert into project(code,name) values('DYN','Project DYN');
insert into project(code,name) values('CSS','Project CSS');

insert into department(code,name) values('IT','Department IT');
insert into department(code,name) values('ADM','Department ADM');
insert into department(code,name) values('HR','Department HR');

insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('2','Employee1','Employee1@gmail.com','034 111000111','1','1','1','300000','400000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('1','Administrator','Administrator@gmail.com','034 111000222','1','1','1','500000','600000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('3','Employee2','Employee2@gmail.com','034 111000333','2','1','1','400000','400000','2020-10-10','2021-10-10');

INSERT INTO user_project(userid,projectid) VALUES (1,1);
INSERT INTO user_project(userid,projectid) VALUES (1,2);
INSERT INTO user_project(userid,projectid) VALUES (2,2);
INSERT INTO user_project(userid,projectid) VALUES (2,3);
INSERT INTO user_project(userid,projectid) VALUES (3,3);
INSERT INTO user_project(userid,projectid) VALUES (3,1);






