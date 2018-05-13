delete from users;
SET FOREIGN_KEY_CHECKS = 0;
truncate users;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO users (mail, username, password, privilege_level)
VALUES ('okaanagac@gmail.com', 'CynicalApe', '1234', 3),
      ('atpug@gmail.com', 'aptup', '1235', 0),
      ('anotherone@gmail.com', 'khaleed', '1234', 0),
      ('scrap@yahoo.com', 'alloy"', '111', 1),
      ('bondjames@gmail.com','jb', '007', 2);

INSERT INTO authors (authorID)
  VALUES (4);

INSERT INTO editors(editorID)
  VALUES (1);

INSERT INTO subscribers(subscriberID)
    VALUES (2), (3);

INSERT INTO reviewers(reviewerID)
    VALUES (5);