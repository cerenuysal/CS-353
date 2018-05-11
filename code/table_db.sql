#DEFAULT TABLE LAYOUT
# OGUZ KAAN AGAC: 04/05/2018
# VER 1.0

DROP TABLE IF EXISTS endorsement;
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
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS reviewers;
DROP TABLE IF EXISTS editors;
DROP TABLE IF EXISTS subscribers;
DROP TABLE IF EXISTS publications;
DROP TABLE IF EXISTS journals;
DROP TABLE IF EXISTS conferences;
DROP TABLE IF EXISTS organizations;
DROP TABLE IF EXISTS institutions;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	mail VARCHAR(64) NOT NULL UNIQUE,
 	username VARCHAR(20) NOT NULL UNIQUE,
	password VARCHAR(20) NOT NULL,
	privilege_level INT DEFAULT 0,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE authors (
	authorID INT UNSIGNED NOT NULL,
	FOREIGN KEY(authorID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
	PRIMARY KEY (authorID)
);

CREATE TABLE editors (
	editorID INT UNSIGNED NOT NULL,
	FOREIGN KEY(editorID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
	PRIMARY KEY(editorID)
);

CREATE TABLE reviewers (
	reviewerID INT UNSIGNED NOT NULL,
	FOREIGN KEY(reviewerID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
	PRIMARY KEY(reviewerID)
);

CREATE TABLE subscribers (
	subscriberID INT UNSIGNED NOT NULL,
	FOREIGN KEY(subscriberID)
	  REFERENCES users(ID)
	  ON DELETE CASCADE,
  PRIMARY KEY(subscriberID)
);

CREATE TABLE organizations (
	ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(64) NOT NULL,
	creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE publications (
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	publicationDate DATETIME NOT NULL,
	citationCount INT DEFAULT 0,
	weblink VARCHAR(100)
);

CREATE TABLE journals (
	journalID INT UNSIGNED NOT NULL,
	volume INT,
	journalDate DATETIME NOT NULL UNIQUE,
	subscriber_count INT DEFAULT 0,
	page_no INT NOT NULL,
	PRIMARY KEY (journalID, journalDate),
	FOREIGN KEY(journalID)
		REFERENCES organizations(ID)
		ON DELETE CASCADE
);

CREATE TABLE conferences(
	conferenceID INT UNSIGNED NOT NULL,
	conferenceDate DATETIME NOT NULL UNIQUE,
	subscriber_count INT DEFAULT 0,
	country VARCHAR(50) NOT NULL,
	street_no INT,
	street_name VARCHAR(50),
	city_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (conferenceID, conferenceDate),
	FOREIGN KEY (conferenceID)
		REFERENCES organizations(ID)
		ON DELETE CASCADE
);

CREATE TABLE institutions (
	ID INT UNSIGNED NOT NULL PRIMARY KEY,
	name VARCHAR(50),
	country VARCHAR(50) NOT NULL,
	street_no INT,
	street_name VARCHAR(50),
	city_name VARCHAR(50) NOT NULL
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