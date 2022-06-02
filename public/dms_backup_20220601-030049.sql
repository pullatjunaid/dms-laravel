

CREATE TABLE `destinations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `destinations_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO destinations VALUES("1","Department of computer Science","D.C.S","Department of Computer Science Pondicherry university","2022-05-30 14:59:22","2022-05-30 14:59:22");
INSERT INTO destinations VALUES("2","Vice Chancellor","V.C","vice chancellor pondicherry university","2022-05-31 05:57:48","2022-05-31 05:57:48");



CREATE TABLE `entries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_whom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_whom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entries_ref_id_unique` (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO entries VALUES("1","PU/SET/DCS/22-23/1","1","1","test","2022-05-30 00:00:00","2022-05-30 00:00:00","test","2022-05-30 15:00:00","2022-05-30 15:00:00");
INSERT INTO entries VALUES("2","PU/SET/DCS/22-23/2","1","1","s","2022-05-30 00:00:00","2022-05-30 00:00:00","s","2022-05-30 15:03:09","2022-05-30 15:03:09");
INSERT INTO entries VALUES("3","PU/SET/DCS/22-23/3","1","1","fds","2022-05-30 00:00:00","2022-05-30 00:00:00","1","2022-05-30 15:03:53","2022-05-30 15:03:53");
INSERT INTO entries VALUES("4","PU/SET/DCS/22-23/4","1","1","hgj","2022-05-30 00:00:00","2022-05-30 00:00:00","1","2022-05-30 15:09:17","2022-05-30 15:09:17");
INSERT INTO entries VALUES("5","PU/SET/DCS/22-23/5","1","1","sd","2022-05-30 00:00:00","2022-05-30 00:00:00","1","2022-05-30 15:10:16","2022-05-30 15:10:18");
INSERT INTO entries VALUES("6","PU/SET/DCS/22-23/6","2","1","Make it","2022-05-31 00:00:00","2022-05-31 00:00:00","1","2022-05-31 06:09:01","2022-05-31 06:09:01");



CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("18","2022_04_28_094403_drop_user_table","1");
INSERT INTO migrations VALUES("57","2014_10_12_000000_create_users_table","2");
INSERT INTO migrations VALUES("58","2014_10_12_100000_create_password_resets_table","2");
INSERT INTO migrations VALUES("59","2019_08_19_000000_create_failed_jobs_table","2");
INSERT INTO migrations VALUES("60","2019_12_14_000001_create_personal_access_tokens_table","2");
INSERT INTO migrations VALUES("61","2022_04_28_093050_entries","2");
INSERT INTO migrations VALUES("62","2022_05_03_115202_create_destinations_table","2");



CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO personal_access_tokens VALUES("1","App\User","1","dms","22a341ccc3711cddeada1278b2c16fada8b149145fa3502133bfd530015142b7","["*"]","","2022-05-30 15:07:25","2022-05-30 15:07:25");
INSERT INTO personal_access_tokens VALUES("2","App\User","1","dms","b43a3a2d4ab227835ca2215c50f4589efa818ad02ba21ed0d83282a32075e4c3","["*"]","","2022-05-30 18:43:34","2022-05-30 18:43:34");
INSERT INTO personal_access_tokens VALUES("3","App\User","1","dms","2f20d6787610892231d1bc099cd9b1839fde5edb9a3774c31e01b6ff8b702e09","["*"]","","2022-05-31 07:47:32","2022-05-31 07:47:32");
INSERT INTO personal_access_tokens VALUES("4","App\User","1","dms","f610ac862c30c74c82aa09398df6c0d92e1c7a3fa5cf5eff1aab5c23286381aa","["*"]","","2022-05-31 07:48:33","2022-05-31 07:48:33");
INSERT INTO personal_access_tokens VALUES("5","App\User","1","dms","8c89594806a85adf8da3baf32484564fc8db3173e9c04bc1b497bdb5f9043f0a","["*"]","","2022-05-31 10:30:42","2022-05-31 10:30:42");
INSERT INTO personal_access_tokens VALUES("6","App\User","1","dms","8df25fa04b9b90e06241db3194e55411086fe172c38b53bb1f57a54099ed46c5","["*"]","","2022-05-31 11:24:04","2022-05-31 11:24:04");
INSERT INTO personal_access_tokens VALUES("7","App\User","1","dms","54943b1fca36ceb0c866fb89aa5bfd7ebeedc8dbd4edbe011b8a7d2c1db405b4","["*"]","","2022-05-31 11:24:54","2022-05-31 11:24:54");
INSERT INTO personal_access_tokens VALUES("8","App\User","1","dms","d2e3ad179a66a7b2198d8f19225e3edf3b9358bec1cd8d2dc3af1c93940428b1","["*"]","","2022-05-31 11:25:54","2022-05-31 11:25:54");



CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","Admin","admin@gmail.com","","123456","administrator","","2022-05-30 15:07:17","2022-06-01 14:58:05");

