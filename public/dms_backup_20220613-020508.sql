

CREATE TABLE `backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `destinations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `destinations_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO destinations VALUES("1","Department of computer Science","D.C.S","Department of Computer Science, Pondicherry University","2022-05-30 14:59:22","2022-06-13 10:54:45");
INSERT INTO destinations VALUES("2","Vice Chancellor","V.C","vice chancellor pondicherry university","2022-05-31 05:57:48","2022-05-31 05:57:48");
INSERT INTO destinations VALUES("3","Students","Students","Students of Pondicherry Univeristy","2022-06-04 13:20:27","2022-06-10 07:17:58");
INSERT INTO destinations VALUES("4","Department of International Business","D.I.B","Department of International Business Pondicherry University","2022-06-04 13:22:10","2022-06-04 13:22:10");
INSERT INTO destinations VALUES("5","Department of Banking Technology","D.B.T","Department of Banking Technology Pondicherry University","2022-06-04 13:22:55","2022-06-04 13:22:55");
INSERT INTO destinations VALUES("6","Department of Commerce","D.O.C","Department of Commerce Pondicherry University","2022-06-04 13:23:39","2022-06-04 13:23:39");
INSERT INTO destinations VALUES("7","Department of Economics","Dept. of Eco","Department of Economics Pondicherry University","2022-06-04 13:24:08","2022-06-10 07:18:16");
INSERT INTO destinations VALUES("8","Department of Tourism Studies","D.T.S","Department of Tourism Studies Pondicherry University","2022-06-04 13:24:36","2022-06-04 13:24:36");
INSERT INTO destinations VALUES("9","Department of Statistics","Dept. of Stati","Department of Statistics Pondicherry University","2022-06-04 13:34:23","2022-06-10 07:17:47");
INSERT INTO destinations VALUES("10","Department of Mathematics","Dept. of Math","Department of Mathematics Pondicherry University","2022-06-04 13:35:01","2022-06-10 07:17:22");



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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO entries VALUES("1","PU/SET/DCS/22-23/1","1","1","test","2022-05-30 00:00:00","2022-05-30 00:00:00","test","2022-05-30 15:00:00","2022-05-30 15:00:00");
INSERT INTO entries VALUES("2","PU/SET/DCS/22-23/2","3","1","s","2022-05-30 00:00:00","2022-05-30 00:00:00","s","2022-05-30 15:03:09","2022-06-04 13:35:26");
INSERT INTO entries VALUES("7","PU/SET/DCS/22-23/7","10","2","Pondicherry University","2022-06-04 00:00:00","2022-06-15 00:00:00","1","2022-06-04 13:35:54","2022-06-04 13:35:55");
INSERT INTO entries VALUES("8","PU/SET/DCS/22-23/8","7","1","Pondicherry University","2022-06-04 00:00:00","2022-06-04 00:00:00","1","2022-06-04 13:36:12","2022-06-04 13:36:12");
INSERT INTO entries VALUES("9","PU/SET/DCS/22-23/9","8","6","Pondicherry University","2022-06-04 00:00:00","2022-06-04 00:00:00","1","2022-06-04 13:36:31","2022-06-04 13:36:33");
INSERT INTO entries VALUES("10","PU/SET/DCS/22-23/10","3","4","Pondicherry University","2022-06-04 00:00:00","2022-06-04 00:00:00","1","2022-06-04 13:37:10","2022-06-04 13:37:11");
INSERT INTO entries VALUES("11","PU/SET/DCS/22-23/11","5","2","Pondicherry University","2022-06-04 00:00:00","2022-06-04 00:00:00","1","2022-06-04 13:37:24","2022-06-04 13:37:25");



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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("18","2022_04_28_094403_drop_user_table","1");
INSERT INTO migrations VALUES("57","2014_10_12_000000_create_users_table","2");
INSERT INTO migrations VALUES("58","2014_10_12_100000_create_password_resets_table","2");
INSERT INTO migrations VALUES("59","2019_08_19_000000_create_failed_jobs_table","2");
INSERT INTO migrations VALUES("60","2019_12_14_000001_create_personal_access_tokens_table","2");
INSERT INTO migrations VALUES("61","2022_04_28_093050_entries","2");
INSERT INTO migrations VALUES("62","2022_05_03_115202_create_destinations_table","2");
INSERT INTO migrations VALUES("63","2022_06_13_134843_create_backup_table","3");



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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO personal_access_tokens VALUES("1","App\User","1","dms","22a341ccc3711cddeada1278b2c16fada8b149145fa3502133bfd530015142b7","["*"]","","2022-05-30 15:07:25","2022-05-30 15:07:25");
INSERT INTO personal_access_tokens VALUES("2","App\User","1","dms","b43a3a2d4ab227835ca2215c50f4589efa818ad02ba21ed0d83282a32075e4c3","["*"]","","2022-05-30 18:43:34","2022-05-30 18:43:34");
INSERT INTO personal_access_tokens VALUES("3","App\User","1","dms","2f20d6787610892231d1bc099cd9b1839fde5edb9a3774c31e01b6ff8b702e09","["*"]","","2022-05-31 07:47:32","2022-05-31 07:47:32");
INSERT INTO personal_access_tokens VALUES("4","App\User","1","dms","f610ac862c30c74c82aa09398df6c0d92e1c7a3fa5cf5eff1aab5c23286381aa","["*"]","","2022-05-31 07:48:33","2022-05-31 07:48:33");
INSERT INTO personal_access_tokens VALUES("5","App\User","1","dms","8c89594806a85adf8da3baf32484564fc8db3173e9c04bc1b497bdb5f9043f0a","["*"]","","2022-05-31 10:30:42","2022-05-31 10:30:42");
INSERT INTO personal_access_tokens VALUES("6","App\User","1","dms","8df25fa04b9b90e06241db3194e55411086fe172c38b53bb1f57a54099ed46c5","["*"]","","2022-05-31 11:24:04","2022-05-31 11:24:04");
INSERT INTO personal_access_tokens VALUES("7","App\User","1","dms","54943b1fca36ceb0c866fb89aa5bfd7ebeedc8dbd4edbe011b8a7d2c1db405b4","["*"]","","2022-05-31 11:24:54","2022-05-31 11:24:54");
INSERT INTO personal_access_tokens VALUES("8","App\User","1","dms","d2e3ad179a66a7b2198d8f19225e3edf3b9358bec1cd8d2dc3af1c93940428b1","["*"]","","2022-05-31 11:25:54","2022-05-31 11:25:54");
INSERT INTO personal_access_tokens VALUES("9","App\User","2","dms","71ac964c21f5cc6c2b802bd3e3ecd1b909587a75ea868f4f4936ebd4396406f3","["*"]","","2022-06-02 15:04:12","2022-06-02 15:04:12");
INSERT INTO personal_access_tokens VALUES("10","App\User","2","dms","5533a1054ca909aa802f08413f5370624db7211a3abee63f3fe5841f980a22a9","["*"]","","2022-06-02 15:06:56","2022-06-02 15:06:56");
INSERT INTO personal_access_tokens VALUES("11","App\User","2","dms","7839b552aa143a2c5f93c0cbd7b290636db28e3fceb4d68febfefb9e8a07b170","["*"]","","2022-06-02 17:20:36","2022-06-02 17:20:36");
INSERT INTO personal_access_tokens VALUES("12","App\User","2","dms","1134be8e5fc1f47c99254e659473a9b3d384d8d22d833965e0d92dca38882be7","["*"]","","2022-06-02 17:22:32","2022-06-02 17:22:32");
INSERT INTO personal_access_tokens VALUES("13","App\User","2","dms","6c5bca6c3aad8b330a399c21ef806e388d77f8d79f30b7b4ddb00f2ba9fcc1f0","["*"]","","2022-06-02 17:27:31","2022-06-02 17:27:31");
INSERT INTO personal_access_tokens VALUES("14","App\User","1","dms","31bf51426806c4363634045274b95ecfea5689a463c7bb8fa4bf5ba5f0db8f54","["*"]","","2022-06-02 17:32:28","2022-06-02 17:32:28");
INSERT INTO personal_access_tokens VALUES("15","App\User","2","dms","462c601b7caf8be549751ceb5b44f53a549cd2f270d6ec6f50eed555678347db","["*"]","","2022-06-02 17:35:03","2022-06-02 17:35:03");
INSERT INTO personal_access_tokens VALUES("16","App\User","1","dms","f5e7b290a4e95d3da4465f63bfe2a8f5aac153d56713805e5737e49e2228e8bd","["*"]","","2022-06-04 12:56:12","2022-06-04 12:56:12");
INSERT INTO personal_access_tokens VALUES("17","App\User","1","dms","587c68dc9b06fd9901317673cca18b672637a59015fb606d111075ad5e961fbd","["*"]","","2022-06-10 06:39:12","2022-06-10 06:39:12");
INSERT INTO personal_access_tokens VALUES("18","App\User","4","dms","bff2ff02ee27160dc86c7135e3aabcedf79fc5e6be8bd4526ecc58398b0f12ff","["*"]","","2022-06-13 10:56:04","2022-06-13 10:56:04");
INSERT INTO personal_access_tokens VALUES("19","App\User","1","dms","d4735c6ce4bfafc6b8148b12b7d44ee4c563ab13ac7cc9b79fef9ed37948133f","["*"]","","2022-06-13 11:01:20","2022-06-13 11:01:20");



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","Admin","admin@gmail.com","","$2y$10$cx/n9Awdxr7S0Sz7yRstneOpX9ykLk6kywDk7q1qFxNnWqjNffWoe","administrator","","2022-05-30 15:07:17","2022-06-02 17:32:03");
INSERT INTO users VALUES("2","Junaid","junaid@gmail.com","","$2y$10$/JOarKTb1FHjf5vaqIXk9ujadUAon8BzhELb.gt8/u4blC3evXT9.","viewer","","2022-06-02 15:04:01","2022-06-02 17:28:12");
INSERT INTO users VALUES("3","Anshid","anshid@gmail.com","","$2y$10$S9gq46eA4JCA9i4.gKZ7P.CkYZCUjtdUwaqGABMyET1l/7RhdJWLG","viewer","","2022-06-04 13:51:33","2022-06-04 13:51:33");
INSERT INTO users VALUES("4","Sivakumar","sivakumar@gmail.com","","$2y$10$JVTFFdtYoba5Hn/fPW0R9eB012JP0FnDfWF6PRj1H4XKpJ4dWCy1W","modifier","","2022-06-04 13:51:55","2022-06-13 10:55:40");

