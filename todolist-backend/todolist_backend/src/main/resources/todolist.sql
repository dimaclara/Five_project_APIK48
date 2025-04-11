PGDMP      ;                }           todolist    17.2    17.2 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    32782    todolist    DATABASE     �   CREATE DATABASE todolist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE todolist;
                     postgres    false            �            1259    32794    tasks    TABLE     �  CREATE TABLE public.tasks (
    id integer NOT NULL,
    description character varying(255),
    enddate timestamp(6) with time zone NOT NULL,
    startdate timestamp(6) with time zone NOT NULL,
    status character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    CONSTRAINT tasks_status_check CHECK (((status)::text = ANY ((ARRAY['TODO'::character varying, 'IN_PROGRESS'::character varying, 'DONE'::character varying])::text[])))
);
    DROP TABLE public.tasks;
       public         heap r       postgres    false            �            1259    32793    tasks_id_seq    SEQUENCE     �   ALTER TABLE public.tasks ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218            �          0    32794    tasks 
   TABLE DATA           Y   COPY public.tasks (id, description, enddate, startdate, status, title, type) FROM stdin;
    public               postgres    false    218   !
       �           0    0    tasks_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tasks_id_seq', 7, true);
          public               postgres    false    217            #           2606    32801    tasks tasks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public                 postgres    false    218            �   O  x���KN�0���)fǂ�r��;D#���*E�	��D��ؑ� zVp�^�Њ
DwH^X�o�|�ل�`)�����|�k]%dd#�
�.�b��m�k�}#��9�� ��h�����8e��kt�l��6Ȧq6K�$�]v�ˊd�YXj����R�*��O�������e���	���e��Z��hO�EGh���4Ko�x6c��*m��l��͵y
�ljH�hvpn����s��%���WD��w�М���ES)Ԅ����O�<����P��$��ₑzF�ـ.���q��om�vGQ���px�짵+��ʭ��o�<,��$x�A�� É     
