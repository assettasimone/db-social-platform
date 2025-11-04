CREATE DATABASE `db_social`;

USE `db_social`;

CREATE TABLE `users` (
`id` INT NOT NULL auto_increment,
`f_name` VARCHAR(50) NULL,
`l_name` VARCHAR(50) NULL,
`username` VARCHAR(50) NOT NULL,
`password` BINARY(64) NOT NULL,
`email` VARCHAR(50) NOT NULL,
`birthdate` DATE NOT NULL,
`profile_pic_url` TEXT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `posts` (
`id` INT NOT NULL auto_increment,
`user_id` INT NOT NULL,
`title` VARCHAR(256) NULL,
`date` DATE NOT NULL,
`text` TEXT NULL,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES users(`id`)
);

CREATE TABLE `medias` (
`id` INT NOT NULL auto_increment,
`url` TEXT NOT NULL,
`type` VARCHAR(50) NOT NULL,
`alt_text` VARCHAR(256) NULL,
`caption` VARCHAR(256) NULL,
PRIMARY KEY (`id`)
);


CREATE TABLE `likes` (
`id` INT NOT NULL auto_increment,
`user_id` INT NOT NULL,
`post_id` INT NOT NULL,
`date` DATE NOT NULL,
PRIMARY KEY (`id`),
FOREIGN KEY (`user_id`) REFERENCES users(`id`),
FOREIGN KEY (`post_id`) REFERENCES posts(`id`)
);

CREATE TABLE `media_post` (
`id` INT NOT NULL auto_increment,
`media_id` INT NOT NULL,
`post_id` INT NOT NULL,
PRIMARY KEY (`id`),
FOREIGN KEY (`media_id`) REFERENCES medias(`id`),
FOREIGN KEY (`post_id`) REFERENCES posts(`id`)
);