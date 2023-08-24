PGDMP     
    
                {            sportbd    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24843    sportbd    DATABASE     {   CREATE DATABASE sportbd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE sportbd;
                postgres    false            �            1259    24844 
   activities    TABLE     �   CREATE TABLE public.activities (
    id integer NOT NULL,
    spreadsheet character varying(255),
    activity_type character varying(255) NOT NULL,
    sp_id character varying(255),
    thread_id bigint NOT NULL
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    24849    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    214                       0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    215            �            1259    24850 	   tech_info    TABLE     ]   CREATE TABLE public.tech_info (
    str_id integer,
    date date,
    id bigint NOT NULL
);
    DROP TABLE public.tech_info;
       public         heap    postgres    false            �            1259    24853    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    tg_id bigint,
    name text,
    timezone text,
    gs_id text,
    nickname text,
    tg_url text,
    date_start date
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24858    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            n           2604    24859    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            o           2604    24860    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217                      0    24844 
   activities 
   TABLE DATA           V   COPY public.activities (id, spreadsheet, activity_type, sp_id, thread_id) FROM stdin;
    public          postgres    false    214   �                 0    24850 	   tech_info 
   TABLE DATA           5   COPY public.tech_info (str_id, date, id) FROM stdin;
    public          postgres    false    216   �       	          0    24853    users 
   TABLE DATA           _   COPY public.users (id, tg_id, name, timezone, gs_id, nickname, tg_url, date_start) FROM stdin;
    public          postgres    false    217   +                  0    0    activities_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.activities_id_seq', 5, true);
          public          postgres    false    215                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    218            q           2606    24862 '   activities activities_activity_type_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_activity_type_key UNIQUE (activity_type);
 Q   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_activity_type_key;
       public            postgres    false    214            s           2606    24864    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    214            u           2606    24871    tech_info tech_info_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tech_info
    ADD CONSTRAINT tech_info_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tech_info DROP CONSTRAINT tech_info_pkey;
       public            postgres    false    216            w           2606    24866    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217                  x�3���L,N+NIK,���L�b���� `�H            x���4202�5��52�4����� #�      	   Y   x�3�450���410�0���[.6\�za'��1�g�qs�Y���p��f%rj�r:s�g�'rFDDp��W� �i�     