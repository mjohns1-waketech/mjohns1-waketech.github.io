PGDMP      ,                }        	   Gradebook    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16418 	   Gradebook    DATABASE     �   CREATE DATABASE "Gradebook" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Gradebook";
                     postgres    false            �            1259    16437    assignments    TABLE     �   CREATE TABLE public.assignments (
    assignment_id integer NOT NULL,
    title character varying(100),
    description text,
    due_date date,
    student_id integer
);
    DROP TABLE public.assignments;
       public         heap r       postgres    false            �            1259    16436    assignments_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assignments_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.assignments_assignment_id_seq;
       public               postgres    false    220            �           0    0    assignments_assignment_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.assignments_assignment_id_seq OWNED BY public.assignments.assignment_id;
          public               postgres    false    219            �            1259    16429    students    TABLE     �   CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    enrollment_date date
);
    DROP TABLE public.students;
       public         heap r       postgres    false            �            1259    16428    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.students_student_id_seq;
       public               postgres    false    218            �           0    0    students_student_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;
          public               postgres    false    217            ]           2604    16440    assignments assignment_id    DEFAULT     �   ALTER TABLE ONLY public.assignments ALTER COLUMN assignment_id SET DEFAULT nextval('public.assignments_assignment_id_seq'::regclass);
 H   ALTER TABLE public.assignments ALTER COLUMN assignment_id DROP DEFAULT;
       public               postgres    false    219    220    220            \           2604    16432    students student_id    DEFAULT     z   ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);
 B   ALTER TABLE public.students ALTER COLUMN student_id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16437    assignments 
   TABLE DATA           ^   COPY public.assignments (assignment_id, title, description, due_date, student_id) FROM stdin;
    public               postgres    false    220   �       �          0    16429    students 
   TABLE DATA           ]   COPY public.students (student_id, first_name, last_name, email, enrollment_date) FROM stdin;
    public               postgres    false    218   E                   0    0    assignments_assignment_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.assignments_assignment_id_seq', 12, true);
          public               postgres    false    219                       0    0    students_student_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.students_student_id_seq', 16, true);
          public               postgres    false    217            a           2606    16444    assignments assignments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (assignment_id);
 F   ALTER TABLE ONLY public.assignments DROP CONSTRAINT assignments_pkey;
       public                 postgres    false    220            _           2606    16434    students students_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    218            b           2606    16445 '   assignments assignments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);
 Q   ALTER TABLE ONLY public.assignments DROP CONSTRAINT assignments_student_id_fkey;
       public               postgres    false    4703    218    220            �   i   x���A
�0Dѵ}��@B�Rڭl��P�Qv��9J.���o��c2^nL��y@�4�(:��y��No��X���m	?k�9�&��l��3�y�?L�k���j2?      �   L   x�3��ML�Nͫ�L�����������+6tȭ�+O�N-IM��KM)���2"E�)�b�*|��IQlhF��=... +lM     