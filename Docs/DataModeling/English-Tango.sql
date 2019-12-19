CREATE TABLE `M_users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_status` ENUM ('user', 'tester', 'demo', 'dev', 'viewer', 'admin', 'err') NOT NULL,
  `validation_status` ENUM ('normal', 'canceled', 'banned', 'test', 'err') NOT NULL,
  `created_at` timestamp NOT NULL,
  `last_login_at` timestamp NOT NULL,
  `age_group` ENUM ('15', '20', '25', '30', '35', '40', '45', '50', '55', '60', '65', '200') NOT NULL,
  `sex` ENUM ('male', 'female', 'unknown', 'err') NOT NULL,
  `country_code` ENUM ('ca', 'us', 'zh', 'ja', 'uk', 'in', 'unknown', 'err') NOT NULL
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

ALTER TABLE `M_users` ADD FOREIGN KEY (`validation_status`) REFERENCES `M_validations` (`validation_status`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`auth_status`) REFERENCES `M_auths` (`auth_status`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`age_group`) REFERENCES `M_age_groups` (`age_group`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`sex`) REFERENCES `M_sex` (`sex`);

ALTER TABLE `M_users` ADD FOREIGN KEY (`country_code`) REFERENCES `M_country_code` (`country_code`);
