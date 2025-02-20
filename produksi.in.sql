PGDMP         ;            
    y            produksi.in    14.1    14.1 V    ^           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            _           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            `           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            a           1262    16394    produksi.in    DATABASE     m   CREATE DATABASE "produksi.in" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "produksi.in";
                postgres    false            �            1259    38807 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    image bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    38806    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    210            b           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    209            �            1259    38873    material_requests    TABLE       CREATE TABLE public.material_requests (
    id integer NOT NULL,
    "productId" integer,
    "materialId" integer,
    "statusId" integer,
    amount integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
 %   DROP TABLE public.material_requests;
       public         heap    postgres    false            �            1259    38872    material_requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.material_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.material_requests_id_seq;
       public          postgres    false    222            c           0    0    material_requests_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.material_requests_id_seq OWNED BY public.material_requests.id;
          public          postgres    false    221            �            1259    38828 	   materials    TABLE     $  CREATE TABLE public.materials (
    id integer NOT NULL,
    name character varying(255),
    stock integer,
    cost integer,
    "typeId" integer,
    "unitId" integer,
    image bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.materials;
       public         heap    postgres    false            �            1259    38827    materials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.materials_id_seq;
       public          postgres    false    215            d           0    0    materials_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;
          public          postgres    false    214            �            1259    38914    product_assignments    TABLE       CREATE TABLE public.product_assignments (
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
       public         heap    postgres    false            �            1259    38913    product_assignments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.product_assignments_id_seq;
       public          postgres    false    226            e           0    0    product_assignments_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.product_assignments_id_seq OWNED BY public.product_assignments.id;
          public          postgres    false    225            �            1259    38895    products    TABLE     '  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    stock integer,
    cost integer,
    "categoryId" integer,
    "unitId" integer,
    image bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    38894    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    224            f           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    223            �            1259    38945    products_materials    TABLE     �   CREATE TABLE public.products_materials (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "productId" integer NOT NULL,
    "materialId" integer NOT NULL
);
 &   DROP TABLE public.products_materials;
       public         heap    postgres    false            �            1259    38853    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    38847    statuses    TABLE     �   CREATE TABLE public.statuses (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.statuses;
       public         heap    postgres    false            �            1259    38846    statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          postgres    false    217            g           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          postgres    false    216            �            1259    38821    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    38820    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    213            h           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    212            �            1259    38815    units    TABLE     �   CREATE TABLE public.units (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.units;
       public         heap    postgres    false            �            1259    38930    user_productAssignments    TABLE     �   CREATE TABLE public."user_productAssignments" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "assignmentId" integer NOT NULL
);
 -   DROP TABLE public."user_productAssignments";
       public         heap    postgres    false            �            1259    38859    users    TABLE     Q  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    username character varying(255),
    password character varying(255),
    "roleId" integer,
    image bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    38858    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    220            i           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    219            �           2604    38810    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    38876    material_requests id    DEFAULT     |   ALTER TABLE ONLY public.material_requests ALTER COLUMN id SET DEFAULT nextval('public.material_requests_id_seq'::regclass);
 C   ALTER TABLE public.material_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    38831    materials id    DEFAULT     l   ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);
 ;   ALTER TABLE public.materials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    38917    product_assignments id    DEFAULT     �   ALTER TABLE ONLY public.product_assignments ALTER COLUMN id SET DEFAULT nextval('public.product_assignments_id_seq'::regclass);
 E   ALTER TABLE public.product_assignments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    38898    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    38850    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    38824    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    38862    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            I          0    38807 
   categories 
   TABLE DATA           O   COPY public.categories (id, name, image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    210   wl       U          0    38873    material_requests 
   TABLE DATA           �   COPY public.material_requests (id, "productId", "materialId", "statusId", amount, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    222   �l       N          0    38828 	   materials 
   TABLE DATA           o   COPY public.materials (id, name, stock, cost, "typeId", "unitId", image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   $m       Y          0    38914    product_assignments 
   TABLE DATA           �   COPY public.product_assignments (id, "productId", amount, cost, "statusId", "assignmentId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    226   �m       W          0    38895    products 
   TABLE DATA           r   COPY public.products (id, name, stock, cost, "categoryId", "unitId", image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   �m       [          0    38945    products_materials 
   TABLE DATA           a   COPY public.products_materials ("createdAt", "updatedAt", "productId", "materialId") FROM stdin;
    public          postgres    false    228   }n       Q          0    38853    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   �n       P          0    38847    statuses 
   TABLE DATA           F   COPY public.statuses (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   o       L          0    38821    types 
   TABLE DATA           C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    213   ro       J          0    38815    units 
   TABLE DATA           C   COPY public.units (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   �o       Z          0    38930    user_productAssignments 
   TABLE DATA           g   COPY public."user_productAssignments" ("createdAt", "updatedAt", "userId", "assignmentId") FROM stdin;
    public          postgres    false    227   p       S          0    38859    users 
   TABLE DATA           o   COPY public.users (id, name, email, username, password, "roleId", image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   1p       j           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    209            k           0    0    material_requests_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.material_requests_id_seq', 3, true);
          public          postgres    false    221            l           0    0    materials_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.materials_id_seq', 3, true);
          public          postgres    false    214            m           0    0    product_assignments_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.product_assignments_id_seq', 3, true);
          public          postgres    false    225            n           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 3, true);
          public          postgres    false    223            o           0    0    statuses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.statuses_id_seq', 1, false);
          public          postgres    false    216            p           0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 1, false);
          public          postgres    false    212            q           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    219            �           2606    38814    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    210            �           2606    38878 (   material_requests material_requests_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT material_requests_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT material_requests_pkey;
       public            postgres    false    222            �           2606    38835    materials materials_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.materials DROP CONSTRAINT materials_pkey;
       public            postgres    false    215            �           2606    38919 ,   product_assignments product_assignments_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_assignments
    ADD CONSTRAINT product_assignments_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.product_assignments DROP CONSTRAINT product_assignments_pkey;
       public            postgres    false    226            �           2606    38949 *   products_materials products_materials_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.products_materials
    ADD CONSTRAINT products_materials_pkey PRIMARY KEY ("productId", "materialId");
 T   ALTER TABLE ONLY public.products_materials DROP CONSTRAINT products_materials_pkey;
       public            postgres    false    228    228            �           2606    38902    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    224            �           2606    38857    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    218            �           2606    38852    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    217            �           2606    38826    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    213            �           2606    38819    units units_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.units DROP CONSTRAINT units_pkey;
       public            postgres    false    211            �           2606    38934 4   user_productAssignments user_productAssignments_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."user_productAssignments"
    ADD CONSTRAINT "user_productAssignments_pkey" PRIMARY KEY ("userId", "assignmentId");
 b   ALTER TABLE ONLY public."user_productAssignments" DROP CONSTRAINT "user_productAssignments_pkey";
       public            postgres    false    227    227            �           2606    38866    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    220            �           2606    38879 3   material_requests material_requests_materialId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT "material_requests_materialId_fkey" FOREIGN KEY ("materialId") REFERENCES public.materials(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT "material_requests_materialId_fkey";
       public          postgres    false    215    3230    222            �           2606    38884 1   material_requests material_requests_statusId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT "material_requests_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public.statuses(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT "material_requests_statusId_fkey";
       public          postgres    false    217    3232    222            �           2606    38889 /   material_requests material_requests_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_requests
    ADD CONSTRAINT "material_requests_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.material_requests DROP CONSTRAINT "material_requests_userId_fkey";
       public          postgres    false    3236    222    220            �           2606    38836    materials materials_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT "materials_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE;
 K   ALTER TABLE ONLY public.materials DROP CONSTRAINT "materials_typeId_fkey";
       public          postgres    false    3228    215    213            �           2606    38841    materials materials_unitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materials
    ADD CONSTRAINT "materials_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES public.units(id) ON UPDATE CASCADE;
 K   ALTER TABLE ONLY public.materials DROP CONSTRAINT "materials_unitId_fkey";
       public          postgres    false    215    3226    211            �           2606    38920 6   product_assignments product_assignments_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_assignments
    ADD CONSTRAINT "product_assignments_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE;
 b   ALTER TABLE ONLY public.product_assignments DROP CONSTRAINT "product_assignments_productId_fkey";
       public          postgres    false    224    226    3240            �           2606    38925 5   product_assignments product_assignments_statusId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_assignments
    ADD CONSTRAINT "product_assignments_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public.statuses(id) ON UPDATE CASCADE;
 a   ALTER TABLE ONLY public.product_assignments DROP CONSTRAINT "product_assignments_statusId_fkey";
       public          postgres    false    3232    226    217            �           2606    38903 !   products products_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE;
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_categoryId_fkey";
       public          postgres    false    224    3224    210            �           2606    38955 5   products_materials products_materials_materialId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_materials
    ADD CONSTRAINT "products_materials_materialId_fkey" FOREIGN KEY ("materialId") REFERENCES public.materials(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.products_materials DROP CONSTRAINT "products_materials_materialId_fkey";
       public          postgres    false    215    3230    228            �           2606    38950 4   products_materials products_materials_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_materials
    ADD CONSTRAINT "products_materials_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_materials DROP CONSTRAINT "products_materials_productId_fkey";
       public          postgres    false    228    224    3240            �           2606    38908    products products_unitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES public.units(id) ON UPDATE CASCADE;
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_unitId_fkey";
       public          postgres    false    3226    211    224            �           2606    38940 A   user_productAssignments user_productAssignments_assignmentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user_productAssignments"
    ADD CONSTRAINT "user_productAssignments_assignmentId_fkey" FOREIGN KEY ("assignmentId") REFERENCES public.product_assignments(id) ON UPDATE CASCADE ON DELETE CASCADE;
 o   ALTER TABLE ONLY public."user_productAssignments" DROP CONSTRAINT "user_productAssignments_assignmentId_fkey";
       public          postgres    false    3242    227    226            �           2606    38935 ;   user_productAssignments user_productAssignments_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user_productAssignments"
    ADD CONSTRAINT "user_productAssignments_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public."user_productAssignments" DROP CONSTRAINT "user_productAssignments_userId_fkey";
       public          postgres    false    3236    227    220            �           2606    38867    users users_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE;
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_roleId_fkey";
       public          postgres    false    220    3234    218            I   L   x�3�t�.N-�/�,���4202�5"SCC+SS+cC=ms<R\F�!�x������2�tJ�*%_� �a(;      U   A   x�3�4�4bcN##C]C 2U04�25�26�30��60�'��e�i�b�iD�!1z\\\ ��%�      N   m   x�3��N��S(H-JN�420�440 ��F�1~@#C]C 2U04�25�26�30��60�#�eę������i2
l(�1n�,q��2�J-�I-��hq!e��qqq ��1O      Y   M   x����	�0��<E��A�J2K����}�F��	B@3'/��u)3i��B�}��_^�i	�U�7&{�%����=�&       W   o   x���;
�0�zr����n�\@����	""B������t�e,��!�{�3��k�u�ypn0ܐ�*j&%���G���
eL�9�ч��ჾR�N8�=
�)v�F)� �y1#      [      x������ � �      Q   Y   x�3��M�K�J�M��4202�5"SCC+SS+cC=#ms<R\F����Ee���E8��6$�e����P��R�]�I�!1z\\\ �Y,!      P   _   x�3�H�K��K�4202�5"SCC+SS+cC=cms<R\F��y
���0�m H�˘�%?/�L�&�ũy%dj6�,JMN�,KM!Ӏ=... rY@�      L   D   x�3��N���4202�5"SCC+SS+cC=sms<R\F�I�y�y�dj7�,H-���&S{� �`&i      J   >   x�3�,H.�4202�5"SCC+SS+cC=3ms<R\F�9�řyd�6��N'Sk� �0$      Z      x������ � �      S   �   x�3�tK,�H��LS���9z�)P.��Q����JqX���{T��OvE��q�_bb�j�{�wXTn�gz~�Wp�^H�~r��AzqXD��I.�!g�������!�*Z��Z���k���2�tJ�MJ�K�L��p�A���̈|�sz�g�qf	��@�d��A������� ��y�     