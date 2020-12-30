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
values('2','Employee1','Employee1@gmail.com','034 111000111','1','1','3','300000','400000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('1','Administrator','Administrator@gmail.com','034 111000222','1','1',null,'500000','600000','2020-10-10','2021-10-10');
insert into userdetail(originid,fullname,email,phone,departmentid,manager01id,manager02id, daysalaryamount,daybonusamount,effectivedate,expirationdate) 
values('3','Employee2','Employee2@gmail.com','034 111000333','2','1','2','400000','400000','2020-10-10','2021-10-10');

INSERT INTO user_project(userid,projectid) VALUES (1,1);
INSERT INTO user_project(userid,projectid) VALUES (1,2);
INSERT INTO user_project(userid,projectid) VALUES (2,2);
INSERT INTO user_project(userid,projectid) VALUES (2,3);
INSERT INTO user_project(userid,projectid) VALUES (3,3);
INSERT INTO user_project(userid,projectid) VALUES (3,1);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-10',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','APPROVAL', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-10',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-10',8, 'Nghi om','REQUEST', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-14',4, 'Viec ca nhan','REJECT', 2);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',3, 'Viec ca nhan','REQUEST', 2);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-10',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-10',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-10',8, 'Nghi om','REQUEST', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-14',4, 'Viec ca nhan','APPROVAL', 1);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',3, 'Viec ca nhan','REJECT', 1);

INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-10',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-11',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-15',4, 'Di choi','REJECT', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-10-18',5, 'Di choi','APPROVAL', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-11-10',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-10',8, 'Nghi om','REQUEST', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-14',4, 'Viec ca nhan','REJECT', 3);
INSERT INTO leaveday(dateleave,timesleave,reason,status,userid) 
VALUES ('2020-12-18',3, 'Viec ca nhan','REQUEST', 3);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-10',2, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-11',2, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project CSS','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project CSS','APPROVAL', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',2, 'OT Project DYN','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project CSS','REQUEST', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-14',4, 'OT Project DYN','REJECT', 2);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',3, 'OT Project CSS','REQUEST', 2);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-10',1, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-11',1, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project DYN','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',5, 'OT Project MSW','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',2, 'OT Project DYN','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project DYN','REQUEST', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-14',4, 'OT Project MSW','APPROVAL', 1);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',3, 'OT Project DYN','REJECT', 1);

INSERT INTO ot(dateot,timesot,reason,status,userid) 
VALUES ('2020-10-10',1, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-11',1, 'OT Project CSS','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-15',4, 'OT Project MSW','REJECT', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-10-18',1, 'OT Project CSS','APPROVAL', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-11-10',2, 'OT Project MSW','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-10',1, 'OT Project CSS','REQUEST', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-14',4, 'OT Project MSW','REJECT', 3);
INSERT INTO ot(dateot,timesot,reason,status,userid)
VALUES ('2020-12-18',3, 'OT Project CSS','REQUEST', 3);

INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-10-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (2,'2020-11-01','Employee01',10000,10000,10000,2000000);

INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-10-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);
INSERT INTO salarysummary(userid,month,fullname,sumotamount,sumleavedayamount,sumdelayamount,sumsalary)
VALUES (1,'2020-11-01','Administrator',10000,10000,10000,2000000);

INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-01','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-02','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-03','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-04','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-05','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-06','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-07','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-08','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-09','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-10','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-11','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-12','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-13','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-14','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-15','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-16','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-17','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-18','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-10-19','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-01','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-02','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-03','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-04','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-05','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-06','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-07','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-08','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-09','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-10','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-11','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-12','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-13','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-14','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-15','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-16','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-17','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-18','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (1,'2020-11-19','Administrator',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);

INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-01','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-02','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-03','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-04','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-05','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-06','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-07','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-08','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-09','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-10','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-11','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-12','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-13','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-14','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-15','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-16','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-17','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-18','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-10-19','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-01','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-02','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-03','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-04','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-05','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-06','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-07','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-08','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-09','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-10','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-11','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-12','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-13','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-14','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-15','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-16','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-17','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-18','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);
INSERT INTO salary(userid,workday,fullname,timesot,statusot,otamount,timesleave,statusleave,leavedayamount,isdelay,delayamount,daysalaryamount,daybonusamount,daysalary)
VALUES (2,'2020-11-19','Employee01',1,"APPROVAL",10000,1,"APPROVAL",10000,1,5000,20000,20000,30000000);