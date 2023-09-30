create database QLSV1_buoi2
on(
name = 'SQLBUOI2',
filename = 'D:\Query_sql\SQLBUOI2.mdf',
size = 10,
maxsize = 100,
filegrowth = 5
)
log on(
name = 'SQLBUOI2log',
filename = 'D:\Query_sql\SQLBUOI2log.log',
size = 10,
maxsize = 100,
filegrowth = 5
)

use QLSV1_buoi2


create table Svien(
Ten varchar(10) not null,
Masv varchar(10) check (Masv like '[A-Z][0-9][0-9][0-9]'),
Nam tinyint,
Khoa varchar(10) not null default('CNTT'),
primary key(Masv)
)

create table Dkien(
Mamh varchar(10) check (Mamh like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]'),
Mamh_Truoc varchar(10) check (Mamh_Truoc like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]'),
primary key(Mamh, Mamh_Truoc)
)

create table KetQua(
Masv varchar(10) check (Masv like '[A-Z][0-9][0-9][0-9]'),
Mahp int,
Diem decimal(3,1) check (Diem <= 10 and Diem >= 0),
primary key(Masv, Mahp)
)

create table Mhoc(
Ten_Mh varchar(100) not null,
Mamh varchar(10) check (Mamh like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]'),
SoTinhChi tinyint check (SoTinhChi >= 1 and SoTinhChi <-10),
Khoa varchar(10) not null default('CNTT'),
primary key(Mamh)
)

create table HocPhan(
Mahp int check(Mahp > 0),
Mamh varchar(10) check (Mamh like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]'),
HocKy tinyint,
NamHoc varchar(10),
Gv varchar(10),
primary key(Mahp)
)

alter table KetQua add constraint fk_KetQua_Svien
foreign key(Masv) references Svien(Masv)

alter table KetQua add constraint fk_KetQua_HocPhan
foreign key(Mahp) references HocPhan(Mahp)

alter table Dkien add constraint fk_Dkien_Mhoc
foreign key(Mamh) references Mhoc(Mamh)

alter table Dkien add constraint fk_Dkien_Mhoc2
foreign key(Mamh_Truoc) references Mhoc(Mamh)

alter table HocPhan add constraint fk_HocPhan_Mhoc
foreign key(Mamh) references Mhoc(Mamh)


insert into Svien values ('Nguyen Hon', 'A001', 1, 'SP')
insert into SVien (Ten, Masv, Nam) values ('Le Chau Ba', 'B010',2)
select * from Svien

insert into Dkien (Mamh, Mamh_Truoc) values ('COS312','COS301')
insert into Dkien (Mamh, Mamh_Truoc) values ('COS312','COS111')
insert into Dkien (Mamh, Mamh_Truoc) values ('ENG102','ENG101')