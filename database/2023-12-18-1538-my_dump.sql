--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'campus', 'campus');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'curso', 'curso');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add campus', 7, 'add_campus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change campus', 7, 'change_campus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete campus', 7, 'delete_campus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view campus', 7, 'view_campus');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add curso', 8, 'add_curso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change curso', 8, 'change_curso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete curso', 8, 'delete_curso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view curso', 8, 'view_curso');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$720000$KsNKe8DCggtKGDBhSuwtrT$cGWwicLLYo9dDoX89phRQTehLMV9WsJTClsvPlPfr2E=', '2023-12-18 15:08:18.768153-03', true, 'root', '', '', 'sousagomide@gmail.com', true, true, '2023-12-18 15:08:01.384502-03');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: campus_campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.campus_campus (id, nome, sigla) VALUES (1, 'Trindade', 'CMPTRI');
INSERT INTO public.campus_campus (id, nome, sigla) VALUES (2, 'Ceres', 'CMPCE');
INSERT INTO public.campus_campus (id, nome, sigla) VALUES (3, 'Morrinhos', 'CMPMHOS');
INSERT INTO public.campus_campus (id, nome, sigla) VALUES (4, 'Rio Verde', 'CMPRV');


--
-- Data for Name: curso_curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (1, 'Engenharia da Computação', 'Ensino Superior', 'Noturno', 1);
INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (2, 'Engenharia Civil', 'Ensino Superior', 'Noturno', 1);
INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (3, 'Engenharia Elétrica', 'Ensino Superior', 'Noturno', 1);
INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (4, 'Informática para Internet', 'Ensino Integrado', 'Integral', 1);
INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (5, 'Eletrotécnica', 'Ensino Integrado', 'Integral', 1);
INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (6, 'Edificações', 'Ensino Integrado', 'Integral', 1);
INSERT INTO public.curso_curso (id, nome, tipo, periodo, campus_id) VALUES (7, 'Automação Industrial', 'Ensino Integrado', 'Integral', 1);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2023-12-18 15:14:45.089013-03', '1', 'Trindade(CMPTRI)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2023-12-18 15:15:11.926798-03', '2', 'Ceres(CMPCE)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2023-12-18 15:15:36.19464-03', '3', 'Morrinhos(CMPMHOS)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2023-12-18 15:15:56.538418-03', '4', 'Rio Verde(CMPRV)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2023-12-18 15:16:59.258108-03', '1', 'Engenharia da Computação - CMPTRI', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2023-12-18 15:17:43.731031-03', '2', 'Engenharia Civil - CMPTRI', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2023-12-18 15:17:58.652018-03', '3', 'Engenharia Elétrica - CMPTRI', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2023-12-18 15:18:26.281393-03', '4', 'Informática para Internet - CMPTRI', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2023-12-18 15:18:45.195595-03', '5', 'Eletrotécnica - CMPTRI', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2023-12-18 15:18:58.287106-03', '6', 'Edificações - CMPTRI', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2023-12-18 15:19:13.226731-03', '7', 'Automação Industrial - CMPTRI', 1, '[{"added": {}}]', 8, 1);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-12-16 18:35:20.60271-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-12-16 18:35:20.699742-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-12-16 18:35:20.725707-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-12-16 18:35:20.731709-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-16 18:35:20.737706-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-12-16 18:35:20.752708-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-12-16 18:35:20.774707-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-12-16 18:35:20.78171-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-12-16 18:35:20.78873-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-12-16 18:35:20.794708-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-12-16 18:35:20.796706-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-16 18:35:20.803709-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-12-16 18:35:20.814714-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-16 18:35:20.822709-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-12-16 18:35:20.829706-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-12-16 18:35:20.837738-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-16 18:35:20.844708-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2023-12-16 18:35:20.86171-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'campus', '0001_initial', '2023-12-18 15:13:21.52157-03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'curso', '0001_initial', '2023-12-18 15:13:21.544476-03');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('xmx4ngt5ati8bk293qmmv3sr2xbzakky', '.eJxVjMsOwiAUBf-FtSFAedWle7-BcB9I1dCktCvjv2uTLnR7Zua8RMrbWtPWeUkTibPQ4vS7QcYHtx3QPbfbLHFu6zKB3BV50C6vM_Hzcrh_BzX3-q0H75mIMZAuwcbA3gZiGsmMYIxCcIY8Y3TseNCBVLFFlwiKtDWAUbw_Ajs4oA:1rFI2M:bmspyLLndXWym4aVW5Akw7cMplSAJwfWBW-nchUF7Y4', '2024-01-01 15:08:18.778152-03');


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: campus_campus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.campus_campus_id_seq', 4, true);


--
-- Name: curso_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_curso_id_seq', 7, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 11, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

