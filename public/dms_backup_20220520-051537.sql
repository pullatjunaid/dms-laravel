

CREATE TABLE `destinations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `destinations_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO destinations VALUES("1","Vice Chancellor","","2022-05-04 19:07:37","2022-05-11 15:19:20");
INSERT INTO destinations VALUES("2","Registrar","Dr.B. Chithra
Officers (Administrative/Technical/Scientific)","2022-05-04 19:08:09","2022-05-08 05:01:51");
INSERT INTO destinations VALUES("3","Purchase and Stores","Purchase & Stores - Pondicherry University","2022-05-08 10:25:28","2022-05-08 10:25:28");
INSERT INTO destinations VALUES("4","CV Raman Hostel","","2022-05-08 10:29:50","2022-05-11 15:20:17");
INSERT INTO destinations VALUES("5","Students","","2022-05-11 10:26:22","2022-05-11 10:26:22");
INSERT INTO destinations VALUES("6","Madame Curie Hostel","Dr. Valerie dkhar","2022-05-11 15:21:39","2022-05-11 15:21:39");
INSERT INTO destinations VALUES("7","Department of Mathematics","Head of Department
Dr. Rajeswari Seshadri","2022-05-11 15:22:52","2022-05-11 15:22:52");
INSERT INTO destinations VALUES("8","Department of Statistics","Head of Department
Dr. Kiruthika","2022-05-11 15:23:21","2022-05-11 15:23:21");
INSERT INTO destinations VALUES("9","Department of Applied Psychology","Head of Department
Dr. B. Rangaiah","2022-05-11 15:24:03","2022-05-11 15:24:03");
INSERT INTO destinations VALUES("10","Department of Earth Sciences","Head of Department
Dr. Rajneesh Bhutani","2022-05-11 15:25:07","2022-05-11 15:25:07");
INSERT INTO destinations VALUES("11","Department of Chemistry","Head of Department
Dr. Bala. Manimaran","2022-05-11 15:25:27","2022-05-11 15:25:27");
INSERT INTO destinations VALUES("12","Department of Physics","Head of Department
Dr. R. Sivakumar","2022-05-11 15:25:50","2022-05-11 15:25:50");
INSERT INTO destinations VALUES("13","Department of Computer Science","Computer Science department","2022-05-11 22:42:06","2022-05-11 22:42:06");
INSERT INTO destinations VALUES("14","Ananda Rangapillai Library - Pondicherry University","Pondicherry University Library","2022-05-12 05:20:32","2022-05-12 05:20:32");



CREATE TABLE `entries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_whom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_whom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entries_ref_id_unique` (`ref_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO entries VALUES("1","PU/SET/DCS/22-23/1","2","1","This letter is from registrar to VC","","","2022-05-04 19:08:32","2022-05-04 19:08:33");
INSERT INTO entries VALUES("2","PU/SET/DCS/22-23/2","1","2","vc to reg","","","2022-05-06 09:15:08","2022-05-06 09:15:08");
INSERT INTO entries VALUES("3","PU/SET/DCS/22-23/3","4","2","hghjghj gjhgj hgjhj","","","2022-05-08 16:24:55","2022-05-08 16:24:55");
INSERT INTO entries VALUES("4","PU/SET/DCS/22-23/4","3","2","test","","","2022-05-09 08:59:14","2022-05-09 08:59:14");
INSERT INTO entries VALUES("5","PU/SET/DCS/22-23/5","3","2","test","","","2022-05-09 10:04:24","2022-05-09 10:04:25");
INSERT INTO entries VALUES("6","PU/SET/DCS/22-23/6","2","2","","","","2022-05-09 10:04:33","2022-05-09 10:04:34");
INSERT INTO entries VALUES("7","PU/SET/DCS/22-23/7","2","2","dssdsa","","","2022-05-09 17:15:10","2022-05-09 17:15:11");
INSERT INTO entries VALUES("8","PU/SET/DCS/22-23/8","3","1","fdsfdsfds","","","2022-05-09 17:20:42","2022-05-09 17:20:42");
INSERT INTO entries VALUES("9","PU/SET/DCS/22-23/9","4","3","fdsfds","","","2022-05-09 17:24:49","2022-05-09 17:24:50");
INSERT INTO entries VALUES("10","PU/SET/DCS/22-23/10","4","3","fdsf","","","2022-05-09 17:25:35","2022-05-09 17:25:35");
INSERT INTO entries VALUES("11","PU/SET/DCS/22-23/11","3","2","fdsf","","","2022-05-09 17:26:26","2022-05-09 17:26:26");
INSERT INTO entries VALUES("12","PU/SET/DCS/22-23/12","4","2","fd","2022-05-09 00:00:00","2022-05-09 17:27:12","2022-05-09 17:27:12","2022-05-09 17:27:12");
INSERT INTO entries VALUES("13","PU/SET/DCS/22-23/13","3","1","fd","2022-05-09 00:00:00","2022-05-09 00:00:00","2022-05-09 17:27:43","2022-05-09 17:27:43");
INSERT INTO entries VALUES("14","PU/SET/DCS/22-23/14","3","1","fd","2022-05-09 00:00:00","2022-05-09 00:00:00","2022-05-09 17:28:27","2022-05-09 17:28:27");
INSERT INTO entries VALUES("15","PU/SET/DCS/22-23/15","3","4","HI hwlllo","2022-05-09 00:00:00","2022-05-30 00:00:00","2022-05-09 17:28:42","2022-05-09 17:45:33");
INSERT INTO entries VALUES("16","PU/SET/DCS/22-23/16","3","1","","2022-05-09 00:00:00","2022-05-09 00:00:00","2022-05-09 18:16:24","2022-05-09 18:16:24");
INSERT INTO entries VALUES("17","PU/SET/DCS/22-23/17","5","13","schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for schorlarhsip and other details from studetn for","2022-05-12 00:00:00","2022-05-12 00:00:00","2022-05-12 08:20:56","2022-05-12 16:56:16");



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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("18","2022_04_28_094403_drop_user_table","1");
INSERT INTO migrations VALUES("51","2014_10_12_000000_create_users_table","2");
INSERT INTO migrations VALUES("52","2014_10_12_100000_create_password_resets_table","2");
INSERT INTO migrations VALUES("53","2019_08_19_000000_create_failed_jobs_table","2");
INSERT INTO migrations VALUES("54","2019_12_14_000001_create_personal_access_tokens_table","2");
INSERT INTO migrations VALUES("55","2022_04_28_093050_entries","2");
INSERT INTO migrations VALUES("56","2022_05_03_115202_create_destinations_table","2");



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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO personal_access_tokens VALUES("1","App\User","1","dms","12854cbf16dbf6bba4f4f623845d5810a9cfa5f1bae21141e8439995607e70e1","["*"]","","2022-05-04 18:17:14","2022-05-04 18:17:14");
INSERT INTO personal_access_tokens VALUES("2","App\User","1","dms","e76b8f96cc78fd61f67d9fd5ff2a02ec1422826e04814d9076b0de02f949bbd4","["*"]","","2022-05-06 08:10:19","2022-05-06 08:10:19");
INSERT INTO personal_access_tokens VALUES("3","App\User","1","dms","ff51dc88d81d7da57141a5512bdfc960d85ad8df3ccce9a831f2a3b0693ff566","["*"]","","2022-05-09 08:42:02","2022-05-09 08:42:02");
INSERT INTO personal_access_tokens VALUES("4","App\User","1","dms","e6ccf70305bd87331bfc6fd6fdfe9caf5b8b9d2c2822030b48ff2e10d5adf93b","["*"]","","2022-05-09 09:45:18","2022-05-09 09:45:18");
INSERT INTO personal_access_tokens VALUES("5","App\User","1","dms","fb74599149a3193d372e05eb4ed172b5cc098225e95fc27541e525725491026d","["*"]","","2022-05-09 09:47:18","2022-05-09 09:47:18");
INSERT INTO personal_access_tokens VALUES("6","App\User","1","dms","5e99cb3961e4598bf2fbe13409cf8d27d66f47dca1a350e4c5402d4707fa9357","["*"]","","2022-05-09 09:51:07","2022-05-09 09:51:07");
INSERT INTO personal_access_tokens VALUES("7","App\User","1","dms","778390c7187b0e6eeaf6462b658449f34688d8b136a9ad48556a6110365fc67c","["*"]","","2022-05-11 10:22:49","2022-05-11 10:22:49");
INSERT INTO personal_access_tokens VALUES("8","App\User","1","dms","ac5c147a82fbded541ec30f3ae8a98d9ff12800f280bd9d98ae36e6c42583dcd","["*"]","","2022-05-11 10:23:03","2022-05-11 10:23:03");
INSERT INTO personal_access_tokens VALUES("9","App\User","1","dms","5e042adf4ddf7094f9695ccf2464e23acb95da550cb70251b0a4a2a39f479b8a","["*"]","","2022-05-11 10:24:29","2022-05-11 10:24:29");
INSERT INTO personal_access_tokens VALUES("10","App\User","1","dms","1e38e575cd3c5b289fc56720017aeb2f7ec8612f6e6bced490541fb98c468af6","["*"]","","2022-05-11 10:25:26","2022-05-11 10:25:26");
INSERT INTO personal_access_tokens VALUES("11","App\User","1","dms","7e79de7f35bb29f1b3614c8d119bc8da72681e0f94e92b2417e30b9629130547","["*"]","","2022-05-11 10:25:50","2022-05-11 10:25:50");
INSERT INTO personal_access_tokens VALUES("12","App\User","1","dms","6f4a2f122b634e1b6f1d6a5e87e43c25766d1ea156b40801d341ec1b7001b65e","["*"]","","2022-05-11 10:57:23","2022-05-11 10:57:23");
INSERT INTO personal_access_tokens VALUES("13","App\User","1","dms","5d887f7d10b9bf718e7d90fbd1b04bc8634d30f394de719a5aa80b46e8405a86","["*"]","","2022-05-13 15:42:28","2022-05-13 15:42:28");
INSERT INTO personal_access_tokens VALUES("14","App\User","1","dms","1b0c80f676702c3f7e4bd56b81cb76da7af4fef617124195b936dcd37cb8ef2c","["*"]","","2022-05-18 14:45:35","2022-05-18 14:45:35");
INSERT INTO personal_access_tokens VALUES("15","App\User","1","dms","510a06e2772a68bfe93a14e3a5b1a6dba32fed4f2ceea6bd399b55c56b17e9cc","["*"]","","2022-05-19 14:01:14","2022-05-19 14:01:14");
INSERT INTO personal_access_tokens VALUES("16","App\User","3","dms","771c92a7a5c276881fb9d659eba5b75537a20d8bcefe3a40fd7d4e9de1f7caa5","["*"]","","2022-05-19 14:18:45","2022-05-19 14:18:45");
INSERT INTO personal_access_tokens VALUES("17","App\User","3","dms","2cb13beac88b7306c6217078ae2cb8a1a344bffda1f7aa0ad890a59684a53558","["*"]","","2022-05-19 14:19:34","2022-05-19 14:19:34");
INSERT INTO personal_access_tokens VALUES("18","App\User","3","dms","2b7e4d78a0229c69f2c97f2fdfdfd1e4c906127a59f7ca655ac91209d0aa20b5","["*"]","","2022-05-19 14:19:59","2022-05-19 14:19:59");
INSERT INTO personal_access_tokens VALUES("19","App\User","3","dms","f1a62221a6603751ad13dcddb60eba008e739fe611805ecda1dc92ac8527dfdf","["*"]","","2022-05-19 14:22:00","2022-05-19 14:22:00");
INSERT INTO personal_access_tokens VALUES("20","App\User","3","dms","d42f5000e16cd77795e4c5eb80e4c558818c0278b819a0a7e8fa0349eb328cf1","["*"]","","2022-05-19 14:23:09","2022-05-19 14:23:09");



CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","Admin","admin@gmail.com","","$2y$10$s/sh1DHIlYKHLtfG/Zvug.guSld.EfEnOY29xZQE.IIpr6EiP/2ha","","2022-05-04 18:17:13","2022-05-04 18:17:13","");
INSERT INTO users VALUES("2","fdsf","admin2@gmail.com","","$2y$10$TOozV4ltPSSohNR9M9N3meOGb/yyrR.4Cq0xUFBE/xp4uzvYTp4uG","","2022-05-15 10:18:48","2022-05-15 10:18:48","app_user");
INSERT INTO users VALUES("3","Junaid","junaid@gmail.com","","$2y$10$oBJZn.OKdNRCeJAFX2OOAu1hMIac1gq8fu23XhYuUycjdB4iK3phe","","2022-05-19 14:18:24","2022-05-19 14:18:24","app_user");

