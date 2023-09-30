create database TTT
go
use TTT
create table NAMHOC (
	Manamhoc varchar(6) not null primary key,
	Tennamhoc nvarchar(30) not null
)

create table HOCKY (
	Mahocky varchar(6) not null primary key,
	Mahocsinh varchar(6) not null,
	Mamonhoc varchar(6) not null,
	Manamhoc varchar(6) not null,
	Xeploai varchar(6) not null,
	Tenhocky nvarchar(30) not null


)


create table HOCSINH (
	Mahocsinh varchar(6) not null primary key,
	Hoten nvarchar(30) not null,
	Gioitinh BIT,
	Ngaysinh datetime,
	Diachi nvarchar(50) not null,
	Email varchar(50) not null unique,
	Dienthoaihs varchar(15) not null,
)

create table MONHOC (
	Mamonhoc varchar(6) not null primary key,
	Magiaovien varchar(6) not null,
	Mahocsinh varchar(6) not null,
	Mahocky varchar(6) not null,
	Tenmonhoc varchar(30) not null,
	Sotiet int not null,
	Heso int not null,
)


create table GIAOVIEN (
	Magiaovien varchar(6) not null primary key,
	Tengiaovien nvarchar(30) not null,
	Diachi nvarchar(50) not null,
	Dienthoaigv varchar(15) not null,

)

create table LOP (
	Malop varchar(6) not null primary key,
	Magiaoviencn varchar(6) not null,
	Tenlop nvarchar(30) not null,
	Makhoi varchar(6) not null,
	Mahocsinh varchar(6) not null,
	Siso int not null,
)
create table KHOI (
	Makhoi varchar(6) not null primary key,
	Tenkhoi nvarchar(30) not null,

)

create table DIEM (
	Maloaidiem varchar(6) not null primary key,
	Mamonhoc varchar(6) not null,
	Tenloai nvarchar(30) not null,
	Heso int not null,
)


