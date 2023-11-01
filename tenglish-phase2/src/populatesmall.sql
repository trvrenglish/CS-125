INSERT INTO person VALUES
    (1, "Silas", "Ten Elshof", "stenelshof@westmont.edu", "714-728-2589", "male"),
    (2, "Jaron", "Burdick", "jburdick@westmont.edu", "392-532-3151", "male"),
    (3, "Donna", "Howard", "dhoward@westmont.edu", "295-214-1359", "female"),
    (4, "Pete", "Smith", "psmith@ucsb.edu", "299-511-0009", "male"),
    (5, "Petra", "Stewart", "pstew@biola.edu", "399-252-1942", "female"),
    (6, "John", "John", "jjohn@john.john", "248-824-8141", "male"),
    (7, "Erica", "DeBois", "edebois@email.com", "353-222-5391", "female"),
    (8, "Cynthia", "Gale-Carmichael", "cgcarmike@yahoo.com", "333-221-4914", "female"),
    (9, "Mickey", "Mouse", "mickeymouse@disney.com", "095-91-4014", "male"),
    (10, "Bennifer", "Buchannan", "bbcannon@hotmail.net", "751-157-7518", "female")
;

INSERT INTO faculty VALUES
    (1, 1, TRUE, "2010-01-12", "2020-01-12", TRUE),
    (2, 2, FALSE, "2012-04-12", "2022-04-12", TRUE),
    (3, 3, TRUE, "2008-01-12", "2018-01-12", TRUE),
    (4, 4, FALSE, "2000-01-12", "2010-01-12", TRUE),
    (5, 5, TRUE, "2010-01-12", "2020-01-12", TRUE),
    (6, 6, FALSE, "2010-01-12", "2020-01-12", TRUE),
    (7, 7, FALSE, "2010-01-12", "2020-01-12", TRUE),
    (8, 8, TRUE, "2010-01-12", "2020-01-12", TRUE),
    (9, 9, TRUE, "2010-01-12", "2020-01-12", TRUE),
    (10, 10, FALSE, "2010-01-12", "2020-01-12", TRUE)
;

INSERT INTO degree VALUES
    (1, "Computer Science", "Ph.D", "1980"),
    (2, "Biology", "Bachelors", "1938"),
    (3, "Religious Studies", "Masters", "1970"),
    (4, "Data Analytics", "Bachelors", "1958"),
    (5, "Business", "Masters", "2002"),
    (6, "Chemistry", "Masters", "2001"),
    (7, "Economics", "Bachelors", "1980"),
    (8, "Music", "Masters", "2009"),
    (9, "Art", "Bachelors", "2010"),
    (10, "Liberal Studies", "Ph.D", "2001")
;

INSERT INTO rank VALUES
    (1, TRUE, FALSE, TRUE, FALSE),
    (2, FALSE, FALSE, TRUE, FALSE),
    (3, FALSE, FALSE, TRUE, FALSE),
    (4, FALSE, TRUE, TRUE, FALSE),
    (5, TRUE, FALSE, TRUE, FALSE),
    (6, FALSE, FALSE, TRUE, FALSE),
    (7, FALSE, FALSE, TRUE, FALSE),
    (8, FALSE, FALSE, FALSE, TRUE),
    (9, FALSE, FALSE, TRUE, FALSE),
    (10, FALSE, FALSE, TRUE, FALSE)
;

INSERT INTO university VALUES
    (1, "Ph.D", TRUE),
    (2, "Bachelors", TRUE),
    (3, "Masters", TRUE),
    (4, "Bachelors", TRUE),
    (5, "Masters", TRUE),
    (6, "Masters", TRUE),
    (7, "Bachelors", TRUE),
    (8, "Masters", TRUE),
    (9, "Bachelors", TRUE),
    (10, "Ph.D", TRUE)
;

INSERT INTO research VALUES
    (1, 1, "3", "self-funded", "example research", "John Rodkey, Mike Ryu", "example description")
;