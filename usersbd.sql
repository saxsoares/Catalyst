PRAGMA foreign_keys = ON;
CREATE TABLE user (
	id INTEGER PRIMARY KEY,
	username TEXT,
	senha TEXT
);
CREATE TABLE name (
	id INTEGER PRIMARY KEY,
	nome TEXT,
	email TEXT
);
CREATE TABLE user_name (
	user_id INTEGER REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
	name_id INTEGER REFERENCES name(id) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (user_id, name_id)
);
INSERT INTO user VALUES (1, 'saxsoares', 'huahuahua');
INSERT INTO name VALUES (1, 'Fernando', 'sax.soares@gmail.com');
INSERT INTO user_name VALUES (1,1);
INSERT INTO user VALUES (2, 'admin', 'admin');
INSERT INTO name VALUES (2, 'Administrador', 'admin@gmail.com');
INSERT INTO user_name VALUES (2,2);

 
