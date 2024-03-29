PGDMP                      	    w            Projeto_PBD    9.6.14    9.6.14 Q    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24719    Projeto_PBD    DATABASE     �   CREATE DATABASE "Projeto_PBD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Projeto_PBD";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    34381    aluno    TABLE     �  CREATE TABLE public.aluno (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    data_nascimento character varying(255),
    mae character varying(20) NOT NULL,
    naturalidade character varying(20) NOT NULL,
    nome character varying(100) NOT NULL,
    pai character varying(20) NOT NULL,
    contato_id integer,
    endereco_id integer,
    resp_fin_id integer
);
    DROP TABLE public.aluno;
       public         postgres    false    3            �            1259    34365    aluno_sequence    SEQUENCE     w   CREATE SEQUENCE public.aluno_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.aluno_sequence;
       public       postgres    false    3            �            1259    34386    contato    TABLE     �   CREATE TABLE public.contato (
    id integer NOT NULL,
    status boolean,
    celular character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    telefone character varying(20) NOT NULL
);
    DROP TABLE public.contato;
       public         postgres    false    3            �            1259    34367    contato_sequence    SEQUENCE     y   CREATE SEQUENCE public.contato_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.contato_sequence;
       public       postgres    false    3            �            1259    24834    coordenador_sequence    SEQUENCE     }   CREATE SEQUENCE public.coordenador_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.coordenador_sequence;
       public       postgres    false    3            �            1259    34391    cord_pedagogo    TABLE       CREATE TABLE public.cord_pedagogo (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    login character varying(50) NOT NULL,
    nome character varying(100) NOT NULL,
    senha character varying(11) NOT NULL,
    tipocargo character varying(255)
);
 !   DROP TABLE public.cord_pedagogo;
       public         postgres    false    3            �            1259    34396    diretor    TABLE       CREATE TABLE public.diretor (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    login character varying(50) NOT NULL,
    nome character varying(100) NOT NULL,
    senha character varying(11) NOT NULL,
    tipocargo character varying(255)
);
    DROP TABLE public.diretor;
       public         postgres    false    3            �            1259    24836    diretor_sequence    SEQUENCE     y   CREATE SEQUENCE public.diretor_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.diretor_sequence;
       public       postgres    false    3            �            1259    34401 
   disciplina    TABLE     �   CREATE TABLE public.disciplina (
    id integer NOT NULL,
    status boolean,
    carga_horaria character varying(5) NOT NULL,
    codigo character varying(255) NOT NULL,
    nome character varying(20) NOT NULL,
    professor_id integer
);
    DROP TABLE public.disciplina;
       public         postgres    false    3            �            1259    34369    disciplina_sequence    SEQUENCE     |   CREATE SEQUENCE public.disciplina_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.disciplina_sequence;
       public       postgres    false    3            �            1259    34406    endereco    TABLE     �  CREATE TABLE public.endereco (
    id integer NOT NULL,
    status boolean,
    bairro character varying(120) NOT NULL,
    cep character varying(9) NOT NULL,
    cidade character varying(50) NOT NULL,
    complemento character varying(50) NOT NULL,
    logradouro character varying(120) NOT NULL,
    numero character varying(20) NOT NULL,
    tipoestadouf character varying(255)
);
    DROP TABLE public.endereco;
       public         postgres    false    3            �            1259    34371    endereco_sequence    SEQUENCE     z   CREATE SEQUENCE public.endereco_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.endereco_sequence;
       public       postgres    false    3            �            1259    34414 	   professor    TABLE     '  CREATE TABLE public.professor (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    data_nascimento date NOT NULL,
    naturalidade character varying(255) NOT NULL,
    nome character varying(255) NOT NULL,
    contato_id integer,
    endereco_id integer
);
    DROP TABLE public.professor;
       public         postgres    false    3            �            1259    34373    professor_sequence    SEQUENCE     {   CREATE SEQUENCE public.professor_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.professor_sequence;
       public       postgres    false    3            �            1259    34375    resp_fin_sequence    SEQUENCE     z   CREATE SEQUENCE public.resp_fin_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.resp_fin_sequence;
       public       postgres    false    3            �            1259    34422    resp_financeiro    TABLE     �   CREATE TABLE public.resp_financeiro (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    nome character varying(50) NOT NULL
);
 #   DROP TABLE public.resp_financeiro;
       public         postgres    false    3            �            1259    34427 
   secretaria    TABLE       CREATE TABLE public.secretaria (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    login character varying(50) NOT NULL,
    nome character varying(100) NOT NULL,
    senha character varying(11) NOT NULL,
    tipocargo character varying(255)
);
    DROP TABLE public.secretaria;
       public         postgres    false    3            �            1259    24846    secretaria_sequence    SEQUENCE     |   CREATE SEQUENCE public.secretaria_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.secretaria_sequence;
       public       postgres    false    3            �            1259    34432    super_usuario    TABLE       CREATE TABLE public.super_usuario (
    id integer NOT NULL,
    status boolean,
    cpf character varying(11) NOT NULL,
    login character varying(50) NOT NULL,
    nome character varying(100) NOT NULL,
    senha character varying(11) NOT NULL,
    tipocargo character varying(255)
);
 !   DROP TABLE public.super_usuario;
       public         postgres    false    3            �            1259    24848    super_usuario_sequence    SEQUENCE        CREATE SEQUENCE public.super_usuario_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.super_usuario_sequence;
       public       postgres    false    3            �            1259    34437    turma    TABLE     �   CREATE TABLE public.turma (
    id integer NOT NULL,
    status boolean,
    nome character varying(20) NOT NULL,
    statusaluno character varying(255),
    aluno_id integer,
    disciplina_id integer
);
    DROP TABLE public.turma;
       public         postgres    false    3            �            1259    34377    turma_sequence    SEQUENCE     w   CREATE SEQUENCE public.turma_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.turma_sequence;
       public       postgres    false    3            �            1259    34379    usuario_sequence    SEQUENCE     y   CREATE SEQUENCE public.usuario_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.usuario_sequence;
       public       postgres    false    3            �          0    34381    aluno 
   TABLE DATA               �   COPY public.aluno (id, status, cpf, data_nascimento, mae, naturalidade, nome, pai, contato_id, endereco_id, resp_fin_id) FROM stdin;
    public       postgres    false    197   �_       �           0    0    aluno_sequence    SEQUENCE SET     <   SELECT pg_catalog.setval('public.aluno_sequence', 3, true);
            public       postgres    false    189            �          0    34386    contato 
   TABLE DATA               G   COPY public.contato (id, status, celular, email, telefone) FROM stdin;
    public       postgres    false    198   X`       �           0    0    contato_sequence    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contato_sequence', 3, true);
            public       postgres    false    190            �           0    0    coordenador_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.coordenador_sequence', 1, false);
            public       postgres    false    185            �          0    34391    cord_pedagogo 
   TABLE DATA               W   COPY public.cord_pedagogo (id, status, cpf, login, nome, senha, tipocargo) FROM stdin;
    public       postgres    false    199   �`       �          0    34396    diretor 
   TABLE DATA               Q   COPY public.diretor (id, status, cpf, login, nome, senha, tipocargo) FROM stdin;
    public       postgres    false    200   �`       �           0    0    diretor_sequence    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.diretor_sequence', 1, false);
            public       postgres    false    186            �          0    34401 
   disciplina 
   TABLE DATA               [   COPY public.disciplina (id, status, carga_horaria, codigo, nome, professor_id) FROM stdin;
    public       postgres    false    201   �`       �           0    0    disciplina_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.disciplina_sequence', 1, false);
            public       postgres    false    191            �          0    34406    endereco 
   TABLE DATA               r   COPY public.endereco (id, status, bairro, cep, cidade, complemento, logradouro, numero, tipoestadouf) FROM stdin;
    public       postgres    false    202   �`       �           0    0    endereco_sequence    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.endereco_sequence', 3, true);
            public       postgres    false    192            �          0    34414 	   professor 
   TABLE DATA               r   COPY public.professor (id, status, cpf, data_nascimento, naturalidade, nome, contato_id, endereco_id) FROM stdin;
    public       postgres    false    203   aa       �           0    0    professor_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.professor_sequence', 1, false);
            public       postgres    false    193            �           0    0    resp_fin_sequence    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.resp_fin_sequence', 3, true);
            public       postgres    false    194            �          0    34422    resp_financeiro 
   TABLE DATA               @   COPY public.resp_financeiro (id, status, cpf, nome) FROM stdin;
    public       postgres    false    204   ~a       �          0    34427 
   secretaria 
   TABLE DATA               T   COPY public.secretaria (id, status, cpf, login, nome, senha, tipocargo) FROM stdin;
    public       postgres    false    205   �a       �           0    0    secretaria_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.secretaria_sequence', 1, false);
            public       postgres    false    187            �          0    34432    super_usuario 
   TABLE DATA               W   COPY public.super_usuario (id, status, cpf, login, nome, senha, tipocargo) FROM stdin;
    public       postgres    false    206   �a       �           0    0    super_usuario_sequence    SEQUENCE SET     E   SELECT pg_catalog.setval('public.super_usuario_sequence', 1, false);
            public       postgres    false    188            �          0    34437    turma 
   TABLE DATA               W   COPY public.turma (id, status, nome, statusaluno, aluno_id, disciplina_id) FROM stdin;
    public       postgres    false    207   b       �           0    0    turma_sequence    SEQUENCE SET     =   SELECT pg_catalog.setval('public.turma_sequence', 1, false);
            public       postgres    false    195            �           0    0    usuario_sequence    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuario_sequence', 1, true);
            public       postgres    false    196                       2606    34385    aluno aluno_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.aluno DROP CONSTRAINT aluno_pkey;
       public         postgres    false    197    197                       2606    34390    contato contato_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contato
    ADD CONSTRAINT contato_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contato DROP CONSTRAINT contato_pkey;
       public         postgres    false    198    198                       2606    34395     cord_pedagogo cord_pedagogo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cord_pedagogo
    ADD CONSTRAINT cord_pedagogo_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cord_pedagogo DROP CONSTRAINT cord_pedagogo_pkey;
       public         postgres    false    199    199                       2606    34400    diretor diretor_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.diretor
    ADD CONSTRAINT diretor_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.diretor DROP CONSTRAINT diretor_pkey;
       public         postgres    false    200    200                        2606    34405    disciplina disciplina_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT disciplina_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.disciplina DROP CONSTRAINT disciplina_pkey;
       public         postgres    false    201    201            $           2606    34413    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public         postgres    false    202    202            &           2606    34421    professor professor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_pkey;
       public         postgres    false    203    203            *           2606    34426 $   resp_financeiro resp_financeiro_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.resp_financeiro
    ADD CONSTRAINT resp_financeiro_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.resp_financeiro DROP CONSTRAINT resp_financeiro_pkey;
       public         postgres    false    204    204            .           2606    34431    secretaria secretaria_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.secretaria
    ADD CONSTRAINT secretaria_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.secretaria DROP CONSTRAINT secretaria_pkey;
       public         postgres    false    205    205            2           2606    34436     super_usuario super_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.super_usuario
    ADD CONSTRAINT super_usuario_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.super_usuario DROP CONSTRAINT super_usuario_pkey;
       public         postgres    false    206    206            6           2606    34441    turma turma_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.turma
    ADD CONSTRAINT turma_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.turma DROP CONSTRAINT turma_pkey;
       public         postgres    false    207    207                       2606    34443 "   aluno uk_crrvmtky7d9tfarahi4jahewg 
   CONSTRAINT     \   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT uk_crrvmtky7d9tfarahi4jahewg UNIQUE (cpf);
 L   ALTER TABLE ONLY public.aluno DROP CONSTRAINT uk_crrvmtky7d9tfarahi4jahewg;
       public         postgres    false    197    197            "           2606    34449 '   disciplina uk_eljvghu5wa2lowt86mlf41ldq 
   CONSTRAINT     d   ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT uk_eljvghu5wa2lowt86mlf41ldq UNIQUE (codigo);
 Q   ALTER TABLE ONLY public.disciplina DROP CONSTRAINT uk_eljvghu5wa2lowt86mlf41ldq;
       public         postgres    false    201    201            4           2606    34457 *   super_usuario uk_f3buadg1qkxm5xsln0bgyt3hf 
   CONSTRAINT     d   ALTER TABLE ONLY public.super_usuario
    ADD CONSTRAINT uk_f3buadg1qkxm5xsln0bgyt3hf UNIQUE (cpf);
 T   ALTER TABLE ONLY public.super_usuario DROP CONSTRAINT uk_f3buadg1qkxm5xsln0bgyt3hf;
       public         postgres    false    206    206                       2606    34447 $   diretor uk_maqe97uidbuo0e0hjl0l4gugo 
   CONSTRAINT     ^   ALTER TABLE ONLY public.diretor
    ADD CONSTRAINT uk_maqe97uidbuo0e0hjl0l4gugo UNIQUE (cpf);
 N   ALTER TABLE ONLY public.diretor DROP CONSTRAINT uk_maqe97uidbuo0e0hjl0l4gugo;
       public         postgres    false    200    200            0           2606    34455 '   secretaria uk_pjqcupo3u6uwh19bhlbfw8hkt 
   CONSTRAINT     a   ALTER TABLE ONLY public.secretaria
    ADD CONSTRAINT uk_pjqcupo3u6uwh19bhlbfw8hkt UNIQUE (cpf);
 Q   ALTER TABLE ONLY public.secretaria DROP CONSTRAINT uk_pjqcupo3u6uwh19bhlbfw8hkt;
       public         postgres    false    205    205                       2606    34445 *   cord_pedagogo uk_pjxp7h7up5nep79nqhnpcskjr 
   CONSTRAINT     d   ALTER TABLE ONLY public.cord_pedagogo
    ADD CONSTRAINT uk_pjxp7h7up5nep79nqhnpcskjr UNIQUE (cpf);
 T   ALTER TABLE ONLY public.cord_pedagogo DROP CONSTRAINT uk_pjxp7h7up5nep79nqhnpcskjr;
       public         postgres    false    199    199            (           2606    34451 &   professor uk_pk1omryj5cud6uslkepgyfrca 
   CONSTRAINT     `   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT uk_pk1omryj5cud6uslkepgyfrca UNIQUE (cpf);
 P   ALTER TABLE ONLY public.professor DROP CONSTRAINT uk_pk1omryj5cud6uslkepgyfrca;
       public         postgres    false    203    203            ,           2606    34453 ,   resp_financeiro uk_sfb94dox6vlxr0xk70ekfrf2j 
   CONSTRAINT     f   ALTER TABLE ONLY public.resp_financeiro
    ADD CONSTRAINT uk_sfb94dox6vlxr0xk70ekfrf2j UNIQUE (cpf);
 V   ALTER TABLE ONLY public.resp_financeiro DROP CONSTRAINT uk_sfb94dox6vlxr0xk70ekfrf2j;
       public         postgres    false    204    204            9           2606    34468 !   aluno fk91267chv5v043uhqygn4dvy9g    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT fk91267chv5v043uhqygn4dvy9g FOREIGN KEY (resp_fin_id) REFERENCES public.resp_financeiro(id);
 K   ALTER TABLE ONLY public.aluno DROP CONSTRAINT fk91267chv5v043uhqygn4dvy9g;
       public       postgres    false    197    204    2090            >           2606    34493 !   turma fkeee13bbo1a87bo2i3bxxwvegm    FK CONSTRAINT     �   ALTER TABLE ONLY public.turma
    ADD CONSTRAINT fkeee13bbo1a87bo2i3bxxwvegm FOREIGN KEY (disciplina_id) REFERENCES public.disciplina(id);
 K   ALTER TABLE ONLY public.turma DROP CONSTRAINT fkeee13bbo1a87bo2i3bxxwvegm;
       public       postgres    false    201    207    2080            8           2606    34463 !   aluno fkeooy7cntssxbfvyx7odcig95j    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT fkeooy7cntssxbfvyx7odcig95j FOREIGN KEY (endereco_id) REFERENCES public.endereco(id);
 K   ALTER TABLE ONLY public.aluno DROP CONSTRAINT fkeooy7cntssxbfvyx7odcig95j;
       public       postgres    false    2084    197    202            <           2606    34483 %   professor fkf3kci47kb5v2ma4dsqmk6cmnb    FK CONSTRAINT     �   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT fkf3kci47kb5v2ma4dsqmk6cmnb FOREIGN KEY (endereco_id) REFERENCES public.endereco(id);
 O   ALTER TABLE ONLY public.professor DROP CONSTRAINT fkf3kci47kb5v2ma4dsqmk6cmnb;
       public       postgres    false    203    202    2084            7           2606    34458 !   aluno fkhrymkk8hyyuif4wt6y72rcxe0    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT fkhrymkk8hyyuif4wt6y72rcxe0 FOREIGN KEY (contato_id) REFERENCES public.contato(id);
 K   ALTER TABLE ONLY public.aluno DROP CONSTRAINT fkhrymkk8hyyuif4wt6y72rcxe0;
       public       postgres    false    2070    197    198            ;           2606    34478 %   professor fkigyuo4byc3c3dcqrd7e8dmqgy    FK CONSTRAINT     �   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT fkigyuo4byc3c3dcqrd7e8dmqgy FOREIGN KEY (contato_id) REFERENCES public.contato(id);
 O   ALTER TABLE ONLY public.professor DROP CONSTRAINT fkigyuo4byc3c3dcqrd7e8dmqgy;
       public       postgres    false    198    2070    203            =           2606    34488 !   turma fkn7b5ldx2jsmid9mcdggx9uwwt    FK CONSTRAINT     �   ALTER TABLE ONLY public.turma
    ADD CONSTRAINT fkn7b5ldx2jsmid9mcdggx9uwwt FOREIGN KEY (aluno_id) REFERENCES public.aluno(id);
 K   ALTER TABLE ONLY public.turma DROP CONSTRAINT fkn7b5ldx2jsmid9mcdggx9uwwt;
       public       postgres    false    2066    207    197            :           2606    34473 &   disciplina fkoqie7f1kx32b1atco9fpgxd7g    FK CONSTRAINT     �   ALTER TABLE ONLY public.disciplina
    ADD CONSTRAINT fkoqie7f1kx32b1atco9fpgxd7g FOREIGN KEY (professor_id) REFERENCES public.professor(id);
 P   ALTER TABLE ONLY public.disciplina DROP CONSTRAINT fkoqie7f1kx32b1atco9fpgxd7g;
       public       postgres    false    203    2086    201            �   X   x�3�,�40��42�74�720��tJ-J�ML�tI,,���D@b&�!r��XZ���s��q&%s����8���Rc����� ��      �   ;   x�3�,ᴰ�LM�M���4��2
�����q�T&��&gq����q��qqq N65      �      x������ � �      �      x������ � �      �      x������ � �      �   W   x�3�,�LJ�,���40�t�LILI�tN,N���O/J�44�p�s�u
u��2�NI�p��''�C� ��q��qqq I@�      �      x������ � �      �   (   x�3�,�400��tJ-JO��2�MM̌,�`B1z\\\ ��	      �      x������ � �      �   5   x�3�,�4�C�Ĕ��<NGY\R���_
p�u������� ���      �      x������ � �     