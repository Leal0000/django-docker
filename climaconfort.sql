--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin10;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin10;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin10;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin10;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin10;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin10;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin10;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin10;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin10;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin10;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin10;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin10;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin10;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin10;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin10;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin10;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin10;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin10;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin10;

--
-- Name: home_usuario; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.home_usuario (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    correo character varying(254) NOT NULL,
    password character varying(50) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.home_usuario OWNER TO admin10;

--
-- Name: home_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.home_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_usuario_id_seq OWNER TO admin10;

--
-- Name: home_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.home_usuario_id_seq OWNED BY public.home_usuario.id;


--
-- Name: table_registro; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.table_registro (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    clave_nueva character varying(50) NOT NULL,
    fecha date NOT NULL,
    telefono character varying(12) NOT NULL,
    email character varying(254) NOT NULL,
    documento character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    tipo_id integer NOT NULL,
    fecha_termino date NOT NULL,
    status_id integer NOT NULL
);


ALTER TABLE public.table_registro OWNER TO admin10;

--
-- Name: table_datos_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.table_datos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_datos_id_seq OWNER TO admin10;

--
-- Name: table_datos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.table_datos_id_seq OWNED BY public.table_registro.id;


--
-- Name: table_status; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.table_status (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    imagen character varying(100),
    dias integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.table_status OWNER TO admin10;

--
-- Name: table_status_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.table_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_status_id_seq OWNER TO admin10;

--
-- Name: table_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.table_status_id_seq OWNED BY public.table_status.id;


--
-- Name: table_tipo_poliza; Type: TABLE; Schema: public; Owner: admin10
--

CREATE TABLE public.table_tipo_poliza (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.table_tipo_poliza OWNER TO admin10;

--
-- Name: table_tipo_poliza_id_seq; Type: SEQUENCE; Schema: public; Owner: admin10
--

CREATE SEQUENCE public.table_tipo_poliza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_tipo_poliza_id_seq OWNER TO admin10;

--
-- Name: table_tipo_poliza_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin10
--

ALTER SEQUENCE public.table_tipo_poliza_id_seq OWNED BY public.table_tipo_poliza.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_usuario id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.home_usuario ALTER COLUMN id SET DEFAULT nextval('public.home_usuario_id_seq'::regclass);


--
-- Name: table_registro id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_registro ALTER COLUMN id SET DEFAULT nextval('public.table_datos_id_seq'::regclass);


--
-- Name: table_status id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_status ALTER COLUMN id SET DEFAULT nextval('public.table_status_id_seq'::regclass);


--
-- Name: table_tipo_poliza id; Type: DEFAULT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_tipo_poliza ALTER COLUMN id SET DEFAULT nextval('public.table_tipo_poliza_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Usuario	7	add_usuario
26	Can change Usuario	7	change_usuario
27	Can delete Usuario	7	delete_usuario
28	Can view Usuario	7	view_usuario
29	Can add tipo_poliza	8	add_tipo_poliza
30	Can change tipo_poliza	8	change_tipo_poliza
31	Can delete tipo_poliza	8	delete_tipo_poliza
32	Can view tipo_poliza	8	view_tipo_poliza
33	Can add registro	9	add_registro
34	Can change registro	9	change_registro
35	Can delete registro	9	delete_registro
36	Can view registro	9	view_registro
37	Can add status	10	add_status
38	Can change status	10	change_status
39	Can delete status	10	delete_status
40	Can view status	10	view_status
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$150000$w8omAFHd0OFv$hzqDxdPqlgr4yHmATWVFD5HtHpZzlo9oFrAaWzANwrg=	2021-05-22 23:59:17.318287-05	f	leal				f	t	2021-05-22 23:11:34-05
3	pbkdf2_sha256$150000$Q8QHgyhK7VKz$saue9lxulkmdcpvXQqCgO4RtpFaypqs0SsSD4VlO1ik=	2021-05-23 00:36:49.304238-05	f	juanita				f	t	2021-05-23 00:36:49.137482-05
4	pbkdf2_sha256$150000$L8vow09Z1jvO$9QouDNMYOa8B8L/xe7v+bHUym1hbFUTixpiqy0WnySA=	2021-05-24 08:37:31.314354-05	f	jesus				f	t	2021-05-24 08:37:31.134868-05
5	pbkdf2_sha256$150000$1fjxAy6WiccO$0K8swHY8G2scCLRVLCXwBJBwM81dmMl8m695U2a2CbU=	2021-05-27 00:59:37.116613-05	f	newuser				f	t	2021-05-27 00:59:36.923386-05
6	pbkdf2_sha256$150000$tNFcx4cHgTrW$qBBQfx5qoSWT1TJrssCGGa1rE4+N0kByiSgVAFUS4BM=	2021-05-28 08:50:54.829421-05	f	administrador				f	t	2021-05-28 08:50:54.710729-05
1	pbkdf2_sha256$150000$PrKBFtOLuLry$JLZf486fSBIzr4O11smnOwsTF0fA4/ge/3yR60onBtw=	2021-06-04 08:12:50.698314-05	t	root				t	t	2021-05-19 23:43:01.928559-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	2	33
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-05-19 23:44:07.74081-05	1	Auto	1	[{"added": {}}]	8	1
2	2021-05-19 23:44:11.525996-05	2	Casa	1	[{"added": {}}]	8	1
3	2021-05-19 23:45:21.216623-05	1	Jimmy Hendrix	1	[{"added": {}}]	9	1
4	2021-05-19 23:56:43.042605-05	1	Jimmy Hendrix	2	[{"changed": {"fields": ["documento"]}}]	9	1
5	2021-05-20 00:44:12.878532-05	3	Empresa	1	[{"added": {}}]	8	1
6	2021-05-20 21:41:46.772789-05	4	Negocio	1	[{"added": {}}]	8	1
7	2021-05-22 23:49:30.564696-05	2	leal	2	[{"changed": {"fields": ["user_permissions"]}}]	4	1
8	2021-05-23 00:33:12.606235-05	8	Gerardo	2	[{"changed": {"fields": ["documento"]}}]	9	1
9	2021-05-28 08:52:29.709098-05	5	computadora	1	[{"added": {}}]	8	1
10	2021-05-28 09:10:59.084858-05	11	Climas prueba	2	[{"changed": {"fields": ["nombre", "tipo"]}}]	9	1
11	2021-05-30 18:19:59.242799-05	13	Beat	1	[{"added": {}}]	9	1
12	2021-06-02 16:29:36.889426-05	1	Valdio	1	[{"added": {}}]	10	1
13	2021-06-02 16:29:46.64794-05	1	Valido	2	[{"changed": {"fields": ["nombre"]}}]	10	1
14	2021-06-02 16:31:03.551182-05	1	Valido	2	[{"changed": {"fields": ["imagen"]}}]	10	1
45	2021-06-03 18:57:06.254057-05	34	Proceso	1	[{"added": {}}]	10	1
46	2021-06-03 18:58:02.936269-05	40	Jimmy Hendrix	1	[{"added": {}}]	9	1
47	2021-06-03 19:14:43.492491-05	36	Nissan	2	[{"changed": {"fields": ["status"]}}]	9	1
48	2021-06-03 19:18:14.257241-05	35	Riesgo	1	[{"added": {}}]	10	1
49	2021-06-03 19:18:30.052797-05	37	Chevrolet	2	[{"changed": {"fields": ["status"]}}]	9	1
50	2021-06-03 19:27:57.145143-05	39	Chevrolet	2	[{"changed": {"fields": ["status"]}}]	9	1
51	2021-06-03 19:29:33.960504-05	36	Descartado	1	[{"added": {}}]	10	1
52	2021-06-03 19:29:45.886939-05	35	Chevrolet	2	[{"changed": {"fields": ["status"]}}]	9	1
53	2021-06-03 19:30:29.174571-05	36	Descartado	2	[{"changed": {"fields": ["imagen"]}}]	10	1
54	2021-06-04 21:05:07.801832-05	43	Samsung	2	[{"changed": {"fields": ["status"]}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	home	usuario
8	table	tipo_poliza
9	table	registro
10	table	status
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-19 23:41:09.682621-05
2	auth	0001_initial	2021-05-19 23:41:09.721823-05
3	admin	0001_initial	2021-05-19 23:41:09.770055-05
4	admin	0002_logentry_remove_auto_add	2021-05-19 23:41:09.784843-05
5	admin	0003_logentry_add_action_flag_choices	2021-05-19 23:41:09.793507-05
6	contenttypes	0002_remove_content_type_name	2021-05-19 23:41:09.812462-05
7	auth	0002_alter_permission_name_max_length	2021-05-19 23:41:09.819132-05
8	auth	0003_alter_user_email_max_length	2021-05-19 23:41:09.826679-05
9	auth	0004_alter_user_username_opts	2021-05-19 23:41:09.835794-05
10	auth	0005_alter_user_last_login_null	2021-05-19 23:41:09.844227-05
11	auth	0006_require_contenttypes_0002	2021-05-19 23:41:09.84756-05
12	auth	0007_alter_validators_add_error_messages	2021-05-19 23:41:09.858739-05
13	auth	0008_alter_user_username_max_length	2021-05-19 23:41:09.871376-05
14	auth	0009_alter_user_last_name_max_length	2021-05-19 23:41:09.880399-05
15	auth	0010_alter_group_name_max_length	2021-05-19 23:41:09.891974-05
16	auth	0011_update_proxy_permissions	2021-05-19 23:41:09.901065-05
17	home	0001_initial	2021-05-19 23:41:09.910143-05
18	sessions	0001_initial	2021-05-19 23:41:09.918245-05
19	table	0001_initial	2021-05-19 23:41:09.93553-05
20	table	0002_auto_20210520_0414	2021-05-19 23:41:09.944966-05
21	table	0003_auto_20210520_0422	2021-05-19 23:41:09.950224-05
22	table	0004_delete_registro	2021-05-19 23:41:09.954891-05
23	table	0005_datos	2021-05-19 23:41:09.96362-05
24	table	0006_auto_20210520_0435	2021-05-19 23:41:09.986534-05
25	table	0007_auto_20210520_0619	2021-05-20 01:19:22.303723-05
26	table	0008_registro_fecha_termino	2021-05-30 17:58:20.912088-05
27	table	0009_remove_registro_fecha_termino	2021-05-30 17:58:20.919973-05
28	table	0010_registro_fecha_termino	2021-05-30 17:58:20.926105-05
31	table	0011_status	2021-06-02 16:27:55.543805-05
62	table	0012_registro_status	2021-06-03 18:51:12.564789-05
63	table	0013_auto_20210603_2354	2021-06-03 18:54:56.146098-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
junhdbj4z0koem2xmay8obnzqqn5fhmh	ZWI2OTJiNjVlOTIxNWRiM2Y0ZGUyMGY0MGYxNDY0NGUyNDhjODMxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGMzZDI5YzE2YmVlZTU5NzA5NDM3MTlhMzhiZTY5ZGZkZTMwMmEwIn0=	2021-06-03 21:41:46.82297-05
9rpa265v9b2avhu1sl5kk8u3jdpg4n7q	ZWI2OTJiNjVlOTIxNWRiM2Y0ZGUyMGY0MGYxNDY0NGUyNDhjODMxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGMzZDI5YzE2YmVlZTU5NzA5NDM3MTlhMzhiZTY5ZGZkZTMwMmEwIn0=	2021-06-17 19:30:29.223011-05
crodzraqocxwrjconpavqp4k5v4lktdr	ZWI2OTJiNjVlOTIxNWRiM2Y0ZGUyMGY0MGYxNDY0NGUyNDhjODMxNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGMzZDI5YzE2YmVlZTU5NzA5NDM3MTlhMzhiZTY5ZGZkZTMwMmEwIn0=	2021-06-18 21:08:37.099305-05
\.


--
-- Data for Name: home_usuario; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.home_usuario (id, nombre, correo, password, created, updated) FROM stdin;
\.


--
-- Data for Name: table_registro; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.table_registro (id, nombre, clave_nueva, fecha, telefono, email, documento, created, updated, tipo_id, fecha_termino, status_id) FROM stdin;
29	Prueba 	1500	2021-06-01	9991510478	arielleal2206@gmail.com	documents/requirements_Dp9Ulll.txt	2021-05-31 01:14:17.93134-05	2021-05-31 01:14:17.931374-05	4	2021-08-30	1
30	Juana Pech	ABC-123	2021-06-02	9991510478	arielleal2206@gmail.com	documents/Dockerfile_tRri8nz	2021-05-31 12:28:38.79665-05	2021-05-31 12:28:38.796688-05	2	2021-08-31	1
33	Chevrolet	ABC-123	2021-06-30	9997541027	chevrolet@gmail.com	documents/chevrolet_LysjkV8.txt	2021-06-01 21:41:12.55728-05	2021-06-01 21:41:12.557298-05	4	2021-09-28	1
34	Chevrolet	ABC-123	2021-06-30	9997541027	chevrolet@gmail.com	documents/chevrolet_CiI6W5K.txt	2021-06-01 21:41:20.892077-05	2021-06-01 21:41:20.892103-05	4	2021-09-28	1
38	Chevrolet	ABC-123	2021-05-31	9997541027	chevrolet@gmail.com	documents/requirements_9KTqYs1.txt	2021-06-03 18:23:49.551395-05	2021-06-03 18:23:49.551426-05	1	2021-08-29	1
40	Jimmy Hendrix	ABC-123	2021-06-03	9997541027	chevrolet@gmail.com	documents/chevrolet_jlImoxd.txt	2021-06-03 18:58:02.934904-05	2021-06-03 18:58:02.93493-05	3	2021-08-24	34
36	Nissan	Nissangb	2021-06-15	9997541027	chevrolet@gmail.com	documents/chevrolet_UWb2mrH.txt	2021-06-02 08:29:02.493596-05	2021-06-02 08:29:02.493618-05	1	2021-09-13	34
37	Chevrolet	ABC-123	2021-05-31	9997541027	chevrolet@gmail.com	documents/requirements_h12Mvqd.txt	2021-06-03 18:23:10.275581-05	2021-06-03 18:23:10.275618-05	1	2021-08-29	35
39	Chevrolet	ABC-123	2021-05-31	9997541027	chevrolet@gmail.com	documents/requirements_c2zpR7H.txt	2021-06-03 18:24:46.03339-05	2021-06-03 18:24:46.033419-05	1	2021-08-29	35
35	Chevrolet	ABC-123	2021-06-30	9997541027	chevrolet@gmail.com	documents/chevrolet_rgHqO5H.txt	2021-06-01 21:41:37.090701-05	2021-06-01 21:41:37.090728-05	4	2021-09-28	36
44	Samsung	S123_ABC	2021-01-01	9997541027	samsung@gmail.com	documents/samsung_UVZooxL.txt	2021-06-04 21:05:14.71259-05	2021-06-04 21:05:14.71261-05	2	2021-06-04	1
\.


--
-- Data for Name: table_status; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.table_status (id, nombre, imagen, dias, created, updated) FROM stdin;
1	Valido	status/Circulo_verde.png	15	2021-06-02 16:29:36.887621-05	2021-06-02 16:29:36.887647-05
34	Proceso	status/amarillo.png	20	2021-06-03 18:57:06.252328-05	2021-06-03 18:57:06.252353-05
35	Riesgo	status/rojo.jpg	4	2021-06-03 19:18:14.255768-05	2021-06-03 19:18:14.255799-05
36	Descartado	status/n.jpg	0	2021-06-03 19:29:33.958868-05	2021-06-03 19:29:33.958891-05
\.


--
-- Data for Name: table_tipo_poliza; Type: TABLE DATA; Schema: public; Owner: admin10
--

COPY public.table_tipo_poliza (id, nombre, created, updated) FROM stdin;
1	Auto	2021-05-19 23:44:07.739187-05	2021-05-19 23:44:07.73921-05
2	Casa	2021-05-19 23:44:11.523815-05	2021-05-19 23:44:11.523844-05
3	Empresa	2021-05-20 00:44:12.877044-05	2021-05-20 00:44:12.877065-05
4	Negocio	2021-05-20 21:41:46.765127-05	2021-05-20 21:41:46.765148-05
5	computadora	2021-05-28 08:52:29.701447-05	2021-05-28 08:52:29.701469-05
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 69, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 54, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 42, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 63, true);


--
-- Name: home_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.home_usuario_id_seq', 1, false);


--
-- Name: table_datos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.table_datos_id_seq', 44, true);


--
-- Name: table_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.table_status_id_seq', 36, true);


--
-- Name: table_tipo_poliza_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin10
--

SELECT pg_catalog.setval('public.table_tipo_poliza_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_usuario home_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.home_usuario
    ADD CONSTRAINT home_usuario_pkey PRIMARY KEY (id);


--
-- Name: table_registro table_datos_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_registro
    ADD CONSTRAINT table_datos_pkey PRIMARY KEY (id);


--
-- Name: table_status table_status_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_status
    ADD CONSTRAINT table_status_pkey PRIMARY KEY (id);


--
-- Name: table_tipo_poliza table_tipo_poliza_pkey; Type: CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_tipo_poliza
    ADD CONSTRAINT table_tipo_poliza_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: table_datos_tipo_id_eb640f3b; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX table_datos_tipo_id_eb640f3b ON public.table_registro USING btree (tipo_id);


--
-- Name: table_registro_status_id_1743de7e; Type: INDEX; Schema: public; Owner: admin10
--

CREATE INDEX table_registro_status_id_1743de7e ON public.table_registro USING btree (status_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: table_registro table_datos_tipo_id_eb640f3b_fk_table_tipo_poliza_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_registro
    ADD CONSTRAINT table_datos_tipo_id_eb640f3b_fk_table_tipo_poliza_id FOREIGN KEY (tipo_id) REFERENCES public.table_tipo_poliza(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: table_registro table_registro_status_id_1743de7e_fk_table_status_id; Type: FK CONSTRAINT; Schema: public; Owner: admin10
--

ALTER TABLE ONLY public.table_registro
    ADD CONSTRAINT table_registro_status_id_1743de7e_fk_table_status_id FOREIGN KEY (status_id) REFERENCES public.table_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

