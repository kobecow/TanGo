CREATE TABLE `M_users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_status_id` int NOT NULL,
  `validation_status_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `last_login_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL,
  `age_group_id` int NOT NULL,
  `sex_id` int NOT NULL,
  `country_id` int NOT NULL
);

CREATE TABLE `M_validations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `validation_status` ENUM ('normal', 'canceled', 'banned', 'test', 'err') UNIQUE NOT NULL
);

CREATE TABLE `M_auths` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `auth_status` ENUM ('user', 'tester', 'demo', 'dev', 'viewer', 'admin', 'err') UNIQUE NOT NULL
);

CREATE TABLE `M_age_groups` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `age_group` ENUM ('15', '20', '25', '30', '35', '40', '45', '50', '55', '60', '65', '200') UNIQUE NOT NULL
);

CREATE TABLE `M_sex` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `sex` ENUM ('male', 'female', 'unknown', 'err') UNIQUE NOT NULL
);

CREATE TABLE `M_country_code` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `country_code` ENUM ('ca', 'us', 'zh', 'ja', 'uk', 'in', 'unknown', 'err') UNIQUE
);

CREATE TABLE `M_words` (
  `id` int AUTO_INCREMENT,
  `direct_flag` boolean NOT NULL,
  `name` varchar(255) NOT NULL,
  `English_id` int,
  `Japanese_id` int,
  `English_pronounciation_path` varchar(255),
  `English_sentence_id` int,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL,
  PRIMARY KEY (`id`, `direct_flag`)
);

CREATE TABLE `M_English_meaning` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `word_id` int NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL
);

CREATE TABLE `M_Japanese_meaning` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `word_id` int NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL
);

CREATE TABLE `M_English_sentence` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `word_id` int NOT NULL,
  `sentence` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL
);

CREATE TABLE `T_dummy_learning` (
  `id` int AUTO_INCREMENT,
  `direct_flag` boolean NOT NULL,
  `learning_status_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL,
  `next_ts` timestamp NOT NULL,
  PRIMARY KEY (`id`, `direct_flag`)
);

CREATE TABLE `M_learning_status` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `learning_status` ENUM ('added', 'first', 'second', 'third', 'forth', 'unknown', 'err') UNIQUE NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL
);

CREATE TABLE `M_API` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `Name` varchar(255) UNIQUE,
  `count_id` int NOT NULL,
  `status` ENUM ('available', 'not_available', 'banned', 'stop', 'unknown', 'err') NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL
);

CREATE TABLE `T_APICALL` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `max` int NOT NULL,
  `current_count` int NOT NULL,
  `next_reset_ts` timestamp NOT NULL,
  `cycle_duration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `update_ts` timestamp NOT NULL
);

CREATE TABLE `auth_api` (
  `auth_id` int NOT NULL,
  `api_id` int NOT NULL,
  PRIMARY KEY (`auth_id`, `api_id`)
);

ALTER TABLE `M_users` ADD FOREIGN KEY (`validation_status_id`) REFERENCES `M_validations` (`id`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`auth_status_id`) REFERENCES `M_auths` (`id`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`age_group_id`) REFERENCES `M_age_groups` (`id`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`sex_id`) REFERENCES `M_sex` (`id`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`country_id`) REFERENCES `M_country_code` (`id`);

ALTER TABLE `M_English_meaning` ADD FOREIGN KEY (`word_id`) REFERENCES `M_words` (`English_id`);

ALTER TABLE `M_Japanese_meaning` ADD FOREIGN KEY (`word_id`) REFERENCES `M_words` (`Japanese_id`);

ALTER TABLE `M_English_sentence` ADD FOREIGN KEY (`word_id`) REFERENCES `M_words` (`English_id`);

ALTER TABLE `T_dummy_learning` ADD FOREIGN KEY (`id`) REFERENCES `M_words` (`id`);

ALTER TABLE `T_dummy_learning` ADD FOREIGN KEY (`learning_status_id`) REFERENCES `M_learning_status` (`id`);

ALTER TABLE `T_APICALL` ADD FOREIGN KEY (`id`) REFERENCES `M_API` (`id`);
