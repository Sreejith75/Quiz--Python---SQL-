 -- drop database quiz_project;
create database quiz_project;
use quiz_project;
create table quiz_names(id int primary key,quiz_name varchar(100) unique not null);
insert into quiz_names values(1,'Python'); 

create table quiz_Questions(id int,
                          q_no int not null,
                          question varchar(500) not null,
                          primary Key (id, q_no),
                          FOREIGN KEY (id) REFERENCES quiz_names(id));
insert into  quiz_Questions values(1,1,'Which of the following is used for single-line comments in Python?') ,
                            (1,2,'What does the len() function do in Python?'),
                            (1,3,'What is the purpose of the break statement in a loop?');                           
                          
CREATE TABLE quiz_options (
    id INT,
    q_no INT,
    option_no INT NOT NULL,
    options_ VARCHAR(100) NOT NULL,
    PRIMARY KEY (id, q_no, option_no)
);
insert into quiz_options values(1,1,1,'//'),
								(1,1,2,'#'),
                                (1,1,3,"/*  */"),
                                (1,1,4,"--"),
                                (1,2,1,'Returns the length of a list or string'),
                                (1,2,2,'Returns the largest element in a list'),
                                (1,2,3,'Returns the smallest element in a list'),
                                (1,2,4,'Returns the sum of elements in a list'),
                                (1,3,1,'Skips the current iteration and continues with the next one'),
                                (1,3,2,'Exits the loop prematurely'),
                                (1,3,3,'Continues to the next iteration of the loop'),
                                (1,3,4,'Restarts the loop from the beginning');
      
create table quiz_answers(id int,
                          q_no int,
                          option_no int,
                          PRIMARY KEY (id, q_no));
insert into quiz_answers values(1,1,2),(1,2,1),(1,3,2) ;   

select * from quiz_names;
select * from quiz_questions;
select * from quiz_options;
select * from quiz_answers;                      
                          
                          
      
                          