use libusers;

CREATE TABLE books (
  isbn int(10) unsigned NOT NULL auto_increment,
  title varchar(45) NOT NULL,
  language varchar(45) NOT NULL,
  publisher varchar(45) NOT NULL,
  publishdate varchar(45),
  PRIMARY KEY  (isbn)
);

ALTER TABLE books AUTO_INCREMENT=1001;