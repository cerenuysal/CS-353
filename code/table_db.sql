#DEFAULT TABLE LAYOUT
# OGUZ KAAN AGAC: 04/05/2018
# VER 1.0
# LEVLE 3: EDITOR
# LEVEL 2: REVIEWER
# LEVEL 1: AUTHOR
# LEVEL 0: Subscriber

DROP TABLE IF EXISTS endorsement;
DROP VIEW IF EXISTS paperview;
DROP TABLE IF EXISTS belongs;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS manages;
DROP TABLE IF EXISTS publicationArea;
DROP TABLE IF EXISTS workExperience;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS assigns;
DROP TABLE IF EXISTS subscribes;
DROP TABLE IF EXISTS cited;
DROP TABLE IF EXISTS submitted;
DROP TABLE IF EXISTS educations;
DROP TABLE IF EXISTS reviewers;
DROP TABLE IF EXISTS editors;
DROP TABLE IF EXISTS subscribers;
DROP TABLE IF EXISTS publicationAuthors;
DROP TABLE IF EXISTS publications;
DROP TABLE IF EXISTS journals;
DROP TABLE IF EXISTS conferences;
DROP TABLE IF EXISTS organizations;
DROP TABLE IF EXISTS institutions;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	mail VARCHAR(64) NOT NULL UNIQUE,
 	username VARCHAR(20) NOT NULL UNIQUE,
	name VARCHAR(20) NOT NULL,
	lastname VARCHAR(20) NOT NULL,
	password VARCHAR(20) NOT NULL,
	privilege_level INT DEFAULT 0,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE authors (
	authorID INT UNSIGNED NOT NULL,
	FOREIGN KEY(authorID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
  PRIMARY KEY(authorID)
);

CREATE TABLE editors (
	editorID INT UNSIGNED NOT NULL,
	FOREIGN KEY(editorID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
  PRIMARY KEY (editorID)
);

CREATE TABLE reviewers (
	reviewerID INT UNSIGNED NOT NULL,
	FOREIGN KEY(reviewerID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
  PRIMARY KEY (reviewerID)
);

CREATE TABLE subscribers (
	subscriberID INT UNSIGNED NOT NULL,
	FOREIGN KEY(subscriberID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
  PRIMARY KEY (subscriberID)
);

CREATE TABLE organizations (
	ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(120) NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE journals (
	journalID INT UNSIGNED NOT NULL,
	volume INT,
	journalDate DATE NOT NULL,
	subscriber_count INT DEFAULT 0,
	PRIMARY KEY (journalID, journalDate),
	FOREIGN KEY(journalID)
		REFERENCES organizations(ID)
		ON DELETE CASCADE
);

CREATE TABLE conferences(
	conferenceID INT UNSIGNED NOT NULL,
	conferenceDate DATE NOT NULL UNIQUE,
	subscriber_count INT DEFAULT 0,
	country VARCHAR(50) NOT NULL,
	city_name VARCHAR(50) NOT NULL,
	weblink VARCHAR(100),
	PRIMARY KEY (conferenceID, conferenceDate),
	FOREIGN KEY (conferenceID)
		REFERENCES organizations(ID)
		ON DELETE CASCADE
);


CREATE TABLE publications (
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	publicationDate DATE NOT NULL,
	citationCount INT DEFAULT 0,
	weblink VARCHAR(200)
);

CREATE TABLE publicationAuthors (
	pubID INT UNSIGNED NOT NULL,
	authorID INT UNSIGNED NOT NULL,
	FOREIGN KEY (pubID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	FOREIGN KEY (authorID)
		REFERENCES authors(authorID)
		ON DELETE CASCADE,
	PRIMARY KEY (pubID, authorID)
);

CREATE TABLE institutions (
	ID INT UNSIGNED NOT NULL PRIMARY KEY,
	name VARCHAR(50),
	country VARCHAR(50) NOT NULL,
	street_no INT,
	street_name VARCHAR(50),
	city_name VARCHAR(50) NOT NULL
);
CREATE TABLE belongs (
	authorID INT UNSIGNED NOT NULL,
	instID INT UNSIGNED NOT NULL,
	FOREIGN KEY (authorID)
	REFERENCES authors(authorID)
		ON DELETE CASCADE,
	FOREIGN KEY (instID)
	REFERENCES institutions(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (authorID, instID)
);

CREATE TABLE publicationArea(
	publicationID INT UNSIGNED NOT NULL,
	scientificArea VARCHAR(100) NOT NULL,
	FOREIGN KEY(publicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (publicationID, scientificArea)
);


CREATE TABLE workExperience (
	authorID INT UNSIGNED NOT NULL,
	yearWorked INT UNSIGNED NOT NULL,
	employerName VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	FOREIGN KEY (authorID)
		REFERENCES authors(authorID)
		ON DELETE CASCADE,
	PRIMARY KEY (authorID, yearWorked, employerName, country)
);

CREATE TABLE educations (
	authorID INT UNSIGNED NOT NULL,
	universityName VARCHAR(100) NOT NULL,
	country VARCHAR(50) NOT NULL,
	year_recieved INT UNSIGNED NOT NULL,
	degree INT NOT NULL,
	FOREIGN KEY (authorID)
		REFERENCES authors(authorID)
		ON DELETE CASCADE,
	PRIMARY KEY (authorID, universityName)
);

CREATE TABLE manages(
	organizationID INT UNSIGNED NOT NULL,
	editorID INT UNSIGNED NOT NULL,
	FOREIGN KEY (organizationID)
		REFERENCES organizations(ID)
		ON DELETE CASCADE,
	FOREIGN KEY (editorID)
		REFERENCES editors(editorID)
		ON DELETE CASCADE,
	PRIMARY KEY (organizationID, editorID)
);

CREATE TABLE assigns(
	editorID INT UNSIGNED NOT NULL,
	reviewerID INT UNSIGNED NOT NULL,
	publicationID INT UNSIGNED NOT NULL,
	FOREIGN KEY (editorID)
		REFERENCES editors(editorID)
		ON DELETE CASCADE,
	FOREIGN KEY (reviewerID)
 		REFERENCES 	reviewers(reviewerID)
		ON DELETE CASCADE,
	FOREIGN KEY (publicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (editorID, reviewerID, publicationID)
);

CREATE TABLE reviews (
	reviewerID INT UNSIGNED NOT NULL,
	publicationID INT UNSIGNED NOT NULL,
	status INT NOT NULL,
	FOREIGN KEY (reviewerID)
		REFERENCES reviewers(reviewerID)
		ON DELETE CASCADE,
	FOREIGN KEY (publicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (reviewerID, publicationID)
);

CREATE TABLE subscribes (
	subscriberID INT UNSIGNED NOT NULL,
	publicationID INT UNSIGNED NOT NULL,
	subsUntill DATE,
	FOREIGN KEY (subscriberID)
		REFERENCES subscribers(subscriberID)
		ON DELETE CASCADE,
	FOREIGN KEY (publicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (subscriberID, publicationID)
);

CREATE TABLE cited (
	citedPublicationID INT UNSIGNED NOT NULL,
	citingPublicationID INT UNSIGNED NOT NULL,
	FOREIGN KEY (citedPublicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	FOREIGN KEY (citingPublicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (citedPublicationID, citingPublicationID)
);

CREATE TABLE submitted (
	organizationID INT UNSIGNED NOT NULL,
	publicationID INT UNSIGNED NOT NULL,
	FOREIGN KEY (organizationID)
		REFERENCES organizations(ID)
		ON DELETE CASCADE,
	FOREIGN KEY (publicationID)
		REFERENCES publications(ID)
		ON DELETE CASCADE,
	PRIMARY KEY (organizationID, publicationID)
);

CREATE VIEW paperview AS
SELECT authorID, name, lastname,publications.ID, publications.publicationDate, organizationID, publications.title as PublicationTitle, o.title as OrganizationTitle, users.mail,
publications.weblink
FROM publications
	LEFT JOIN submitted s on publicationS.ID = S.publicationID
	LEFT JOIN organizations o on s.organizationID = o.ID
  LEFT JOIN publicationAuthors Author on publications.ID = Author.pubID
	LEFT JOIN  users on  users.ID  = Author.authorID;
CREATE TABLE skills (
	expertise VARCHAR(100) NOT NULL,
	degree VARCHAR(20),
	authorID INT UNSIGNED NOT NULL,
	endorsmentCount INT DEFAULT 0,
	FOREIGN KEY(authorID)
		REFERENCES authors(authorID)
		ON DELETE CASCADE,
	PRIMARY KEY (expertise, authorID)
);

CREATE TABLE endorsement(
	endorserID INT UNSIGNED,
	endorseeID INT UNSIGNED,
	expertise varchar(100),
	FOREIGN KEY(endorserID)
		REFERENCES users(ID),
	FOREIGN KEY(expertise, endorseeID)
	REFERENCES skills(expertise, authorID)
		ON DELETE CASCADE,
	PRIMARY KEY (endorserID, endorseeID, expertise)
);

DROP TRIGGER IF EXISTS userInsert_trigger;

delimiter |
CREATE TRIGGER userInsert_trigger AFTER INSERT ON users
	FOR EACH ROW
	BEGIN
		IF NEW.privilege_level = 0 THEN
			INSERT INTO subscribers(subscriberID) VALUES (NEW.ID);
		ELSEIF NEW.privilege_level = 1 THEN
			INSERT INTO authors (authorID) VALUES (NEW.ID);
		ELSEIF NEW.privilege_level = 2 THEN
			INSERT INTO reviewers (reviewerID) VALUES (NEW.ID);
		ELSEIF NEW.privilege_level = 3 THEN
			INSERT INTO editors (editorID) VALUES (NEW.ID);
		END IF;
	END;
|
delimiter ;



INSERT INTO users (mail, username, name, lastname,password, privilege_level)
VALUES ('okaanagac@gmail.com', 'CynicalApe', 'oguz', 'agac','1234', 3),
	('atpug@gmail.com', 'aptup','alptug','albayra', '1235', 0),
	('anotherone@gmail.com', 'khaleed','dj', 'khaleed', '1234', 0),
	('scrap@yahoo.com', 'alloy"', 'elizabeth', 'sobeck', '111', 1),
	('bondjames@gmail.com','jb','james', 'bond', '007', 2),
	('randomauthor1@gmail.com','ra1','randomname1', 'randomlastname1', '000', 1),
	('randomauthor2@gmail.com','ra2','randomname2', 'randomlastname2', '000', 1),
	('randomauthor3@gmail.com','ra3','randomname3', 'randomlastname3', '000', 1),
	('randomauthor4@gmail.com','ra4', 'randomname4', 'randomlastname4','000', 1),
	('randomauthor5@gmail.com','ra5', 'randomname5', 'randomlastname5','000', 1),
	('randomauthor6@gmail.com','ra6','randomname6', 'randomlastname6', '000', 1);


INSERT INTO organizations (title)
VALUES
	('Journal of Computer Science & Systems Biology'),
	('Journal of Global Research in Computer Science'),
	('Journal of Information Technology & Software Engineering'),
	('American Journal of Computer Science and Information Technology'),
	('5th International Conference on Big Data Analysis and Data Mining'),
	('Global Expo on Computer Graphics & Animation'),
	('International conference on Data Analysis and Cloud Computing'),
	('ACM SIGGRAPH');

INSERT INTO journals(journalID, volume, journalDate, subscriber_count)
VALUES
	('1', 10, '2017-8-21', 0),
	('2', 5, '2014-2-12', 0),
	('3', 9, '2015-1-14', 0),
	('4', 3, '2017-11-4', 0);

INSERT INTO conferences(conferenceID, conferenceDate, subscriber_count, country, city_name, weblink)
VALUES
	('5', '2018-9-21', 0, 'ITALY', 'ROME','https://datamining.conferenceseries.com/'),
	('6', '2018-9-30', 0, 'JAPAN','TOKYO','https://computergraphics-gamedesign.conferenceseries.com'),
	('7', '2018-10-6', 0, 'UK','LONDON','https://cloud-computing.conferenceseries.com/'),
	('8', '2018-9-12', 0, 'CANADA','VANCOUVER', 'https://s2018.siggraph.org/');

INSERT INTO publications(ID, title, publicationDate, citationCount, weblink)
VALUES
	(555, 'testpublication1', '2000-12-3', '12', 'testurl1.com'),
	(666, 'testpublication2', '2002-11-4', '10', 'testurl2.com'),
	(777, 'testpublication3', '2005-4-2', '9', 'testurl3.com'),
	(888, 'testpublication4', '2000-9-2', '15', 'testurl4.com');

INSERT INTO publicationAuthors(pubID, authorID)
VALUES
	(555,6),
	(555,7),
	(666,7),
	(777,8 ),
	(777,9 ),
	(777,10 ),
	(888,11 );

INSERT INTO submitted (organizationID, publicationID)
VALUES
	(5, 555),
	(5, 666),
	(5, 777),
	(5, 888);

INSERT INTO publicationArea(publicationID, scientificArea)
		VALUES
			(555, 'Computer Science'),
			(555, 'Bioinformatic');
