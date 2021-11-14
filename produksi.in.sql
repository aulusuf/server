PGDMP     0    %            
    y            produksi.in    14.1    14.1 Q    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    16394    produksi.in    DATABASE     m   CREATE DATABASE "produksi.in" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "produksi.in";
                postgres    false            �            1259    22019 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    22018    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    210            Y           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    209            �            1259    22071    material_requests    TABLE       CREATE TABLE public.material_requests (
    id integer NOT NULL,
    "productId" integer,
    "materialId" integer,
    "statusId" integer,
    jumlah integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
 %   DROP TABLE public.material_requests;
       public         heap    postgres    false            �            1259    22070    material_requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.material_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.material_requests_id_seq;
       public          postgres    false    221            Z           0    0    material_requests_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.material_requests_id_seq OWNED BY public.material_requests.id;
          public          postgres    false    220            �            1259    22033 	   materials    TABLE     �   CREATE TABLE public.materials (
    id integer NOT NULL,
    name character varying(255),
    stock integer,
    cost integer,
    "typeId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.materials;
       public         heap    postgres    false            �            1259    22032    materials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.materials_id_seq;
       public          postgres    false    214            [           0    0    materials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;
          public          postgres    false    213            �            1259    22105    product_assignments    TABLE       CREATE TABLE public.product_assignments (
    id integer NOT NULL,
    "productId" integer,
    amount integer,
    cost integer,
    "statusId" integer,
    "assignmentId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 '   DROP TABLE public.product_assignments;
       public         heap    postgres    false            �            1259    22104    product_assignments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.product_assignments_id_seq;
       public          postgres    false    225            \           0    0    product_assignments_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.product_assignments_id_seq OWNED BY public.product_assignments.id;
          public          postgres    false    224            �            1259    22093    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    stock integer,
    "categoryId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    22092    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    223            ]           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    222            �            1259    22121    products_materials    TABLE     �   CREATE TABLE public.products_materials (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "productId" integer NOT NULL,
    "materialId" integer NOT NULL
);
 &   DROP TABLE public.products_materials;
       public         heap    postgres    false            �            1259    22051    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    22045    statuses    TABLE     �   CREATE TABLE public.statuses (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.statuses;
       public         heap    postgres    false            �            1259    22044    statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          postgres    false    216            ^           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          postgres    false    215            �            1259    22026    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    22025    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    212            _           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    211            �            1259    22136    user_productAssignment    TABLE     �   CREATE TABLE public."user_productAssignment" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "assignmentId" integer NOT NULL
);
 ,   DROP TABLE public."user_productAssignment";
       public         heap    postgres    false            �            1259    22057    users    TABLE     @  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    username character varying(255),
    password character varying(255),
    "roleId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    22056    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    219            `           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            �           2604    22022    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    22074    material_requests id    DEFAULT     |   ALTER TABLE ONLY public.material_requests ALTER COLUMN id SET DEFAULT nextval('public.material_requests_id_seq'::regclass);
 C   ALTER TABLE public.material_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    22036    materials id    DEFAULT     l   ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);
 ;   ALTER TABLE public.materials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    22108    product_assignments id    DEFAULT     �   ALTER TABLE ONLY public.product_assignments ALTER COLUMN id SET DEFAULT nextval('public.product_assignments_id_seq'::regclass);
 E   ALTER TABLE public.product_assignments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    22096    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    22048    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    22029    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    22060    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            A          0    22019 
   categories 
   TABLE DATA           H   COPY public.categories (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    210   =e       L          0    22071    material_requests 
   TABLE DATA           �   COPY public.material_requests (id, "productId", "materialId", "statusId", jumlah, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    221   Ze       E          0    22033 	   materials 
   TABLE DATA           ^   COPY public.materials (id, name, stock, cost, "typeId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    214   we       P          0    22105    product_assignments 
   TABLE DATA           �   COPY public.product_assignments (id, "productId", amount, cost, "statusId", "assignmentId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   �e       N          0    22093    products 
   TABLE DATA           [   COPY public.products (id, name, stock, "categoryId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   �e       Q          0    22121    products_materials 
   TABLE DATA           a   COPY public.products_materials ("createdAt", "updatedAt", "productId", "materialId") FROM stdin;
    public          postgres    false    226   �e       H          0    22051    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �e       G          0    22045    statuses 
   TABLE DATA           F   COPY public.statuses (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    216   Tf       C          0    22026    types 
   TABLE DATA           C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    212   qf       R          0    22136    user_productAssignment 
   TABLE DATA           f   COPY public."user_productAssignment" ("createdAt", "updatedAt", "userId", "assignmentId") FROM stdin;
    public          postgres    false    227   �f       J          0    22057    users 
   TABLE DATA           h   COPY public.users (id, name, email, username, password, "roleId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �f       a           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    209            b           0    0    material_requests_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.material_requests_id_seq', 1, false);
          public          postgres    false    220            c           0    0    materials_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.materials_id_seq', 1, false);
          public          postgres    false    213            d           0    0    product_assignments_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.product_assignments_id_seq', 1, false);
          public          postgres    false    224            e           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    222            f           0    0    statuses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.statuses_id_seq', 1, false);
          public          postgres    false    215            g           0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 1, false);
          public          postgres    false    211            h           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    218            �           2606    22024    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    210            �           2606    22076 (   material_requests material_requests_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT material_requests_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT material_requests_pkey;
       public            postgres    false    221            �           2606    22038    materials materials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.materials DROP CONSTRAINT materials_pkey;
       public            postgres    false    214            �           2606    22110 ,   product_assignments product_assignments_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_assignments
    ADD CONSTRAINT product_assignments_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.product_assignments DROP CONSTRAINT product_assignments_pkey;
       public            postgres    false    225            �           2606    22125 *   products_materials products_materials_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.products_materials
    ADD CONSTRAINT products_materials_pkey PRIMARY KEY ("productId", "materialId");
 T   ALTER TABLE ONLY public.products_materials DROP CONSTRAINT products_materials_pkey;
       public            postgres    false    226    226            �           2606    22098    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    223            �           2606    22055    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    217            �           2606    22050    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    216            �           2606    22031    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    212            �           2606    22140 2   user_productAssignment user_productAssignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."user_productAssignment"
    ADD CONSTRAINT "user_productAssignment_pkey" PRIMARY KEY ("userId", "assignmentId");
 `   ALTER TABLE ONLY public."user_productAssignment" DROP CONSTRAINT "user_productAssignment_pkey";
       public            postgres    false    227    227            �           2606    22064    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            �           2606    22077 3   material_requests material_requests_materialId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT "material_requests_materialId_fkey" FOREIGN KEY ("materialId") REFERENCES public.materials(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT "material_requests_materialId_fkey";
       public          postgres    false    3224    221    214            �           2606    22082 1   material_requests material_requests_statusId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT "material_requests_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public.statuses(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT "material_requests_statusId_fkey";
       public          postgres    false    3226    221    216            �           2606    22087 /   material_requests material_requests_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT "material_requests_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT "material_requests_userId_fkey";
       public          postgres    false    3230    219    221            �           2606    22039    materials materials_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT "materials_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE;
 K   ALTER TABLE ONLY public.materials DROP CONSTRAINT "materials_typeId_fkey";
       public          postgres    false    214    212    3222            �           2606    22111 6   product_assignments product_assignments_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_assignments
    ADD CONSTRAINT "product_assignments_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE;
 b   ALTER TABLE ONLY public.product_assignments DROP CONSTRAINT "product_assignments_productId_fkey";
       public          postgres    false    223    225    3234            �           2606    22116 5   product_assignments product_assignments_statusId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_assignments
    ADD CONSTRAINT "product_assignments_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public.statuses(id) ON UPDATE CASCADE;
 a   ALTER TABLE ONLY public.product_assignments DROP CONSTRAINT "product_assignments_statusId_fkey";
       public          postgres    false    3226    216    225            �           2606    22099 !   products products_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE;
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_categoryId_fkey";
       public          postgres    false    223    210    3220            �           2606    22131 5   products_materials products_materials_materialId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_materials
    ADD CONSTRAINT "products_materials_materialId_fkey" FOREIGN KEY ("materialId") REFERENCES public.materials(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.products_materials DROP CONSTRAINT "products_materials_materialId_fkey";
       public          postgres    false    226    214    3224            �           2606    22126 4   products_materials products_materials_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_materials
    ADD CONSTRAINT "products_materials_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_materials DROP CONSTRAINT "products_materials_productId_fkey";
       public          postgres    false    3234    226    223            �           2606    22146 ?   user_productAssignment user_productAssignment_assignmentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user_productAssignment"
    ADD CONSTRAINT "user_productAssignment_assignmentId_fkey" FOREIGN KEY ("assignmentId") REFERENCES public.product_assignments(id) ON UPDATE CASCADE ON DELETE CASCADE;
 m   ALTER TABLE ONLY public."user_productAssignment" DROP CONSTRAINT "user_productAssignment_assignmentId_fkey";
       public          postgres    false    227    3236    225            �           2606    22141 9   user_productAssignment user_productAssignment_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user_productAssignment"
    ADD CONSTRAINT "user_productAssignment_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public."user_productAssignment" DROP CONSTRAINT "user_productAssignment_userId_fkey";
       public          postgres    false    3230    219    227            �           2606    22065    users users_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE;
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_roleId_fkey";
       public          postgres    false    217    3228    219            A      x������ � �      L      x������ � �      E      x������ � �      P      x������ � �      N      x������ � �      Q      x������ � �      H   Y   x�3��M�K�J�M��4202�5"C3+#3+3=cms<R\F����Ee���E8ԙ�6$�e����P��R�]�I�!1z\\\ �F,�      G      x������ � �      C      x������ � �      R      x������ � �      J   �   x�3�tK,�H��LS���9z�)P.��Q����JqX���{T��OvE��q�_bb�j�{�wXTn�gz~�Wp�^H�~r��AzqXD��I.�!������!�(�Y�Y���X�j���2�tJ�MJ�K�L��pWA��9ˈLgsz�g�qf	��@�\c��J3ܮIq��qqq �x0     