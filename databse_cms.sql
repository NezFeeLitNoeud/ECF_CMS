PGDMP                          y            ecf_cms    12.2    12.2 �    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    60960    ecf_cms    DATABASE     e   CREATE DATABASE ecf_cms WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE ecf_cms;
                postgres    false            �            1259    60963 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    postgres    false            �            1259    60961    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          postgres    false    203            .           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          postgres    false    202            �            1259    61118    messages    TABLE     �  CREATE TABLE public.messages (
    id integer NOT NULL,
    messages_corps text,
    messages_creation_date timestamp with time zone,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    messages_topic integer,
    messages_user integer
);
    DROP TABLE public.messages;
       public         heap    postgres    false            �            1259    61139    messages__messages_topics    TABLE     y   CREATE TABLE public.messages__messages_topics (
    id integer NOT NULL,
    message_id integer,
    topic_id integer
);
 -   DROP TABLE public.messages__messages_topics;
       public         heap    postgres    false            �            1259    61137     messages__messages_topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages__messages_topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.messages__messages_topics_id_seq;
       public          postgres    false    233            /           0    0     messages__messages_topics_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.messages__messages_topics_id_seq OWNED BY public.messages__messages_topics.id;
          public          postgres    false    232            �            1259    61131    messages__messages_users    TABLE     w   CREATE TABLE public.messages__messages_users (
    id integer NOT NULL,
    message_id integer,
    user_id integer
);
 ,   DROP TABLE public.messages__messages_users;
       public         heap    postgres    false            �            1259    61129    messages__messages_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages__messages_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.messages__messages_users_id_seq;
       public          postgres    false    231            0           0    0    messages__messages_users_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.messages__messages_users_id_seq OWNED BY public.messages__messages_users.id;
          public          postgres    false    230            �            1259    61116    messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    229            1           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    228            �            1259    61147 )   messages_messages_topics__topics_messages    TABLE     �   CREATE TABLE public.messages_messages_topics__topics_messages (
    id integer NOT NULL,
    message_id integer,
    topic_id integer
);
 =   DROP TABLE public.messages_messages_topics__topics_messages;
       public         heap    postgres    false            �            1259    61145 0   messages_messages_topics__topics_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_messages_topics__topics_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.messages_messages_topics__topics_messages_id_seq;
       public          postgres    false    235            2           0    0 0   messages_messages_topics__topics_messages_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.messages_messages_topics__topics_messages_id_seq OWNED BY public.messages_messages_topics__topics_messages.id;
          public          postgres    false    234            �            1259    61015    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    postgres    false            �            1259    61013    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          postgres    false    211            3           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          postgres    false    210            �            1259    60985    strapi_permission    TABLE     S  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    postgres    false            �            1259    60983    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          postgres    false    207            4           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          postgres    false    206            �            1259    60998    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    postgres    false            �            1259    60996    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          postgres    false    209            5           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          postgres    false    208            �            1259    61028    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    postgres    false            �            1259    61026    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          postgres    false    213            6           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          postgres    false    212            �            1259    60974    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    60972    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    205            7           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    204            �            1259    61100    topics    TABLE     w  CREATE TABLE public.topics (
    id integer NOT NULL,
    topic_titre character varying(255),
    topic_creation_date date,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    topic_user integer
);
    DROP TABLE public.topics;
       public         heap    postgres    false            �            1259    61163    topics__topic_user    TABLE     o   CREATE TABLE public.topics__topic_user (
    id integer NOT NULL,
    topic_id integer,
    user_id integer
);
 &   DROP TABLE public.topics__topic_user;
       public         heap    postgres    false            �            1259    61161    topics__topic_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics__topic_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.topics__topic_user_id_seq;
       public          postgres    false    239            8           0    0    topics__topic_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.topics__topic_user_id_seq OWNED BY public.topics__topic_user.id;
          public          postgres    false    238            �            1259    61110    topics__topic_users    TABLE     p   CREATE TABLE public.topics__topic_users (
    id integer NOT NULL,
    topic_id integer,
    user_id integer
);
 '   DROP TABLE public.topics__topic_users;
       public         heap    postgres    false            �            1259    61108    topics__topic_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics__topic_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.topics__topic_users_id_seq;
       public          postgres    false    227            9           0    0    topics__topic_users_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.topics__topic_users_id_seq OWNED BY public.topics__topic_users.id;
          public          postgres    false    226            �            1259    61155    topics__users_permissions_users    TABLE     |   CREATE TABLE public.topics__users_permissions_users (
    id integer NOT NULL,
    topic_id integer,
    user_id integer
);
 3   DROP TABLE public.topics__users_permissions_users;
       public         heap    postgres    false            �            1259    61153 &   topics__users_permissions_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics__users_permissions_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.topics__users_permissions_users_id_seq;
       public          postgres    false    237            :           0    0 &   topics__users_permissions_users_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.topics__users_permissions_users_id_seq OWNED BY public.topics__users_permissions_users.id;
          public          postgres    false    236            �            1259    61098    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    225            ;           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    224            �            1259    61075    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    postgres    false            �            1259    61073    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          postgres    false    221            <           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          postgres    false    220            �            1259    61088    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    postgres    false            �            1259    61086    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          postgres    false    223            =           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          postgres    false    222            �            1259    61036    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    postgres    false            �            1259    61034 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          postgres    false    215            >           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          postgres    false    214            �            1259    61047    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    postgres    false            �            1259    61045    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          postgres    false    217            ?           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          postgres    false    216            �            1259    61060    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    postgres    false            �            1259    61058    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          postgres    false    219            @           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          postgres    false    218            5           2604    60966    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            L           2604    61121    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            P           2604    61142    messages__messages_topics id    DEFAULT     �   ALTER TABLE ONLY public.messages__messages_topics ALTER COLUMN id SET DEFAULT nextval('public.messages__messages_topics_id_seq'::regclass);
 K   ALTER TABLE public.messages__messages_topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            O           2604    61134    messages__messages_users id    DEFAULT     �   ALTER TABLE ONLY public.messages__messages_users ALTER COLUMN id SET DEFAULT nextval('public.messages__messages_users_id_seq'::regclass);
 J   ALTER TABLE public.messages__messages_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            Q           2604    61150 ,   messages_messages_topics__topics_messages id    DEFAULT     �   ALTER TABLE ONLY public.messages_messages_topics__topics_messages ALTER COLUMN id SET DEFAULT nextval('public.messages_messages_topics__topics_messages_id_seq'::regclass);
 [   ALTER TABLE public.messages_messages_topics__topics_messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            =           2604    61018    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            7           2604    60988    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            :           2604    61001    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            >           2604    61031    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            6           2604    60977    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            H           2604    61103 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            S           2604    61166    topics__topic_user id    DEFAULT     ~   ALTER TABLE ONLY public.topics__topic_user ALTER COLUMN id SET DEFAULT nextval('public.topics__topic_user_id_seq'::regclass);
 D   ALTER TABLE public.topics__topic_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            K           2604    61113    topics__topic_users id    DEFAULT     �   ALTER TABLE ONLY public.topics__topic_users ALTER COLUMN id SET DEFAULT nextval('public.topics__topic_users_id_seq'::regclass);
 E   ALTER TABLE public.topics__topic_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            R           2604    61158 "   topics__users_permissions_users id    DEFAULT     �   ALTER TABLE ONLY public.topics__users_permissions_users ALTER COLUMN id SET DEFAULT nextval('public.topics__users_permissions_users_id_seq'::regclass);
 Q   ALTER TABLE public.topics__users_permissions_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            D           2604    61078    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            G           2604    61091    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ?           2604    61039    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            @           2604    61050    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            A           2604    61063    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    60963 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    203   ��                 0    61118    messages 
   TABLE DATA           �   COPY public.messages (id, messages_corps, messages_creation_date, published_at, created_by, updated_by, created_at, updated_at, messages_topic, messages_user) FROM stdin;
    public          postgres    false    229   T�       !          0    61139    messages__messages_topics 
   TABLE DATA           M   COPY public.messages__messages_topics (id, message_id, topic_id) FROM stdin;
    public          postgres    false    233   ��                 0    61131    messages__messages_users 
   TABLE DATA           K   COPY public.messages__messages_users (id, message_id, user_id) FROM stdin;
    public          postgres    false    231   �       #          0    61147 )   messages_messages_topics__topics_messages 
   TABLE DATA           ]   COPY public.messages_messages_topics__topics_messages (id, message_id, topic_id) FROM stdin;
    public          postgres    false    235   F�                 0    61015    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
    public          postgres    false    211   m�                 0    60985    strapi_permission 
   TABLE DATA           r   COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
    public          postgres    false    207   ��       	          0    60998    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �                 0    61028    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          postgres    false    213   ��                 0    60974    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    205   
�                 0    61100    topics 
   TABLE DATA           �   COPY public.topics (id, topic_titre, topic_creation_date, published_at, created_by, updated_by, created_at, updated_at, topic_user) FROM stdin;
    public          postgres    false    225   '�       '          0    61163    topics__topic_user 
   TABLE DATA           C   COPY public.topics__topic_user (id, topic_id, user_id) FROM stdin;
    public          postgres    false    239   ��                 0    61110    topics__topic_users 
   TABLE DATA           D   COPY public.topics__topic_users (id, topic_id, user_id) FROM stdin;
    public          postgres    false    227   ��       %          0    61155    topics__users_permissions_users 
   TABLE DATA           P   COPY public.topics__users_permissions_users (id, topic_id, user_id) FROM stdin;
    public          postgres    false    237   ��                 0    61075    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    221   ��                 0    61088    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    223   
�                 0    61036    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          postgres    false    215   '�                 0    61047    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          postgres    false    217   ��                 0    61060    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    219   A�       A           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 24, true);
          public          postgres    false    202            B           0    0     messages__messages_topics_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.messages__messages_topics_id_seq', 3, true);
          public          postgres    false    232            C           0    0    messages__messages_users_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.messages__messages_users_id_seq', 6, true);
          public          postgres    false    230            D           0    0    messages_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.messages_id_seq', 7, true);
          public          postgres    false    228            E           0    0 0   messages_messages_topics__topics_messages_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.messages_messages_topics__topics_messages_id_seq', 7, true);
          public          postgres    false    234            F           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          postgres    false    210            G           0    0    strapi_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 74, true);
          public          postgres    false    206            H           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          postgres    false    208            I           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          postgres    false    212            J           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    204            K           0    0    topics__topic_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.topics__topic_user_id_seq', 2, true);
          public          postgres    false    238            L           0    0    topics__topic_users_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.topics__topic_users_id_seq', 3, true);
          public          postgres    false    226            M           0    0 &   topics__users_permissions_users_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.topics__users_permissions_users_id_seq', 1, false);
          public          postgres    false    236            N           0    0    topics_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.topics_id_seq', 3, true);
          public          postgres    false    224            O           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);
          public          postgres    false    220            P           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);
          public          postgres    false    222            Q           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 178, true);
          public          postgres    false    214            R           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          postgres    false    216            S           0    0    users-permissions_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 2, true);
          public          postgres    false    218            U           2606    60971    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            postgres    false    203            }           2606    61144 8   messages__messages_topics messages__messages_topics_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.messages__messages_topics
    ADD CONSTRAINT messages__messages_topics_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.messages__messages_topics DROP CONSTRAINT messages__messages_topics_pkey;
       public            postgres    false    233            {           2606    61136 6   messages__messages_users messages__messages_users_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.messages__messages_users
    ADD CONSTRAINT messages__messages_users_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.messages__messages_users DROP CONSTRAINT messages__messages_users_pkey;
       public            postgres    false    231                       2606    61152 X   messages_messages_topics__topics_messages messages_messages_topics__topics_messages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.messages_messages_topics__topics_messages
    ADD CONSTRAINT messages_messages_topics__topics_messages_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.messages_messages_topics__topics_messages DROP CONSTRAINT messages_messages_topics__topics_messages_pkey;
       public            postgres    false    235            y           2606    61128    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    229            a           2606    61025 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            postgres    false    211            c           2606    61023 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            postgres    false    211            Y           2606    60995 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            postgres    false    207            [           2606    61012 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            postgres    false    209            ]           2606    61010 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            postgres    false    209            _           2606    61008    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            postgres    false    209            e           2606    61033 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            postgres    false    213            W           2606    60982 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    205            �           2606    61168 *   topics__topic_user topics__topic_user_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.topics__topic_user
    ADD CONSTRAINT topics__topic_user_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.topics__topic_user DROP CONSTRAINT topics__topic_user_pkey;
       public            postgres    false    239            w           2606    61115 ,   topics__topic_users topics__topic_users_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.topics__topic_users
    ADD CONSTRAINT topics__topic_users_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.topics__topic_users DROP CONSTRAINT topics__topic_users_pkey;
       public            postgres    false    227            �           2606    61160 D   topics__users_permissions_users topics__users_permissions_users_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.topics__users_permissions_users
    ADD CONSTRAINT topics__users_permissions_users_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.topics__users_permissions_users DROP CONSTRAINT topics__users_permissions_users_pkey;
       public            postgres    false    237            u           2606    61107    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    225            s           2606    61096 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            postgres    false    223            q           2606    61085    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            postgres    false    221            g           2606    61044 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            postgres    false    215            i           2606    61055 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            postgres    false    217            k           2606    61057 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            postgres    false    217            m           2606    61070 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            postgres    false    219            o           2606    61072 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            postgres    false    219               L  x��k��6�s�+\�r�8MҦ���.MS�h�,��-�kveɕ(�m��o�߻_rçHq$�mX�h��pf4�G���U��l���l��g,��Ӻ�eugM��*V�դ���_㚥��8
z|2N�,�	�OɊ�� ~����\�o���\Sx��E1��5�oNJ��dkC㫓q!Tbg+Zq�Zï�*
Ä��kN��`�;�`,?�%��f%vxYS�*����%�g��Oy)�-��A����i.~��yQd����EƒK��X�L����'�#��T�Li
��ؓ�N���ҥ!��H�b9��d|Q2�=X�lH��F�N�quu���Z|��S����q�&DcfZ��!#MKChT
Y�N Οi~Ɨ��X��X���.��s�GM�X������X��(}��U�A��?Y�k�5Z)�4�Vz�P��,��>L;�"��ē;ӬFؙ���3�kgiI�Q����UK+ ��^�e$|��~�X��g�[ͤm�"���귇�a,�uYlX���%UuQ�n���xhknI+�O5���9��>!*	T��Ԇc`����θ��Kj���Azÿ�a7��:�{�C��&k6�&EI�T�m}P8��1:3�-����)�Ԇd��?8�7w�[��nXY�+�st��3�y[��^���(Ϋ@�f ����9 -!�� #`�THhb�!�\R��$@��^a!�����9~����8݇=��-�|�cN�KL��g���g	Hj�{e�Nn���O+̷Y963 K�0,E3� 3�KB�?��n��[
�,L��J�s�a��X�P��I|�
�XV%:]��&/W��D9�1�QQPL��NH��Ir�/�j��v �A�r�����ؤIB�$�`��=<�;�5�~=�3e���(�T(b�*�mD_��>�
 ��G�j���6�XRU��=<\�g+.�h&,�N>&��RI�_0�Un�A�@�R���+����a�z�40������A�`�4�U7}ʽ9�&�٦�B�r�H`�&�Η���tT*c9��,�a��Ĳ`&�L���qjD1f&�!i
��J�g9�EK�[��z��Q��.'��$)V��X�*�hOsX�>���{��_gIg���E~W�?�3��+�'Q�D�ux�5����A����$ÇA�R��E�	4��n�f+��3PZ�z;*"s5���)��CR��s!�y�����X�Ku�T����}��^�+C��	�+���f��.ۍڋ���^v<+�z���c�V�H��d��ȗ2��W�fd.7D?�c��
�6����FfQ<jX��>�"@xZ�bO&s�L��;�:�C�]�	�/��<6�c�\��0�W#C�hQ�jѰ�PU| �&�k����W}��L��ߎ�ʣo�r���iŨ�������v`]�g�|]�1�:�2��W�� �z���+0�ˢV�g����X�YY������9͈���� �~mw��^�ء�������&���}o4��B�q��A1�o�?\��F����0SCh+�S�α��F�t"t��0�i�1���m�s������L%pW�h}Ԙ�`eŻ���Z��6��^q��/�=�>���&ƽ���j�,��/8�cAOcC���ŻԷY�G�O�hޗ]���1�0�u�]Klkh�{���o/�1�f��ӟɀ�:�c�H����|:�c�l��-&����94�c�s����t|&�1|��Me5�(���8c�zgh�!��W`���lP��ь���<J��[G���	Z_�!>1s����V!��A��`�ƙ[Gݵ���[��8���v|t0�T±��i�p"�p,��c蘣�r�SɼY3�'h�할s�|������l.||-��9a�6ϗ��cۦFW�pO�#�a3:Pe�A�a|�pN���${����7{i ���� ��A�ߛ =�M{��Ut��;U�5l��Vz�۴Q$���z�[��ǎ$;ޟ�)q���{WF~�C�۫K��N|��z��X��^��˟Rb���+a�T��(��tƂ�[���ny��6ù��-�����|SR<NIѹ6x>36ȷ�M�s׺a���.~���mjh������>����-�V߃b�{�9��r����r���x��N��a
Ék���r�80ӓg�'�87��5�7[�wb�M��s"j�/ŅC���Јr���F�Whp�0y�R��X�U����ޒ��%��?��!����"9��A�X�q�%��e�A<D�
q�.��'Y�h^1�5��r�q�5Z�;"�� D�l�D7ݯ�a��
o܆�n�x��wڌ��uѿ��@4��U4��$(}7@Cr�R��}#�b|�\s���9���tn��G�$�[�ݩ��6YI��.L~�쯖6�AMN���Y��;�\����t0A�������'��t�Vϰ�:�(}�ݻAn}a�(K�3�0��
TV��dx��j-`������<{]Ee!�k����|���4�;{С�NI���?ԩ�	+�W��1�0AB_)U%ɑ�i�VlTa��7����$�%�#��QVT��Ι�`gZ^��E~����7o�������E������.�G����#&L��E�e��G����#)!��Tc�_}�����G�wqT�k��峟�<�'�K��W�ll��3��ڻN�]�dI���u�٣$)꜏Z�y+'�\��H����?��8b%�dC��5:%uIw���OF�%�XIƒ���X5�V�W�����[��C�J��}�������1���'4E���HJyr"jf^�_d�M�Cm��,æ`�J�FA�2�j-n��%��;o� ia{1����>=hO�9��6��� �k:�\�?��G��Xw�Q�MwͽV�*ܛ��3�}tn�k]�_Q�w�3D���u�i�X�C��W}"�7!�nu�D5��Gܻ;C��k]����h�*�=���L(���*�k"{arok��g��ܫ�:�m�T'C��4A�[T�H��Ƅz��?zl�m�^zۨ؁s[��/���j�^��!��t\�Z���EB�#H\>�D��1@����3%0��:9�)�o��N�z?��$+S�ݏ�)���)M؊d���֚;��k��݇w�W���ث�Ŭ�Sg�������X�������}��.Y�3�� �L��X�d"�m}a ��@�
�^_�rX��j�"K�w<	��G���.3�x�f��
^����s���N���^*��f�!�7�a��&��3#Y�U���-�:�9[u���pm�A�-QN��E`�]8c����x��a5*)ʵO�*�v*�~�R`��+�3EA�s��J�������������:~���5z=�T�\�i1w�{2�x��������ᮜxT�bv\�}|��֡M'ꄈ��D:��akڏi�E��j�����;>�%��ͱ�w���1��\���G~�ő6�����N����)�כ�X)�pQ��H0m?����]�PCrp�Mb'λ��/�5��6����蝯ӱ�?�>�c�}��d���ֶT�rX]�#a���7Q76��N-�#���0�v�{ٺ'�v��F�7�۷o�W ��         �   x���=�0�9�w�(�!)��KA�B�J��!R��dO~z��c�
��`����a�%���gwWg��E'�����d�ȶ����R��iBs*	n
���׬0�}�밨.I����b�����ъ��*2gk�yA�=I      !      x�3�4�4�2�4�Ɯ�@2F��� !��            x�3�4�4�2�4�4�����        #      x�3�4�4�2�4�1z\\\             x�3��;�� ��ʜ̼TN�Ԍ��t�?μԂ�T��^X�!��$'??[/��S�(Q��@�<�<1"�E���'���,���-�<�*�Ӡ�24/���� �/#<�4'��/7��$(�(d6� 	�=... �a*t         �  x��X]o�0}N~E�����1�aoiU�R��f���/Ѕ��i]��1vz�=���dU��>/�8>V�'�Y�$[��?ۇ���-�1lrG�؎b⚞��������}��4m3�-�'�f���0����������f�.�Ջ���0OA��-9|mx7IV�e�a���a�L�*&ߒB�6���?���*IJ���>�R�,XLr��)/[Z�F��ɞ�&�%Xk1�(��ih����ir^
O���]�l�,	/-i_*j�9˄�	�4���>1�o7�L
��z��E�39�j���a,Bv�u&�5���O��Z�Ya�ϼ.�Vྜྷ��;��C7�9�"k��}es�����O��A���Ƨԯ��K�� �����P���C�-��H��}�(���G����5M]A2�A.8C���� P�Q��j[�D��(�n)Jd��XS�9��Y�Py0
{i��M9c4�����U�G@��+S^T�3�,y���Ğ�ɮ�-Md����L�������p5D���s_8��qf�����+�q{։j6�����c�zR�Qs���@��E�NcD�=9�;NGǙd�I��̸��E�2g"�AkǾF)ο���ڕ��^�ɫSY�x���H�m����<�)�0l
��i��6a�4���Xގ(�Nt����{uЀ�Z�� Cuj�������,&��F�d8�� ���gZ��T� ��uư�n���cPL�$��Z��q1�Eᾖ$���Ƹ8�΢�c�xZ��q��U4q�E�a�T�����*�*�����-��Ԅ�
\���&�����y�5����,���AYPЦ�j�a��Í�P&��V �^�4��Ç;P̵K_�3vl7��1�u�ț���(F����GYFS�	�n;&��8���T�:��t��H�|��qT]��Up�����w���|l�K��qP�=��>�3-�!�g�U2��B���T�0�c��TV�{�����z�v���      	   �   x�}�1n�0Eg�����M�=A�.������}������'�Uf�p��K�9t|C.�!fp�#f���/8Mp&���q&�/�+;X����p�����������i�>}��Wj[��b��ms9M�Gp)
Ea�M�W�11A:C����0�-�m�E�UK�vW¶5��T�V���#�T����(߿o�/������|�            x�3�4�4����� �X            x������ � �         J   x�3�6�4202�50�52Db*X��[��jr� ������	XY�������X�����+F��� A�{      '      x�3�4�4����� �X            x�3�4�4�2�4�Ɯ�@2F��� !��      %      x������ � �            x������ � �            x������ � �         �  x��Y�r�:�Mߥ;1���y��C�M�`�d�o�&ٲ%pzfvچ蓄��b�ʮ�d;�ߊ���A}nYNu׾O߽���|U���>�@��S���W���A�Z�
h���\��W@�{�1�n+��C6��~��E���K�͘ǰ~��Z�Q��)�oFdڃ$��Ã/�|i����`�k��[ʞo,zpg�+�Ņ[�r�Nk:ᣒ�����-��AAmy�7���itPܢu >��vp`����x�������b��Y�����w�b�+��#��;�pJ(��2�b��8E��T��rYft&�'G.�]ap���X��F��n�G.����7�t�Y��A��A���%)�]� y��.8�f%vS� dߏ]�� ���`���������uS\ꦞ��-�{0��2`�]e+���i��>!�3Tfn*�~_�4�QwY����8v�4V�_��j���
hr�?Z`��ZdUO�'��u�с��M��A�4�N�� ��ӟ��6�A��Df(��G�P���w�'GlsVd��g$l�k�um|:�?��Y����6�0c��
��}�'���g��.G�-X��h`yghX�H�B�'AÝ]�t KyS���s�x�g)�5�3���j�Uv3�h�s��lITr��5�<�d�#n�X2*l��&5�q�t_���6�b(Ѻ��/�E���<WSo|��p���Q�<}e�4���
&C:a��:Z��ħ�t��M]�K���u�f@�X��<��8����C(f���u4c[�.}!�'>�[f��ʘ8��7��kG���@��J���M"�'8�Th��~��m+�U1tާD�]#�;�P$p�W�f���nT�&\����i���� ڀ)p�69�_�z��?����'��Yi��'���ѭ�����'J�xaW�����*QX�*���#&e�\~���>?��D�� �D�����Q��Q�0k8 �����1����:��ڢA�Va�1}��Gs"�9��5�jRͅ�#q��/�[4��iD0�l݈���B��S\ĩ�)BVڝ�"�J�ۈ���U���W��'�P���C�u��7���=��P(��n�N�
�P�!'x�n�>���D��̺�s)�\>
�|SU�d&m�s�J�Zd��#�����ps.�����$�]A��~�j%����K���:���'��c��ϻ�����l�p2غ|(�Z>��'��m���7C/�ZEu/�RVT{i�ĲҠ�H��۲� !}�^��*'.��A����c��i�"���a��t���e���E�~���r=m�۽t���b���WD�j�m��>_-:T9sq�e�$�T
�i��)�w����!���`�x�������^h8����:�&���2�t���_ooo� �KQ�         W   x�3�(M��L�tIMK,�)Q(��IUH�,K�S(�W(�K,-�H�+�LN,IMQ(-N-��,�h��".CNGd%8�f�Դ=... ag3O         �   x�u�AO�@���+<p3]wX('��F$�jն��`X�RZ���i3/���ˇd�����W��VfeEs%I��"&f&0s���{~�n�/���ϑ���B��D�ͼ�b)F3G�7S�=�Ur�&���a�`�p̷]��\����|t��:�� R��UY��v	ja�]��D�O	��Ҷ���ֽ|�K���M1����i:
��p�}ʇ�(�-�2�;AW�0�o��Y�     