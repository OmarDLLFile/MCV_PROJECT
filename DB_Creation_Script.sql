use Course_Reservation_System_DB;

-- Create Building table
CREATE TABLE Building (
    building_id INT PRIMARY KEY,
    name NVARCHAR(100) NOT NULL
);

-- Create Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    name NVARCHAR(100) NOT NULL
);

-- Create Course table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Create Room table
CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    room_number NVARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    building_id INT NOT NULL,
    FOREIGN KEY (building_id) REFERENCES Building(building_id)
);

-- Create User table
CREATE TABLE [User] (
    user_id INT PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    password NVARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Create Reservation table
CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    room_id INT NOT NULL,
    course_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES [User](user_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
