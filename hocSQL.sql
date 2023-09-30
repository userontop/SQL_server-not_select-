--create database hocSQL
--de chay lenh dung F5 hoac execute
create database hocSQL
go
drop database hocSQL
go
use hocSQL
go
--tao bang

create table GiaoVien(
	MaGV nvarchar(10),
	Name nvarchar(100),
	Sex bit
)
go
create table HocSinh(
	MaHS nvarchar(10),
	Name nvarchar(100),
	Sex bit
)
go
--xoa bang: drop -> xoa
--drop table GiaoVien

--xoa du lieu trong bang: truncate -> xoa du lieu
--truncate table HocSinh

--sua bang: alter-> sua

alter table GiaoVien add NgaySinh date
alter table GiaoVien add Tuoi int
alter table HocSinh add NgaySinh date
alter table HocSinh add Tuoi int
go

--* cac kieu du lieu
/* 
	int: kiểu số nguyên (2 tỷ), tập hợp N.
	float: kiểu số thực, tập hợp R.
	char: kiểu ký tự. Bộ nhớ cấp phát cứng: vd: char(10)-> 10 ô nhớ không đc đụng vào
	varchar: kiểu ký tự. Bộ nhớ được cấp phát động. varchar(10)-> 10 ô nhớ này chỉ được lấy khi có dữ liệu ở trong.
	nchar: kiểu ký tự có thể lưu tiếng viêt.
	nvarchar: kiểu ký tự cấp phát động có lưu tiếng việt.
	date: lưu trữ ngày tháng năm giờ.
	time: lưu trữ giờ phút giây.
	bit: lưu giá trị 0 và 1.
	text: lưu văn bản lớn.
	ntext: lưu văn bản lớn lưu tiếng việt.
	

	VD: MaSV lưu 10 ô nhớ; MaSV = '1234567890Tam' -> kết quả lưu trữ sẽ là
	1. '1234567890' Đ
	2. '4567890Tam'


	*/

	-- Thêm dữ liệu:
	/*
		kiểu số: ghi bình thường
		kiểu ký tự hoặc ngày ghi trong ngoặc nháy đơn''
		nếu là unicode thì cần có N theo trước cặp nháy N'' | ngày (yy mm dd)
		cấu trúc của ngày sinh là yyyymmdd
	

	*/

	INSERT DBO.HOCSINH(MAHS,NAME,SEX,NGAYSINH,TUOI)
	VALUES (N'DTH216136',N'TÔN THIỆN TÂM', 1,'030116', 19)

	drop table HocSinh

	create table test(
	Maso int,
	Ten nvarchar(100),
	Ngaysinh date,
	Nam bit,
	Diachi char(20),
	Tienluong float
	)
	go

	--vd:
	INSERT dbo.test 
	Values(123, N'Tôn Thiện Tâm', '030116', 1, 'An Giang', 3)
	go 10
	--chay 10 lan
	INSERT dbo.test
	Values(143, N'Tôn Thiện Tâm', '030116', 0, 'An Giang', 1)
	INSERT dbo.test
	Values(124, N'Tôn Thiện Tâm', '030116', 1, 'An Giang', 2)
	--xoa du lieu
	truncate table test
	--xoa du lieu co dieu kien where -> voi dieu kien
	delete dbo.test where Maso = 123 and Nam = 1
	--Các toán tử < > >= <= and or =
	--update dữ liệu 
	
	--update du lieu toan bo bang voi truong update
	update dbo.test set Tienluong = 3
	--update du lieu voi dieu kien
	update dbo.test set Tienluong = 1000 where Nam = 0
	--update du lieu toan bo bang voi nhieu truong update 
	update dbo.test set Maso = 123, Tienluong = 10 
	---------------------------------------------------




	SELECT TOP (1000) [Maso]
      ,[Ten]
      ,[Ngaysinh]
      ,[Nam]
      ,[Diachi]
      ,[Tienluong]
	FROM [hocSQL].[dbo].[test]

	SELECT TOP (1000) [MaHS]
      ,[Name]
      ,[Sex]
      ,[NgaySinh]
      ,[Tuoi]
	  FROM [hocSQL].[dbo].[HocSinh]
