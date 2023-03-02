CREATE DATABASE IF NOT EXISTS `yii2_tutorial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yii2_tutorial`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `slug` varchar(1024) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_user_created_by_fk` (`created_by`),
  ADD KEY `article_user_updated_by_fk` (`updated_by`);

ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `article`
  ADD CONSTRAINT `article_user_created_by_fk` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `article_user_updated_by_fk` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);