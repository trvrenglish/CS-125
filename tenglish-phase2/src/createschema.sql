CREATE TABLE person (
  id integer,
  fname varchar(30),
  lname varchar(30),
  email varchar(40),
  phone varchar(13),
  gender varhar(10)
);

CREATE TABLE faculty (
  faculty_id integer,
  tenured boolean,
  term_begin date,
  term_end date
);

CREATE TABLE degree (
  degree_id integer,
  name varchar(30),
  degree_type varchar(30),
  year_grad integer
);

CREATE TABLE rank (
  instructor boolean,
  professor boolean,
  associate_professor boolean,
  assistant_professor boolean
);

CREATE TABLE university (
  university_id integer,
  highest_level varchar(40),
  christian_affiliation boolean
);
