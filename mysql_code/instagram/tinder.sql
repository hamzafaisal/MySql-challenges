 CREATE TABLE users
 	(
 	id INT AUTO_INCREMENT PRIMARY KEY,
 	username VARCHAR(100) UNIQUE NOT NULL,
 	created_at TIMESTAMP DEFAULT NOW()
 	);

 CREATE TABLE follows
 	(
 	follower_id INT NOT NULL,
 	followee_id INT NOT NULL,
 	created_at TIMESTAMP DEFAULT NOW(),
 	FOREIGN KEY(followee_id) REFERENCES users(id),
 	FOREIGN KEY(follower_id) REFERENCES users(id),
 	PRIMARY KEY(follower_id , followee_id)
  	);

INSERT INTO users (username, created_at) VALUES 
 ('jerry', '2017-02-16 18:22:10.846'), 
 ('mango', '2017-04-02 17:11:21.417'), 
 ('jonty', '2017-02-21 11:12:32.574'), 
 ('jiya', '2016-08-13 01:28:43.085'), 
 ('pup', '2016-08-13 01:28:43.085'), 
('bubble', '2016-12-07 01:04:39.298');

 INSERT INTO follows(follower_id, followee_id) VALUES 
 (1, 2),
 (2, 1), (2, 3), (2, 5), 
 (3, 1), (3, 2), 
 (4, 1), (4, 5),
 (5, 1), (5, 2);



