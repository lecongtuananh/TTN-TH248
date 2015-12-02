﻿create database QUAN_LY_SIEU_THI
go
use QUAN_LY_SIEU_THI
go
create table KHACHHANG
(
	ID_KhachHang varchar(10) not null, 
	TenKhachHang nvarchar(50), 
	CMND varchar(10), 
	SDT bigint 
)
go
create table NHANVIEN
(	
	ID_NhanVien varchar(10) not null, 
	TenNhanVien nvarchar(50), 
	CMND varchar(10), 
	SDT bigint 
)
go
create table CHITIETHOADON
(	
	ID_HoaDon varchar(10) not null, 
	ID_HangHoa varchar(10) not null,
	SoLuong int
)
go
create table HANGHOA
(	
	ID_HangHoa varchar(10) not null, 
	TenHangHoa nvarchar(50), 
	SoLuong int, 
	Gia bigint 
)
go
create table HOADON
(	
	ID_HoaDon varchar(10) not null, 
	ID_NhanVien varchar(10) not null, 
	ID_KhachHang varchar(10) not null, 
	Ngay date
)
go
create table DANGNHAP
(	
	Username varchar(50) not null,
	Pass varchar(50)
)
go 
insert into NHANVIEN values
('NV001',N'Lê Thị Ngọc','174200022','0928182732'),
('NV002',N'Phan Duy Nguyên','174232022','0982716273'),
('NV003',N'Đào Văn Thanh','174200202','0982628174'),
('NV004',N'Bùi Anh Huy','174200974','029182837'),
('NV005',N'Nguyễn Minh Thái','174232321','0192837172'),
('NV006',N'Trần Văn Anh','174254333','0123737180'),
('NV007',N'Đỗ Hoài Thu','174209172','0192837172'),
('NV008',N'Tạ Đình Chiến','174203232','019283162'),
('NV009',N'Võ Văn Đệ','174289002','0182764718'),
('NV010',N'Nguyễn Duy Long','174294828','0182736271')
go
insert into KHACHHANG values
('KH001',N'Lê Thị Ngọc Anh','174200022','0928182732'),
('KH002',N'Phan Duy Nam','174232022','0982716273'),
('KH003',N'Đào Văn Thành','174200202','0982628174'),
('KH004',N'Bùi Anh Tuấn','174200974','029182837'),
('KH005',N'Nguyễn Minh Quân','174232321','0192837172'),
('KH006',N'Trần Văn Tý','174254333','0123737180'),
('KH007',N'Đỗ Hoài Thu','174209172','0192837172'),
('KH008',N'Tạ Đình Chiến','174203232','019283162'),
('KH009',N'Võ Văn Bình','174289002','0182764718'),
('KH010',N'Nguyễn Duy Quang','174294828','0182736271')
go
insert into HANGHOA values
('HH001',N'Sữa ông thọ','100','10000'),
('HH002',N'Sữa chua VINAMILK','90','5000'),
('HH003',N'Bia HALIDA','80','110000'),
('HH004',N'Bia Hà Nội','70','200000'),
('HH005',N'Dầu ăn Tường An','80','50000'),
('HH006',N'Bánh quy Hải Châu','90','20000'),
('HH007',N'Bánh bông lan','100','24000'),
('HH008',N'Bánh ngọt Chocopice','120','290000'),
('HH009',N'Xúc xích Đức Việt','110','7000'),
('HH010',N'Bánh đa nem','65','10000'),
('HH011',N'Bánh gai Tứ Trụ','100','8000'),
('HH012',N'Bánh cáy Thái Bình','110','30000'),
('HH013',N'Bánh Cu-Đơ','120','40000'),
('HH014',N'Bánh đậu xanh Rồng Vàng','120','60000'),
('HH015',N'Bánh kẹo Hải Hà','140','9200')
go
insert into HOADON values
('HD001','NV001','KH001','1/1/2015'),
('HD002','NV002','KH002','2/2/2015'),
('HD003','NV002','KH002','3/3/2015'),
('HD004','NV003','KH003','4/4/2015'),
('HD005','NV002','KH003','5/5/2015'),
('HD006','NV003','KH004','6/6/2015'),
('HD007','NV004','KH005','7/7/2015'),
('HD008','NV005','KH006','8/8/2015'),
('HD009','NV006','KH007','9/9/2015'),
('HD010','NV009','KH008','10/10/2015')
go
insert into CHITIETHOADON values
('HD001','HH001','2'),('HD001','HH002','2'),('HD001','HH003','3'),
('HD002','HH004','5'),('HD002','HH005','4'),
('HD003','HH005','6'),('HD003','HH006','7'),('HD003','HH009','1'),
('HD004','HH010','2'),('HD004','HH012','4'),('HD004','HH015','2'),
('HD005','HH002','6'),('HD005','HH007','5'),('HD005','HH009','3'),
('HD006','HH010','5'),('HD006','HH011','5'),
('HD007','HH007','4'),('HD007','HH012','2'),
('HD008','HH013','2'),('HD008','HH014','3'),
('HD009','HH011','2'),
('HD010','HH009','1'),('HD010','HH006','3')
go
insert into DANGNHAP values
('khuonghoang','hoanglaota'),
('tuananh','anhle123'),
('vokhuonglinh','linh123'),
('quangtruong','truong123'),
('anhtuan','tuan123'),
('hongquan','quan123')
go
alter table KHACHHANG add constraint PK_KH primary key(ID_KhachHang)
alter table NHANVIEN add constraint PK_NV primary key(ID_NhanVien)
alter table HANGHOA add constraint PK_HH primary key(ID_HangHoa)
alter table DANGNHAP add constraint PK_DN primary key (Username)
go
alter table CHITIETHOADON add constraint PK_CTHD primary key (ID_HoaDon, ID_HangHoa)
alter table CHITIETHOADON add	constraint PK_CTHD_HD foreign key (ID_HoaDon) references HOADON (ID_HoaDon)
alter table CHITIETHOADON add	constraint PK_CTHD_HH foreign key (ID_HangHoa) references HANGHOA (ID_HangHoa)
go
alter table HOADON add constraint PK_HD primary key (ID_HoaDon)
alter table HOADON add	constraint PK_HD_NV foreign key (ID_NhanVien) references NHANVIEN (ID_NhanVien)
alter table HOADON add	constraint PK_HD_KH foreign key (ID_KhachHang) references KHACHHANG(ID_KhachHang)
go
CREATE PROC INSERTHANGHOA
(
	@ID CHAR(10),
	@NAME NVARCHAR(50),
	@COUT INT ,
	@COST BIGINT,
	@CHECK INT OUTPUT
)
AS
BEGIN
    IF(@ID IN (SELECT HANGHOA.ID_HangHoa FROM HANGHOA)) 
	BEGIN 
		SET @CHECK=1 
		RETURN 
	END
	SET @CHECK=0
	INSERT INTO HANGHOA VALUES(@ID,@NAME,@COUT,@COST) 
END
go
CREATE PROC UPDATEHANGHOA
(
	@ID CHAR(10),
	@NAME NVARCHAR(50),
	@COUT INT ,
	@COST BIGINT,
	@CHECK INT OUTPUT
)
AS
BEGIN
	SET @CHECK=0
	UPDATE HANGHOA SET HANGHOA.SoLuong=@COUT,HANGHOA.Gia=@COST,HANGHOA.TenHangHoa=@NAME WHERE @ID=HANGHOA.ID_HangHoa
END
go
CREATE PROC DELETEHANGHOA
(
	@ID CHAR(10)
)
AS
BEGIN 
	DELETE HANGHOA WHERE HANGHOA.ID_HangHoa=@ID
	DELETE CHITIETHOADON WHERE CHITIETHOADON.ID_HangHoa=@ID
END
go
CREATE PROC INSERTKHACHHANG
(
	@ID CHAR(10),
	@NAME NVARCHAR(50),
	@CMTND NVARCHAR(20),
	@SDT CHAR(20),
	@CHECK INT OUTPUT
)
AS
BEGIN 
	IF(@ID IN (SELECT KHACHHANG.ID_KhachHang FROM KHACHHANG)) 
	BEGIN 
		SET @CHECK=1 
		RETURN 
	END
	SET @CHECK=0
	INSERT INTO KHACHHANG VALUES (@ID,@NAME,@CMTND,@SDT)
END
go
CREATE PROC UPDATEKHACHHANG
(
	@ID CHAR(10),
	@NAME NVARCHAR(50),
	@CMTND NVARCHAR(20),
	@SDT CHAR(20),
	@CHECK INT OUTPUT
)
AS
BEGIN 
	SET @CHECK=0
	UPDATE KHACHHANG SET TenKhachHang=@NAME,CMND=@CMTND,SDT=@SDT WHERE @ID=ID_KhachHang
END
go
CREATE PROC DELETEKHACHHANG
(
	@ID CHAR(10)
)
AS
BEGIN 
	DELETE KHACHHANG WHERE ID_KhachHang=@ID
	DELETE HOADON WHERE ID_KhachHang=@ID
END
go
CREATE PROC INSERTNHANVIEN
(
	@ID CHAR(10),
	@NAME NVARCHAR(50),
	@CMTND NVARCHAR(20),
	@SDT CHAR(20),
	@CHECK INT OUTPUT
)
AS
BEGIN 
	IF(@ID IN (SELECT NHANVIEN.ID_NHANVIEN FROM NHANVIEN)) 
	BEGIN 
		SET @CHECK=1 
		RETURN 
	END
	SET @CHECK=0
	INSERT INTO NHANVIEN VALUES (@ID,@NAME,@CMTND,@SDT)
END
go
CREATE PROC UPDATENHANVIEN
(
	@ID CHAR(10),
	@NAME NVARCHAR(50),
	@CMTND NVARCHAR(20),
	@SDT CHAR(20),
	@CHECK INT OUTPUT
)
AS
BEGIN 
	SET @CHECK=0
	UPDATE NHANVIEN SET TenNHANVIEN=@NAME,CMND=@CMTND,SDT=@SDT WHERE @ID=ID_NHANVIEN
END
go
CREATE PROC DELETENHANVIEN
(
	@ID CHAR(10)
)
AS
BEGIN 
	DELETE NHANVIEN WHERE ID_NHANVIEN=@ID
	DELETE HOADON WHERE ID_NHANVIEN=@ID
END
go
CREATE PROC INSERTHOADON
(
	@ID CHAR(10),
	@ID_KH CHAR(10),
	@ID_NV CHAR(10),
	@DATE DATETIME,
	@CHECK INT OUTPUT
)
AS
BEGIN
	IF(@ID IN (SELECT A.ID_HoaDon FROM HOADON AS A))
	BEGIN 
		SET @CHECK=1 
		RETURN 
	END
	IF(@ID_KH NOT IN (SELECT A.ID_KhachHang FROM KHACHHANG AS A))
	BEGIN 
		SET @CHECK=2 
		RETURN 
	END
	IF(@ID_NV NOT IN (SELECT A.ID_NHANVIEN FROM NHANVIEN AS A))
	BEGIN 
		SET @CHECK=3 
		RETURN 
	END
	IF(@ID_KH IN (SELECT A.ID_HoaDon FROM HOADON AS A ) AND @ID_NV IN (SELECT B.ID_NhanVien FROM HOADON AS B))
	BEGIN 
		SET @CHECK=4 
		RETURN 
	END
	SET @CHECK=0
	INSERT INTO HOADON VALUES (@ID,@ID_NV,@ID_KH,@DATE)
END
go
CREATE PROC UPDATEHOADON
(
	@ID CHAR(10),
	@ID_KH CHAR(10),
	@ID_NV CHAR(10),
	@DATE DATETIME,
	@CHECK INT OUTPUT
)
AS
BEGIN
	IF(@ID_KH NOT IN (SELECT A.ID_KhachHang FROM KHACHHANG AS A) )
	BEGIN 
		SET @CHECK=2 
		RETURN 
	END
	IF(@ID_NV NOT IN (SELECT A.ID_NHANVIEN FROM NHANVIEN AS A) )
	BEGIN 
		SET @CHECK=3 
		RETURN 
	END
	IF(@ID_KH IN (SELECT A.ID_HoaDon FROM HOADON AS A WHERE A.ID_HoaDon <> @ID) AND @ID_NV IN (SELECT B.ID_NhanVien FROM HOADON AS B WHERE B.ID_HoaDon <> @ID))
	BEGIN 
		SET @CHECK=4 
		RETURN 
	END
	SET @CHECK=0
	UPDATE HOADON SET ID_KhachHang=@ID_KH,ID_NhanVien=@ID_NV,Ngay=@DATE WHERE ID_HoaDon=@ID
END
go 
CREATE PROC DELETEHOADON
(
	@ID CHAR(10)
)
AS
BEGIN
	DELETE HOADON WHERE ID_HoaDon=@ID
	DELETE CHITIETHOADON WHERE ID_HoaDon=@ID
END
go
CREATE PROC INSERTCHITIETHOADON
(
	@ID CHAR(10),
	@ID_HH CHAR(10),
	@COUT INT,
	@CHECK INT OUTPUT
)
AS
BEGIN
	IF(@ID IN (SELECT A.ID_HoaDon FROM CHITIETHOADON A)AND @ID_HH IN (SELECT B.ID_HANGHOA FROM CHITIETHOADON B))
	BEGIN 
		SET @CHECK=1 
		RETURN 
	END
	IF(@ID_HH NOT IN (SELECT A.ID_HangHoa FROM HANGHOA AS A) )
	BEGIN 
		SET @CHECK=2 
		RETURN 
	END
	SET @CHECK=0 
	INSERT INTO CHITIETHOADON VALUES(@ID,@ID_HH,@COUT)
END
go
CREATE PROC UPDATECHITIETHOADON
(
	@ID CHAR(10),
	@ID_HH CHAR(10),
	@COUT INT,
	@CHECK INT OUTPUT
)
AS
BEGIN
	SET @CHECK=0
	UPDATE CHITIETHOADON SET SoLuong=@COUT WHERE ID_HangHoa=@ID_HH AND ID_HoaDon=@ID
END
go
CREATE PROC DELETECHITIETHOADON
(
	@ID CHAR(10),
	@ID_HH CHAR(10)
)
AS
BEGIN 
	DELETE CHITIETHOADON WHERE ID_HoaDon=@ID AND ID_HangHoa=@ID_HH
END
go
CREATE PROC LOGINUSER
(
	@USER NVARCHAR(50),
	@PASS NVARCHAR(50),
	@CHECK INT OUTPUT
)
AS
BEGIN
	IF(@USER IN (SELECT A.Username FROM DANGNHAP A) AND @PASS IN (SELECT B.Pass FROM DANGNHAP B))
	BEGIN 
		SET @CHECK=0 
		RETURN 
	END
	ELSE
	BEGIN 
		SET @CHECK=1 
	END
END