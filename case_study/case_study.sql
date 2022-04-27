create database if not exists case_study;
use case_study;

create table vi_tri(
ma_vi_tri int auto_increment primary key ,
ten_vi_tri varchar(50)
);
create table trinh_do(
ma_trinh_do int auto_increment primary key,
ten_trinh_do varchar(50) 
);
create table bo_phan(
ma_bo_phan int auto_increment primary key,
ten_bo_phan varchar(50)
);
create table nhan_vien(
ma_nhan_vien int auto_increment primary key,
ho_ten varchar(50),
ngay_sinh date,
so_cmnd varchar(50),
luong double,
so_dien_thoai varchar(50),
email varchar(50),
dia_chi varchar(50),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key(ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key(ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key(ma_bo_phan) references bo_phan(ma_bo_phan)
);
create table loai_khach(
ma_loai_khach int auto_increment primary key,
ten_loai_khach varchar(50)
);
create table khach_hang(
ma_khach_hang int auto_increment primary key,
ma_loai_khach int,
ho_ten varchar(50),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(50),
so_dien_thoai varchar(50),
email varchar(50),
dia_chi varchar(50),
foreign key(ma_loai_khach) references loai_khach(ma_loai_khach)
);
create table kieu_thue(
ma_kieu_thue int auto_increment primary key,
ten_kieu_thue varchar(50)
);
create table loai_dich_vu(
ma_loai_dich_vu int auto_increment primary key,
ten_loai_dich_vu varchar(50) 
);
create table dich_vu(
ma_dich_vu int primary key auto_increment,
ten_dich_vu varchar(50),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar(50),
mo_ta_tien_nghi_khac varchar(50),
dien_tich_ho_boi double,
so_tang int,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue) ,
foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu) 
);
create table hop_dong(
ma_hop_dong int primary key auto_increment,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien) ,
foreign key(ma_khach_hang) references khach_hang(ma_khach_hang) ,
foreign key(ma_dich_vu) references dich_vu(ma_dich_vu) 
);
create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key auto_increment,
ten_dich_vu_di_kem varchar(50),
gia double,
don_vi varchar(10),
trang_thai varchar(50)
);
create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key auto_increment,
so_luong int,
ma_dich_vu_di_kem int,
ma_hop_dong int,

foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem) ,
foreign key(ma_hop_dong) references hop_dong(ma_hop_dong)
);
-- 1.	Thêm mới thông tin cho tất cả các bảng có trong CSDL để có thể thoả mãn các yêu cầu bên dưới.--
insert into vi_tri(ten_vi_tri) values('quan ly'),('nhan vien');
insert into trinh_do(ten_trinh_do) values('trung cap'),('cao dang'),('dai hoc'),('sau dai hoc');
insert into bo_phan(ten_bo_phan) values('sale - marketing'),('hanh chinh'),('phuc vu'),('quan ly');
insert into nhan_vien (ho_ten ,ngay_sinh,so_cmnd ,luong ,so_dien_thoai ,email ,dia_chi ,ma_vi_tri ,ma_bo_phan ,ma_trinh_do) values
('Nguyen Van An','1970-11-07',456231786,10000000,0901234121,'annguyen@gmail.com','295 Nguyễn Tất Thành, Đà Nẵng',1,3,1),
('Lê Văn Bình','1997-04-09',654231234,7000000,0934212314,'binhlv@gmail.com','222 Yên Bái, Đà Nẵng',1,2,2),
('Hồ Thị Yến','1995-12-12',999231723,14000000,0412352315,'thiyen@gmail.com','K234/11 Điện Biên Phủ, Gia Lai',1,3,2),
('Võ Công Toản','1980-04-04',123231365,17000000	,0374443232,'toan0404@gmail.com','77 Hoàng Diệu, Quảng Trị',1,4,4),
('Nguyễn Bỉnh Phát','1999-12-09',454363232,6000000,0902341231,'phatphat@gmail.com' ,'43 Yên Bái, Đà Nẵng',2,1,1),
('Khúc Nguyễn An Nghi','2000-11-08',964542311,7000000,0978653213,'annghi20@gmail.com','294 Nguyễn Tất Thành, Đà Nẵng',2,2,3),
('Nguyễn Hữu Hà','1993-01-01',534323231	,8000000, 0941234553 ,'nhh0101@gmail.com','	4 Nguyễn Chí Thanh, Huế',2,3,2),
('Nguyễn Hà Đông','1989-09-03',	234414123,9000000,0642123111,'donghanguyen@gmail.com','111 Hùng Vương, Hà Nội',2,4,4),
('Tòng Hoang','1982-09-03',	256781231,6000000,0245144444,'hoangtong@gmail.com','213 Hàm Nghi, Đà Nẵng',	2,4,4),
('Nguyễn Công Đạo','1994-01-08',755434343,8000000,0988767111,'nguyencongdao12@gmail.com','6 Hoà Khánh, Đồng Nai',2,3,2);
insert into loai_khach(ten_loai_khach) values ('dinamond'),('platinium'),('gold'),('silver'),('member');
insert into khach_hang(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) 
values('Nguyễn Thị Hào',	'1970-11-07',	0	,643431213	,0945423362	,'thihao07@gmail.com',	'23 Nguyễn Hoàng, Đà Nẵng',	5),
('Phạm Xuân Diệu',	'1992-08-08',	1	,865342123,	0954333333	,'xuandieu92@gmail.com	','K77/22 Thái Phiên, Quảng Trị',	3),
('Trương Đình Nghệ',	'1990-02-27',	1,	488645199,	0373213122	,'nghenhan2702@gmail.com',	'K323/12 Ông Ích Khiêm, Vinh',	1),
('Dương Văn Quan',	'1981-07-08',	1	,543432111	,0490039241,'	duongquan@gmail.com',	'K453/12 Lê Lợi, Đà Nẵng',	1),
('Hoàng Trần Nhi Nhi',	'1995-12-09',	0,	795453345,	0312345678,	'nhinhi123@gmail.com',	'224 Lý Thái Tổ, Gia Lai',	4),
('Tôn Nữ Mộc Châu',	'2005-12-06',	0,	732434215,	0988888844	,'tonnuchau@gmail.com','	37 Yên Thế, Đà Nẵng',	4),
('Nguyễn Mỹ Kim','	1984-04-08',	0,	856453123,	0912345698	,'kimcuong84@gmail.com',	'K123/45 Lê Lợi, Hồ Chí Minh',	1),
('Nguyễn Thị Hào',	'1999-04-08',	0	,965656433,	0763212345,'	haohao99@gmail.com	','55 Nguyễn Văn Linh, Kon Tum	',3),
('Trần Đại Danh',	'1994-07-01',	1	,432341235,	0643343433,'	danhhai99@gmail.com',	'24 Lý Thường Kiệt, Quảng Ngãi	',1),
('Nguyễn Tâm Đắc',	'1989-07-01',	1,	344343432	,0987654321	,'dactam@gmail.com',	'22 Ngô Quyền, Đà Nẵng',	2);
insert into kieu_thue(ten_kieu_thue) values('year'),('month'),('day'),('hour');
insert into loai_dich_vu(ten_loai_dich_vu) values('villa'),('house'),('room');
insert into dich_vu(ten_dich_vu ,dien_tich ,chi_phi_thue ,so_nguoi_toi_da ,tieu_chuan_phong ,mo_ta_tien_nghi_khac ,dien_tich_ho_boi ,so_tang ,ma_kieu_thue ,ma_loai_dich_vu ) 
values('Villa Beach Front',	25000,	10000000,	10,'	vip	' ,'Có hồ bơ',	500,	4	,3	,1),
('House Princess 01',	14000,	5000000,	7,	'vip','	Có thêm bếp nướng',	null,	3	,2	,2),
('Room Twin 01',	5000,	1000000,	2,	'normal','	Có tivi',	null,null,	4,	3),
('Villa No Beach Front',	22000,	9000000,	8,'	normal','	Có hồ bơi',	300,	3,	3	,1),
('House Princess 02',	10000,	4000000,	5	,'normal','	Có thêm bếp nướng',	null,	2	,3,	2),
('Room Twin 02',	3000	,900000	,2	,'normal','	Có tivi',	null	,null,	4,	3);

insert into hop_dong values
(1,"2020-12-08","2020-12-08",0,3,1,3),
(2,"2020-07-14","2020-07-21",200000,7,3,1),
(3,"2021-03-15","2021-03-17",50000,3,4,2),
(4,"2021-01-14","2021-01-18",100000,7,5,5),
(5,"2021-07-14","2021-07-15",0,7,2,6),
(6,"2021-06-01","2021-06-03",0,7,7,6),
(7,"2021-09-02","2021-09-05",100000,7,4,4),
(8,"2021-06-17","2021-06-18",150000,3,4,1),
(9,"2020-11-19","2020-11-19",0,3,4,3),
(10,"2021-04-12","2021-04-14",0,10,3,5),
(11,"2021-04-25","2021-04-25",0,2,2,1),
(12,"2021-05-25","2021-05-27",0,7,10,1),
(13,"2021-01-28","2021-05-20",1000000,5,9,4);

insert into dich_vu_di_kem values
(1,"Karaoke",10000,"giờ","tiện nghi,hiện tại"),
(2,"Thuê xe máy",10000,"chiếc","hỏng 1 xe"),
(3,"Thuê xe đạp",20000,"chiếc","tốt"),
(4,"Buffet buổi sáng",15000,"suất","đầy đủ đồ ăn, tráng miệng"),
(5,"Buffet buổi trưa",90000,"suất","đầy đủ đồ ăn, tráng miệng"),
(6,"Buffet buổi tối",16000,"suất","đầy đủ đồ ăn, tráng miệng"),
(7,"massage",500000,"giờ","có đào ");

insert into hop_dong_chi_tiet values 
(1,5,4,2),
(2,8,1,2),
(3,15,6,4),
(4,1,1,3),
(5,11,2,3),
(6,1,6,1),
(7,2,2,1),
(8,2,2,12),
(9,3,2,5),
(10,4,6,6),
(11,3,1,8),
(12,9,4,10),
(13,14,6,9),
(14,2,1,11),
(15,1,2,7),
(16,15,6,13),
(17,1,7,12);

-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.--

select nv.ma_nhan_vien ,nv.ho_ten ,nv.ngay_sinh ,nv.so_cmnd ,nv.luong ,nv.so_dien_thoai ,nv.email ,nv.dia_chi ,vt.ten_vi_tri ,td.ten_trinh_do ,bp.ten_bo_phan from
nhan_vien as nv join vi_tri as vt on nv.ma_vi_tri=vt.ma_vi_tri join trinh_do as td on nv.ma_trinh_do=td.ma_trinh_do join bo_phan as bp on nv.ma_bo_phan=bp.ma_bo_phan
where (nv.ho_ten like 'H%'or nv.ho_ten like 'T%' or nv.ho_ten like 'K%') and char_length(nv.ho_ten)<=15;
-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.--
select kh.ma_khach_hang,kh.ho_ten ,kh.ngay_sinh ,kh.gioi_tinh ,kh.so_cmnd ,kh.so_dien_thoai ,kh.email ,kh.dia_chi ,lk.ten_loai_khach from khach_hang kh join loai_khach lk on kh.ma_loai_khach=lk.ma_loai_khach
where (year(kh.ngay_sinh) between 1972 and 2004) and kh.dia_chi like '%Đà Nẵng' or kh.dia_chi like '%Quảng Trị';
-- 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select kh.ma_khach_hang,kh.ho_ten, count(kh.ma_khach_hang) as so_lan,lk.ten_loai_khach as thanh_vien from khach_hang kh join hop_dong hd on kh.ma_khach_hang=hd.ma_khach_hang join loai_khach lk on 
kh.ma_loai_khach=lk.ma_loai_khach where lk.ten_loai_khach ='dinamond'  group by kh.ma_khach_hang order by so_lan;

-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng  và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select kh.ma_khach_hang ,kh.ho_ten ,lk.ten_loai_khach ,hd.ma_hop_dong ,dv.ten_dich_vu , hd.ngay_lam_hop_dong , hd.ngay_ket_thuc , dv.chi_phi_thue+hdct.so_luong*dvdk.gia as tong_tien
 from khach_hang kh left join loai_khach lk on kh.ma_loai_khach=lk.ma_loai_khach left join hop_dong hd on kh.ma_khach_hang=hd.ma_khach_hang left join dich_vu dv on hd.ma_dich_vu=dv.ma_dich_vu
 left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem= dvdk.ma_dich_vu_di_kem group by kh.ma_khach_hang;
 -- 6. 
-- 20. Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống
select ma_nhan_vien as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi from nhan_vien 
union all
select ma_khach_hang as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi from khach_hang ;



