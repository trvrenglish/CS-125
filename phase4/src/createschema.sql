CREATE TABLE person (
  id int NOT NULL PRIMARY KEY,
  fname varchar(30),
  lname varchar(30),
  email varchar(40),
  phone varchar(13),
  gender varchar(10),
  age int,
  CHECK (age >= 18)
);

CREATE TABLE faculty (
  id int NOT NULL PRIMARY KEY,
  person_id int,
  tenured boolean,
  term_begin date,
  term_end date,
  signed_statement_faith boolean,
  FOREIGN KEY (person_id) REFERENCES person(id),
  ON DELETE CASCADE
  CHECK (signed_statement_faith = TRUE )
);

CREATE TABLE degree (
  id int NOT NULL PRIMARY KEY,
  faculty_id int,
  degree_name varchar(30),
  degree_type varchar(30),
  year_grad int,
  FOREIGN KEY (faculty_id) REFERENCES faculty(id)
);

CREATE TABLE faculty_rank (
  id int NOT NULL PRIMARY KEY,
  faculty_id int,
  instructor boolean,
  associate_professor boolean,
  assistant_professor boolean,
  professor boolean,
  FOREIGN KEY (faculty_id) REFERENCES faculty(id)
);

CREATE TABLE university (
  id int NOT NULL PRIMARY KEY,
  degree_id int,
  highest_level varchar(40),
  christian_affiliation boolean,
  FOREIGN KEY (degree_id) REFERENCES degree(id)
);

CREATE TABLE community_service (
  id int NOT NULL PRIMARY KEY,
  faculty_id int,
  hrs int,
  title varchar(40),
  descript varchar(40),
  organization varchar(40),
  FOREIGN KEY (faculty_id) REFERENCES faculty(id)
  CHECK (hrs > 20 and LENGTH(title) > 3)
);

CREATE TABLE research (
  id int NOT NULL PRIMARY KEY,
  faculty_id int,
  number_of_publications varchar(30),
  funding_source varchar(40),
  title varchar(40),
  collaborators varchar(100),
  descript varchar(300),  
  FOREIGN KEY (faculty_id) REFERENCES faculty(id)
);