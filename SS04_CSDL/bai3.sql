create table customer2(
	customer_id  int primary key auto_increment,
    customer_name varchar(50) not null,
    birthday date not null,
    gender bit not null,
    job varchar(50),
    phone char(11) not null unique,
    email varchar(100) not null unique,
    city varchar(255) not null
);

INSERT INTO customer2 (customer_name, birthday, gender, job, phone, email, city) VALUES
('Hoàng Văn Đức', '1990-10-05', 1, 'Nhân viên kinh doanh', '01234567921', 'hoangvanduc@example.com', 'Hà Nội'),
('Bùi Thị Mai', '1993-04-18', 0, 'Nhân viên hành chính', '01234567922', 'buithimai@example.com', 'Hồ Chí Minh'),
('Phạm Quốc Anh', '1985-07-25', 1, 'Giám đốc', '01234567923', 'phamquocanh@example.com', 'Đà Nẵng'),
('Đặng Thu Trang', '1992-11-03', 0, 'Nhân viên ngân hàng', '01234567924', 'dangthutrang@example.com', 'Hải Phòng'),
('Ngô Minh Hoàng', '1989-06-22', 1, 'Kỹ sư xây dựng', '01234567925', 'ngominhhoang@example.com', 'Bình Dương'),
('Trịnh Văn Lâm', '1991-08-12', 1, 'Luật sư', '01234567926', 'trinhvanlam@example.com', 'Cần Thơ'),
('Dương Thị Hạnh', '1995-12-30', 0, 'Bác sĩ', '01234567927', 'duongthihanh@example.com', 'Quảng Ninh'),
('Lê Hoàng Nam', '1987-03-09', 1, 'Lập trình viên', '01234567928', 'lehoangnam@example.com', 'Hà Nội'),
('Nguyễn Văn Hảo', '1986-05-15', 1, 'Kế toán viên', '01234567929', 'nguyenvanhao@example.com', 'Hồ Chí Minh'),
('Trần Thu Hằng', '1994-08-08', 0, 'Chuyên viên nhân sự', '01234567930', 'tranthuhang@example.com', 'Đà Nẵng');

update  customer2 set customer_name = 'Nguyễn Quang Nhật', birthday = '2004-01-11' where customer_id = 1;
delete from customer2 where month(birthday) = 8;
select customer_id, customer_name, birthday, case when gender = 1 then 'Nam' ELSE 'Nữ' end as gender,phone from customer2 where birthday > '2000-01-01';
select customer_id, customer_name,birthday,gender, job,phone,email,city from customer2 where job is null;