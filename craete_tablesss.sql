CREATE DATABASE StudentPerformanceDW;
GO
USE StudentPerformanceDW;
GO

CREATE TABLE dim_student(
	student_id INT NOT NULL PRIMARY KEY,
	name NVARCHAR(100) NOT NULL,
	gender CHAR(1)NULL,
	city NVARCHAR(50) NOT NULL
);

CREATE TABLE dim_course(
	course_id INT NOT NULL PRIMARY KEY,
	course_name NVARCHAR(100) NOT NULL,
	credits INT NOT NULL
);


CREATE TABLE dim_date(
	date_id INT NOT NULL PRIMARY KEY,
	full_date DATE NOT NULL,
	year INT NOT NULL,
	month INT NOT NULL,
	day INT NOT NULL
);



CREATE TABLE fact_table(
	fact_id INT  IDENTITY(1,1) NOT NULL PRIMARY KEY,
	student_id INT NOT NULL,
	course_id INT NOT NULL,
	date_id INT NOT NULL,
	grade INT ,
	attendance INT,
	FOREIGN KEY(student_id) REFERENCES dim_student(student_id),
	FOREIGN KEY(course_id) REFERENCES dim_course(course_id),
	FOREIGN KEY(date_id) REFERENCES dim_date(date_id)
);
select* from dim_course
select* from dim_date
select* from dim_student
select* from fact_table


