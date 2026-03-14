CREATE TABLE `users`(
    `id` INT UNSIGNED PRIMARY KEY NOT NULL,
    `first_name` VARCHAR(64) NOT NULL ,
    `last_name` VARCHAR(64) NOT NULL ,
    `username` VARCHAR(64) NOT NULL UNIQUE ,
    `password` VARCHAR(128) NOT NULL UNIQUE
);

CREATE TABLE `schools` (
    `id` INT UNSIGNED PRIMARY KEY NOT NULL,
    `name` VARCHAR(64) NOT NULL UNIQUE ,
    `type` VARCHAR(32) NOT NULL,
    `loaction` VARCHAR(240) NOT NULL ,
    `year` SMALLINT UNSIGNED
    );

CREATE TABLE `companies`(
    `id` INT UNSIGNED PRIMARY KEY NOT NULL,
    `name` VARCHAR(128) NOT NULL UNIQUE ,
    `industry` VARCHAR(64) NOT NULL ,
    `location` VARCHAR(240) NOT NULL
    );

CREATE TABLE `people_connections` (
    `user_id` INT UNSIGNED NOT NULL ,
    `person_id` INT UNSIGNED NOT NULL ,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`person_id`) REFERENCES `users`(`id`)
    );

CREATE TABLE `schools_connections` (
    `user_id` INT UNSIGNED NOT NULL ,
    `school_id` INT UNSIGNED NOT NULL ,
    `start_date`  DATE NOT NULL ,
    `end_date` DATE NOT NULL ,
    `degree` VARCHAR(5) ,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`)
    );

CREATE TABLE `companies_connections` (
    `user_id` INT UNSIGNED NOT NULL ,
    `company_id` INT UNSIGNED NOT NULL ,
    `start_date`  DATE NOT NULL ,
    `end_date` DATE ,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`) ,
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
    );
