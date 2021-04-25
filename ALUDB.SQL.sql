CREATE DATABASE ALU_DATABASE;

create table ALU_DATABASE.manager(Manager_ID int PRIMARY KEY, Employee_Name varchar(100), Gender varchar(150),  Employee_ssn int);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(101, "John Taiwo","M", 008);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(202, "David Masupa","M", 009);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(303, "Robert Wekesa","M", 010);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(403, "Musa Liberia","M", 011);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(505, "Jacob anser","M", 012);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(111, "John Taiwo","M", 008);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(444, "David Masupa","M", 009);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(555, "Robert Wekesa","M", 010);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(666, "Musa Liberia","M", 011);
insert into ALU_DATABASE.manager(manager_ID, EMployee_name, Gender, Employee_ssn) values(777, "Jacob anser","M", 012);

select * from ALU_DATABASE.manager;

create table ALU_DATABASE.Degree(DegreeID int PRIMARY KEY, DegreeName varchar(100), Level_ int, Grade int );
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(55097, "IBT", 4 , 008);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(44568, "CS", 5 , 009);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(43218, "IT", 5 , 010);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(9875, "CR", 6 , 011);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(6533, "TY", 6 , 012);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(595097, "IBT", 4 , 008);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(494568, "CS", 5 , 009);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(493218, "IT", 5 , 010);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(99875, "CR", 6 , 011);
insert into ALU_DATABASE.Degree(DegreeID, DegreeName, Level_, Grade) values(69533, "TY", 6 , 012);
select * from ALU_DATABASE.Degree;




create table ALU_DATABASE.Program(ProgramID int PRIMARY KEY, Program_Name varchar(100), No_of_courses int,  FOREIGN KEY (DegreeID) REFERENCES Degree(DegreeID));
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(101, "IBT", 4 , 55097);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(202, "CS", 5 , 44568);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(303, "IT", 5 , 43218);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(403, "CR", 6 ,9875);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(505, "TY", 6 ,6533);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(1801, "IBT", 4 ,595097);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(2902, "CS", 5 ,494568);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(3093, "IT", 5 ,493218);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(4093, "CR", 6 ,99875);
insert into ALU_DATABASE.Program(ProgramID, Program_Name, No_of_courses, DegreeID) values(5095, "TY", 6 ,69533);
select * from ALU_DATABASE.Program;






create table ALU_DATABASE.Facilitator(Facilitator_ID int PRIMARY KEY, 
Facilitator_Name varchar(100), Facilitator_email varchar(100),
Gender varchar(150),  FOREIGN KEY (ProgramID) REFERENCES program(ProgramID), SSN int, Salary int);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, programID, SSN, Salary) values(101, "John Taiwo","tai@gmail.com", "M" ,101, 008, 18000 );
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(202, "David Masupa","Mmm@gmail.com", "M" ,202, 008, 17000);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(303, "Robert Wekesa","rw@gmail.com", "M" ,303, 008, 18000);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(403, "Musa Liberia","ml@gmail.com", "M" ,403, 008, 19000);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(505, "Jacob anser","ja@gmail.com", "M" ,505, 008, 18000);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(1801, "John Taiwo","ja@gmail.com", "M" ,1801, 008, 18900);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(444, "David Masupa","ja@gmail.com", "M" ,2902, 008, 18800);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(555, "Robert Wekesa","ja@gmail.com", "M" ,3093, 008, 189000);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(666, "Musa Liberia","ja@gmail.com", "M" ,4093, 008, 17000);
insert into ALU_DATABASE.Facilitator(Facilitator_ID, Facilitator_Name, Facilitator_email, Gender, ProgramID, SSN, Salary) values(777, "Jacob anser","ja@gmail.com", "M" ,5095, 008, 18000);

select * from ALU_DATABASE.Facilitator;


create table ALU_DATABASE.Student(StudentID int PRIMARY KEY, 
Student_Name varchar(100), Student_email varchar(100),Gender varchar(150), Nationality varchar(150), DoB int, ProgramID int, FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID));
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, programID) values(101, "John Taiwo","tai@gmail.com", "M" ,"Nigeria", 1997, 101 );
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(202, "David Masupa","Mmm@gmail.com", "M" ,"Zambia", 1887, 202);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(303, "Robert Wekesa","rw@gmail.com", "M" ,"Kenya", 1999, 303);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(403, "Musa Liberia","ml@gmail.com", "M" ,"Liberia", 1789, 403);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(505, "Jacob anser","ja@gmail.com", "M" ,"Sudan", 1997, 505);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(1801, "John Taiwo","ja@gmail.com", "M" ,"Lagos", 1995, 1801);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(444, "David Masupa","ja@gmail.com", "M" ,"Ghana", 155, 2902);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(555, "Robert Wekesa","ja@gmail.com", "M" ,"Uganda", 7654, 3093);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(666, "Musa Liberia","ja@gmail.com", "M" ,"Syria", 876, 4093);
insert into ALU_DATABASE.Student(StudentID, Student_Name, Student_email, Gender, Nationality, DoB, ProgramID) values(777, "Jacob anser","ja@gmail.com", "M" ,"Dubai", 654, 5059);

select * from ALU_DATABASE.Student;


create table ALU_DATABASE.Classroom(ClassroomID int PRIMARY KEY, ClassroomName varchar(100), Capacity int, Location varchar(100), Availability Varchar(100));
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(1, "Juba", 50 , "Noth", "Yes");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(2, "Lago", 3344 , "South", "No");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(3, "Harare", 23 , "Basement", "Yes");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(4, "Nairobi", 34 , "west", "No");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(5, "NY", 6 , "Lastfloor", "Yes");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(6, "Yambio", 457, "East", "No");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(7, "Tambura", 876 , "North", "Yes");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(8, "Miami", 534, "West", "No");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(9, "Accra", 43 , "Downfloor", "No");
insert into ALU_DATABASE.Classroom(ClassroomID, ClassroomName, Capacity, Location, Availability) values(10, "Kigali",3456 , "BTA", "Yes");
select * from ALU_DATABASE.Classroom;



create table ALU_DATABASE.Sessions(SessionsID int PRIMARY KEY, Session_Name varchar(100), ClassroomID int, FOREIGN KEY (ClassroomID) REFERENCES Classroom(ClassroomID), Start_time int, End_time int, Date_ varchar(100)  );
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time,End_time, Date_) values(1, "Seminalreading", 1 , 11, 8, "Monday" );
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(2, "ALUalive", 2 , 6, 8, "Tuesday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(3, "amazingrace", 3 , 8, 9, "Wednesday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(4, "get together", 4 ,12, 4, "Thursday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time,End_time , Date_) values(5, "Assembly", 5 ,8, 6, "Friday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(6, "walkto work", 6 ,9, 2, "Sunday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(7, "Election", 7 ,10, 4, "Monday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(8, "clubs", 8 ,4, 7, "Monday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(9, "ISA", 9 ,3, 9, "Friday");
insert into ALU_DATABASE.Sessions(SessionsID, Session_Name, ClassroomID, Start_time, End_time, Date_) values(10, "GC", 10 ,7, 10, "Monday");
select * from ALU_DATABASE.Sessions;



create table ALU_DATABASE.Course(CourseID int PRIMARY KEY, CourseName varchar(100), Facilitator_ID int, FOREIGN KEY (Facilitator_ID) REFERENCES Facilitator(Facilitator_ID),
ProgramID int, FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID), SessionsID int, FOREIGN KEY (SessionsID) REFERENCES Sessions(SessionsID));
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID,SessionsID) values(9, "IOT", 101 , 101,1);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(8, "Scurity", 202 , 202,2);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(7, "Python", 303 , 303,3);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(6, "Java", 403 , 403,4);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(5, "ML", 505 , 505,5);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(4, "DSA", 1801 , 1801,6);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(3, "DB", 444 , 2902,7);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(2, "CloudC", 555 , 3093,8);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(1, "Design", 666 , 4093,9);
insert into ALU_DATABASE.Course(CourseID, CourseName, Facilitator_ID, ProgramID, SessionsID) values(11, "AI", 777 , 5095,10);
select * from ALU_DATABASE.Course;



create table ALU_DATABASE.Studyintern(StudyinternID int PRIMARY KEY, StudyinternName varchar(100), StudyinternSalary int, StudyinternEmail Varchar(100),
CourseID int, FOREIGN KEY (CourseID) REFERENCES Course(CourseID) );
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(55097, "Sami", 400 , "sm@gmail.com",9);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(44568, "Jinet", 500 , "jt@gmail.com",8);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(43218, "Jojo", 599 , "jj@gmail.com",7);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(9875, "John", 645 , "jn@gmail.com",6);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(6533, "Enoc", 676 , "ec@gmail.com",5);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(595097, "Noah", 874 , "nh@gmail.com",4);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(494568, "Musa", 500 , "nh@gmail.com",3);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(493218, "Lex", 554 , "nh@gmail.com",2);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(99875, "Luthor", 676 , "lt@gmail.com",1);
insert into ALU_DATABASE.Studyintern(StudyinternID, StudyinternName, StudyinternSalary, StudyinternEmail, CourseID) values(69533, "Clark", 698 , "cl@gmail.com",11);
select * from ALU_DATABASE.Studyintern;








         



