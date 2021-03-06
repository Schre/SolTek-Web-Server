CREATE TABLE IF NOT EXISTS Posts(
post_id VARCHAR(20) NOT NULL,
user_id VARCHAR(20) NOT NULL,
category VARCHAR(255),
post_url VARCHAR(255) NOT NULL,
parent_post_id VARCHAR(255), /* If root post, this is null */

format ENUM('text', 'image', 'video') NOT NULL,
date_created  VARCHAR(128) NOT NULL,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
