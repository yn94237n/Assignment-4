CREATE DATABASE DB_PAPER_REVIEWERS;

USE DB_PAPER_REVIEWERS;

CREATE TABLE T_Author (
    Author_ID INT NOT NULL AUTO_INCREMENT, 
    A_EmailAddr VARCHAR(30) NOT NULL,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    PRIMARY KEY(Author_ID, A_EmailAddr),
    INDEX (A_EmailAddr)
) ENGINE=INNODB;

CREATE TABLE T_Paper (
    Paper_ID INT NOT NULL AUTO_INCREMENT, 
    A_EmailAddr VARCHAR(30) NOT NULL,
    Title VARCHAR(50) NOT NULL,
    Abstract VARCHAR(250),
    FileName VARCHAR(50),
    
    PRIMARY KEY(Paper_ID, A_EmailAddr),
    INDEX (Paper_ID),
	
    FOREIGN KEY (A_EmailAddr)
      REFERENCES T_Author(A_EmailAddr)
) ENGINE=INNODB;

CREATE TABLE T_Reviewer (
    Reviewer_ID INT NOT NULL AUTO_INCREMENT, 
    R_EmailAddr VARCHAR(30) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    PhoneNum VARCHAR(15),
    Affiliation VARCHAR(100),
    AuthorFeedbak VARCHAR(250),
    CommiteeFeedback VARCHAR(250),
    
    PRIMARY KEY(Reviewer_ID, R_EmailAddr),
    INDEX (Reviewer_ID),
    INDEX (R_EmailAddr)
)ENGINE=INNODB;

CREATE TABLE T_Paper_Reviewer (
    ID INT NOT NULL AUTO_INCREMENT, 
    Paper_ID INT NOT NULL,
    R_EmailAddr VARCHAR(30) NOT NULL,
	
    PRIMARY KEY(ID),
    
    FOREIGN KEY (Paper_ID)
      REFERENCES T_Paper (Paper_ID),
    FOREIGN KEY (R_EmailAddr)
      REFERENCES T_Reviewer(R_EmailAddr)
)ENGINE=INNODB;

CREATE TABLE T_Review (
    Review_ID INT NOT NULL AUTO_INCREMENT, 
    Reviewer_ID INT NOT NULL,
    Paper_ID INT NOT NULL,
    MeritScore DECIMAL(5,2),
    ReadabilityScore DECIMAL(5,2),
    OriginalityScore DECIMAL(5,2),
    RelevanceScore DECIMAL(5,2),
    Recommendation VARCHAR(250),
    
    PRIMARY KEY(Review_ID, Reviewer_ID),

    FOREIGN KEY (Reviewer_ID)
      REFERENCES T_Reviewer(Reviewer_ID),    

    FOREIGN KEY (Paper_ID)
      REFERENCES T_Paper (Paper_ID)
)ENGINE=INNODB;

CREATE TABLE T_Topic_Interest (
    Topic_ID INT NOT NULL AUTO_INCREMENT, 
    TopicName VARCHAR(30) NOT NULL,
    PRIMARY KEY(Topic_ID),
    INDEX (Topic_ID)
)ENGINE=INNODB;

CREATE TABLE T_Reviewer_Topic_Interest (
    ID INT NOT NULL AUTO_INCREMENT,
    R_EmailAddr VARCHAR(30) NOT NULL,
    Topic_ID INT NOT NULL,
	PRIMARY KEY(ID),

    FOREIGN KEY (R_EmailAddr)
      REFERENCES T_Reviewer(R_EmailAddr),

    FOREIGN KEY (Topic_ID)
      REFERENCES T_Topic_Interest (Topic_ID)
)ENGINE=INNODB;





