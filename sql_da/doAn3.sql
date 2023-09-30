--Tao CSDL
create database QLCB
on
(
name='QLCBdt',
filename='D:\CoSoDuLieu\QLCB_data.mdf',
size=10,
maxsize=100,
filegrowth=5
)
log on
(
name='QLCBlg',
filename='D:\CoSoDuLieu\QLCB_log.ldf',
size=10,
maxsize=100,
filegrowth=5
)
go

use QLCB
--Tao bang
create table KHHANG
(
Makh char(6) primary key check (Makh like '[a-z][a-z][0-9][0-9][0-9][0-9]'),
Hoten nvarchar(25),
Ngsinh datetime,
Phai char(1) check(Phai in('F','M')) default('F'),
SoCMND int not null,
Diachi varchar(50),
Sdt int,
constraint unique_SoCMND unique (SoCMND)
)

create table CHBAY
(
Macb varchar(6) primary key check (Macb like 'ND[0-9][0-9][0-9][0-9]' or Macb like 'NN[0-9][0-9][0-9][0-9]'),
SbDi varchar(25),
SbDen varchar(25),
GioDi time, 
GioDen time
)

create table DATCHO
(
Makh varchar(6),
Macb varchar(6),
NgayDi datetime,
SttGhe varchar(6),
LoaiVe varchar(10) check(LoaiVe in ('ve thuong','thuong gia')) default('ve thuong') ,
TienVe int,
primary key(Makh,Macb,NgayDi) 
)

create table NHANVIEN
(
Manv varchar(4) primary key check (Manv like '[0-9][0-9][0-9][0-9]'),
HotenNv varchar(25),
Gioitinh varchar(1),
Email varchar(20) check(Email like '%@%' and Email not like '% %'),
Luong int,
LoaiNV bit check(LoaiNV in ('1','0')) default('0')
)

create table PHANCONG
(
Manv varchar(4),
Macb varchar(6),
Ngaydi datetime,
primary key(Manv,Macb,Ngaydi)
)

/*
--tao user32
CREATE LOGIN user32 WITH PASSWORD = '322'

create user NB for login user32

GRANT INSERT,UPDATE,DELETE ON NHANVIEN To NB

DROP LOGIN user32
*/
--Nhap du lieu chuyen bay

insert dbo.CHBAY values ('ND100', 'HaNoi', 'PhuQuoc', '08:00','17:30')
insert dbo.CHBAY values ('ND110', 'HaNoi', 'DaNang', '01:00','03:45')
insert dbo.CHBAY values ('ND120', 'HCM', 'HaNoi', '05:00','16:30')
insert dbo.CHBAY values ('NN100', 'ThaiLan', 'HaNoi', '08:00','17:45')
insert dbo.CHBAY values ('NN110', 'BacHan', 'HaNoi', '17:00','01:00')

--Nhap du lieu Dat cho

insert dbo.DATCHO values ('0009', '11/01/2000', 100)






