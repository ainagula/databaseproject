PGDMP         :            
    x            Ainagul    13.0    13.0 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33470    Ainagul    DATABASE     j   CREATE DATABASE "Ainagul" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE "Ainagul";
                postgres    false            �            1259    33606    customer    TABLE       CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    hotel_id integer NOT NULL,
    receptionist_id integer NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    33681    feedback    TABLE     �   CREATE TABLE public.feedback (
    feedback_id integer NOT NULL,
    rate integer,
    feedback character varying(50),
    customer_id integer
);
    DROP TABLE public.feedback;
       public         heap    postgres    false            �            1259    33581    hotel    TABLE       CREATE TABLE public.hotel (
    hotel_id integer NOT NULL,
    hotel_name character varying(50) NOT NULL,
    address character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    manager_id integer NOT NULL
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    33576    manager    TABLE     �   CREATE TABLE public.manager (
    manager_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    email character varying(50) NOT NULL
);
    DROP TABLE public.manager;
       public         heap    postgres    false            �            1259    33651    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    customer_id integer NOT NULL,
    payment_option character varying(50) NOT NULL,
    credit_card character varying(50)
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    33591    receptionist    TABLE     W  CREATE TABLE public.receptionist (
    receptionist_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    email character varying(50),
    address character varying(50) NOT NULL,
    manager_id integer NOT NULL,
    hotel_id integer NOT NULL
);
     DROP TABLE public.receptionist;
       public         heap    postgres    false            �            1259    33661    reservation    TABLE       CREATE TABLE public.reservation (
    reservation_id integer NOT NULL,
    customer_id integer NOT NULL,
    check_in date NOT NULL,
    check_out date NOT NULL,
    guest_num integer NOT NULL,
    room_id integer NOT NULL,
    payment_id integer NOT NULL
);
    DROP TABLE public.reservation;
       public         heap    postgres    false            �            1259    33626    room    TABLE     �   CREATE TABLE public.room (
    room_id integer NOT NULL,
    room_num integer NOT NULL,
    room_type integer NOT NULL,
    availability character varying(10) NOT NULL,
    hotel_id integer NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    33621    roomtype    TABLE     �   CREATE TABLE public.roomtype (
    room_type integer NOT NULL,
    name character varying(50) NOT NULL,
    image character varying(50) NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.roomtype;
       public         heap    postgres    false            �            1259    33641    service    TABLE     �   CREATE TABLE public.service (
    service_id integer NOT NULL,
    name character varying(50) NOT NULL,
    price integer NOT NULL,
    hotel_id integer NOT NULL
);
    DROP TABLE public.service;
       public         heap    postgres    false            �          0    33606    customer 
   TABLE DATA           `   COPY public.customer (customer_id, name, surname, phone, hotel_id, receptionist_id) FROM stdin;
    public          postgres    false    203   �;       �          0    33681    feedback 
   TABLE DATA           L   COPY public.feedback (feedback_id, rate, feedback, customer_id) FROM stdin;
    public          postgres    false    209   �=       �          0    33581    hotel 
   TABLE DATA           X   COPY public.hotel (hotel_id, hotel_name, address, phone, email, manager_id) FROM stdin;
    public          postgres    false    201   �=       �          0    33576    manager 
   TABLE DATA           J   COPY public.manager (manager_id, name, surname, phone, email) FROM stdin;
    public          postgres    false    200   �>       �          0    33651    payment 
   TABLE DATA           W   COPY public.payment (payment_id, customer_id, payment_option, credit_card) FROM stdin;
    public          postgres    false    207   5?       �          0    33591    receptionist 
   TABLE DATA           s   COPY public.receptionist (receptionist_id, name, surname, phone, email, address, manager_id, hotel_id) FROM stdin;
    public          postgres    false    202   A@       �          0    33661    reservation 
   TABLE DATA           w   COPY public.reservation (reservation_id, customer_id, check_in, check_out, guest_num, room_id, payment_id) FROM stdin;
    public          postgres    false    208   3B       �          0    33626    room 
   TABLE DATA           T   COPY public.room (room_id, room_num, room_type, availability, hotel_id) FROM stdin;
    public          postgres    false    205   C       �          0    33621    roomtype 
   TABLE DATA           A   COPY public.roomtype (room_type, name, image, price) FROM stdin;
    public          postgres    false    204   uC       �          0    33641    service 
   TABLE DATA           D   COPY public.service (service_id, name, price, hotel_id) FROM stdin;
    public          postgres    false    206   �C       K           2606    33610    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    203            W           2606    33685    feedback feedback_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (feedback_id);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public            postgres    false    209            G           2606    33585    hotel hotel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (hotel_id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public            postgres    false    201            E           2606    33580    manager manager_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_pkey PRIMARY KEY (manager_id);
 >   ALTER TABLE ONLY public.manager DROP CONSTRAINT manager_pkey;
       public            postgres    false    200            S           2606    33655    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    207            I           2606    33595    receptionist receptionist_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.receptionist
    ADD CONSTRAINT receptionist_pkey PRIMARY KEY (receptionist_id);
 H   ALTER TABLE ONLY public.receptionist DROP CONSTRAINT receptionist_pkey;
       public            postgres    false    202            U           2606    33665    reservation reservation_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (reservation_id);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    208            O           2606    33630    room room_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (room_id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    205            M           2606    33625    roomtype roomtype_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.roomtype
    ADD CONSTRAINT roomtype_pkey PRIMARY KEY (room_type);
 @   ALTER TABLE ONLY public.roomtype DROP CONSTRAINT roomtype_pkey;
       public            postgres    false    204            Q           2606    33645    service service_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (service_id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    206            [           2606    33611    customer customer_hotel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES public.hotel(hotel_id);
 I   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_hotel_id_fkey;
       public          postgres    false    203    201    2887            \           2606    33616 &   customer customer_receptionist_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_receptionist_id_fkey FOREIGN KEY (receptionist_id) REFERENCES public.receptionist(receptionist_id);
 P   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_receptionist_id_fkey;
       public          postgres    false    2889    202    203            d           2606    33686 "   feedback feedback_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 L   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_customer_id_fkey;
       public          postgres    false    209    203    2891            X           2606    33586    hotel hotel_manager_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.manager(manager_id);
 E   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_manager_id_fkey;
       public          postgres    false    2885    200    201            `           2606    33656     payment payment_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_customer_id_fkey;
       public          postgres    false    207    2891    203            Z           2606    33601 '   receptionist receptionist_hotel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receptionist
    ADD CONSTRAINT receptionist_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES public.hotel(hotel_id);
 Q   ALTER TABLE ONLY public.receptionist DROP CONSTRAINT receptionist_hotel_id_fkey;
       public          postgres    false    2887    201    202            Y           2606    33596 )   receptionist receptionist_manager_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.receptionist
    ADD CONSTRAINT receptionist_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES public.manager(manager_id);
 S   ALTER TABLE ONLY public.receptionist DROP CONSTRAINT receptionist_manager_id_fkey;
       public          postgres    false    2885    200    202            a           2606    33666 (   reservation reservation_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 R   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_customer_id_fkey;
       public          postgres    false    2891    203    208            c           2606    33676 '   reservation reservation_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id);
 Q   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_payment_id_fkey;
       public          postgres    false    2899    207    208            b           2606    33671 $   reservation reservation_room_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.room(room_id);
 N   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_room_id_fkey;
       public          postgres    false    2895    208    205            ^           2606    33636    room room_hotel_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES public.hotel(hotel_id);
 A   ALTER TABLE ONLY public.room DROP CONSTRAINT room_hotel_id_fkey;
       public          postgres    false    2887    205    201            ]           2606    33631    room room_room_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_room_type_fkey FOREIGN KEY (room_type) REFERENCES public.roomtype(room_type);
 B   ALTER TABLE ONLY public.room DROP CONSTRAINT room_room_type_fkey;
       public          postgres    false    2893    204    205            _           2606    33646    service service_hotel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_hotel_id_fkey FOREIGN KEY (hotel_id) REFERENCES public.hotel(hotel_id);
 G   ALTER TABLE ONLY public.service DROP CONSTRAINT service_hotel_id_fkey;
       public          postgres    false    2887    206    201            �   �  x�%��j1�׿��/�2Gw-�hJ-�n��h$�84O�3����#<���	�|�����o��D�YH(|.}��=�0���\kAPJz���� %4>�k�C_K~+�;�V�E-��EC���Ω�kbđIp��	Ze��cqHӚ+�T���X�ZEwSr�ϩf|��ϹA�A��K����i�}_�>������Hi`���;v�]NH3�S�<�D����2�m+��K_��x#c�e�`�c{MOy�ea�R��:I�Y�
��t-�Ko��f�L�_~�&njN���TKK��s����Z;�h0��i|�s��x�sMo�Aq!����[)d�;3a^'(���mt��V*/�{Y�W�[����g6����]kiJsa����G
&H��;˭�͆Ƿ<������8��
��m�A�>oY�_���#�,�E1��G!�?����      �   *   x�3�4�K-�TH��OQ�4�2
��qqC�\1z\\\ �'�      �   �   x��=��0@�z|
_��6�q���S�j�m�d6D�4��p�ݥ��\��H�jOkB�� ��Xd�eF�2�W��9�W*�����R��2���2a��|Cyfz�A���R~Q�֕r�N�+X~�;��q�" +��2�(��+O�9��YxZ��ʄZ�<���8�b���S� [�B���B'      �   �   x�-ʱ
�0 ���/41�t�С��r�%&�_]����qNex-22x�5�72��gM/5o;k����K�����@}�9X�Em�����*���(W��G^��H�Gg:�6��a����eWo�����-      �   �   x�]�;NDAc�0��_�!BHd�r�s0K��!�f�R��2������|<$���bN����/ڴf�W�o�FkH�xe���%1IM�k���-	̜gBK�R��3DZ�����`l���Z)���5��td.4����wج��-jN3{��09���0�m'�Ā�n��r��dSႋ�js�����'A\��ܓ�S')�w�b=�(�UZ)]����#-�x�܁yF���S��N'��;�����`�0+_n�����/24t�      �   �  x�-��n�0E׏����1��D�v���f�nf��+�b���d�~����Ͻ.a<���
�U�������la��d���sh��mJ�N�<#�aD��~A(���"�~ZC@�[���0�gZvk��F�,�l�0W�G��cz "��Gk�gX\��	�\���}~ǢC�}ȗ+h]�W�~0�1X?��Up2���� sY
^�WU�B\S$;������F����h<{q�ӌI�;�}pC��P�aZ4JC�z�~QuK��SM�J�:�/�Ǝ���	�p�[�m�7<SZB��]�5�.[��OB\�7�����R��a���A{(j؛��G8X7x$���Rh^k-�Mϴ��s��>q�V�6MH�5��3l��a&�ahF�~\�ⱥ.�v~�����Æ�u���Fi�/�+;�7����m�����ռ-D�ii�i�c
��
CNK:S��!����(t]�%�?y�e�����      �   �   x�mQ��0�ƻ���.��g��9��C��`h4O�.�J�.��>�n�������������(e��d ������U��fu�m�O�n�}χz��a���Я�1m��[d)(�yZ0t��
�a�-��ę@7rS��W�$"��R�O8(�|�YN�GF�����Y,ЛXO7q�����x����JC���u��:� ?%�at      �   R   x�M�;� й=���� �:8�x�s�t!���"�qC4d�FG&�Ω�s.��qi#�m�[q/�N�ej^j���ށ���,      �   z   x�}�=�0@�پ���&0s����P*��C#��s��=��4��t�)�s��3Q,9��<�I�%�fSu���+�q�uG�pY��=��*F�!��G���G�2ĝA�\���K��cƻB��:9T      �   N   x�340�t�IM���KW(����4450�4�240��MM�Q(�I��45
qaWm��Pm�e�]�PC�1W� l #�     