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



INSERT INTO organizations (title)
    VALUES ('Journal of Computer Science & Systems Biology '),
      ('Journal of Global Research in Computer Science'),
      ('Journal of Information Technology & Software Engineering '),
      ('American Journal of Computer Science and Information Technology'),
      ('5th International Conference on Big Data Analysis and Data Mining'),
      ('Global Expo on Computer Graphics & Animation'),
      ('International conference on Data Analysis and Cloud Computing'),
      (' ACM SIGGRAPH');

INSERT INTO journals(journalID, volume, journalDate, subscriber_count)
  VALUES
    ('1', 10, '2017-8-21', 0),
    ('2', 5, '2014-2-12', 0),
    ('3', 9, '2015-1-14', 0),
    ('4', 3, '2017-11-4', 0);

INSERT INTO conferences(conferenceID, conferenceDate, subscriber_count, country, city_name, weblink)
  VALUES
    ('5', '2018-9-21', 0, 'ITALY', 'ROME','https://datamining.conferenceseries.com/'),
    ('6', '2018-9-30', 0, 'JAPAN','TOKYO','computergraphics-gamedesign.conferenceseries.com'),
    ('7', '2018-10-6', 0, 'UK','LONDON','https://cloud-computing.conferenceseries.com/'),
    ('8', '2018-9-12', 0, 'CANADA','VANCOUVER', 'https://s2018.siggraph.org/');
