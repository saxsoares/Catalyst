CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	username TEXT,
	senha TEXT
);


CREATE TABLE names (
	id INTEGER PRIMARY KEY,
	name TEXT,
	email TEXT
);


CREATE TABLE users_names (
	user_id INTEGER,
	name_id INTEGER,
	PRIMARY KEY (user_id, name_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (name_id) REFERENCES names(id)
);

INSERT INTO users VALUES (1, 'saxsoares', 'huahuahua');
INSERT INTO names VALUES (1, 'Fernando', 'sax.soares@gmail.com');
INSERT INTO users_names VALUES (1,1);

 
