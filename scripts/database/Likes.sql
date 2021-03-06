CREATE TABLE IF NOT EXISTS Likes(
user_id VARCHAR(20) NOT NULL,
post_id VARCHAR(20),
/*comment_id INT(20), */
date_created varchar(128) NOT NULL,
PRIMARY KEY(user_id, post_id),
UNIQUE INDEX (post_id, user_id),
FOREIGN KEY (post_id) REFERENCES Posts(post_id),
/*FOREIGN KEY (comment_id) REFERENCES Comments(comment_id),*/
FOREIGN KEY(user_id) REFERENCES Users(user_id)
);
