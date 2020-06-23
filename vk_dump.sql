#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'iste', '1973-04-27 07:30:23', '1999-02-03 00:24:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'maxime', '2013-11-10 05:47:42', '1995-10-24 00:40:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'voluptas', '1995-01-19 22:17:44', '2017-01-11 15:51:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'porro', '2006-04-03 13:46:21', '2003-08-09 05:16:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'id', '1999-07-04 12:03:27', '1990-08-28 23:28:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'sunt', '1975-03-25 10:27:27', '1993-12-03 05:12:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'hic', '2004-05-16 14:52:22', '1978-09-10 19:27:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'culpa', '1974-04-16 21:06:19', '2016-09-03 22:11:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'qui', '2004-11-29 02:24:24', '2006-07-12 00:25:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'sit', '2018-12-13 09:48:51', '1976-04-05 02:24:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'veniam', '2007-01-26 07:35:56', '2019-07-21 05:46:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'quia', '2019-05-21 20:04:42', '1971-02-03 09:11:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'tenetur', '1990-04-10 03:58:22', '1970-01-16 01:49:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'aut', '2019-10-23 21:25:04', '2009-08-27 13:07:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'non', '1979-10-15 11:26:52', '1998-03-11 16:11:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'deserunt', '1977-05-08 02:07:10', '2004-07-10 09:44:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'aspernatur', '2004-01-14 14:09:47', '1999-04-19 20:55:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'et', '1988-03-15 01:18:33', '2003-05-06 08:38:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'laboriosam', '1974-05-14 03:27:14', '1981-12-08 14:53:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'quo', '1997-05-27 10:35:44', '1983-08-03 10:57:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'accusamus', '1979-10-13 01:33:03', '1979-09-03 03:17:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'omnis', '2002-07-06 11:25:42', '2000-12-19 01:21:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'mollitia', '2014-11-29 13:24:26', '1992-03-10 04:33:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'eligendi', '1996-04-02 20:18:27', '2016-05-08 12:48:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'repudiandae', '2016-11-20 10:31:27', '2001-05-16 15:14:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'impedit', '2011-01-06 17:30:39', '2007-11-02 23:23:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'ullam', '1993-01-15 08:00:00', '1996-05-06 13:46:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'incidunt', '2001-05-23 13:01:59', '2017-11-18 04:43:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'quis', '1976-10-05 00:46:15', '2001-08-18 07:19:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'consequatur', '1983-02-20 17:06:02', '2010-04-07 02:44:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'nihil', '1996-03-30 00:10:45', '2012-01-13 03:35:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'sed', '2002-11-22 11:49:06', '1974-07-03 20:41:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'cupiditate', '2003-08-01 07:39:44', '1985-04-06 06:30:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'rem', '2011-05-22 12:48:50', '1991-03-01 22:00:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'vel', '2008-12-19 03:48:43', '1998-07-31 02:56:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'adipisci', '2018-02-26 16:09:46', '1992-12-09 17:15:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'doloremque', '2019-10-25 16:23:15', '2010-12-21 02:41:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'ex', '2009-10-17 02:07:02', '1970-10-25 09:12:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'alias', '1990-03-25 09:39:41', '1990-05-27 07:01:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'totam', '1987-05-01 06:11:01', '2017-09-25 20:00:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'illo', '1989-01-07 07:39:48', '1991-11-28 13:30:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'vitae', '2006-05-26 04:31:21', '2004-08-23 21:10:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'natus', '2010-04-22 00:45:48', '2005-12-27 01:51:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'occaecati', '1980-12-26 16:14:03', '1997-02-26 06:53:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'ipsam', '2007-01-12 14:09:25', '1975-05-01 14:15:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'officiis', '1989-04-15 02:46:48', '1982-02-20 16:12:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'ut', '1970-02-22 21:29:02', '1988-10-20 00:45:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'provident', '2003-07-14 22:59:26', '1985-10-04 02:42:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'voluptatem', '1997-01-12 11:12:40', '1981-09-04 19:24:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'corporis', '1989-04-07 21:20:58', '1982-06-19 13:19:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'odio', '1998-07-28 17:17:51', '2007-07-21 05:51:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'fugit', '1972-02-26 00:54:51', '1992-02-07 15:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'labore', '2011-11-05 08:50:34', '1987-05-08 09:14:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'libero', '1973-11-24 14:26:34', '1995-11-15 21:21:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'rerum', '1977-07-27 15:48:45', '1981-05-03 19:49:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'blanditiis', '1988-03-08 14:03:48', '1972-03-09 10:43:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'harum', '2008-08-02 04:59:45', '1983-09-19 21:11:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'perferendis', '1972-01-07 01:42:23', '2005-09-16 21:19:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'quod', '2002-07-21 20:38:36', '2019-02-10 07:52:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'est', '2009-11-06 11:19:00', '2003-12-12 15:03:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'eveniet', '2013-01-30 23:50:18', '1984-07-08 12:51:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'dolore', '2006-10-24 05:15:25', '1973-03-25 21:47:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'dolor', '1977-09-24 08:52:26', '1978-08-18 12:26:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'consectetur', '1980-01-10 06:00:08', '1992-07-07 23:52:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'similique', '1982-09-26 12:19:27', '2002-09-14 13:34:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'inventore', '2004-08-02 07:51:51', '2006-06-13 09:08:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'excepturi', '2006-09-13 14:09:25', '1999-08-03 03:20:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'reiciendis', '1994-11-13 01:14:46', '1986-06-20 18:23:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'velit', '2006-05-31 03:54:51', '2004-02-23 11:27:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'repellat', '1986-05-17 22:53:39', '1997-03-14 23:06:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'dolores', '1996-06-29 16:47:44', '2010-01-30 22:40:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'aperiam', '1972-06-14 00:27:51', '1995-12-22 04:30:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'quam', '1976-04-05 04:37:07', '1976-03-22 12:18:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'voluptate', '2015-01-11 23:55:30', '1999-04-20 19:17:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'neque', '2004-03-08 14:53:21', '1974-06-17 16:24:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'nesciunt', '1975-03-16 08:36:52', '1987-11-17 10:39:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'possimus', '2015-11-28 20:43:17', '2020-04-09 10:18:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'eius', '2006-07-15 07:04:09', '2006-08-06 01:42:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'distinctio', '1982-12-06 00:29:38', '1992-04-25 16:03:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'eos', '1977-05-15 23:29:59', '2009-06-27 23:58:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'saepe', '2003-11-30 06:18:14', '1970-07-15 18:52:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'esse', '2013-12-09 20:35:20', '1996-05-16 11:20:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'suscipit', '1992-03-20 14:52:24', '1975-03-07 08:26:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'error', '1988-11-28 06:39:23', '1977-03-12 18:07:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'necessitatibus', '1976-10-11 07:18:02', '1996-08-19 11:10:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'quos', '2011-01-02 00:33:08', '1991-12-01 09:51:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'nam', '2014-07-04 05:19:13', '1984-06-06 19:03:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'unde', '1989-12-09 08:21:11', '2014-03-10 04:07:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'quidem', '1970-01-03 04:01:52', '2010-05-26 11:54:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'expedita', '2007-07-11 19:19:32', '1970-12-11 04:37:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'exercitationem', '2018-04-05 21:37:54', '1981-07-27 22:31:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'ratione', '2011-01-09 05:51:50', '2002-07-12 08:41:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'cum', '1991-11-14 04:49:28', '1970-09-10 20:50:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'voluptatum', '1980-09-04 03:25:13', '1984-06-11 05:48:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'quibusdam', '2009-05-12 17:11:24', '2020-03-18 22:08:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'pariatur', '1995-03-21 13:14:22', '1972-10-23 11:15:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'assumenda', '1991-11-13 07:19:26', '2005-03-10 16:09:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'molestiae', '2017-09-26 01:37:40', '1998-06-07 16:48:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'voluptatibus', '2011-08-12 22:30:46', '1985-06-02 10:37:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'odit', '2004-03-12 15:10:25', '2019-08-04 19:10:15');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1992-02-25 01:42:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1998-01-09 19:51:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1983-09-14 12:24:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1980-04-21 07:56:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2005-10-07 15:38:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1972-06-18 05:46:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2020-04-18 08:08:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1987-08-10 17:45:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1994-01-02 17:01:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1999-03-19 06:10:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1994-03-29 17:07:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2013-07-03 16:40:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2020-06-10 22:02:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1991-10-16 05:55:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1995-07-27 18:07:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1980-07-13 13:11:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1981-05-08 00:33:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2008-02-15 11:23:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1973-01-24 09:09:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2010-12-23 04:06:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '1985-04-29 20:12:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2013-06-13 18:36:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '1972-11-19 02:50:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '1974-06-12 19:29:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1977-06-20 11:13:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '1975-01-12 22:27:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2008-11-27 14:05:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1988-02-18 10:14:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2009-07-04 11:01:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2010-05-16 16:02:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1997-08-29 07:17:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2020-04-15 20:49:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '1982-04-09 16:14:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2015-03-02 04:34:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '1980-09-12 22:54:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '1994-11-23 11:50:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1972-08-13 18:46:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '2013-07-26 22:33:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '1975-04-04 23:29:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '1996-09-13 07:48:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '1990-03-15 22:48:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1984-09-10 04:54:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '1981-06-08 05:39:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2002-02-20 12:43:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '1995-10-06 05:43:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2010-06-26 06:20:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2010-06-14 06:57:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1973-01-16 21:13:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2003-11-18 15:48:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1971-06-12 17:57:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '1981-03-25 15:54:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1999-02-01 22:07:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '2015-02-10 10:44:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '1997-02-02 21:19:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2016-09-15 18:23:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1991-11-02 21:56:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2013-10-03 15:47:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1974-07-13 12:45:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '2009-12-16 03:15:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '2017-02-22 23:37:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2006-12-23 01:53:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1981-08-07 01:43:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2013-11-23 01:18:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '1985-05-08 06:34:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '2009-07-23 14:59:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2008-03-21 13:16:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2005-01-22 21:56:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2019-09-06 09:27:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '1983-04-14 02:35:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '1970-01-18 17:08:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2010-10-06 22:06:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2006-05-31 21:54:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1970-10-09 19:26:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '1979-04-25 23:27:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '1983-10-03 10:29:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1999-10-31 17:03:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '1999-04-22 07:06:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '1992-08-03 18:04:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2010-05-26 18:38:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1976-01-14 02:11:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1977-10-01 17:30:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2009-01-02 21:49:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '1995-07-14 09:05:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '1972-05-28 22:28:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1995-07-15 16:56:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2009-06-15 14:46:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1998-08-09 01:34:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '1992-07-20 06:19:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1972-08-25 23:23:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1994-10-13 13:45:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2015-04-27 09:13:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1986-01-05 21:12:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1991-01-27 18:46:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1992-11-11 12:20:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '2010-10-11 09:18:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1995-01-15 19:00:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '1996-08-19 18:23:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2018-05-10 12:07:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '1970-12-07 04:54:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '1996-11-07 03:09:04');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 97, 1, '1982-09-30 18:07:37', '1996-02-25 20:10:10', '1981-02-16 15:13:47', '1973-12-31 19:34:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 52, 2, '1972-08-02 14:26:57', '1986-05-03 18:40:08', '2009-12-19 09:36:51', '2006-01-08 08:31:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 94, 3, '1994-07-19 23:09:35', '2009-01-28 10:26:59', '2001-03-01 20:33:45', '1980-08-22 21:39:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 40, 4, '1994-08-03 23:12:18', '2007-02-20 23:18:10', '1985-06-13 16:37:15', '2018-03-06 03:32:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 54, 5, '1979-06-12 08:16:41', '1996-04-30 22:46:28', '2015-08-17 11:14:28', '1995-03-08 01:38:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 64, 1, '2012-09-26 21:19:07', '2002-03-15 16:19:26', '2012-08-29 16:52:47', '1998-09-29 19:55:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 69, 2, '2000-11-20 03:46:49', '1973-12-09 07:06:40', '1995-10-08 06:40:16', '1999-06-25 03:40:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 84, 3, '2018-09-18 07:56:12', '1979-06-13 16:14:45', '1979-01-02 04:59:46', '1970-05-24 00:09:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 77, 4, '1981-06-13 04:42:48', '1986-12-01 12:17:56', '1975-08-20 18:30:35', '1993-05-13 22:23:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 21, 5, '1996-03-29 23:58:57', '1971-03-14 20:43:21', '2014-12-06 10:38:33', '2019-04-07 15:46:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 45, 1, '1993-03-28 03:17:36', '1973-03-19 16:03:30', '1972-04-24 12:08:14', '1980-01-13 23:31:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 53, 2, '1996-10-07 02:55:51', '1994-03-04 00:58:44', '2004-05-06 04:15:12', '2011-06-05 21:19:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 19, 3, '1994-01-03 19:30:18', '1982-01-31 00:56:23', '1971-02-14 20:11:38', '1976-07-28 17:38:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 76, 4, '1985-04-05 08:30:17', '2003-10-07 19:47:33', '1985-01-27 07:11:43', '2011-07-04 00:36:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 48, 5, '2004-08-04 16:37:44', '2006-02-09 09:36:57', '1976-07-31 05:04:25', '1990-09-23 14:42:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 1, 1, '1972-05-21 10:01:59', '1998-04-25 17:49:46', '2000-01-06 17:53:06', '1979-01-06 19:21:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 43, 2, '1979-04-27 02:16:20', '2008-07-13 11:03:01', '1986-02-25 19:13:55', '1990-04-01 08:12:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 86, 3, '1997-11-06 02:11:10', '2018-11-28 06:19:23', '1983-11-08 18:17:37', '1996-08-08 09:42:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 55, 4, '2016-01-17 13:55:57', '2013-12-08 03:49:04', '1999-12-13 04:17:42', '2001-12-01 17:08:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 26, 5, '1993-01-05 11:42:45', '2015-08-14 01:18:55', '1985-12-28 18:38:41', '2007-08-30 21:21:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 80, 1, '2009-09-10 14:44:16', '2008-10-30 06:06:32', '1985-07-24 05:31:37', '2009-02-21 10:15:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 56, 2, '2007-12-19 21:55:05', '1993-02-15 14:59:26', '1990-06-28 21:48:37', '1975-08-08 16:36:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 75, 3, '1971-02-21 23:22:26', '1997-10-19 09:40:00', '2001-09-10 16:22:44', '1970-09-24 20:57:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 99, 4, '1983-02-10 20:39:42', '1996-12-22 13:28:01', '2016-11-10 13:53:45', '2007-04-07 04:33:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 42, 5, '1979-05-01 11:38:16', '2002-01-12 06:16:34', '2011-09-11 15:10:18', '1976-03-18 13:34:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 63, 1, '1981-05-16 17:37:28', '1995-07-17 13:24:36', '1989-01-03 16:56:19', '1996-10-10 16:19:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 87, 2, '1979-10-19 01:24:27', '2014-06-15 04:39:20', '2005-05-27 15:19:37', '1974-01-01 23:08:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 32, 3, '2002-01-25 14:47:33', '2009-12-28 13:58:30', '2013-02-12 06:15:47', '2005-01-16 18:28:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 96, 4, '1990-01-26 12:53:57', '2010-01-22 23:38:49', '2002-09-20 00:18:07', '1973-02-10 14:59:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 22, 5, '2000-03-27 03:50:11', '2008-07-07 05:45:04', '2019-11-02 07:20:50', '2016-05-21 11:32:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 92, 1, '1971-08-16 17:45:02', '1994-10-01 02:55:11', '1998-10-28 10:43:50', '1983-06-17 12:20:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 65, 2, '2018-01-07 19:14:23', '1978-07-02 14:14:32', '2008-06-13 12:31:39', '1987-07-19 03:47:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 39, 3, '2020-04-27 13:19:14', '1975-03-09 00:16:27', '1979-10-08 03:47:05', '1995-01-09 14:32:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 71, 4, '1973-09-13 13:56:48', '1999-03-18 07:07:21', '2008-04-20 00:34:44', '1985-11-10 23:29:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 2, 5, '2014-04-12 17:27:20', '1977-07-17 05:20:07', '2017-12-02 20:30:10', '2003-10-08 07:15:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 51, 1, '2002-07-18 21:51:44', '1972-03-05 20:57:59', '2019-06-07 09:22:13', '2005-01-04 22:36:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 90, 2, '2017-02-23 18:15:21', '1977-12-05 04:03:47', '2019-11-09 20:10:03', '2011-06-03 23:04:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 12, 3, '2003-10-16 08:03:09', '2002-06-10 18:11:38', '2010-06-26 20:20:29', '1992-05-26 02:05:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 28, 4, '1977-11-15 00:24:00', '2020-03-05 02:23:21', '1989-05-23 22:45:54', '1988-11-09 15:43:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 88, 5, '2019-01-12 23:14:03', '2008-02-21 23:49:16', '2009-06-23 02:49:53', '1974-03-29 19:54:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 27, 1, '1974-01-17 10:57:57', '2011-09-29 05:21:28', '2009-03-27 19:30:27', '2005-05-18 15:53:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 67, 2, '2015-04-06 13:13:00', '1998-12-12 21:29:05', '1984-02-17 07:17:04', '1987-01-26 09:49:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 36, 3, '2002-02-05 03:54:04', '2014-01-03 09:34:21', '2013-01-04 20:44:24', '2013-03-12 19:58:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 37, 4, '2013-08-26 01:53:18', '1980-08-24 12:11:58', '1986-09-14 01:34:07', '2016-08-29 14:49:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 9, 5, '1991-03-22 20:33:50', '2002-08-13 23:32:27', '1989-07-26 13:06:58', '1971-09-28 05:32:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 78, 1, '2019-12-01 11:15:00', '1982-04-23 06:18:35', '1995-02-02 09:29:53', '1979-02-06 18:27:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 66, 2, '2007-12-08 20:33:54', '1982-04-24 19:31:09', '1976-10-03 22:43:19', '1975-03-16 09:11:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 100, 3, '1993-11-25 03:26:52', '2009-02-15 20:37:56', '1986-06-13 16:53:11', '1997-06-01 22:46:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 16, 4, '2014-05-06 05:14:36', '1970-06-23 19:12:10', '2012-03-16 08:38:15', '1987-05-30 17:43:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 3, 5, '2006-09-18 00:46:21', '2018-05-17 07:49:12', '2013-08-07 23:15:14', '1974-11-08 04:44:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 44, 1, '1972-08-31 07:01:29', '2014-06-04 21:52:33', '1985-12-07 02:36:16', '1979-10-09 15:58:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 29, 2, '1981-03-13 06:52:32', '1989-11-03 10:05:02', '2020-04-08 07:41:53', '2017-09-01 10:57:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 11, 3, '1985-06-02 03:15:57', '2018-02-06 14:53:07', '1987-01-17 00:38:06', '2003-11-15 11:30:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 68, 4, '2004-05-30 18:21:38', '2017-02-04 10:40:12', '1989-01-30 20:38:02', '2004-03-09 20:11:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 61, 5, '2009-07-30 00:33:03', '1999-05-15 20:09:32', '2012-09-27 21:25:54', '2015-06-19 04:47:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 38, 1, '1989-09-05 01:55:49', '2000-03-15 19:47:00', '1996-03-04 09:01:02', '1971-01-28 00:50:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 14, 2, '1999-12-21 11:26:42', '1981-05-07 10:12:11', '1970-06-12 13:12:27', '1997-12-22 23:22:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 83, 3, '1988-06-17 07:15:36', '2008-11-20 05:51:46', '1993-08-15 06:07:23', '2003-04-10 02:02:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 81, 4, '1976-02-13 07:19:26', '2012-08-06 10:09:37', '1975-04-12 02:21:58', '2004-08-10 12:00:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 46, 5, '2015-01-03 20:16:59', '1992-11-23 07:00:41', '1970-03-08 09:24:40', '1974-06-07 09:53:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 8, 1, '2012-08-12 14:40:48', '1979-10-10 18:32:14', '1983-05-17 20:50:33', '2000-06-25 10:28:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 24, 2, '1996-08-02 14:22:02', '1998-12-05 08:17:43', '1996-05-17 00:05:10', '1987-06-29 18:05:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 47, 3, '2016-06-14 02:05:03', '1999-10-31 13:04:42', '1986-06-21 10:42:59', '1970-08-21 06:05:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 4, 4, '1988-07-02 15:05:15', '2015-05-18 03:58:31', '1985-08-03 12:36:15', '2000-11-28 21:46:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 60, 5, '1977-02-05 08:14:11', '1987-03-02 15:03:06', '2005-12-23 15:27:13', '1985-07-13 09:38:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 95, 1, '2008-01-11 14:34:09', '1979-05-02 09:39:59', '2020-06-14 21:56:18', '2012-05-15 18:20:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 33, 2, '2006-09-11 17:37:52', '2014-09-19 07:27:39', '2015-01-10 11:30:02', '2013-05-31 11:24:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 89, 3, '1999-07-02 06:13:09', '2014-02-14 03:38:26', '1973-12-13 18:55:51', '2007-03-23 16:28:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 6, 4, '2009-02-14 02:06:41', '2004-03-02 12:35:44', '2013-09-27 10:19:06', '1974-09-01 00:14:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 13, 5, '1987-09-01 08:26:28', '2011-04-26 01:06:25', '1987-02-07 02:56:32', '2004-02-15 09:26:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 18, 1, '1975-12-06 06:23:02', '1997-01-24 07:43:39', '2003-04-08 16:16:25', '1970-10-12 05:13:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 50, 2, '2007-04-27 08:10:58', '1993-08-27 22:49:18', '1979-07-10 12:04:49', '2010-11-04 18:06:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 23, 3, '2011-07-12 20:58:46', '1970-04-30 03:46:45', '2010-08-25 09:52:42', '1985-10-23 17:28:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 59, 4, '1996-08-13 22:30:52', '1974-03-29 08:06:44', '1974-05-09 16:31:03', '1971-05-04 04:16:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 73, 5, '2017-01-14 14:16:52', '1995-05-01 18:19:22', '2008-07-16 13:00:52', '2020-06-07 02:20:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 15, 1, '2014-03-18 13:39:09', '2013-04-06 17:56:10', '2012-02-02 06:10:39', '2014-11-24 15:09:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 57, 2, '1992-06-29 00:52:53', '2000-03-27 20:27:37', '1972-08-25 09:59:00', '1988-03-23 12:58:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 7, 3, '2007-08-24 17:15:08', '1990-03-22 10:19:38', '2006-01-03 02:31:36', '2015-03-16 03:10:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 31, 4, '2013-12-19 08:01:52', '1990-11-26 19:24:48', '1988-03-05 18:43:27', '1976-06-25 13:07:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 34, 5, '1973-03-13 18:37:01', '2006-03-25 11:44:23', '1990-05-29 04:41:37', '1975-03-25 06:58:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 79, 1, '1972-08-30 09:48:22', '1981-03-05 06:27:05', '2009-03-30 15:37:05', '2019-01-09 23:27:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 70, 2, '1973-05-29 17:46:59', '1978-11-18 09:00:40', '1992-12-20 19:48:34', '1985-05-01 14:20:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 41, 3, '1986-05-27 15:20:34', '1997-04-28 07:44:19', '1979-10-27 14:54:57', '1974-05-29 21:42:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 49, 4, '1987-12-03 03:41:38', '1980-02-28 16:32:36', '2006-08-17 14:18:28', '1976-02-26 12:20:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 82, 5, '1990-05-19 08:45:35', '1973-08-07 14:00:22', '1984-08-22 08:03:29', '1972-03-04 22:28:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 74, 1, '2010-09-17 14:02:34', '2019-08-21 00:57:11', '1994-04-16 17:48:41', '2006-11-04 15:42:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 10, 2, '1972-10-20 21:56:57', '1985-09-22 11:42:29', '1991-06-21 16:43:14', '1982-12-14 12:25:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 17, 3, '1990-07-12 19:28:39', '1987-02-27 06:16:48', '2018-01-30 08:16:26', '1989-07-23 12:07:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 5, 4, '1984-10-13 13:54:35', '2019-04-27 12:58:34', '2016-08-29 15:58:34', '2016-05-04 04:56:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 98, 5, '2010-03-20 06:58:24', '2011-03-12 19:42:28', '2002-02-14 16:15:36', '1973-10-30 03:02:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 58, 1, '1994-05-07 21:21:18', '1983-04-15 12:25:46', '1997-08-18 17:47:54', '1996-08-13 22:43:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 30, 2, '2006-03-02 08:30:29', '2002-01-03 08:44:18', '1991-11-03 15:09:18', '2011-07-23 18:06:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 85, 3, '2005-12-13 19:41:55', '2018-08-27 07:35:22', '1986-07-17 18:37:48', '1977-06-02 00:09:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 91, 4, '2003-09-22 18:21:45', '1988-09-11 19:14:35', '1992-08-05 03:17:11', '1989-08-11 18:51:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 62, 5, '1999-04-07 05:51:06', '1989-06-17 07:34:15', '2019-11-23 22:47:56', '2010-03-11 08:22:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 20, 1, '2018-08-07 01:36:10', '2001-01-09 20:44:19', '1975-05-18 08:27:40', '2006-03-15 02:17:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 35, 2, '1990-05-13 02:12:15', '1975-06-23 10:00:29', '1982-07-09 02:05:51', '1974-03-23 12:16:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 93, 3, '1990-10-20 03:06:59', '1971-02-16 02:02:06', '1984-07-07 12:06:49', '1987-05-28 17:39:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 72, 4, '1993-07-22 21:32:18', '1982-01-24 15:09:05', '2011-11-10 04:44:48', '2016-07-14 11:36:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 25, 5, '2004-12-10 03:10:09', '2012-12-10 03:22:48', '2016-10-17 08:27:54', '1979-02-08 02:11:06');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '1983-01-09 22:03:46', '1973-03-07 05:52:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'amet', '2005-09-30 08:40:26', '1973-10-25 21:53:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'id', '2012-07-29 11:12:51', '2006-07-01 20:38:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'voluptate', '1990-06-06 02:09:30', '1985-08-28 18:42:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quos', '2007-04-28 16:49:45', '2008-05-09 09:43:55');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'inventore', '2001-09-10 16:58:30', '1994-04-20 07:50:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'id', '2005-02-14 01:17:21', '2014-01-20 13:20:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'maiores', '2015-05-03 20:21:06', '2016-08-31 08:41:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'occaecati', '2017-10-23 01:01:41', '1971-06-14 08:44:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'debitis', '2012-03-24 05:00:42', '2017-06-08 18:57:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'et', '1975-04-10 12:43:36', '1973-02-18 18:12:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'similique', '1975-03-05 08:11:39', '1996-02-09 00:18:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'itaque', '1985-10-29 15:00:08', '2011-10-21 15:42:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'natus', '1993-02-01 09:08:51', '1979-02-05 10:05:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'ut', '1992-12-29 16:14:31', '2016-10-27 05:02:08');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 11, 87, 'Eius a occaecati vero sit quas non.', 0, 0, '1973-10-16 19:58:17', '1984-12-12 05:59:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 44, 42, 'Debitis sint ea veniam doloribus aut.', 1, 1, '2001-03-13 05:50:23', '1982-12-21 15:09:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 24, 70, 'Ut qui sit cupiditate a culpa voluptas.', 0, 0, '2016-07-02 16:42:47', '2013-05-01 06:36:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 12, 83, 'Quae ea qui quos vitae deleniti aut temporibus.', 0, 1, '1996-09-05 17:56:41', '1981-09-21 22:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 62, 3, 'Exercitationem dolores eligendi est aut autem doloremque.', 0, 0, '2007-02-01 19:00:35', '1981-07-14 14:45:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 63, 95, 'Quidem et autem qui cum molestiae.', 0, 1, '1979-05-21 18:41:44', '1991-02-16 09:49:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 20, 74, 'Amet saepe et voluptatum sed dolorum.', 1, 1, '2014-03-22 09:58:36', '2017-03-10 15:24:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 15, 64, 'Consequatur laudantium expedita occaecati ut enim.', 0, 0, '1989-11-14 18:31:51', '2017-03-15 16:17:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 100, 52, 'Rem dicta quam id ad ut distinctio doloremque fuga.', 0, 1, '1979-12-13 01:41:12', '1970-10-24 04:08:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 88, 19, 'Voluptatem enim vitae odit dignissimos officiis illum vitae.', 1, 0, '1991-04-11 16:18:56', '1999-03-01 06:07:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 16, 'Modi dolor neque odit blanditiis rerum quos ratione.', 0, 1, '2019-04-05 08:29:11', '2011-11-01 13:29:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 3, 57, 'Voluptate esse maxime consequuntur autem mollitia.', 0, 0, '1970-03-08 17:07:35', '2013-03-20 15:57:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 3, 49, 'Debitis voluptatem veritatis ratione ad id ipsum quo sit.', 1, 1, '2005-04-25 15:45:27', '2002-03-08 08:57:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 37, 12, 'Nulla mollitia sint nulla itaque labore eaque a explicabo.', 1, 1, '1977-12-19 14:51:31', '1998-01-01 10:29:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 56, 38, 'A officia pariatur in ex.', 0, 1, '2002-04-17 01:17:27', '1973-02-26 21:06:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 98, 85, 'Quaerat consequuntur perspiciatis natus sit non deleniti.', 1, 1, '2008-08-24 16:13:29', '1990-12-24 11:08:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 90, 57, 'Ipsum expedita quam quod odit sint rerum.', 1, 1, '1992-08-29 14:06:30', '2011-09-30 02:50:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 72, 22, 'Laboriosam est eveniet perferendis voluptates.', 1, 1, '2019-03-31 07:01:12', '2008-02-16 22:36:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 30, 52, 'Qui corporis ipsam enim sed.', 0, 0, '1978-10-05 03:28:42', '1991-12-01 14:08:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 59, 94, 'Omnis facilis temporibus laudantium enim numquam quos vel placeat.', 0, 1, '2019-08-31 16:42:17', '2002-05-18 15:41:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 49, 94, 'Harum dolorem at vel minus omnis.', 0, 0, '2016-03-03 16:08:09', '1977-06-28 18:25:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 87, 23, 'Porro ut quasi odit rem culpa libero quidem.', 1, 1, '1997-06-27 10:48:54', '1979-02-26 01:56:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 57, 6, 'Aut officiis nihil qui autem nisi iure.', 1, 1, '1987-06-17 17:37:38', '1976-09-25 10:35:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 81, 65, 'Necessitatibus dolor modi quos quo.', 1, 1, '1986-09-17 07:33:35', '1978-04-01 13:02:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 50, 33, 'Aut blanditiis fugit repellat reiciendis quibusdam rerum.', 0, 0, '2000-07-08 23:49:50', '2011-04-16 00:01:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 15, 100, 'Possimus quasi similique enim.', 1, 0, '1995-06-05 01:41:16', '2004-07-03 09:10:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 40, 18, 'Illum quisquam accusantium possimus repellat.', 0, 1, '2011-10-23 01:16:45', '1979-05-31 15:25:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 6, 86, 'Iste rerum quaerat natus sunt ut.', 0, 0, '1980-10-06 00:43:24', '1971-11-21 14:15:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 69, 29, 'Error repudiandae reprehenderit doloremque quia voluptas ullam.', 0, 1, '2000-06-19 12:08:54', '1970-05-25 08:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 21, 10, 'Asperiores consequuntur architecto molestias temporibus voluptatum nemo minus.', 0, 0, '1980-03-27 15:07:59', '2019-11-02 05:13:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 28, 95, 'Quibusdam in non quaerat quia quia voluptas suscipit veniam.', 0, 1, '2004-04-04 05:40:55', '1970-07-26 11:37:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 48, 9, 'Quas sit quia aut.', 0, 0, '2013-03-15 22:32:43', '1990-04-28 04:01:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 32, 37, 'Aliquam nihil unde aperiam aperiam.', 0, 0, '1997-06-21 19:24:03', '1975-10-29 05:23:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 18, 87, 'Dolores eum recusandae at veniam voluptas.', 0, 1, '1997-10-31 19:15:36', '1980-08-29 20:33:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 46, 62, 'Et a sed sunt quasi consectetur nihil molestiae earum.', 0, 0, '2008-07-23 15:54:55', '1989-08-07 12:14:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 30, 74, 'Et qui aut cupiditate repellat ea.', 1, 1, '1994-05-24 15:05:03', '1977-11-15 15:19:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 96, 47, 'Vitae debitis voluptatem quis similique voluptates.', 1, 0, '2011-05-14 02:45:13', '1972-09-03 14:51:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 11, 56, 'Qui nam nihil quod at.', 1, 1, '2007-05-15 17:21:50', '2008-09-12 15:24:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 93, 90, 'Ullam temporibus error praesentium molestias.', 0, 1, '2000-05-31 02:42:24', '1985-04-24 03:00:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 48, 94, 'Possimus consectetur magni explicabo natus ea porro.', 1, 1, '1995-02-26 22:16:18', '2012-12-12 01:48:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 30, 82, 'Autem aut asperiores provident nulla alias ut.', 0, 1, '1989-06-07 01:28:35', '1992-02-25 12:14:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 54, 76, 'Dolor debitis impedit iusto consequatur repellat culpa.', 1, 1, '1974-10-23 21:03:02', '1973-07-13 04:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 65, 17, 'Aspernatur voluptates magnam nihil explicabo earum.', 0, 1, '1992-05-30 06:57:16', '1981-03-20 20:16:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 23, 38, 'Suscipit quam fuga ipsam tempore dicta ullam ullam eum.', 0, 1, '2004-09-10 01:51:27', '1977-05-12 01:14:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 13, 51, 'Cumque ut nihil debitis itaque ut adipisci.', 0, 0, '1977-04-15 17:53:53', '2017-08-28 15:33:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 12, 100, 'Ea veritatis porro voluptas eum ex.', 1, 1, '1993-12-16 02:04:58', '2005-03-25 17:24:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 83, 74, 'Quidem blanditiis non minima architecto.', 0, 1, '1978-12-02 22:30:36', '1992-07-18 17:02:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 75, 42, 'Voluptatem fuga atque suscipit aut dolorem.', 0, 0, '1970-06-24 19:50:58', '1991-04-17 19:26:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 25, 2, 'Eum voluptatem perspiciatis odit ullam sed voluptate suscipit.', 0, 0, '1986-03-09 11:23:47', '2018-04-26 06:49:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 94, 48, 'Nemo deleniti consequuntur repellendus quis veniam dolores.', 1, 0, '1989-09-12 12:37:56', '2016-12-24 16:14:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 93, 22, 'Ut aut tempora molestias odio minus quia fugiat.', 1, 0, '2013-07-25 23:05:07', '1987-04-08 12:18:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 66, 21, 'Voluptatem aut quam eligendi sint sit.', 1, 1, '1987-08-07 02:17:37', '1989-08-18 14:02:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 90, 47, 'Autem sapiente et quia accusamus fugit.', 1, 1, '2010-11-18 09:45:19', '2000-03-23 17:30:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 83, 100, 'Velit omnis in nihil quidem amet voluptatibus.', 1, 1, '2009-11-23 13:11:41', '2002-07-28 07:06:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 75, 26, 'Et non laboriosam explicabo possimus nemo earum quia.', 1, 1, '2000-11-24 01:30:17', '2018-07-25 05:16:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 2, 66, 'Sed nihil eaque qui dolores sapiente sed natus enim.', 1, 1, '2002-09-25 23:55:59', '1973-09-14 03:06:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 51, 25, 'Sequi consectetur doloremque nemo aut vitae voluptas nulla dolorem.', 0, 0, '2006-10-06 09:51:21', '1971-07-25 15:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 73, 97, 'Magni id expedita minus dolor eos et.', 1, 0, '1983-07-27 21:56:53', '1988-07-30 02:01:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 43, 5, 'Saepe cum dolores dolores praesentium quo perferendis recusandae.', 1, 1, '1997-10-12 01:45:00', '1996-01-18 00:39:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 45, 18, 'Sit saepe est aliquid.', 0, 1, '1985-04-29 09:20:28', '1972-01-05 18:53:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 44, 94, 'Vitae laborum adipisci eum aliquid dicta eveniet.', 0, 0, '1995-12-22 11:30:02', '2015-10-23 12:23:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 69, 41, 'In in nulla quis est ipsam ipsa temporibus.', 0, 0, '1985-04-08 14:56:04', '2010-10-24 09:41:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 25, 60, 'Soluta aliquam quis quibusdam beatae.', 1, 0, '1974-12-24 11:26:40', '1993-11-13 07:24:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 10, 47, 'Magnam non nemo officia aut inventore cupiditate sit.', 0, 1, '1991-04-11 14:55:23', '1999-03-11 22:28:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 75, 4, 'Quo ut eaque qui.', 1, 1, '2005-03-16 18:38:59', '1977-07-27 09:18:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 77, 49, 'Modi quia dicta neque autem.', 1, 0, '2013-08-22 02:08:04', '1987-10-02 05:36:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 60, 93, 'Qui itaque aut optio qui vel nesciunt.', 1, 1, '2018-01-28 03:54:45', '1972-12-29 07:11:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 38, 95, 'Fugit id quia aut nisi rerum.', 0, 1, '1980-06-24 22:17:33', '2000-02-11 07:33:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 68, 89, 'Id sapiente qui et doloribus.', 0, 0, '1970-08-11 19:50:01', '2009-03-03 02:19:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 12, 97, 'Ipsam quo quas mollitia aperiam ducimus.', 0, 0, '2003-02-24 22:54:04', '2014-09-22 00:48:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 88, 18, 'Rem ullam ut sunt sapiente tempora omnis aut.', 1, 0, '1982-09-11 10:33:18', '2004-10-28 11:21:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 93, 97, 'Quo possimus vitae provident voluptatem excepturi aut.', 1, 1, '1975-12-06 22:48:52', '1981-09-23 14:59:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 25, 1, 'Id voluptatem molestiae voluptatibus molestiae non enim.', 0, 0, '1973-11-17 08:05:11', '2019-10-29 05:03:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 93, 80, 'Molestiae ipsam dolores quaerat fuga eum ea voluptate.', 1, 1, '2016-12-09 07:43:06', '1982-04-06 00:46:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 19, 8, 'Omnis vitae quasi harum non perspiciatis quia.', 0, 1, '2008-11-10 23:33:23', '1983-03-15 10:40:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 49, 57, 'Aspernatur consequatur aliquam magnam nostrum sit quasi at repellendus.', 1, 1, '1979-06-01 04:50:02', '1993-03-24 21:26:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 92, 62, 'Nostrum veritatis officia qui nisi eum est.', 0, 0, '2006-09-05 16:22:51', '1999-09-10 10:54:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 12, 53, 'Libero culpa aut doloremque at omnis perferendis vel.', 0, 1, '2005-03-14 20:44:23', '1979-02-05 18:22:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 48, 19, 'Fugiat nobis molestiae aliquid dolores enim culpa.', 1, 0, '2017-01-25 12:43:22', '1984-02-23 13:44:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 79, 75, 'Labore reprehenderit sapiente possimus quidem corrupti voluptatem.', 0, 0, '2013-08-13 15:40:24', '2016-07-19 08:01:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 93, 4, 'Id tempora expedita et aspernatur deserunt inventore.', 1, 1, '2009-01-25 01:21:03', '1981-03-16 23:20:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 85, 32, 'Recusandae ullam a tenetur qui quidem.', 0, 1, '1981-12-06 09:43:10', '1994-12-26 13:12:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 93, 86, 'Officiis praesentium nisi hic commodi numquam quis.', 1, 1, '2005-08-31 06:32:19', '1974-02-14 15:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 80, 41, 'Eligendi nihil ea harum neque iste at possimus.', 0, 0, '2007-08-23 21:45:29', '1977-11-25 05:49:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 65, 72, 'Optio quisquam cumque qui perferendis adipisci qui sint ut.', 0, 1, '1996-01-03 18:30:35', '1992-02-09 16:03:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 13, 92, 'Qui ipsa veniam reprehenderit suscipit numquam assumenda eum.', 0, 0, '1993-04-17 16:58:27', '2019-01-01 14:55:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 9, 27, 'Sit et sunt voluptas voluptatem eaque fugiat quos quidem.', 0, 0, '2002-09-16 05:39:56', '1987-01-12 20:19:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 68, 3, 'Nobis eum et sunt.', 0, 1, '1986-03-18 09:57:23', '1980-06-29 02:31:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 36, 90, 'Illo ad omnis culpa est et a.', 0, 0, '2019-02-26 10:08:25', '2019-08-20 06:01:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 99, 27, 'Quod labore deleniti quasi harum adipisci.', 0, 1, '2006-01-11 17:41:36', '1978-11-07 12:32:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 56, 73, 'Soluta ut beatae incidunt qui praesentium vel omnis.', 0, 1, '2003-01-12 10:26:34', '1984-06-14 21:06:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 83, 20, 'Et sunt ducimus velit libero.', 0, 0, '1997-07-01 08:40:04', '1987-08-23 05:37:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 85, 74, 'Iste aperiam consequatur sunt reiciendis.', 0, 0, '1970-11-21 21:48:51', '1988-08-21 17:58:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 26, 5, 'Eligendi doloremque sunt consequatur iste temporibus vitae amet consequatur.', 0, 1, '1997-07-12 09:41:10', '1989-07-23 03:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 12, 13, 'Aut et non temporibus dolorem distinctio.', 1, 0, '1987-11-16 10:54:31', '2006-10-19 19:30:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 37, 51, 'Ea magni et aliquam accusantium cumque.', 0, 1, '2000-07-08 10:32:16', '2012-03-13 02:18:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 30, 33, 'Nemo molestiae et aut.', 0, 0, '1993-03-11 18:11:46', '1975-05-17 10:25:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 1, 21, 'Nihil fugit recusandae voluptate fuga soluta voluptatem dolorem.', 0, 1, '2000-04-23 23:26:53', '1976-10-15 22:59:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 24, 7, 'Exercitationem mollitia est consequatur accusantium rerum ipsum.', 1, 0, '2003-01-14 15:53:36', '2001-10-15 03:24:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 16, 84, 'Neque similique est qui ut.', 0, 0, '2009-03-28 04:12:18', '2007-07-26 02:36:21');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'w', '1981-02-17', 21, 'Krisfort', 'Belgium', '1986-11-15 21:06:14', '1977-11-26 19:44:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1979-01-08', 55, 'Boylechester', 'Maldives', '2008-10-22 12:08:56', '1974-04-22 04:48:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '1984-11-01', 95, 'Cleveberg', 'Fiji', '1974-06-11 14:29:02', '2017-02-21 09:26:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '2018-10-12', 69, 'Port Mckayla', 'Uganda', '1992-04-07 00:46:11', '2014-06-09 01:34:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'w', '2007-04-16', 96, 'Leannonstad', 'Peru', '1974-07-31 13:23:53', '1975-09-23 19:25:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1975-08-04', 96, 'Schadenhaven', 'Nicaragua', '2005-10-18 00:21:04', '2010-07-15 08:53:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'w', '1991-03-22', 14, 'Hudsonmouth', 'Costa Rica', '2020-02-23 14:45:01', '1987-02-01 19:07:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1994-09-08', 52, 'East Viviane', 'Brunei Darussalam', '1992-01-12 22:33:13', '1996-12-09 20:51:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'w', '1990-11-06', 87, 'West Vickymouth', 'Turkmenistan', '1986-07-11 18:46:41', '2003-07-12 12:40:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1991-05-18', 13, 'Mossieborough', 'Tunisia', '2016-11-01 15:37:54', '1977-10-22 04:16:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '1985-06-17', 65, 'New Peggie', 'Tunisia', '1988-12-08 20:35:28', '1993-07-19 09:08:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1986-09-15', 69, 'New Myrnatown', 'Eritrea', '2012-02-21 17:39:08', '1992-07-08 16:17:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1983-08-08', 37, 'South Corinechester', 'Slovenia', '2011-11-12 18:11:24', '1978-03-19 19:01:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'm', '1984-11-08', 85, 'Tyreseberg', 'Italy', '1995-07-28 16:40:11', '2011-09-18 13:39:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'w', '1981-04-19', 63, 'New Magnolia', 'Mozambique', '1986-10-22 15:33:25', '1980-01-29 20:37:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'w', '2013-04-22', 25, 'North Lourdesburgh', 'Antigua and Barbuda', '1993-03-31 07:49:16', '1982-12-17 17:37:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'w', '1984-07-06', 77, 'West Danial', 'Tanzania', '1979-02-23 17:57:27', '2009-03-14 12:52:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1995-12-07', 89, 'South Monserrathaven', 'Australia', '1976-04-26 07:28:09', '1982-07-02 23:22:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'w', '1983-02-26', 18, 'New Briana', 'Greece', '2010-05-16 03:40:05', '1972-07-18 12:34:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'm', '2003-06-21', 79, 'West Vincentview', 'Togo', '1973-05-17 23:49:00', '1997-01-16 16:03:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'w', '2016-01-18', 70, 'Beahanberg', 'Austria', '1981-08-31 21:59:30', '2009-08-26 09:01:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2014-06-13', 57, 'Gutkowskiland', 'British Indian Ocean Territory (Chagos Archipelago)', '2002-02-24 04:29:00', '2017-11-03 14:25:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '1981-04-25', 37, 'Jakobton', 'Norfolk Island', '2002-11-18 08:22:22', '1984-08-15 07:27:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'w', '2008-10-08', 33, 'East Myrtie', 'Eritrea', '1971-06-02 14:38:26', '2009-08-04 12:57:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'w', '1987-10-02', 42, 'North Nicoletteville', 'Aruba', '2016-11-11 22:03:37', '2006-01-14 06:51:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '1993-11-04', 2, 'Priceland', 'United Arab Emirates', '1985-12-11 00:09:09', '1990-03-17 11:09:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '2008-09-04', 19, 'South Keyonfurt', 'Antarctica (the territory South of 60 deg S)', '1985-05-05 05:48:55', '1999-07-19 20:05:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '1978-07-08', 27, 'West Marcelland', 'South Africa', '1981-09-13 06:53:16', '2000-07-06 17:46:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'm', '1985-08-30', 78, 'Port Rowland', 'Barbados', '1996-03-31 00:34:30', '1991-08-08 21:04:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1993-01-18', 25, 'New Richard', 'Turkey', '1990-03-01 18:34:51', '2020-05-01 08:01:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1998-03-12', 30, 'Ressiebury', 'Lithuania', '2003-11-12 16:01:40', '1986-11-19 06:51:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '2013-06-05', 76, 'Port Kamille', 'Lebanon', '1985-01-05 05:56:11', '2017-06-27 03:10:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'w', '2002-10-26', 31, 'Connellytown', 'Malaysia', '1996-06-08 19:52:33', '2020-02-14 06:35:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '1987-10-25', 34, 'Arneville', 'Canada', '1975-04-02 05:36:03', '1994-10-23 16:28:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'w', '2002-05-29', 81, 'Kadinshire', 'United Arab Emirates', '1976-07-13 19:12:53', '1971-02-27 07:53:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'w', '1983-08-23', 22, 'Bogantown', 'Congo', '1994-06-14 12:48:54', '2016-08-22 14:49:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1975-05-26', 31, 'Lake Sarah', 'Rwanda', '2008-08-05 07:13:06', '2005-01-28 18:20:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'm', '2011-05-11', 62, 'Port Domingobury', 'Sweden', '2003-09-07 20:57:05', '2016-12-19 14:28:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '1972-11-15', 4, 'Mateofort', 'Cocos (Keeling) Islands', '2012-02-06 03:54:53', '2019-07-28 06:19:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'm', '1989-08-01', 98, 'Montyside', 'Azerbaijan', '1974-04-03 16:24:13', '1977-09-14 21:43:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'w', '1981-06-25', 91, 'Jeffrymouth', 'Angola', '1988-03-10 02:33:29', '1981-04-22 04:55:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'w', '2017-05-31', 84, 'Lake Jazmynefurt', 'Guatemala', '1988-11-18 10:44:39', '1994-10-18 14:24:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'w', '1999-05-31', 53, 'New Valerie', 'United States Minor Outlying Islands', '2010-07-06 00:08:55', '2017-10-04 01:37:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '2014-02-17', 20, 'Adatown', 'Andorra', '1997-10-11 19:06:36', '1983-12-03 20:47:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'w', '1980-03-06', 29, 'East Lennahaven', 'Fiji', '2020-02-15 14:20:12', '2018-02-21 20:48:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'w', '2008-08-22', 80, 'West Christopherport', 'Jersey', '1980-12-10 01:32:50', '1995-09-19 06:48:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1990-08-20', 84, 'Aiyanahaven', 'United States of America', '2019-03-12 10:33:53', '1978-05-17 04:30:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '2007-02-06', 7, 'Griffinmouth', 'Bolivia', '1976-11-01 08:06:33', '2006-06-22 03:32:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'w', '1993-08-16', 11, 'Lake Georgettechester', 'Burkina Faso', '1979-08-05 18:56:29', '2017-01-19 04:44:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'w', '1988-01-19', 96, 'Naderland', 'Czech Republic', '2017-06-21 13:41:53', '2010-07-01 03:20:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'w', '2009-05-08', 70, 'Denesikmouth', 'Bolivia', '2013-02-09 12:12:28', '1993-01-24 09:36:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '2014-04-08', 12, 'Lestertown', 'Heard Island and McDonald Islands', '1983-08-13 21:10:51', '1979-11-17 04:46:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'w', '1982-07-13', 70, 'Orvilleshire', 'China', '1980-01-21 16:36:09', '1990-05-04 03:06:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1972-06-26', 16, 'North Vanceview', 'Paraguay', '1972-04-22 13:03:45', '2002-03-14 13:20:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '1972-03-13', 85, 'Jaimeborough', 'Montserrat', '2014-02-26 02:20:16', '2013-01-21 04:16:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '1974-09-21', 91, 'Millerville', 'Grenada', '1996-01-16 08:44:30', '1991-08-10 00:42:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'w', '2007-09-10', 37, 'Mayerburgh', 'Liechtenstein', '1984-08-06 23:18:41', '2010-03-04 01:54:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'm', '1974-03-22', 52, 'Haagburgh', 'Bosnia and Herzegovina', '1990-09-10 11:39:15', '2014-08-15 20:20:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'w', '1978-06-14', 62, 'North Brandynport', 'Bermuda', '1979-02-01 20:14:22', '2003-07-19 05:09:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'w', '1980-01-17', 41, 'Kilbackside', 'Bangladesh', '1994-05-18 01:35:01', '1974-08-31 13:33:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'w', '1997-06-16', 74, 'Port Petra', 'India', '2000-05-01 04:13:10', '1988-05-10 23:16:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '1997-02-13', 46, 'Lake Jerrodview', 'Uzbekistan', '2017-06-23 00:14:08', '1979-08-05 15:32:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '1973-01-24', 61, 'North Shaunborough', 'Gambia', '1984-04-04 06:23:00', '1985-01-31 06:47:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'w', '1972-03-16', 52, 'North Freddy', 'Guam', '2001-12-17 18:08:28', '2014-12-29 13:22:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'w', '1971-02-08', 34, 'North Lutherchester', 'Panama', '2003-03-15 10:06:57', '1981-11-14 20:49:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '1981-08-22', 26, 'Roobmouth', 'Timor-Leste', '1989-09-22 08:40:35', '2010-12-02 13:00:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'w', '2016-08-17', 17, 'South Betsyshire', 'British Virgin Islands', '2003-10-22 00:05:54', '2015-10-14 00:58:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '2000-04-16', 53, 'Port Virgil', 'Turkey', '1986-06-19 01:06:02', '2009-08-31 11:00:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '1999-09-17', 44, 'Ornhaven', 'Bouvet Island (Bouvetoya)', '1990-12-24 04:08:43', '2003-08-27 08:59:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'm', '1983-01-09', 72, 'West Kiannaton', 'Cape Verde', '2019-05-25 15:57:12', '1974-09-05 12:56:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2018-06-15', 63, 'Schmittstad', 'Zimbabwe', '2013-11-08 06:25:34', '1979-11-26 05:24:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '1987-02-08', 39, 'Tillmanmouth', 'Singapore', '2016-08-29 01:36:13', '2002-05-30 02:56:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'w', '1970-09-30', 100, 'Schambergerport', 'Armenia', '1993-05-11 22:54:08', '1990-03-21 16:26:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'w', '1972-09-12', 63, 'Port Stephanyland', 'Saint Kitts and Nevis', '1982-12-07 15:38:49', '1986-08-24 10:24:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'w', '1993-04-28', 28, 'Monahanfurt', 'Nigeria', '2010-07-25 17:34:40', '2017-03-28 20:29:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '1988-07-29', 6, 'Runolfsdottirtown', 'Faroe Islands', '1970-07-15 00:01:19', '2016-04-02 13:44:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'w', '1987-06-27', 73, 'East Casimer', 'Solomon Islands', '1975-07-27 00:14:52', '1988-08-27 02:21:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'w', '2017-11-24', 11, 'East Newtonborough', 'Syrian Arab Republic', '1971-05-04 10:17:05', '1976-04-18 08:27:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '1999-09-30', 57, 'South Ron', 'Suriname', '1970-01-15 20:22:57', '2001-12-19 22:40:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '1979-09-24', 97, 'Lake Kamrenside', 'Cote d\'Ivoire', '1988-08-14 16:18:40', '2001-11-20 05:16:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'w', '1996-02-04', 2, 'Amberberg', 'Iceland', '1976-06-24 08:17:00', '1977-04-06 02:26:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '1973-11-24', 18, 'Cordeliaport', 'Bouvet Island (Bouvetoya)', '2002-08-06 03:08:39', '2015-03-25 18:35:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'w', '2003-07-07', 18, 'East Stone', 'Peru', '1980-05-07 05:33:00', '1979-09-09 06:09:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1991-08-22', 39, 'Kentown', 'Somalia', '1988-01-14 01:54:28', '2011-02-25 05:30:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'w', '2012-05-26', 17, 'Lake Janelle', 'Norway', '2011-03-09 08:56:49', '2011-12-08 09:09:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '2015-05-09', 43, 'Winonaville', 'India', '2014-07-07 15:01:59', '1997-09-01 22:25:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2003-05-15', 40, 'Grimesmouth', 'Sri Lanka', '1978-08-31 00:29:34', '1987-11-21 07:21:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'w', '2007-10-02', 28, 'New Rhiannonfort', 'Liberia', '2012-07-13 09:38:36', '2013-05-11 22:53:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '2019-04-18', 7, 'East Yolanda', 'Guatemala', '1979-10-17 23:48:29', '2016-10-16 13:11:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '1970-04-25', 28, 'Brettbury', 'Israel', '1997-01-11 05:55:56', '1978-12-27 14:31:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '1979-12-05', 21, 'Hermistonfurt', 'Afghanistan', '1973-06-24 23:06:01', '2004-08-29 01:49:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'w', '2012-12-16', 84, 'Derickview', 'Germany', '2010-10-09 11:49:00', '2002-01-14 17:04:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '1988-04-01', 70, 'Kuvalishaven', 'Guinea', '1985-01-13 00:20:02', '2009-12-22 05:13:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'w', '1988-07-12', 90, 'Arlieton', 'Brunei Darussalam', '1979-08-25 12:23:07', '1981-04-07 22:52:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'w', '2011-08-03', 82, 'Glenniemouth', 'Argentina', '1981-08-20 18:36:05', '1992-05-01 23:43:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'w', '1996-10-05', 71, 'Ziemannstad', 'Belgium', '2006-10-04 05:12:32', '1998-11-27 05:20:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '1993-09-10', 64, 'New Roel', 'Gabon', '2002-10-23 10:04:41', '1978-08-24 02:43:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '1997-07-20', 15, 'New Bailey', 'Suriname', '1998-12-01 22:25:16', '1993-04-01 07:12:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'w', '2006-04-10', 12, 'New Felipafort', 'Romania', '2017-03-13 02:03:56', '2007-05-31 21:57:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '1976-12-13', 58, 'Guiseppefurt', 'Ukraine', '1994-11-17 03:55:36', '2007-01-04 13:21:35');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Hettie', 'Walsh', 'leffler.maurice@example.com', '359.883.7795x549', '1984-09-26 05:16:57', '1971-10-23 18:12:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'May', 'Stroman', 'jeffrey.huel@example.org', '387-805-8288', '2005-03-30 17:07:50', '1972-06-20 18:54:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Theo', 'Harvey', 'kertzmann.charles@example.net', '232-431-2116', '1978-06-12 08:31:16', '1998-02-24 00:18:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Trey', 'Mann', 'nienow.roman@example.org', '715.010.0272', '1986-09-07 01:06:42', '1981-01-24 01:20:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Sonya', 'Muller', 'twatsica@example.org', '(273)927-3235', '1989-04-24 14:50:22', '1997-04-23 04:22:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Daren', 'Ankunding', 'smitham.bianka@example.net', '722-416-3592', '1979-10-30 17:35:32', '1980-03-11 06:00:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Andres', 'Koss', 'carmela66@example.org', '1-550-291-2583', '1971-03-09 07:21:21', '1975-06-14 22:33:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Mohammad', 'Thiel', 'frankie.yundt@example.com', '966.431.3295', '2006-01-26 05:57:52', '1987-04-24 19:44:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Darrin', 'Cormier', 'kaylin.ryan@example.com', '841.490.8319', '1985-06-12 14:25:57', '2012-02-06 10:26:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Schuyler', 'Reinger', 'hagenes.alden@example.com', '275.719.7123x38854', '1975-12-02 17:30:42', '2019-03-09 19:07:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Lilly', 'Casper', 'vbogisich@example.net', '1-442-812-6798', '1997-09-29 11:03:04', '1985-07-31 21:27:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Hailey', 'Upton', 'pagac.demetrius@example.com', '096-719-0948x08479', '2007-07-05 01:16:15', '1998-10-04 22:40:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Gene', 'Dietrich', 'vmurphy@example.com', '1-635-285-0231x2953', '1972-09-09 05:43:49', '2015-07-19 03:58:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Johan', 'Crist', 'beulah85@example.com', '1-806-258-4619x34619', '1998-08-04 12:46:23', '2006-12-10 14:52:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Stuart', 'Skiles', 'mledner@example.org', '900-358-4410x85591', '2008-08-28 12:30:08', '2012-05-16 22:47:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Oma', 'Koss', 'khalil44@example.net', '272.025.1705', '1987-04-11 06:28:00', '1987-09-27 15:51:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Eloise', 'Grimes', 'caden91@example.net', '173.394.0786', '2010-02-12 08:30:34', '2009-07-03 01:22:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Glen', 'Adams', 'amelie.smitham@example.com', '(377)213-8640', '1978-07-26 13:35:32', '1984-02-20 12:24:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Arnold', 'Koepp', 'kozey.elisha@example.net', '929.812.0901x85028', '2018-02-14 15:17:41', '2006-03-15 20:25:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Kaitlyn', 'Goldner', 'leonard83@example.org', '1-106-546-5287x316', '1970-12-09 05:50:00', '1988-01-18 21:27:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Soledad', 'Hammes', 'bulah51@example.com', '335-879-2981', '1970-01-25 20:05:08', '1984-09-29 06:21:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Chelsea', 'McClure', 'pdouglas@example.com', '+86(3)2162184318', '1983-12-05 17:53:39', '2005-10-04 08:18:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Zack', 'Rodriguez', 'wnikolaus@example.com', '249-797-5510x64613', '2009-12-06 12:49:23', '1995-12-05 00:08:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Anabel', 'Gutmann', 'oschaefer@example.org', '329.782.9481', '1998-05-26 22:35:43', '2002-06-02 23:31:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Daisy', 'Prosacco', 'cordia.krajcik@example.org', '1-841-176-5421', '1992-03-30 12:28:39', '1987-07-29 16:54:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Stefan', 'Monahan', 'kunze.robb@example.org', '748.277.7681x9578', '1982-09-27 14:40:08', '1988-11-08 20:51:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Tommie', 'Hegmann', 'renner.lucy@example.net', '05258006444', '2003-12-12 00:21:49', '1997-09-08 07:14:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Mary', 'Nolan', 'adurgan@example.com', '459-197-5514x5104', '1985-10-20 18:14:02', '1974-05-30 08:58:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Levi', 'Zieme', 'wendell.rolfson@example.net', '236.490.7082', '1998-01-12 23:06:33', '1977-10-10 13:54:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Breana', 'Zboncak', 'brekke.clemmie@example.net', '1-512-555-1555', '1997-11-11 12:33:09', '1980-01-19 08:36:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Rodolfo', 'Walter', 'ylangosh@example.com', '(517)252-5317x0658', '2012-01-29 10:13:29', '1989-09-03 14:43:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Zola', 'Schultz', 'alockman@example.com', '467.242.3955', '1974-12-11 13:04:41', '1985-05-19 19:42:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Craig', 'Flatley', 'andres.lindgren@example.com', '(305)289-7318x2598', '1992-06-21 07:47:42', '2004-10-21 03:05:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Braeden', 'Schimmel', 'aufderhar.roxanne@example.org', '332-592-7104x01235', '1974-12-19 23:57:09', '1993-07-16 02:48:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Jazmyn', 'Abbott', 'hadley.anderson@example.net', '636.839.9957', '1983-04-05 01:40:23', '1988-12-13 03:41:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Gussie', 'Fay', 'abel48@example.com', '546-813-3560', '2011-02-26 03:08:51', '2014-01-24 14:59:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Maggie', 'Pfannerstill', 'swift.emmy@example.org', '+71(1)8944869689', '2002-06-29 10:33:39', '1985-02-23 17:45:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Al', 'Legros', 'alford03@example.com', '994-190-0426', '1980-07-07 07:28:39', '1975-03-30 17:44:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Mikayla', 'Cole', 'terrell.parker@example.com', '706-634-4283', '1972-11-26 20:12:44', '1993-03-29 11:07:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Devonte', 'Koelpin', 'myra02@example.com', '049-632-5537', '1988-01-23 06:23:27', '1971-08-16 21:13:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Rafael', 'Ziemann', 'quitzon.joe@example.com', '904-964-2181', '1980-04-20 05:30:07', '1985-09-24 17:54:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Kayleigh', 'Dibbert', 'jbergnaum@example.net', '1-365-281-3212', '1985-12-30 10:12:51', '1973-06-13 01:36:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Vidal', 'Corwin', 'igutmann@example.com', '+56(9)4614233438', '1991-03-12 12:11:35', '2004-10-17 08:43:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Henriette', 'Bode', 'skiles.tanner@example.org', '06355189126', '1990-04-30 16:53:50', '2020-04-16 18:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Louisa', 'Kuhlman', 'mills.dulce@example.net', '1-643-599-3845', '1986-09-04 08:56:31', '2003-03-04 14:10:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Tommie', 'Skiles', 'anika.boyer@example.org', '05022001188', '1980-07-24 22:16:54', '2006-04-30 03:25:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Neha', 'Ledner', 'rbraun@example.com', '03844475088', '1988-06-02 22:37:20', '2010-08-25 02:11:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Skyla', 'Cummings', 'okey.nikolaus@example.net', '(931)618-8535', '1994-03-18 23:35:10', '2011-05-11 18:42:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Emmalee', 'Bashirian', 'felipe.torphy@example.org', '400.824.3441x7017', '2016-09-19 12:01:20', '1991-02-03 01:00:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Jairo', 'Ward', 'stracke.candace@example.org', '665-854-7325x24664', '1995-08-19 02:38:14', '1999-09-08 12:34:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Arnaldo', 'Boyle', 'ghills@example.org', '574-268-8880', '1998-12-27 04:39:17', '1987-09-26 13:12:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Dulce', 'Lemke', 'herman.ritchie@example.org', '+78(0)9786132837', '1989-07-06 18:10:56', '2009-05-11 10:34:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Theodora', 'Larkin', 'roslyn.hamill@example.org', '(911)639-1512', '1984-07-01 17:19:00', '1987-07-18 23:02:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Amelie', 'Kautzer', 'cronin.brennon@example.org', '00253055341', '2009-12-13 15:09:07', '2020-01-12 18:42:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Oran', 'Osinski', 'franz53@example.com', '(771)474-7735', '2010-03-04 05:08:21', '2008-03-06 21:08:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Isom', 'Bednar', 'auer.roma@example.net', '740.595.6405x681', '2013-05-05 16:11:37', '2005-04-04 01:39:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Shany', 'Marquardt', 'espencer@example.net', '478-906-5960', '1974-05-28 23:13:17', '2015-01-15 05:27:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Terrell', 'King', 'rhoda80@example.org', '664-485-3094x2135', '1979-11-22 05:16:59', '2019-12-17 02:04:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jordon', 'Weber', 'bhirthe@example.net', '(637)477-0926', '1988-02-27 21:23:42', '2004-05-11 05:01:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Ruby', 'Torp', 'ghaley@example.org', '1-098-285-6970x870', '1998-03-11 13:37:05', '1977-11-16 06:17:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Caterina', 'Zieme', 'senger.thalia@example.net', '(297)344-9808x8644', '2009-02-14 00:49:49', '2003-09-29 06:24:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Dallin', 'Hessel', 'oma.rosenbaum@example.net', '(856)958-6860x82262', '1972-10-09 00:30:15', '1970-02-07 08:14:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Eliane', 'Paucek', 'wade.lowe@example.net', '944.433.7542x00273', '2003-04-07 11:30:00', '1991-08-18 15:54:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Patricia', 'Armstrong', 'destany18@example.org', '820.561.7011', '1974-12-09 16:29:03', '2012-06-16 08:58:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Junius', 'Rohan', 'gbeer@example.org', '07320311086', '1997-05-26 23:53:19', '1978-02-08 02:45:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Norbert', 'Kuphal', 'ehodkiewicz@example.net', '973-300-0529x134', '2013-04-06 08:14:22', '1971-06-05 17:42:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Scarlett', 'Runte', 'hoppe.genoveva@example.com', '040-616-5384x14310', '1986-12-21 17:08:05', '1978-12-29 05:45:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Danielle', 'Johnston', 'yvette88@example.org', '556-954-1058x7827', '1981-05-26 02:11:05', '1987-09-30 17:53:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Trenton', 'Bernier', 'hamill.donavon@example.org', '09841928051', '1991-03-29 03:56:18', '1992-10-25 02:00:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Rachael', 'Bauch', 'idaniel@example.com', '(654)969-9112', '2000-08-25 22:46:35', '1990-07-06 13:36:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Felix', 'Mayert', 'monahan.alexander@example.net', '383.328.1566x97440', '2001-11-03 19:01:45', '1973-01-03 16:42:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Jude', 'O\'Reilly', 'sd\'amore@example.com', '019-003-2739', '1985-05-15 01:33:41', '1977-02-14 19:45:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Dana', 'Kunze', 'shanie.schamberger@example.net', '(496)292-4245x1592', '2018-05-06 16:06:21', '2016-05-18 20:44:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Stella', 'Emmerich', 'tkuhlman@example.net', '660-463-6810', '2018-04-16 21:41:19', '1981-05-31 22:49:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Keanu', 'Rowe', 'jo.breitenberg@example.org', '(282)805-2905x370', '1982-06-05 21:13:30', '1978-06-30 20:21:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Marques', 'Stamm', 'adell.reichel@example.org', '(049)794-8811x6745', '1982-06-01 21:14:36', '2007-06-02 21:04:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Carolyn', 'Konopelski', 'urussel@example.net', '(878)778-9401x978', '1987-10-20 05:19:43', '1995-03-29 19:16:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Roselyn', 'Hauck', 'corkery.alena@example.com', '1-563-033-8338x2159', '1997-02-02 03:43:21', '2019-06-15 17:20:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Deanna', 'Eichmann', 'ratke.lenore@example.com', '(362)059-8577', '1989-04-01 08:51:28', '2005-12-02 11:53:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Onie', 'Runolfsson', 'jakob.rowe@example.net', '1-273-527-5204x84103', '1978-05-09 13:48:13', '1985-06-05 12:37:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Elyse', 'Pfannerstill', 'schuppe.benedict@example.org', '02207339175', '2005-01-18 03:12:57', '2009-03-28 15:20:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Pablo', 'Cormier', 'myrtle.feest@example.org', '(993)158-3941x84450', '2005-07-22 14:59:50', '2014-11-30 19:50:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Marietta', 'Hettinger', 'elnora.crona@example.com', '(646)694-2557x7138', '1976-07-12 08:46:45', '2008-09-22 11:06:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Sedrick', 'Berge', 'heaven19@example.net', '(047)732-3783x15479', '1975-12-14 00:56:12', '1993-07-23 04:45:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Yesenia', 'Little', 'zhahn@example.org', '524.762.3095x9791', '1993-05-23 18:54:59', '2000-05-29 17:42:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Scarlett', 'Schmidt', 'bernhard.peggie@example.com', '1-252-393-7433x333', '1997-08-17 19:45:53', '2014-06-04 04:24:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Ariel', 'Zemlak', 'tmayert@example.net', '+20(3)2556147557', '1993-10-15 14:09:58', '2004-10-25 18:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Abdul', 'Boehm', 'bo.walter@example.net', '615.998.8438', '1996-06-17 23:56:37', '2006-12-06 08:49:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Mandy', 'Wyman', 'duncan18@example.org', '01731450170', '1996-11-01 20:31:53', '1983-06-09 07:28:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Florian', 'Kirlin', 'gbashirian@example.com', '634.188.1860', '2001-05-28 13:29:47', '2010-06-27 03:24:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Nicolas', 'Wiegand', 'chowell@example.net', '499.204.6301x11482', '1999-12-28 08:11:41', '1995-04-01 07:18:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Sedrick', 'Sipes', 'nreichert@example.com', '+54(5)0935616802', '2011-04-01 20:17:10', '1978-12-24 11:20:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Camden', 'Wehner', 'caroline53@example.net', '463-422-8010x721', '1988-07-18 06:39:34', '2005-12-06 19:31:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Emilio', 'Barton', 'pfannerstill.idell@example.org', '(921)914-4781x82069', '1997-09-27 22:34:36', '1974-10-30 07:35:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Helena', 'Boyle', 'gabe44@example.com', '1-561-639-6185x4673', '2010-03-17 00:07:59', '1983-07-20 18:04:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Bonita', 'Rogahn', 'vwalker@example.net', '(937)749-3676x5669', '2001-07-06 22:01:02', '1983-12-18 10:41:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Stephanie', 'Marks', 'emmerich.catherine@example.com', '520.938.3942', '1972-08-30 03:53:39', '2003-03-27 06:06:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Willa', 'Bogan', 'kara42@example.net', '09366371765', '2019-10-30 16:45:18', '2017-12-17 21:57:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Camylle', 'Keeling', 'hartmann.deron@example.org', '068-404-3829', '1999-09-06 03:15:24', '1999-06-05 20:56:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Gail', 'Jacobs', 'marks.efren@example.net', '(859)707-6881x57774', '1992-01-30 09:35:18', '2004-08-25 15:34:09');


