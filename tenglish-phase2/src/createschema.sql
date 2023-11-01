CREATE TABLE person (
  id integer,
  fname varchar(30),
  lname varchar(30),
  email varchar(40),
  phone varchar(13),
  gender varchar(10)
);

CREATE TABLE faculty (
  faculty_id integer,
  tenured boolean,
  term_begin date,
  term_end date,
  signed_statement_faith boolean
);

CREATE TABLE degree (
  degree_id integer,
  degree_name varchar(30),
  degree_type varchar(30),
  year_grad integer
);

CREATE TABLE rank (
  faculty_id integer,
  instructor boolean,
  associate_professor boolean,
  assistant_professor boolean,
  professor boolean

);

CREATE TABLE university (
  university_id integer,
  highest_level varchar(40),
  christian_affiliation boolean
);

CREATE TABLE community_service (
  community_service_id integer,
  hrs varchar(40),
  title varchar(40),
  descript varchar(40),
  organization varchar(40),
);

CREATE TABLE research (
  research_id integer,
  number_of_publications varchar(30),
  funding_source varchar(40),
  title varchar(40),
  collaborators varchar(100),
  descript varchar(300),

  
)