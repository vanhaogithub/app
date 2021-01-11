use app;

insert into role(code,name) values('ADMIN','Administrator');
insert into role(code,name) values('USER','Employee');

insert into user(username,password,fullname,status)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Administrator',1);
insert into user(username,password,fullname,status)
values('user1','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee01',1);
insert into user(username,password,fullname,status)
values('user2','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee02',1);
insert into user(username,password,fullname,status)
values('user3','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee03',1);
insert into user(username,password,fullname,status)
values('user4','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee04',1);
insert into user(username,password,fullname,status)
values('user5','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Employee05',1);

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,2);
INSERT INTO user_role(userid,roleid) VALUES (3,2);
INSERT INTO user_role(userid,roleid) VALUES (4,2);
INSERT INTO user_role(userid,roleid) VALUES (5,2);
INSERT INTO user_role(userid,roleid) VALUES (6,2);

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

insert into department(code,name) values('MNG','Department MNG');
insert into department(code,name) values('IT','Department IT');
insert into department(code,name) values('ADM','Department ADM');
insert into department(code,name) values('HR','Department HR');

insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('1','Administrator','Administrator@gmail.com','034 111000222','1','1','1','1000000','1000000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('2','Employee01','Employee1@gmail.com','034 111000111','2','1','3','500000','500000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('3','Employee02','Employee2@gmail.com','034 111000333','2','1','2','400000','400000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('4','Employee03','Employee3@gmail.com','034 111000333','3','3','2','300000','400000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('5','Employee04','Employee4@gmail.com','034 111000333','3','3','2','300000','300000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('6','Employee05','Employee5@gmail.com','034 111000333','4','4','2','300000','300000','2020-10-10','2021-10-10');

INSERT INTO user_project(userid,projectid) VALUES (1,1);
INSERT INTO user_project(userid,projectid) VALUES (1,2);
INSERT INTO user_project(userid,projectid) VALUES (2,2);
INSERT INTO user_project(userid,projectid) VALUES (2,3);
INSERT INTO user_project(userid,projectid) VALUES (3,3);
INSERT INTO user_project(userid,projectid) VALUES (3,1);
INSERT INTO user_project(userid,projectid) VALUES (4,3);
INSERT INTO user_project(userid,projectid) VALUES (4,1);
INSERT INTO user_project(userid,projectid) VALUES (5,3);
INSERT INTO user_project(userid,projectid) VALUES (5,2);
INSERT INTO user_project(userid,projectid) VALUES (6,2);
INSERT INTO user_project(userid,projectid) VALUES (6,1);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-05',8, 'Nghi om','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-05',2, 'Nghi om','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-12',8, 'Nghi om','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-15',4, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-18',3, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-23',3, 'Viec ca nhan','REJECT', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-25',3, 'Viec ca nhan','REJECT', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-05',2, 'Nghi om','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-12',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-15',4, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',5, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-23',6, 'Viec ca nhan','REJECT', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-25',8, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-05',2, 'Nghi om','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-12',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-15',4, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-18',5, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-23',6, 'Viec ca nhan','REJECT', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-25',8, 'Viec ca nhan','APPROVAL', 1);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-05',8, 'Nghi om','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-05',2, 'Nghi om','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-12',8, 'Nghi om','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-15',4, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-18',3, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-23',3, 'Viec ca nhan','REJECT', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-25',3, 'Viec ca nhan','REJECT', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-05',2, 'Nghi om','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-12',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-15',4, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',5, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-23',6, 'Viec ca nhan','REJECT', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-25',8, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-05',2, 'Nghi om','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-12',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-15',4, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-18',5, 'Viec ca nhan','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-23',6, 'Viec ca nhan','REJECT', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-25',8, 'Viec ca nhan','APPROVAL', 2);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-05',8, 'Nghi om','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-05',2, 'Nghi om','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-12',8, 'Nghi om','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-15',4, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-18',3, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-23',3, 'Viec ca nhan','REJECT', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-25',3, 'Viec ca nhan','REJECT', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-05',2, 'Nghi om','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-12',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-15',4, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',5, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-23',6, 'Viec ca nhan','REJECT', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-25',8, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-05',2, 'Nghi om','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-12',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-15',4, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-18',5, 'Viec ca nhan','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-23',6, 'Viec ca nhan','REJECT', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-25',8, 'Viec ca nhan','APPROVAL', 3);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-05',8, 'Nghi om','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-05',2, 'Nghi om','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-12',8, 'Nghi om','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-15',4, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-18',3, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-23',3, 'Viec ca nhan','REJECT', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-25',3, 'Viec ca nhan','REJECT', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-05',2, 'Nghi om','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-12',8, 'Nghi om','REQUEST', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-15',4, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',5, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-23',6, 'Viec ca nhan','REJECT', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-25',8, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-05',2, 'Nghi om','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-12',8, 'Nghi om','REQUEST', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-15',4, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-18',5, 'Viec ca nhan','APPROVAL', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-23',6, 'Viec ca nhan','REJECT', 4);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-25',8, 'Viec ca nhan','APPROVAL', 4);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-05',8, 'Nghi om','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-05',2, 'Nghi om','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-12',8, 'Nghi om','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-15',4, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-18',3, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-23',3, 'Viec ca nhan','REJECT', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-25',3, 'Viec ca nhan','REJECT', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-05',2, 'Nghi om','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-12',8, 'Nghi om','REQUEST', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-15',4, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',5, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-23',6, 'Viec ca nhan','REJECT', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-25',8, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-05',2, 'Nghi om','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-12',8, 'Nghi om','REQUEST', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-15',4, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-18',5, 'Viec ca nhan','APPROVAL', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-23',6, 'Viec ca nhan','REJECT', 5);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-25',8, 'Viec ca nhan','APPROVAL', 5);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-05',8, 'Nghi om','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-05',2, 'Nghi om','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-12',8, 'Nghi om','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-15',4, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-18',3, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-23',3, 'Viec ca nhan','REJECT', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-25',3, 'Viec ca nhan','REJECT', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-05',2, 'Nghi om','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-12',8, 'Nghi om','REQUEST', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-15',4, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',5, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-23',6, 'Viec ca nhan','REJECT', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-25',8, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-05',2, 'Nghi om','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-12',8, 'Nghi om','REQUEST', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-15',4, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-18',5, 'Viec ca nhan','APPROVAL', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-23',6, 'Viec ca nhan','REJECT', 6);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2021-01-25',8, 'Viec ca nhan','APPROVAL', 6);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-03',1, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-10',1, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-20',2, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-25',1, 'OT Project DYN','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-27',4, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-28',3, 'OT Project DYN','REJECT', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-11-03',1, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',1, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-15',4, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-18',5, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-20',2, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-25',1, 'OT Project DYN','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-27',4, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-28',3, 'OT Project DYN','REJECT', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-12-03',1, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-15',4, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',5, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-20',2, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-25',1, 'OT Project DYN','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-27',4, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-28',3, 'OT Project DYN','REJECT', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2021-01-03',1, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-10',1, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-15',4, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-18',5, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-20',2, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-25',1, 'OT Project DYN','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-27',4, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-28',3, 'OT Project DYN','REJECT', 1);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-03',1, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-10',1, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-20',2, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-25',1, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-27',4, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-28',3, 'OT Project DYN','REJECT', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-11-03',1, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',1, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-15',4, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-18',5, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-20',2, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-25',1, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-27',4, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-28',3, 'OT Project DYN','REJECT', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-12-03',1, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-15',4, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',5, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-20',2, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-25',1, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-27',4, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-28',3, 'OT Project DYN','REJECT', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2021-01-03',1, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-10',1, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-15',4, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-18',5, 'OT Project MSW','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-20',2, 'OT Project DYN','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-25',1, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-27',4, 'OT Project MSW','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-28',3, 'OT Project DYN','REJECT', 2);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-03',1, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-10',1, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-20',2, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-25',1, 'OT Project DYN','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-27',4, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-28',3, 'OT Project DYN','REJECT', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-11-03',1, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',1, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-15',4, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-18',5, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-20',2, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-25',1, 'OT Project DYN','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-27',4, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-28',3, 'OT Project DYN','REJECT', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-12-03',1, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-15',4, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',5, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-20',2, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-25',1, 'OT Project DYN','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-27',4, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-28',3, 'OT Project DYN','REJECT', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2021-01-03',1, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-10',1, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-15',4, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-18',5, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-20',2, 'OT Project DYN','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-25',1, 'OT Project DYN','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-27',4, 'OT Project MSW','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-28',3, 'OT Project DYN','REJECT', 3);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-03',1, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-10',1, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-20',2, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-25',1, 'OT Project DYN','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-27',4, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-28',3, 'OT Project DYN','REJECT', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-11-03',1, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',1, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-15',4, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-18',5, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-20',2, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-25',1, 'OT Project DYN','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-27',4, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-28',3, 'OT Project DYN','REJECT', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-12-03',1, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-15',4, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',5, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-20',2, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-25',1, 'OT Project DYN','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-27',4, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-28',3, 'OT Project DYN','REJECT', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2021-01-03',1, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-10',1, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-15',4, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-18',5, 'OT Project MSW','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-20',2, 'OT Project DYN','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-25',1, 'OT Project DYN','REQUEST', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-27',4, 'OT Project MSW','APPROVAL', 4);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-28',3, 'OT Project DYN','REJECT', 4);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-03',1, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-10',1, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-20',2, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-25',1, 'OT Project DYN','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-27',4, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-28',3, 'OT Project DYN','REJECT', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-11-03',1, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',1, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-15',4, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-18',5, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-20',2, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-25',1, 'OT Project DYN','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-27',4, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-28',3, 'OT Project DYN','REJECT', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-12-03',1, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-15',4, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',5, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-20',2, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-25',1, 'OT Project DYN','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-27',4, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-28',3, 'OT Project DYN','REJECT', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2021-01-03',1, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-10',1, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-15',4, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-18',5, 'OT Project MSW','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-20',2, 'OT Project DYN','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-25',1, 'OT Project DYN','REQUEST', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-27',4, 'OT Project MSW','APPROVAL', 5);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-28',3, 'OT Project DYN','REJECT', 5);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-03',1, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-10',1, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-20',2, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-25',1, 'OT Project DYN','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-27',4, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-28',3, 'OT Project DYN','REJECT', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-11-03',1, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',1, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-15',4, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-18',5, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-20',2, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-25',1, 'OT Project DYN','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-27',4, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-28',3, 'OT Project DYN','REJECT', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-12-03',1, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-15',4, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',5, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-20',2, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-25',1, 'OT Project DYN','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-27',4, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-28',3, 'OT Project DYN','REJECT', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2021-01-03',1, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-10',1, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-15',4, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-18',5, 'OT Project MSW','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-20',2, 'OT Project DYN','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-25',1, 'OT Project DYN','REQUEST', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-27',4, 'OT Project MSW','APPROVAL', 6);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-01-28',3, 'OT Project DYN','REJECT', 6);

INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-01 08:00:01','2020-10-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-02 08:00:01','2020-10-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-03 08:00:01','2020-10-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-04 09:00:01','2020-10-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-05 08:00:01','2020-10-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-06 08:00:01','2020-10-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-07 08:30:00','2020-10-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-08 08:00:01','2020-10-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-09 08:00:01','2020-10-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-10 08:00:01','2020-10-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-11 10:00:01','2020-10-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-12 08:00:01','2020-10-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-13 08:00:01','2020-10-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-14 08:00:01','2020-10-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-15 08:30:00','2020-10-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-16 08:00:01','2020-10-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-17 08:00:01','2020-10-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-18 08:00:01','2020-10-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-19 09:00:01','2020-10-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-20 08:00:01','2020-10-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-21 08:00:01','2020-10-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-22 08:00:01','2020-10-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-23 09:00:01','2020-10-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-24 08:00:01','2020-10-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-25 08:00:01','2020-10-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-26 08:00:01','2020-10-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-27 08:00:01','2020-10-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-28 09:00:01','2020-10-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-29 08:00:01','2020-10-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-30 08:00:01','2020-10-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-10-31 08:00:01','2020-10-31 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-01 08:00:01','2020-11-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-02 08:00:01','2020-11-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-03 08:00:01','2020-11-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-04 09:00:01','2020-11-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-05 08:00:01','2020-11-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-06 08:00:01','2020-11-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-07 08:30:00','2020-11-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-08 08:00:01','2020-11-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-09 08:00:01','2020-11-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-10 08:00:01','2020-11-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-11 10:00:01','2020-11-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-12 08:00:01','2020-11-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-13 08:00:01','2020-11-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-14 08:00:01','2020-11-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-15 08:30:00','2020-11-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-16 08:00:01','2020-11-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-17 08:00:01','2020-11-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-18 08:00:01','2020-11-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-19 09:00:01','2020-11-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-20 08:00:01','2020-11-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-21 08:00:01','2020-11-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-22 08:00:01','2020-11-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-23 09:00:01','2020-11-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-24 08:00:01','2020-11-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-25 08:00:01','2020-11-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-26 08:00:01','2020-11-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-27 08:00:01','2020-11-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-28 09:00:01','2020-11-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-29 08:00:01','2020-11-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-11-30 08:00:01','2020-11-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-01 08:00:01','2020-12-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-02 08:00:01','2020-12-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-03 08:00:01','2020-12-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-04 09:00:01','2020-12-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-05 08:00:01','2020-12-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-06 08:00:01','2020-12-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-07 08:30:00','2020-12-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-08 08:00:01','2020-12-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-09 08:00:01','2020-12-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-10 08:00:01','2020-12-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-11 10:00:01','2020-12-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-12 08:00:01','2020-12-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-13 08:00:01','2020-12-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-14 08:00:01','2020-12-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-15 08:30:00','2020-12-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-16 08:00:01','2020-12-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-17 08:00:01','2020-12-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-18 08:00:01','2020-12-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-19 09:00:01','2020-12-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-20 08:00:01','2020-12-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-21 08:00:01','2020-12-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-22 08:00:01','2020-12-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-23 09:00:01','2020-12-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-24 08:00:01','2020-12-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-25 08:00:01','2020-12-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-26 08:00:01','2020-12-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-27 08:00:01','2020-12-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-28 09:00:01','2020-12-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-29 08:00:01','2020-12-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2020-12-30 08:00:01','2020-12-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2021-01-01 08:00:01','2021-01-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2021-01-02 08:00:01','2021-01-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2021-01-03 08:00:01','2021-01-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (1, '2021-01-04 09:00:01','2021-01-04 17:00:01', 1, 1, 0);

INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-01 08:00:01','2020-10-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-02 08:00:01','2020-10-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-03 08:00:01','2020-10-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-04 09:00:01','2020-10-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-05 08:00:01','2020-10-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-06 08:00:01','2020-10-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-07 08:30:00','2020-10-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-08 08:00:01','2020-10-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-09 08:00:01','2020-10-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-10 08:00:01','2020-10-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-11 10:00:01','2020-10-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-12 08:00:01','2020-10-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-13 08:00:01','2020-10-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-14 08:00:01','2020-10-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-15 08:30:00','2020-10-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-16 08:00:01','2020-10-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-17 08:00:01','2020-10-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-18 08:00:01','2020-10-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-19 09:00:01','2020-10-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-20 08:00:01','2020-10-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-21 08:00:01','2020-10-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-22 08:00:01','2020-10-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-23 09:00:01','2020-10-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-24 08:00:01','2020-10-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-25 08:00:01','2020-10-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-26 08:00:01','2020-10-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-27 08:00:01','2020-10-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-28 09:00:01','2020-10-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-29 08:00:01','2020-10-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-30 08:00:01','2020-10-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-10-31 08:00:01','2020-10-31 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-01 08:00:01','2020-11-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-02 08:00:01','2020-11-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-03 08:00:01','2020-11-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-04 09:00:01','2020-11-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-05 08:00:01','2020-11-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-06 08:00:01','2020-11-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-07 08:30:00','2020-11-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-08 08:00:01','2020-11-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-09 08:00:01','2020-11-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-10 08:00:01','2020-11-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-11 10:00:01','2020-11-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-12 08:00:01','2020-11-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-13 08:00:01','2020-11-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-14 08:00:01','2020-11-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-15 08:30:00','2020-11-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-16 08:00:01','2020-11-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-17 08:00:01','2020-11-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-18 08:00:01','2020-11-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-19 09:00:01','2020-11-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-20 08:00:01','2020-11-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-21 08:00:01','2020-11-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-22 08:00:01','2020-11-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-23 09:00:01','2020-11-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-24 08:00:01','2020-11-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-25 08:00:01','2020-11-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-26 08:00:01','2020-11-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-27 08:00:01','2020-11-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-28 09:00:01','2020-11-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-29 08:00:01','2020-11-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-11-30 08:00:01','2020-11-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-01 08:00:01','2020-12-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-02 08:00:01','2020-12-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-03 08:00:01','2020-12-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-04 09:00:01','2020-12-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-05 08:00:01','2020-12-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-06 08:00:01','2020-12-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-07 08:30:00','2020-12-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-08 08:00:01','2020-12-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-09 08:00:01','2020-12-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-10 08:00:01','2020-12-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-11 10:00:01','2020-12-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-12 08:00:01','2020-12-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-13 08:00:01','2020-12-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-14 08:00:01','2020-12-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-15 08:30:00','2020-12-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-16 08:00:01','2020-12-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-17 08:00:01','2020-12-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-18 08:00:01','2020-12-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-19 09:00:01','2020-12-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-20 08:00:01','2020-12-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-21 08:00:01','2020-12-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-22 08:00:01','2020-12-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-23 09:00:01','2020-12-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-24 08:00:01','2020-12-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-25 08:00:01','2020-12-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-26 08:00:01','2020-12-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-27 08:00:01','2020-12-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-28 09:00:01','2020-12-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-29 08:00:01','2020-12-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2020-12-30 08:00:01','2020-12-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2021-01-01 08:00:01','2021-01-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2021-01-02 08:00:01','2021-01-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2021-01-03 08:00:01','2021-01-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (2, '2021-01-04 09:00:01','2021-01-04 17:00:01', 1, 1, 0);

INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-01 08:00:01','2020-10-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-02 08:00:01','2020-10-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-03 08:00:01','2020-10-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-04 09:00:01','2020-10-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-05 08:00:01','2020-10-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-06 08:00:01','2020-10-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-07 08:30:00','2020-10-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-08 08:00:01','2020-10-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-09 08:00:01','2020-10-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-10 08:00:01','2020-10-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-11 10:00:01','2020-10-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-12 08:00:01','2020-10-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-13 08:00:01','2020-10-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-14 08:00:01','2020-10-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-15 08:30:00','2020-10-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-16 08:00:01','2020-10-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-17 08:00:01','2020-10-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-18 08:00:01','2020-10-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-19 09:00:01','2020-10-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-20 08:00:01','2020-10-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-21 08:00:01','2020-10-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-22 08:00:01','2020-10-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-23 09:00:01','2020-10-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-24 08:00:01','2020-10-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-25 08:00:01','2020-10-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-26 08:00:01','2020-10-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-27 08:00:01','2020-10-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-28 09:00:01','2020-10-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-29 08:00:01','2020-10-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-30 08:00:01','2020-10-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-10-31 08:00:01','2020-10-31 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-01 08:00:01','2020-11-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-02 08:00:01','2020-11-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-03 08:00:01','2020-11-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-04 09:00:01','2020-11-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-05 08:00:01','2020-11-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-06 08:00:01','2020-11-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-07 08:30:00','2020-11-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-08 08:00:01','2020-11-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-09 08:00:01','2020-11-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-10 08:00:01','2020-11-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-11 10:00:01','2020-11-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-12 08:00:01','2020-11-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-13 08:00:01','2020-11-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-14 08:00:01','2020-11-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-15 08:30:00','2020-11-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-16 08:00:01','2020-11-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-17 08:00:01','2020-11-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-18 08:00:01','2020-11-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-19 09:00:01','2020-11-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-20 08:00:01','2020-11-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-21 08:00:01','2020-11-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-22 08:00:01','2020-11-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-23 09:00:01','2020-11-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-24 08:00:01','2020-11-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-25 08:00:01','2020-11-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-26 08:00:01','2020-11-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-27 08:00:01','2020-11-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-28 09:00:01','2020-11-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-29 08:00:01','2020-11-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-11-30 08:00:01','2020-11-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-01 08:00:01','2020-12-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-02 08:00:01','2020-12-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-03 08:00:01','2020-12-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-04 09:00:01','2020-12-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-05 08:00:01','2020-12-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-06 08:00:01','2020-12-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-07 08:30:00','2020-12-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-08 08:00:01','2020-12-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-09 08:00:01','2020-12-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-10 08:00:01','2020-12-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-11 10:00:01','2020-12-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-12 08:00:01','2020-12-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-13 08:00:01','2020-12-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-14 08:00:01','2020-12-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-15 08:30:00','2020-12-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-16 08:00:01','2020-12-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-17 08:00:01','2020-12-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-18 08:00:01','2020-12-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-19 09:00:01','2020-12-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-20 08:00:01','2020-12-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-21 08:00:01','2020-12-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-22 08:00:01','2020-12-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-23 09:00:01','2020-12-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-24 08:00:01','2020-12-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-25 08:00:01','2020-12-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-26 08:00:01','2020-12-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-27 08:00:01','2020-12-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-28 09:00:01','2020-12-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-29 08:00:01','2020-12-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2020-12-30 08:00:01','2020-12-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2021-01-01 08:00:01','2021-01-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2021-01-02 08:00:01','2021-01-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2021-01-03 08:00:01','2021-01-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (3, '2021-01-04 09:00:01','2021-01-04 17:00:01', 1, 1, 0);

INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-01 08:00:01','2020-10-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-02 08:00:01','2020-10-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-03 08:00:01','2020-10-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-04 09:00:01','2020-10-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-05 08:00:01','2020-10-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-06 08:00:01','2020-10-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-07 08:30:00','2020-10-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-08 08:00:01','2020-10-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-09 08:00:01','2020-10-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-10 08:00:01','2020-10-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-11 10:00:01','2020-10-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-12 08:00:01','2020-10-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-13 08:00:01','2020-10-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-14 08:00:01','2020-10-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-15 08:30:00','2020-10-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-16 08:00:01','2020-10-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-17 08:00:01','2020-10-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-18 08:00:01','2020-10-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-19 09:00:01','2020-10-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-20 08:00:01','2020-10-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-21 08:00:01','2020-10-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-22 08:00:01','2020-10-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-23 09:00:01','2020-10-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-24 08:00:01','2020-10-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-25 08:00:01','2020-10-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-26 08:00:01','2020-10-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-27 08:00:01','2020-10-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-28 09:00:01','2020-10-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-29 08:00:01','2020-10-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-30 08:00:01','2020-10-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-10-31 08:00:01','2020-10-31 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-01 08:00:01','2020-11-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-02 08:00:01','2020-11-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-03 08:00:01','2020-11-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-04 09:00:01','2020-11-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-05 08:00:01','2020-11-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-06 08:00:01','2020-11-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-07 08:30:00','2020-11-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-08 08:00:01','2020-11-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-09 08:00:01','2020-11-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-10 08:00:01','2020-11-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-11 10:00:01','2020-11-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-12 08:00:01','2020-11-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-13 08:00:01','2020-11-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-14 08:00:01','2020-11-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-15 08:30:00','2020-11-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-16 08:00:01','2020-11-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-17 08:00:01','2020-11-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-18 08:00:01','2020-11-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-19 09:00:01','2020-11-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-20 08:00:01','2020-11-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-21 08:00:01','2020-11-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-22 08:00:01','2020-11-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-23 09:00:01','2020-11-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-24 08:00:01','2020-11-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-25 08:00:01','2020-11-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-26 08:00:01','2020-11-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-27 08:00:01','2020-11-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-28 09:00:01','2020-11-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-29 08:00:01','2020-11-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-11-30 08:00:01','2020-11-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-01 08:00:01','2020-12-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-02 08:00:01','2020-12-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-03 08:00:01','2020-12-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-04 09:00:01','2020-12-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-05 08:00:01','2020-12-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-06 08:00:01','2020-12-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-07 08:30:00','2020-12-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-08 08:00:01','2020-12-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-09 08:00:01','2020-12-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-10 08:00:01','2020-12-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-11 10:00:01','2020-12-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-12 08:00:01','2020-12-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-13 08:00:01','2020-12-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-14 08:00:01','2020-12-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-15 08:30:00','2020-12-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-16 08:00:01','2020-12-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-17 08:00:01','2020-12-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-18 08:00:01','2020-12-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-19 09:00:01','2020-12-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-20 08:00:01','2020-12-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-21 08:00:01','2020-12-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-22 08:00:01','2020-12-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-23 09:00:01','2020-12-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-24 08:00:01','2020-12-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-25 08:00:01','2020-12-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-26 08:00:01','2020-12-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-27 08:00:01','2020-12-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-28 09:00:01','2020-12-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-29 08:00:01','2020-12-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2020-12-30 08:00:01','2020-12-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2021-01-01 08:00:01','2021-01-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2021-01-02 08:00:01','2021-01-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2021-01-03 08:00:01','2021-01-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (4, '2021-01-04 09:00:01','2021-01-04 17:00:01', 1, 1, 0);

INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-01 08:00:01','2020-10-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-02 08:00:01','2020-10-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-03 08:00:01','2020-10-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-04 09:00:01','2020-10-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-05 08:00:01','2020-10-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-06 08:00:01','2020-10-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-07 08:30:00','2020-10-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-08 08:00:01','2020-10-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-09 08:00:01','2020-10-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-10 08:00:01','2020-10-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-11 10:00:01','2020-10-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-12 08:00:01','2020-10-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-13 08:00:01','2020-10-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-14 08:00:01','2020-10-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-15 08:30:00','2020-10-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-16 08:00:01','2020-10-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-17 08:00:01','2020-10-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-18 08:00:01','2020-10-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-19 09:00:01','2020-10-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-20 08:00:01','2020-10-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-21 08:00:01','2020-10-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-22 08:00:01','2020-10-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-23 09:00:01','2020-10-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-24 08:00:01','2020-10-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-25 08:00:01','2020-10-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-26 08:00:01','2020-10-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-27 08:00:01','2020-10-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-28 09:00:01','2020-10-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-29 08:00:01','2020-10-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-30 08:00:01','2020-10-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-10-31 08:00:01','2020-10-31 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-01 08:00:01','2020-11-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-02 08:00:01','2020-11-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-03 08:00:01','2020-11-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-04 09:00:01','2020-11-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-05 08:00:01','2020-11-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-06 08:00:01','2020-11-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-07 08:30:00','2020-11-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-08 08:00:01','2020-11-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-09 08:00:01','2020-11-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-10 08:00:01','2020-11-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-11 10:00:01','2020-11-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-12 08:00:01','2020-11-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-13 08:00:01','2020-11-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-14 08:00:01','2020-11-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-15 08:30:00','2020-11-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-16 08:00:01','2020-11-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-17 08:00:01','2020-11-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-18 08:00:01','2020-11-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-19 09:00:01','2020-11-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-20 08:00:01','2020-11-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-21 08:00:01','2020-11-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-22 08:00:01','2020-11-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-23 09:00:01','2020-11-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-24 08:00:01','2020-11-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-25 08:00:01','2020-11-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-26 08:00:01','2020-11-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-27 08:00:01','2020-11-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-28 09:00:01','2020-11-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-29 08:00:01','2020-11-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-11-30 08:00:01','2020-11-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-01 08:00:01','2020-12-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-02 08:00:01','2020-12-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-03 08:00:01','2020-12-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-04 09:00:01','2020-12-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-05 08:00:01','2020-12-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-06 08:00:01','2020-12-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-07 08:30:00','2020-12-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-08 08:00:01','2020-12-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-09 08:00:01','2020-12-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-10 08:00:01','2020-12-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-11 10:00:01','2020-12-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-12 08:00:01','2020-12-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-13 08:00:01','2020-12-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-14 08:00:01','2020-12-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-15 08:30:00','2020-12-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-16 08:00:01','2020-12-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-17 08:00:01','2020-12-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-18 08:00:01','2020-12-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-19 09:00:01','2020-12-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-20 08:00:01','2020-12-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-21 08:00:01','2020-12-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-22 08:00:01','2020-12-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-23 09:00:01','2020-12-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-24 08:00:01','2020-12-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-25 08:00:01','2020-12-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-26 08:00:01','2020-12-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-27 08:00:01','2020-12-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-28 09:00:01','2020-12-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-29 08:00:01','2020-12-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2020-12-30 08:00:01','2020-12-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2021-01-01 08:00:01','2021-01-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2021-01-02 08:00:01','2021-01-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2021-01-03 08:00:01','2021-01-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (5, '2021-01-04 09:00:01','2021-01-04 17:00:01', 1, 1, 0);

INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-01 08:00:01','2020-10-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-02 08:00:01','2020-10-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-03 08:00:01','2020-10-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-04 09:00:01','2020-10-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-05 08:00:01','2020-10-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-06 08:00:01','2020-10-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-07 08:30:00','2020-10-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-08 08:00:01','2020-10-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-09 08:00:01','2020-10-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-10 08:00:01','2020-10-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-11 10:00:01','2020-10-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-12 08:00:01','2020-10-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-13 08:00:01','2020-10-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-14 08:00:01','2020-10-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-15 08:30:00','2020-10-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-16 08:00:01','2020-10-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-17 08:00:01','2020-10-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-18 08:00:01','2020-10-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-19 09:00:01','2020-10-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-20 08:00:01','2020-10-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-21 08:00:01','2020-10-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-22 08:00:01','2020-10-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-23 09:00:01','2020-10-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-24 08:00:01','2020-10-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-25 08:00:01','2020-10-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-26 08:00:01','2020-10-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-27 08:00:01','2020-10-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-28 09:00:01','2020-10-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-29 08:00:01','2020-10-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-30 08:00:01','2020-10-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-10-31 08:00:01','2020-10-31 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-01 08:00:01','2020-11-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-02 08:00:01','2020-11-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-03 08:00:01','2020-11-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-04 09:00:01','2020-11-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-05 08:00:01','2020-11-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-06 08:00:01','2020-11-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-07 08:30:00','2020-11-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-08 08:00:01','2020-11-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-09 08:00:01','2020-11-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-10 08:00:01','2020-11-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-11 10:00:01','2020-11-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-12 08:00:01','2020-11-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-13 08:00:01','2020-11-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-14 08:00:01','2020-11-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-15 08:30:00','2020-11-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-16 08:00:01','2020-11-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-17 08:00:01','2020-11-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-18 08:00:01','2020-11-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-19 09:00:01','2020-11-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-20 08:00:01','2020-11-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-21 08:00:01','2020-11-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-22 08:00:01','2020-11-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-23 09:00:01','2020-11-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-24 08:00:01','2020-11-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-25 08:00:01','2020-11-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-26 08:00:01','2020-11-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-27 08:00:01','2020-11-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-28 09:00:01','2020-11-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-29 08:00:01','2020-11-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-11-30 08:00:01','2020-11-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-01 08:00:01','2020-12-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-02 08:00:01','2020-12-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-03 08:00:01','2020-12-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-04 09:00:01','2020-12-04 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-05 08:00:01','2020-12-05 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-06 08:00:01','2020-12-06 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-07 08:30:00','2020-12-07 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-08 08:00:01','2020-12-08 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-09 08:00:01','2020-12-09 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-10 08:00:01','2020-12-10 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-11 10:00:01','2020-12-11 17:00:01', 1, 2, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-12 08:00:01','2020-12-12 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-13 08:00:01','2020-12-13 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-14 08:00:01','2020-12-14 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-15 08:30:00','2020-12-15 17:00:01', 1, 0.5, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-16 08:00:01','2020-12-16 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-17 08:00:01','2020-12-17 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-18 08:00:01','2020-12-18 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-19 09:00:01','2020-12-19 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-20 08:00:01','2020-12-20 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-21 08:00:01','2020-12-21 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-22 08:00:01','2020-12-22 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-23 09:00:01','2020-12-23 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-24 08:00:01','2020-12-24 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-25 08:00:01','2020-12-25 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-26 08:00:01','2020-12-26 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-27 08:00:01','2020-12-27 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-28 09:00:01','2020-12-28 17:00:01', 1, 1, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-29 08:00:01','2020-12-29 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2020-12-30 08:00:01','2020-12-30 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2021-01-01 08:00:01','2021-01-01 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2021-01-02 08:00:01','2021-01-02 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2021-01-03 08:00:01','2021-01-03 17:00:01', 0, 0, 0);
INSERT INTO timekeeping(userid,starttime,endtime,isdelay,timedelay,isabsolve) 
VALUES (6, '2021-01-04 09:00:01','2021-01-04 17:00:01', 1, 1, 0);

