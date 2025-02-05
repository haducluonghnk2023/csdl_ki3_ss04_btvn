use employee_management;
create table department (
    department_id int primary key auto_increment,
    department_name varchar(50) not null unique,
    address varchar(50) not null
);

create table employee (
    employee_id char(4) primary key,
    employee_name varchar(50) not null,
    date_of_birth date,
    sex bit not null,
    base_salary int not null check (base_salary > 0),
    phone_number char(11) not null unique,
    department_id int not null,
    foreign key (department_id) references department(department_id)
);

INSERT INTO DEPARTMENT (department_name, address) VALUES
('Kinh doanh', 'Hà Nội'),
('Marketing', 'Hồ Chí Minh'),
('Nhân sự', 'Đà Nẵng'),
('Công nghệ', 'Hải Phòng'),
('Kế toán', 'Cần Thơ');

INSERT INTO EMPLOYEE (employee_id, employee_name, date_of_birth, sex, base_salary, phone_number, department_id) VALUES
('NV01', 'Nguyễn Văn A', '1990-05-15', 1, 10000000, '0912345678', 1),
('NV02', 'Trần Thị B', '1992-08-20', 0, 12000000, '0987654321', 2),
('NV03', 'Lê Văn C', '1988-11-10', 1, 15000000, '0901234567', 3),
('NV04', 'Phạm Thị D', '1995-03-25', 0, 11000000, '0978901234', 1),
('NV05', 'Hoàng Văn E', '1991-07-05', 1, 13000000, '0934567890', 4),
('NV06', 'Vũ Thị F', '1993-12-30', 0, 14000000, '0965432109', 2),
('NV07', 'Đỗ Văn G', '1989-06-15', 1, 16000000, '0923456789', 3),
('NV08', 'Bùi Thị H', '1994-09-20', 0, 10500000, '0998765432', 5),
('NV09', 'Cao Văn I', '1987-04-10', 1, 12500000, '0945678901', 4),
('NV10', 'Ngô Thị K', '1996-01-25', 0, 11500000, '0956789012', 1);
alter table employee
drop foreign key employee_idfk_1;

delete from department where department_id = 1;

update department 
set department_name = 'Phong Nhan su moi'
where department_id = 2;

select * from department;
select * from employee;