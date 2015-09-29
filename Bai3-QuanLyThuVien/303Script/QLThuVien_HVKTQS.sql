 create database QLTV_HVKTQS
 
 go
 
 create table Sach
 (
    ID_Sach varchar(10) not null,
	TenSach nvarchar(50) not null,
	TG nvarchar(50) not null,
	ID_TheLoai varchar(10) not null,
	ID_NXB varchar(10) not null,
	NamXb date null,
	Gia bigint null
 )
 create table BanDoc
 (
 ID_BanDoc varchar(10) not null,
 Ten nvarchar(50) not null,
 NgaySinh date not null,
 GT nvarchar(3) check (GT in (N'nam', N'nữ')),
 SDT bigint,
 DiaChi nvarchar(50) null
 )
 create table NXB
 (
 ID_NXB varchar(10) not null,
 TenNXB nvarchar(50) not null,
 DiaChi nvarchar(50) null,
 SDT bigint, 
 Email varchar(30) null
 )
 create table PhieuMuon
 (
 ID_PhieuMuon varchar(10) not null,
 ID_BanDoc varchar(10) not null,
 ID_Sach varchar(10) not null,
 NgayMuon date not null,
 NgayHenTra date not null,
 GhiChu nvarchar(50) null
 )
 create table TheLoai
 (
 ID_TheLoai varchar(10) not null,
 TenTL nvarchar(50)not null
 )
 
-- insert into Sach values 
--('S001',N'Ngôn ngữ Lập trình 1','TG001','TL001','NXB002','2003',20000),
--('S002',N'Ngôn ngữ Lập trình 2','TG002','TL001','NXB002','2004',25000),
--('S003',N'Kĩ thuật vi xử lí và lập trình Asembli','TG004','TL002','NXB003','2005',31000),
--('S004',N'Cấu trúc máy tính','TG003','TL002','NXB001','2004',22000),
--('S005',N'Phương Pháp nghiên cứu Khoa Học','TG005','TL004','NXB001','2009',35000),
--('S006',N'Lập trình hướng đối tượng','TG002','TL001','NXB004','2006',37000),
--('S007',N'Tư tưởng Hồ Chí Minh','TG009','TL006','NXB002','2005',32000),
--('S008',N'Tư Tưởng Hồ Chí Minh','TG008','TL006','NXB005','2007',49000),
--('S009',N'Dân tộc học và tôn giáo học','TG006','TL006','NXB002','2001',19000),
--('S010',N'Sách Toán lớp 1','TG005','TL009','NXB004','2010',24000),
--('S011',N'Sách Toán Nâng cao Lớp 1','TG005','TL009','NXB004','2011',31000),
--('S012',N'Sách Đạo Đức','TG005','TL009','NXB004','2003',12500),
--('S013',N'Kinh Tế Chính Trị','TG007','TL005','NXB003','2012',50000),
--('S014',N'Triết Học','TG008','TL010','NXB002','2011',31000),
--('S015',N'Hướng dẫn nghiên cứu Khoa Học','TG005','TL004','NXB001','2011',37000),
--('S016',N'Hỏi đáp Môn Tư tưởng Hồ Chí Minh','TG009','TL006','NXB004','2011',69000),
--('S017',N'Nâng cao chất lượng tự học','TG002','TL004','NXB002','2011',36000),
--('S018',N'Hồ Chí Minh Toàn Tập Tập 1','TG010','TL010','NXB010','2010',100000),
--('S019',N'Hồ Chí Minh toàn tập Tập 2','TG010','TL010','NXB010','2010',120000),
--('S020',N'TỪ điển Anh Việt','TG011','TL011','NXB011','2011',130000)

--insert into BanDoc Values