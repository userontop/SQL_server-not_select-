
create table NAMHOC (
	Manamhoc varchar(6) not null primary key,
	Tennamhoc nvarchar(30) not null
)

create table HOCKY (
	Mahocky varchar(6) not null primary key,
	Tenhocky nvarchar(30) not null
)

CREATE TABLE KHOILOP
(
	MaKhoiLop VARCHAR(6) NOT NULL PRIMARY KEY,
	TenKhoiLop NVARCHAR(30) NOT NULL
)


create table HOCSINH (
	Mahocsinh varchar(6) not null primary key,
	Hoten nvarchar(30) not null,
	Gioitinh BIT,
	Ngaysinh datetime,
	Diachi nvarchar(50) not null,
	Dantoc nvarchar(30) not null,
	Tongiao nvarchar(30) not null,
	Hotencha nvarchar(30) not null,
	Hotenme nvarchar(30) not null,
	Email varchar(50) not null unique,
	Dienthoaihs varchar(15) not null,
)

create table MONHOC (
	Mamonhoc varchar(6) not null primary key,
	Tenmonhoc varchar(30) not null,
	Sotiet int not null,
	Heso int not null

)

create table HOCLUC ( 
	Mahocluc varchar(6) not null primary key,
	Tenhocluc nvarchar(30) not null,
	Diemcanduoi float not null, 
	Diemcantren float not null,
	Diemkhongche float not null
)

create table HANHKIEM (
	Mahanhkiem varchar(6) not null primary key,
	Tenhanhkiem nvarchar(30) not null
)

create table GIAOVIEN (
	Magiaovien varchar(6) not null primary key,
	Tengiaovien nvarchar(30) not null,
	Diachi nvarchar(50) not null,
	Dienthoaigv varchar(15) not null,
	Mamonhoc varchar(6) not null,
)

create table LOP (
	Malop varchar(6) not null primary key,
	Tenlop nvarchar(30) not null,
	Makhoilop varchar(6) not null,
	Manamhoc varchar (6) not null,
	Siso int not null,
	Magiaovien varchar(6) not null
)

create table PHANLOP (
	Manamhoc varchar(6) not null,
	Makhoilop varchar(6) not null primary key,
	Malop varchar(6) not null,
	Mahocsinh varchar(6) not null,

)

create table LOAIDIEM (
	Maloai varchar(6) not null primary key,
	Tenloai nvarchar(30) not null,
	Heso int not null
)

create table DIEM (
	Stt int identity primary key,
	Mahocsinh varchar(6) not null,
	Mamonhoc varchar(6) not null,
	Mahocky varchar(6) not null,
	Manamhoc varchar(6) not null, 
	Malop varchar(6) not null,
	Maloai varchar(6) not null,
	Diem float not null
)

create table KQ_HOCSINH_MONHOC (
	Mahocsinh varchar(6) not null,
	Malop varchar(6) not null,
	Manamhoc varchar(6) not null, 
	Mamonhoc varchar(6) not null,
	Mahocky varchar(6) not null,
	DiemmienhTB float not null,
	Diem15phutTB float not null,
	Diem1tietTB float not null,
	Diemthi float not null,
	DiemTBHK float not null
	primary key(Mahocsinh, Malop, Manamhoc, Mamonhoc, Mahocky)
)

create table KQ_HOCSINH_CANAM (
	Mahocsinh varchar(6) not null,
	Malop varchar(6) not null,
	Manamhoc varchar(6) not null, 
	Mahocluc varchar(6) not null,
	Mahanhkiem varchar(6) not null,
	Maketqua varchar(6) not null,
	DiemTBHK1 float not null,
	DiemTBHK2 float not null,
	DiemTBCN float not null,
	primary key(Mahocsinh, Malop, Manamhoc)
)

create table KQ_LOPHOC_MONHOC (
	Malop varchar(6) not null,
	Manamhoc varchar(6) not null,
	Mamonhoc varchar(6) not null,
	Mahocky varchar(6) not null,
	Soluongdat int not null,
	Tile float not null,
	primary key(Malop, Manamhoc, Mamonhoc, Mahocky)
)

create table KQ_LOPHOC_HOCKY (
	Malop varchar(6) not null,
	Manamhoc varchar(6) not null,
	Mahocky varchar(6) not null,
	Soluongdat int not null,
	Tile float not null,
	primary key(Malop, Manamhoc, Mahocky)
)

create table KHENTHUONG (
	Makhenthuong varchar(6) not null primary key,
	Tenkhenthong nvarchar(30) not null,
)

create table KHENTHUONG_HS_KHOI(
	Makhoi varchar(6) not null,
	Makhenthuong varchar(6) not null,
	Mahocsinh varchar(6) not null,
	primary key(Makhoi, Makhenthuong, Mahocsinh)
)

create table KHENTHUONG_HS_TRUONG(
	Mahocsinh varchar(6) not null,
	Makhenthuong varchar(6) not null,
	primary key(Mahocsinh, Makhenthuong)
)

create table KHENTHUONG_CANHAN ( 
	Mahocsinh varchar(6) not null,
	Makhenthuong varchar(6) not null,
	Malop varchar(6) not null,
	Mahocky varchar(6) not null,
	Madiem varchar(6) not null,
	Mahanhkiem varchar(6) not null,
	Khenthuong bit not null,
	primary key(Mahocsinh,Makhenthuong, Malop, Mahocky, Madiem, Mahanhkiem)
)

