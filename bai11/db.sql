-- Câu lệnh tạo database
-- create database + tên db

-- create database if not exists wnetflix;

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('toidepko1','123456','magic@gmail.com','11111111');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('toidepko2','123456','magic@gmail.com','11111111');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('toidepko3','123456','magic@gmail.com','11111111');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('toidepko4','123456','magic@gmail.com','11111111');
INSERT INTO `nguoi_dung`(`ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai`) VALUES ('toidepko5','123456','magic@gmail.com','11111111');






-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Piranha II: The Spawning','100','2026','ko hay','');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('The Terminator ','100','2026','ko hay','');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Aliens ','100','2026','ko hay','');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('The Abyss','100','2026','ko hay','');
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Terminator 2: Judgment Day','100','2026','ko hay','');




-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('1','1');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('2','1');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('3','2');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('4','5');
INSERT INTO `phim_dien_vien`(`phim_id`, `dien_vien_id`) VALUES ('5','4');

SELECT * FROM `phim_dien_vien`
JOIN phim p
on p.id = phim_dien_vien.phim_id
JOIN dien_vien dv
on dv.id = phim_dien_vien.dien_vien_id
WHERE p.id = 1
LIMIT 0, 25;




-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('1','1');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('2','1');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('1','2');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('1','1');
INSERT INTO `phim_the_loai`(`phim_id`, `the_loai_id`) VALUES ('2','1');

SELECT * FROM `phim_the_loai`
JOIN phim p
on p.id = phim_the_loai.phim_id
JOIN the_loai tl
on tl.id = phim_the_loai.the_loai_id
WHERE p.id = 1



-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50)
);
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Christopher Nolan');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Martin Scorsese');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('James Cameron');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Quentin Tarantino');
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES ('Francis Ford Coppola');



-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('makima');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('the boy');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Cameron');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Tarantino');
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES ('Coppola');





-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('tình cảm ngược tâm');
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('hài');
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('ma');
INSERT INTO `the_loai`(`ten_the_loai`) VALUES ('tinh cảm');





-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('Việt Nam');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('ấn độ');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('trung quốc');
INSERT INTO `quoc_gia`(`ten_quoc_gia`) VALUES ('mẽo');



SELECT * FROM `phim_the_loai`