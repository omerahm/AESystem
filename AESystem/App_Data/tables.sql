CREATE TABLE tableStudent(
StudentID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
StudentName VARCHAR(150) NOT NULL,
studentEmail VARCHAR(150) NOT NULL UNIQUE,
studentPassword VARCHAR(20) NOT NULL,
studentAddress VARCHAR(250) NOT NULL,
studentDegree VARCHAR(50) NOT NULL,
studentProgramme VARCHAR(50) NOT NULL,
courseID INT,
studentActivity VARCHAR(50)
);

CREATE TABLE tableCourse(
teacherID INT FOREIGN KEY REFERENCES dbo.tableteacher,
courseID INT PRIMARY KEY ,
courseName VARCHAR(50),
courseCode VARCHAR(10),
courseCH INT,
courseProgrammeID INT
);

CREATE TABLE tableTeacher(
teacherID INT PRIMARY KEY,
teacherName VARCHAR(150),
teacherCNIC VARCHAR(13),
teacherAddress VARCHAR(250),
teacherPhone VARCHAR(13),
teacherEmail VARCHAR(150),
teacherPassword VARCHAR(20)
);

CREATE TABLE tableActivityMaster(
activityID INT PRIMARY KEY,
courseID INT FOREIGN KEY REFERENCES dbo.tableCourse,
activityName VARCHAR(50),
activityDate DATE,
activityType VARCHAR(50),
activityMarks INT,
);

CREATE TABLE tableQuestions(
questionID INT PRIMARY KEY,
activityQuestion VARCHAR(250),
activityID INT FOREIGN KEY REFERENCES dbo.tableActivityMaster,
);

CREATE TABLE tableOptions(
optionID INT PRIMARY KEY,
optionName VARCHAR(100),
optionType CHAR(1),
questionID INT FOREIGN KEY REFERENCES dbo.tableQuestions
);

CREATE TABLE tableAnswers(
StudentID INT FOREIGN KEY REFERENCES dbo.tableStudent,
activityID INT FOREIGN KEY REFERENCES dbo.tableActivityMaster,
QuestionID INT FOREIGN KEY REFERENCES dbo.tableQuestions,
answer VARCHAR(500)
);

CREATE TABLE tableActivityDetail(
tableActivityDetailID INT PRIMARY KEY,
activityID INT FOREIGN KEY REFERENCES dbo.tableActivityMaster,
studentID INT FOREIGN KEY REFERENCES dbo.tableStudent,
studentMarks INT
);

CREATE TABLE tableAdmin(
adminID INT PRIMARY KEY,
adminName VARCHAR(150),
adminCNIC VARCHAR(13),
adminPhone VARCHAR(13),
adminAddress VARCHAR(250),
adminEmail VARCHAR(150),
adminPassword VARCHAR(20)
);

CREATE TABLE tableProgramme(
programmeID INT NOT NULL identity (1,1) PRIMARY KEY, 
programmeName VARCHAR(50) NOT NULL, 
programmeAbbreviation VARCHAR(50) NOT NULL
);