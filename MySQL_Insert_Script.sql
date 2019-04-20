USE DB_PAPER_REVIEWERS;

INSERT INTO T_Author ( A_EmailAddr, FirstName, LastName) VALUES
  ( 'jkrowling@aol.com', 'Jennifer K', 'Rowling' ),
  ( 'pcoelho@msn.com', 'Paulo', 'Coelho' ),
  ( 'stephen.king@gmail.com', 'Stephen', 'King' ),
  ( 'jodi.picoult@gmail.com', 'Jodi', 'Picoult' ),
  ( 'kfollet@yahoo.com', 'Ken', 'Follet' ),
  ( 'nroberts@aol.com', 'Nora', 'Roberts' ),
  ( 'john.grisham@msn.com', 'John', 'Grisham' ),
  ( 'smeyer@aol.com', 'Stephanie', 'Meyer' ),
  ( 'junot.diaz@yahoo.com', 'Juno', 'Diaz' ),
  ( 'hmantel@aol.com', 'Hillary', 'Mantel' );

INSERT INTO T_Paper ( A_EmailAddr, Title, Abstract, FileName) VALUES
 ( 'jkrowling@aol.com', 'Harry Potter and The Chamber of Secrets', 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry.', 'HP_CofS.docx'),
 ( 'jkrowling@aol.com', 'Very Good Lives', 'VERY GOOD LIVES presents words of wisdom for anyone at a turning point in life.', 'JKR_VeryGood.docx'),
 ( 'stephen.king@gmail.com', 'The Green Mile', 'Welcome to Cold Mountain Penitentiary, home to the Depression-worn men of E Block. Convicted killers all, each awaits his turn to walk the Green Mile,', 'SK_TGM.docx'),
 ( 'junot.diaz@yahoo.com','The Brief Wondrous Life of Oscar Wao','The winner in this BBC Culture critics’ poll is Junot Diaz’s first novel, about New Jersey ghetto-nerd Oscar, who dreams of being the Dominican-American Tolkien and finding love.','JD_TBWL.docx'),
 ( 'hmantel@aol.com','Wolf Hall','Mantel’s boldly reimagined saga of 16th Century Europe, told from the perspective of Thomas Cromwell (with Henry VIII as a supporting character)','HM_WH.docx'),
 ( 'pcoelho@msn.com','The Fifth Mountain','Elijahs journey up the Fifth Mountain itself (said to be the dwelling place of Baal), and Elijah s falling in love with the widow to whom God sent him','PC_TFM.docx');

INSERT INTO T_Reviewer (R_EmailAddr, FirstName, LastName, PhoneNum, Affiliation, AuthorFeedbak, CommiteeFeedback) VALUES
 ('msmith@gmail.com', 'Marie', 'Smith','(917)236-1482', 'Affiliation 2', NULL, NULL),
 ('phil.jackson@msn.com', 'Phil', 'Jackson','(305)762-2455', 'Affiliation 1', NULL, NULL),
 ('steve.kerr@yahoo.com', 'Steve', 'Kerr','(347)618-2019', 'Affiliation 4', NULL, NULL),
 ('s.williams@aol.com', 'Serena', 'Williams','(917)721-1283', 'Affiliation 2', NULL, NULL),
 ('phill.collins@gmail.com','Phill','Collins','(305)268-1357','Affiliation 3', NULL, NULL);
 
INSERT INTO T_Topic_Interest (TopicName) VALUES
 ('Science'),
 ('Fiction'),
 ('Politic'),
 ('Economy'),
 ('Sports'),
 ('Novels'),
 ('Drama'),
 ('Comedy');
  
INSERT INTO T_Paper_Reviewer (Paper_ID, R_EmailAddr) VALUES
	(1,'msmith@gmail.com'),
    (1,'phil.jackson@msn.com'),
    (2,'steve.kerr@yahoo.com'),
    (2,'s.williams@aol.com'),
    (3,'steve.kerr@yahoo.com'),
    (3,'phill.collins@gmail.com'),
    (4,'msmith@gmail.com'),
    (5,'steve.kerr@yahoo.com'),
    (5,'s.williams@aol.com'),
    (6,'phil.jackson@msn.com');

INSERT INTO T_Review (Reviewer_ID, Paper_ID, MeritScore, ReadabilityScore, OriginalityScore, RelevanceScore, Recommendation) VALUES
 (1, 1, 8.2, 7.8, 8, 8, 'Improve readability'),
 (2, 1, 8.5, 8.4, 7.8, 8, 'Nothing to enhance'),
 (3, 2, 7, 7, 7, 7, 'Improve narrative quality'),
 (4, 2, 8.5, 8.5, 8.5, 8.5, 'Excelent, amazing job'),
 (3, 3, 6.5, 6, 6, 6, 'Poor originality'),
 (5, 3, 8.2, 8.6, 8, 8.5, 'Add more graphic content to make it perfect'),
 (1, 4, 9, 9, 9, 9, 'Great paper. Must be published now'),
 (3, 5, 7.5, 7.4, 7, 7, 'Nice job, but main ideas should be better explained'),
 (4, 5, 8, 8, 8, 8, 'Add more environment details to the first chapter'),
 (2, 6, 8.8, 9, 9.2, 8.7, 'The main character is fabulous, but its development in chapter 2 was slow');

INSERT INTO T_Reviewer_Topic_Interest (R_EmailAddr, Topic_ID) VALUES
 ('msmith@gmail.com', 2),
 ('msmith@gmail.com', 6),
 ('phil.jackson@msn.com', 4),
 ('phil.jackson@msn.com', 5),
 ('phil.jackson@msn.com', 1),
 ('steve.kerr@yahoo.com', 1),
 ('steve.kerr@yahoo.com', 2),
 ('steve.kerr@yahoo.com', 7),
 ('s.williams@aol.com', 8),
 ('s.williams@aol.com', 5),
 ('s.williams@aol.com', 6),
 ('s.williams@aol.com', 1),
 ('phill.collins@gmail.com', 1),
 ('phill.collins@gmail.com', 2),
 ('phill.collins@gmail.com', 3);
 
 
 
  