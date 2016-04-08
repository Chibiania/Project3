--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: Chibia
--

CREATE TABLE comments (
    id integer NOT NULL,
    name character varying,
    message text,
    snack_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE comments OWNER TO "Chibia";

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: Chibia
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO "Chibia";

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chibia
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Chibia
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Chibia";

--
-- Name: snacks; Type: TABLE; Schema: public; Owner: Chibia
--

CREATE TABLE snacks (
    id integer NOT NULL,
    name character varying,
    image_url character varying,
    country character varying,
    description text,
    mood character varying,
    taste character varying,
    nutrition_level integer,
    seller_url character varying,
    video_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    likes integer
);


ALTER TABLE snacks OWNER TO "Chibia";

--
-- Name: snacks_id_seq; Type: SEQUENCE; Schema: public; Owner: Chibia
--

CREATE SEQUENCE snacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE snacks_id_seq OWNER TO "Chibia";

--
-- Name: snacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Chibia
--

ALTER SEQUENCE snacks_id_seq OWNED BY snacks.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Chibia
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Chibia
--

ALTER TABLE ONLY snacks ALTER COLUMN id SET DEFAULT nextval('snacks_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: Chibia
--

COPY comments (id, name, message, snack_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chibia
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Chibia
--

COPY schema_migrations (version) FROM stdin;
20160401222210
20160401223755
20160403220747
20160403221203
20160406004536
\.


--
-- Data for Name: snacks; Type: TABLE DATA; Schema: public; Owner: Chibia
--

COPY snacks (id, name, image_url, country, description, mood, taste, nutrition_level, seller_url, video_url, created_at, updated_at, likes) FROM stdin;
2	Glico Pocky Strawberry	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p699_i9_w640.jpeg	Thailand	Biscuit Sticks	\N	\N	9	http://www.amazon.com/Glico-Strawberry-Pocky-1-41-Oz/dp/B00023T3DA/ref=sr_1_2_a_it?ie=UTF8&qid=1459589245&sr=8-2&keywords=Glico+Pocky+Strawberry	\N	2016-04-06 19:02:57.397	2016-04-06 19:02:57.397	721
3	United Coffee Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p567_i1_w350.jpeg	Thailand	Coffee Candy	\N	\N	1	http://www.amazon.com/United-Coffee-Candy-4-41-Pack/dp/B00G42HQZU/ref=sr_1_1_a_it?ie=UTF8&qid=1459589265&sr=8-1&keywords=United+Coffee+Candy	\N	2016-04-06 19:02:57.401	2016-04-06 19:02:57.401	2071
5	Euro Custard Cake	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p555_i4_w546.jpeg	Thailand	Custard Cake	\N	\N	7	http://www.amazon.com/Euro-Sweet-Custard-Cream-144g/dp/B008W2TLIA/ref=sr_1_1_a_it?ie=UTF8&qid=1459589391&sr=8-1&keywords=Euro+Custard+Cake	\N	2016-04-06 19:02:57.411	2016-04-06 19:02:57.411	4159
6	Euro Pandan Cake	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p564_i4_w640.jpeg	Thailand	Pandan Cake	\N	\N	7	http://www.amazon.com/Euro-Pandan-Cake-Packs-Inside/dp/B00DXJDQTC/ref=sr_1_1?ie=UTF8&qid=1459589408&sr=8-1&keywords=Euro+Pandan+Cake	\N	2016-04-06 19:02:57.415	2016-04-06 19:02:57.415	4310
7	Tao Kae Noi Super Crisp Seaweed Kimchi	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p565_i5_w640.jpeg	Thailand	Kim Chi Flavor	\N	\N	9	http://www.amazon.com/Tao-Kae-Noi-Grilled-Thailand/dp/B00IOCISA0/ref=sr_1_fkmr0_1_a_it?ie=UTF8&qid=1459589434&sr=8-1-fkmr0&keywords=Tao+Kae+Noi+Super+Crisp+Seaweed+Kimchi	\N	2016-04-06 19:02:57.419	2016-04-06 19:02:57.419	117
9	Tao Kae Noi Tempura Seaweed Spicy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p658_i4_w640.jpeg	Thailand	Spicy Japanese Flavor	\N	\N	7	http://www.amazon.com/Hi-Tempura-Seaweed-Spicy-Flavor/dp/B00F8MWQG6/ref=sr_1_1_a_it?ie=UTF8&qid=1459589488&sr=8-1&keywords=Tao+Kae+Noi+Tempura+Seaweed+Spicy	\N	2016-04-06 19:02:57.428	2016-04-06 19:02:57.428	3852
12	Hapi Hot Wasabi Peas	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p553_i3_w564.jpeg	Thailand	Hot Wasabi Peas	\N	\N	8	http://www.amazon.com/Hapi-Hot-Wasabi-Peas-Ounce/dp/B00PUCH4UW/ref=sr_1_2_a_it?ie=UTF8&qid=1459589567&sr=8-2&keywords=Hapi+Hot+Wasabi+Peas	\N	2016-04-06 19:02:57.446	2016-04-06 19:02:57.446	4791
14	Queens Diamond Banana Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p569_i9_w640.jpeg	Thailand		\N	\N	1	http://www.worldofsnacks.com/store/p569/Queens_Diamond_Banana_Chips.html	\N	2016-04-06 19:02:57.456	2016-04-06 19:02:57.456	1471
16	Queens Diamond Taro Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p571_i11_w640.jpeg	Thailand		\N	\N	2	http://www.worldofsnacks.com/store/p571/Queens_Diamond_Taro_Chips.html	\N	2016-04-06 19:02:57.471	2016-04-06 19:02:57.471	1136
18	Mama Oriental Style Vegetable	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p559_i5_w567.jpeg	Thailand	Vegetable Flavor Noodles	\N	\N	4	http://www.worldofsnacks.com/store/p559/Mama_Oriental_Style_Vegetable.html	\N	2016-04-06 19:02:57.483	2016-04-06 19:02:57.483	3740
23	Amira Tamarind Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p595_i3_w550.jpeg	Thailand	Hard Tamarind Candy	\N	\N	7	http://www.worldofsnacks.com/store/p595/Amira_Tamarind_Candy.html	\N	2016-04-06 19:02:57.513	2016-04-06 19:02:57.513	2291
25	Lotus Stick Biscuit	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p552_i1_w640.jpeg	Thailand		\N	\N	7	http://www.worldofsnacks.com/store/p552/Lotus_Stick_Biscuit.html	\N	2016-04-06 19:02:57.522	2016-04-06 19:02:57.522	4239
4	Euro Strawberry Cake	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p593_i5_w522.jpeg	Thailand	Moist cake with a dab of creamy strawberry filling, you are going to love Euro Strawberry cakes. World of Snacks has tracked down all the yummy flavors of Euro Cakes and now offers them for sale online here in the US with international shipping.  Order one, or try them all.	\N	\N	6	http://www.amazon.com/Euro-Strawberry-Cake-144-G/dp/B007Z0FCJM/ref=sr_1_1?ie=UTF8&qid=1459589308&sr=8-1&keywords=Euro+Strawberry+Cake	\N	2016-04-06 19:02:57.406	2016-04-07 13:35:18.38	3542
10	Tao Kae Noi Tom Yum Goong	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p592_i5_w640.jpeg	Thailand	Tom Yum Goong is a clear spicy and sour soup with shrimp and is a perfect flavor for Tao Kae Noi Seaweed Chips.  World of Snacks offers all of the best seaweed chips from Thailand including the Tao Ke Noi Tom Yum Goong.  You can buy this snack here online in the US and have it shipped anywhere in the world.	\N	\N	10	http://www.amazon.com/Tao-Kae-Noi-Seaweed-Thailand/dp/B00A8SBR5Q/ref=sr_1_1_a_it?ie=UTF8&qid=1459589512&sr=8-1&keywords=Tao+Kae+Noi+Tom+Yum+Goong	\N	2016-04-06 19:02:57.436	2016-04-07 13:39:20.392	1968
13	Hapi Spicy Sriracha Peas	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p554_i5_w640.jpeg	Thailand	Spicy SriIf you love spicy then you already know about Sriracha. The fastest growing hot sauce in the world, Siracha packs a powerful kick of spice with a well-rounded and bold flavor. Combine that with roasted green peas with a little garlic and you are in for a real treat. World of Snacks now offers Hapi Spicy Sriracha Peas for sale online with shipping from our US based snack store to anywhere in the world. If you like spicy snacks you may also want to order our Hapi Hot Wasabi Peas! racha Peas	\N	\N	8	http://www.worldofsnacks.com/store/p554/Hapi_Spicy_Sriracha_Peas.html	\N	2016-04-06 19:02:57.451	2016-04-07 13:41:36.464	1134
17	Mama Oriental Style Shrimp	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p561_i7_w602.jpeg	Thailand	It's simple, but very enjoyable.  These Ramen style noodles from Thailand are easy to make and are even easier to order.  World of Snacks now offers a great selection of the best Thai Noodles for sale online here in the US with international shipping.	\N	\N	10	http://www.worldofsnacks.com/store/p561/Mama_Oriental_Style_Shrimp.html	\N	2016-04-06 19:02:57.477	2016-04-07 13:44:04.365	1852
20	Mama Oriental Style Pork	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p560_i6_w640.jpeg	Thailand	It's simple, but very enjoyable.  These Ramen style noodles from Thailand are easy to make and are even easier to order.  World of Snacks now offers a great selection of the best Thai Noodles for sale online here in the US with international shipping.	\N	\N	4	http://www.worldofsnacks.com/store/p560/Mama_Oriental_Style_Pork.html	\N	2016-04-06 19:02:57.495	2016-04-07 13:46:17.844	3795
24	Amira Lemon Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p671_i4_w550.jpeg	Thailand	Amira Tamarind Candy is a strong seller, so we knew we had to try this lemon version.  However, when doing a little product research we could not find anyone else in the world offering the Amira Lemon Candy for sale.  That should give you even more reason to buy it.  We are currently the only people in the entire world offering Amira Lemon Candy online.  Get some while you can!	\N	\N	2	http://www.worldofsnacks.com/store/p671/Amira_Lemon_Candy.html	\N	2016-04-06 19:02:57.518	2016-04-07 13:48:28.042	2241
27	Asian Best Tamarind Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p239_i1_w640.jpeg	Thailand		\N	\N	9	http://www.worldofsnacks.com/store/p239/Asian_Best_Tamarind_Candy.html	\N	2016-04-06 19:02:57.531	2016-04-06 19:02:57.531	564
29	Bento Squid Seafood Original	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p722_i5_w640.jpeg	Thailand	Dried Squid & Surimi	\N	\N	10	http://www.worldofsnacks.com/store/p722/Bento_Squid_Seafood_Original.html	\N	2016-04-06 19:02:57.54	2016-04-06 19:02:57.54	3328
30	Bin Bin Rice Crackers Original	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p573_i6_w640.jpeg	Thailand		\N	\N	4	http://www.worldofsnacks.com/store/p573/Bin_Bin_Rice_Crackers_Original.html	\N	2016-04-06 19:02:57.545	2016-04-06 19:02:57.545	34
31	Hanami Prawn Crackers Hot Chilli	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p657_i5_w536.jpeg	Thailand	Prawn Crackers\nHot Chili Flavor	\N	\N	4	http://www.worldofsnacks.com/store/p657/Hanami_Prawn_Crackers_Hot_Chilli.html	\N	2016-04-06 19:02:57.55	2016-04-06 19:02:57.55	3738
32	Amira Makam Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p568_i2_w640.jpeg	Thailand	Tamarind Center Filled Candy	\N	\N	4	http://www.worldofsnacks.com/store/p568/Amira_Makam_Candy.html	\N	2016-04-06 19:02:57.554	2016-04-06 19:02:57.554	3791
33	Tao Kae Noi Tempura Seaweed Original	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p563_i3_w640.jpeg	Thailand	Original Japanese Flavor\nTempura Seaweed	\N	\N	5	http://www.worldofsnacks.com/store/p563/Tao_Kae_Noi_Tempura_Seaweed_Original.html	\N	2016-04-06 19:02:57.559	2016-04-06 19:02:57.559	3534
34	Mama Moo Nam Tok Spicy Pork	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p557_i1_w637.jpeg	Thailand	Spicy Pork Flavor Noodles	\N	\N	3	http://www.worldofsnacks.com/store/p557/Mama_Moo_Nam_Tok_Spicy_Pork.html	\N	2016-04-06 19:02:57.564	2016-04-06 19:02:57.564	3196
35	Tao Kae Noi Seaweed Hot and Spicy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p566_i7_w640.jpeg	Thailand	Hot & Spicy Flavor\nCrispy Seaweed	\N	\N	2	http://www.worldofsnacks.com/store/p566/Tao_Kae_Noi_Seaweed_Hot_and_Spicy.html	\N	2016-04-06 19:02:57.568	2016-04-06 19:02:57.568	359
36	Tao Kae Noi Crispy Seaweed Original	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p591_i4_w640.jpeg	Thailand	Original Japanese Flavor\nCrispy Seaweed	\N	\N	4	http://www.worldofsnacks.com/store/p591/Tao_Kae_Noi_Crispy_Seaweed_Original.html	\N	2016-04-06 19:02:57.572	2016-04-06 19:02:57.572	233
37	Euro Cappuccino Cake	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p602_i7_w354.jpeg	Thailand	Cappuccino Cake	\N	\N	10	http://www.worldofsnacks.com/store/p602/Euro_Cappuccino_Cake.html	\N	2016-04-06 19:02:57.577	2016-04-06 19:02:57.577	3960
38	Nongshim Tako Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p319_i1_w549.jpeg	Korea	Seafood Flavor	\N	\N	4	http://www.worldofsnacks.com/store/p319/Nongshim_Tako_Chips.html	\N	2016-04-06 19:02:57.581	2016-04-06 19:02:57.581	123
39	Nongshim Banana Kick	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p316_i1_w640.jpeg	Korea	Banana Flavored Chips	\N	\N	6	http://www.worldofsnacks.com/store/p316/Nongshim_Banana_Kick.html	\N	2016-04-06 19:02:57.585	2016-04-06 19:02:57.585	4027
40	Nongshim Honey Twist	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p313_i2_w640.jpeg	Korea	Made with Acasia Honey	\N	\N	7	http://www.worldofsnacks.com/store/p313/Nongshim_Honey_Twist.html	\N	2016-04-06 19:02:57.59	2016-04-06 19:02:57.59	1977
41	Nongshim Potato Snack	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p317_i1_w640.jpeg	Korea		\N	\N	1	http://www.worldofsnacks.com/store/p317/Nongshim_Potato_Snack.html	\N	2016-04-06 19:02:57.594	2016-04-06 19:02:57.594	2258
42	Paldo Crab Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p318_i2_w466.jpeg	Korea	Crab Flavored	\N	\N	7	http://www.worldofsnacks.com/store/p318/Paldo_Crab_Chips.html	\N	2016-04-06 19:02:57.599	2016-04-06 19:02:57.599	544
43	Fritos Chorizo Chipotle	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p175_i3_w640.jpeg	Mexico	Sausage & Chipotle Flavor	\N	\N	5	http://www.worldofsnacks.com/store/p175/Fritos_Chorizo_Chipotle.html	\N	2016-04-06 19:02:57.603	2016-04-06 19:02:57.603	1871
44	Cheetos Horneados Bolitas	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p340_i5_w406.jpeg	Mexico	Spicy Cheetos Balls	\N	\N	10	http://www.worldofsnacks.com/store/p340/Cheetos_Horneados_Bolitas.html	\N	2016-04-06 19:02:57.608	2016-04-06 19:02:57.608	712
45	Barcel Churritos	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p474_i3_w539.jpeg	Mexico	Red Chili Pepper & Lime\nCorn Snack Sticks	\N	\N	1	http://www.worldofsnacks.com/store/p474/Barcel_Churritos.html	\N	2016-04-06 19:02:57.612	2016-04-06 19:02:57.612	2694
46	Takis Crunchy Fajita	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p230_i5_w610.jpeg	Mexico	Fajita/Taco Flavored Chips	\N	\N	5	http://www.worldofsnacks.com/store/p230/Takis_Crunchy_Fajita.html	\N	2016-04-06 19:02:57.616	2016-04-06 19:02:57.616	3634
47	Totis Donitas Chili and Lime	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p183_i3_w640.jpeg	Germany	Chili & Lime Flavored Wheat Snack	\N	\N	9	http://www.worldofsnacks.com/store/p184/Totis_Donitas_Chili_and_Lime.html	\N	2016-04-06 19:02:57.621	2016-04-06 19:02:57.621	1295
48	Oishi Prawn Crackers Spicy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p360_i2_w500.jpeg	Philipines	Spicy Prawn Flavored Chips	\N	\N	3	http://www.worldofsnacks.com/store/p360/Oishi_Prawn_Crackers_Spicy.html	\N	2016-04-06 19:02:57.626	2016-04-06 19:02:57.626	138
49	Boy Bawang Cornick Bar-B-Q	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p482_i6_w640.jpeg	Philipines	BBQ Flavored Fried Corn	\N	\N	3	http://www.worldofsnacks.com/store/p482/Boy_Bawang_Cornick_Bar-B-Q.html	\N	2016-04-06 19:02:57.631	2016-04-06 19:02:57.631	2101
50	Nagaraya Original Cracker Nuts	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p458_i4_w500.jpeg	Philipines	Original Cracker Nuts	\N	\N	8	http://www.worldofsnacks.com/store/p458/Nagaraya_Original_Cracker_Nuts.html	\N	2016-04-06 19:02:57.636	2016-04-06 19:02:57.636	2789
51	Philippine Brand Dried Guava Balls	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p732_i5_w640.jpeg	Philipines	Naturally Tree Ripened Guava	\N	\N	5	http://www.worldofsnacks.com/store/p732/Philippine_Brand_Dried_Guava_Balls.html	\N	2016-04-06 19:02:57.64	2016-04-06 19:02:57.64	4399
52	Maxx Honey Mansi Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p242_i1_w640.jpeg	Philipines	Jack n' Jill MAXX Menthol Candy	\N	\N	4	http://www.worldofsnacks.com/store/p242/Maxx_Honey_Mansi_Candy.html	\N	2016-04-06 19:02:57.645	2016-04-06 19:02:57.645	4284
53	Philippine Brand Dried Green Mangoes	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p443_i4_w640.jpeg	Philipines	Dried Green Mangoes	\N	\N	8	http://www.worldofsnacks.com/store/p443/Philippine_Brand_Dried_Green_Mangoes.html	\N	2016-04-06 19:02:57.649	2016-04-06 19:02:57.649	1658
54	Walkers Pickled Onion Crisps	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p714_i3_w640.jpeg	United Kingdom	Pickled Onion Flavor Chips	\N	\N	3	http://www.worldofsnacks.com/store/p714/Walkers_Pickled_Onion_Crisps.html	\N	2016-04-06 19:02:57.654	2016-04-06 19:02:57.654	347
55	Mega Monster Munch Flamin Hot	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p17_i2_w640.jpeg	United Kingdom	Flamin Hot flavor baked corn snack	\N	\N	10	http://www.worldofsnacks.com/store/p17/Mega_Monster_Munch_Flamin_Hot.html	\N	2016-04-06 19:02:57.658	2016-04-06 19:02:57.658	440
56	Taveners Wine Gums	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p152_i1_w561.jpeg	United Kingdom	Candy Bag	\N	\N	5	http://www.worldofsnacks.com/store/p152/Taveners_Wine_Gums.html	\N	2016-04-06 19:02:57.663	2016-04-06 19:02:57.663	3307
57	Cadbury Flake Milk Chocolate	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p631_i3_w640.jpeg	United Kingdom	Chocolate Bar	\N	\N	9	http://www.worldofsnacks.com/store/p631/Cadbury_Flake_Milk_Chocolate.html	\N	2016-04-06 19:02:57.667	2016-04-06 19:02:57.667	1892
58	Cadbury Timeout	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p193_i1_w618.jpeg	United Kingdom	Chocolate Bar	\N	\N	7	http://www.worldofsnacks.com/store/p193/Cadbury_Timeout.html	\N	2016-04-06 19:02:57.672	2016-04-06 19:02:57.672	1209
59	British Mars Bar	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p29_i3_w640.jpeg	United Kingdom	Chocolate Bar(s) 	\N	\N	6	http://www.worldofsnacks.com/store/p29/British_Mars_Bar.html	\N	2016-04-06 19:02:57.677	2016-04-06 19:02:57.677	4512
60	Japanese Sake Kit Kat	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p718_i4_w600.jpeg	Japan	Japanese Sake Flavor White Chocolate Bars	\N	\N	2	http://www.worldofsnacks.com/store/p718/Japanese_Sake_Kit_Kat.html	\N	2016-04-06 19:02:57.681	2016-04-06 19:02:57.681	1365
61	Calbee Pizza Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p738_i17_w381.jpeg	Japan	Fully Loaded Pizza Flavored	\N	\N	1	http://www.worldofsnacks.com/store/p738/Calbee_Pizza_Chips.html	\N	2016-04-06 19:02:57.685	2016-04-06 19:02:57.685	203
62	Subway Shrimp Avocado Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p736_i16_w505.jpeg	Japan	Shrimp & Avocado Flavor Tortilla Chips	\N	\N	2	http://www.worldofsnacks.com/store/p736/Subway_Shrimp_Avocado_Chips.html	\N	2016-04-06 19:02:57.689	2016-04-06 19:02:57.689	2829
63	Meiji Karl Cheese Puffs	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p594_i6_w456.jpeg	Japan	Corn Puff Snack	\N	\N	3	http://www.worldofsnacks.com/store/p594/Meiji_Karl_Cheese_Puffs.html	\N	2016-04-06 19:02:57.694	2016-04-06 19:02:57.694	1509
64	Yamayoshi Hot Wasabi Beef Potato Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p447_i15_w425.jpeg	Japan	Wasabi Beef Flavored Potato Chips	\N	\N	2	http://www.worldofsnacks.com/store/p447/Yamayoshi_Hot_Wasabi_Beef_Potato_Chips.html	\N	2016-04-06 19:02:57.698	2016-04-06 19:02:57.698	3614
65	Amanoya Rice Crackers Himemaru	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p349_i1_w640.jpeg	Japan		\N	\N	6	http://www.worldofsnacks.com/store/p349/Amanoya_Rice_Crackers_Himemaru.html	\N	2016-04-06 19:02:57.703	2016-04-06 19:02:57.703	2091
67	Kinder Bueno	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p121_i1_w640.jpeg	Germany	Milk & Hazelnut Chocolate Bar	\N	\N	2	http://www.worldofsnacks.com/store/p121/Kinder_Bueno.html	\N	2016-04-06 19:02:57.712	2016-04-06 19:02:57.712	1604
68	Milka Oreo	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p146_i2_w640.jpeg	Germany	Candy Bar Oreo Filled Chocolate Bar	\N	\N	5	http://www.worldofsnacks.com/store/p146/Milka_Oreo.html	\N	2016-04-06 19:02:57.716	2016-04-06 19:02:57.716	3589
69	Haribo Licorice Wheels	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p118_i1_w624.jpeg	Germany	Candy Pack	\N	\N	10	http://www.worldofsnacks.com/store/p118/Haribo_Licorice_Wheels.html	\N	2016-04-06 19:02:57.72	2016-04-06 19:02:57.72	455
70	Haribo Alphabet Letters	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p520_i4_w640.jpeg	Germany	Gummi Bag	\N	\N	5	http://www.worldofsnacks.com/store/p520/Haribo_Alphabet_Letters.html	\N	2016-04-06 19:02:57.728	2016-04-06 19:02:57.728	1189
71	Katjes Salzige Heringe - Salty Herring	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p336_i3_w640.jpeg	Germany	Candy Bag Salty & Chewy Fish Shaped Licorice	\N	\N	2	http://www.worldofsnacks.com/store/p336/Katjes_Salzige_Heringe_-_Salty_Herring.html	\N	2016-04-06 19:02:57.732	2016-04-06 19:02:57.732	2339
72	Storck Toffifay- Toffifee	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p126_i2_w640.jpeg	Germany	Piece Candy Box	\N	\N	10	http://www.worldofsnacks.com/store/p126/Storck_Toffifay-_Toffifee.html	\N	2016-04-06 19:02:57.736	2016-04-06 19:02:57.736	3346
73	Hans Freitag Desiree Wafers	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p130_i1_w640.jpeg	Germany	Cookie Pack	\N	\N	3	http://www.worldofsnacks.com/store/p130/Hans_Freitag_Desiree_Wafers.html	\N	2016-04-06 19:02:57.745	2016-04-06 19:02:57.745	928
75	Maître Truffout Pralines Hazelnut	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p680_i9_w441.jpeg	Italy	Milk Chocolate Pralines	\N	\N	7	http://www.worldofsnacks.com/store/p680/Ma%C3%AEtre_Truffout_Pralines_Hazelnut.html	\N	2016-04-06 19:02:57.757	2016-04-06 19:02:57.757	3005
76	Balconi Trancetto Apricot	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p292_i5_w460.jpeg	Italy	Sponge Cake Apricot Filling	\N	\N	4	http://www.worldofsnacks.com/store/p292/Balconi_Trancetto_Apricot.html	\N	2016-04-06 19:02:57.765	2016-04-06 19:02:57.765	1859
77	Perugina Baci White Chocolate	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p653_i4_w640.jpeg	Italy	White Chocolate\nWith Whole & Chopped Hazelnuts	\N	\N	6	http://www.worldofsnacks.com/store/p653/Perugina_Baci_White_Chocolate.html	\N	2016-04-06 19:02:57.771	2016-04-06 19:02:57.771	3011
78	Balconi Rollino Cocoa	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p582_i9_w336.jpeg	Italy	Rolled Chocolate Sponge Cake	\N	\N	9	http://www.worldofsnacks.com/store/p582/Balconi_Rollino_Cocoa.html	\N	2016-04-06 19:02:57.777	2016-04-06 19:02:57.777	3701
79	Biscolata Mood	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p448_i9_w408.jpeg	Turkey	Cookies Biscuit Filled with Milk Chocolate	\N	\N	1	http://www.worldofsnacks.com/store/p448/Biscolata_Mood.html	\N	2016-04-06 19:02:57.782	2016-04-06 19:02:57.782	341
80	Eti Cikolata Milk Chocolate Pistachio	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p632_i11_w400.jpeg	Turkey	Chocolate Bar	\N	\N	10	http://www.worldofsnacks.com/store/p632/Eti_Cikolata_Milk_Chocolate_Pistachio.html	\N	2016-04-06 19:02:57.789	2016-04-06 19:02:57.789	2888
81	Ulker Cikolata Findikli	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p636_i12_w430.jpeg	Turkey	Chocolate Bar	\N	\N	8	http://www.worldofsnacks.com/store/p636/Ulker_Cikolata_Findikli.html	\N	2016-04-06 19:02:57.795	2016-04-06 19:02:57.795	1063
82	Eti Cin Strawberry Jelly Biscuits	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p393_i7_w622.jpeg	Turkey	Strawberry Tart Cookies	\N	\N	8	http://www.worldofsnacks.com/store/c45/Turkish_Snacks.html	\N	2016-04-06 19:02:57.801	2016-04-06 19:02:57.801	4727
83	ETi Sesame Sticks	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p711_i3_w477.jpeg	Turkey	Sesame Sticks	\N	\N	4	http://www.worldofsnacks.com/store/p711/ETi_Sesame_Sticks.html	\N	2016-04-06 19:02:57.807	2016-04-06 19:02:57.807	4599
84	ETi Topkek Fruity Muffin	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p716_i13_w428.jpeg	Turkey	Fruit Filled Muffin	\N	\N	2	http://www.worldofsnacks.com/store/p716/ETi_Topkek_Fruity_Muffin.html	\N	2016-04-06 19:02:57.811	2016-04-06 19:02:57.811	4003
86	Roshen Chamomile	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p589_i8_w600.jpeg	Ukraine	Chamomile Fudge	\N	\N	9	http://www.worldofsnacks.com/store/p589/Roshen_Chamomile.html	\N	2016-04-06 19:02:57.82	2016-04-06 19:02:57.82	1723
87	Montblanc w/ Chocolate & Sesame	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p514_i14_w621.jpeg	Ukraine	Praline w/ Roasted Sesame Seeds,	\N	\N	6	http://www.worldofsnacks.com/store/p514/Montblanc_w%2F_Chocolate_%26_Sesame.html	\N	2016-04-06 19:02:57.827	2016-04-06 19:02:57.827	4735
89	Roshen Dessert Fresh	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p507_i8_w611.jpeg	United States	Glazed Cake, Berry Jelly, & Marzipan	\N	\N	9	http://www.worldofsnacks.com/store/p507/Roshen_Dessert_Fresh.html	\N	2016-04-06 19:02:57.841	2016-04-06 19:02:57.841	3657
90	Oreo Cookies	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p84_i1_w560.jpeg	United States		\N	\N	1	http://www.worldofsnacks.com/store/p84/Oreo_Cookies.html	\N	2016-04-06 19:02:57.847	2016-04-06 19:02:57.847	4082
91	Snickers Bar	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p60_i1_w640.jpeg	United States		\N	\N	6	http://www.worldofsnacks.com/store/p60/Snickers_Bar.html	\N	2016-04-06 19:02:57.853	2016-04-06 19:02:57.853	4851
98	Candyland Chili Mili	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p644_i10_w450.jpeg	Pakistan	Sweet & Spicy Chewy Snack	\N	\N	2	http://www.worldofsnacks.com/store/p644/Candyland_Chili_Mili.html	\N	2016-04-06 19:02:57.885	2016-04-06 19:02:57.885	3848
105	\N	\N	ED	\N	\N	\N	\N	\N	\N	2016-04-06 19:30:05.999	2016-04-06 19:30:05.999	\N
106	\N	\N	USA	\N	\N	\N	\N	\N	\N	2016-04-06 19:30:22.268	2016-04-06 19:30:22.268	\N
107	\N	\N	Blahhh	Hello	3	\N	\N	\N	\N	2016-04-06 19:31:07.231	2016-04-06 19:31:07.231	\N
66	Pocky Almond Crush 3 Pack	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p700_i10_w500.jpeg	Japan	The one, the only, Gilco Chocolate Pocky! This is a must-order Japanese Snack that will rock your world. Well, that may be a slight over-statement, but these cookie sticks covered in chocolate cream truly are enjoyable. Best of all, you don't have to live in Japan to get these. Our US based snack store ships internationally, to everywhere! So order a ton and get ready to be the coolest person on the block with Pocky Chocolate!	\N	\N	2	http://www.worldofsnacks.com/store/p421/Pocky_Almond_Crush_3_Pack.html	\N	2016-04-06 19:02:57.707	2016-04-07 02:52:08.391	2969
85	Roshen Kara-Kum	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p508_i9_w582.jpeg	Ukraine	So chamomile is a daisy like flower, and a flavor of tea. However, this chocolate does not taste much like a flower in our opinion. What do the Roshen Chamomile Chocolates taste like? Well, it's hard to explain. We enjoy the flavor, we are just not used to it. It also almost has a minor alcohol burn to it. Why don't you buy the Roshen Chamomile and come up with a better description for us? If you do we will send you some free candy on your next order.	\N	\N	7	http://www.worldofsnacks.com/store/p508/Roshen_Kara-Kum.html	\N	2016-04-06 19:02:57.816	2016-04-07 04:14:15.173	4762
88	Roshen Gazirovka	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p515_i3_w640.jpeg	Ukraine	This decadent foreign chocolate candy is loved in Russia, Ukraine, and throughout much of the region. How could you not love Roshen De Luxe Cream Chocolates? The tasty center is a blend of cocoa and milk, and the outer shell is the chocolate that has made the Roshen Company so famous. World of Snacks now offers Roshen De Luxe and other much loved chocolate from Ukraine for sale online with international shipping.	\N	\N	1	http://www.worldofsnacks.com/store/p515/Roshen_Gazirovka.html	\N	2016-04-06 19:02:57.833	2016-04-07 04:16:28.133	4899
95	Nacho Cheese Doritos	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p90_i1_w560.jpeg	United States	Doritos brand chips are loved by nearly all Americans and are growing in popularity around the world. These tasty USA made chips are packed full of Nacho Cheese goodness and are the original flavor that was developed in Disneyland way back in the 60s. World of Snacks offers Nacho Cheese Doritos and Cool Ranch Doritos for sale online with shipping to everywhere!	\N	\N	9	http://www.worldofsnacks.com/store/p90/Nacho_Cheese_Doritos.html	\N	2016-04-06 19:02:57.871	2016-04-07 05:18:16.796	846
94	Original Flavor Skittles	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p70_i2_w640.jpeg	United States	One of the most loved American fruit flavored sweets is now offered for sale by World of Snacks with shipping around the world! Now no matter where you live you can 'taste the rainbow.' In addition to the Original Skittles Candy we also sell Sour Skittles and Wild Berry Skittles. Order all three flavors now and help us decide which is best!	\N	\N	7	http://www.worldofsnacks.com/store/p70/Original_Flavor_Skittles.html	\N	2016-04-06 19:02:57.867	2016-04-07 09:58:34.995	1067
22	Bin Bin Rice Crackers Coconut Milk	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p572_i5_w517.jpeg	Thailand	Simple, yet so delicious!  Bin Bin Rice Crackers Coconut Milk Flavor are pretty awesome.  The light flavor of coconut milk takes a basic Thai snack and makes is remarkable.  World of Snacks offers these Bin Bin Rice Crackers for sale here in the United States with international shipping world-wide.  Order online now!	\N	\N	9	http://www.worldofsnacks.com/store/p572/Bin_Bin_Rice_Crackers_Coconut_Milk.html	\N	2016-04-06 19:02:57.507	2016-04-07 13:47:51.28	4901
99	United King Namkino Nimco Mix	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p646_i4_w640.jpeg	Pakistan	Assorted Hot & Spicy Blend	\N	Spicy-Sweet	6	http://www.worldofsnacks.com/store/p646/United_King_Namkino_Nimco_Mix.html	\N	2016-04-06 19:02:57.889	2016-04-07 12:40:55.555	3301
96	M&Ms Milk Chocolate 	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p102_i1_w640.jpeg	United States	M&M's (styled as m&m's) are 'colorful button-shaped chocolates'[1] produced by Mars, Incorporated, and similar to and inspired by Smarties. The candy shell, each of which has the letter 'm' printed in lower case on one side, surrounds a filling which varies depending upon the variety of M&M's. The original candy had a milk chocolate filling which, upon introducing other variations, was branded as the 'plain' variety. Peanut' M&M's, which feature a peanut coated in milk chocolate, and finally a candy shell, were the first variation to be introduced, and they remain a regular variety. Numerous other variations have been introduced, some of which are regular widespread varieties (such as 'peanut butter', 'almond', 'pretzel', 'crispy', and 'dark chocolate'), while others are limited in duration or geographic availability.	\N	\N	10	http://www.worldofsnacks.com/store/p102/M%26Ms_Milk_Chocolate_48_Count.html	\N	2016-04-06 19:02:57.876	2016-04-07 04:20:07.964	779
74	Bahlsen Choco Leibniz Milk	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p135_i2_w640.jpeg	Germany	Our best selling German Cookie is the Bahlsen Choco Leibniz Milk Chocolate Biscuits! With a thick and crisp fine European biscuit placed into a generous sized piece of milk chocolate, no other cookie from around the world can compete! You can now order a the Choco Leibniz Milk and a selection of Bahlsen Biscuits online here in the US and have them shipped around the world!	\N	\N	5	http://www.worldofsnacks.com/store/p135/Bahlsen_Choco_Leibniz_Milk.html	\N	2016-04-06 19:02:57.751	2016-04-07 05:16:53.179	29
93	Twix Bars	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p63_i1_w640.jpeg	United States	The Mars Twix Bars consist of a pair of cookie fingers, topped with caramel and dipped in milk chocolate. In addition there is an ultra thin layer of chocolate between the cookie and caramel. Initially released in the United Kingdom and shortly followed in the US, World of Snacks offers the American Twix Bar shipped from the USA around the world. Order yours online now!	\N	\N	4	http://www.worldofsnacks.com/store/p63/Twix_Bars.html	\N	2016-04-06 19:02:57.863	2016-04-07 09:59:45.789	2833
92	Hershey Kit Kat	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p59_i1_w640.jpeg	United States	This sweet treat is not the same candy bar that is offered outside of the US. Nestle produces the global version of the Kit Kat, in American it is produced by Hershey. So what does that mean? These Kit Kats taste completely different. In fact, World of Snacks has recently done a blind taste test, the American Kit Kat vs the British Kit Kat. View our results and order both for yourself and create you own Kit Kat challenge!	\N	\N	1	http://www.worldofsnacks.com/store/p59/Hershey_Kit_Kat.html	\N	2016-04-06 19:02:57.858	2016-04-07 10:01:19.294	4717
118	Lotte Kancho Biscuits	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p320_i1_w640.jpeg	Korea	Love themed round chocolate filled cookies, Lotte Kancho Biscuits are now offered for sale online here in the US. Oddly enough, 'Kancho' is Japanese for wedgie. Although these have a strange name they do not taste strange. We love them! Order Lotte Kancho Biscuits online and have them shipped to you anywhere in the world!	Happy	Sweet	4	http://www.worldofsnacks.com/store/p320/Lotte_Kancho_Biscuits.html	\N	2016-04-07 12:15:31.468	2016-04-07 12:15:31.468	\N
1	Glico Pocky Chocolate	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p700_i10_w500.jpeg	Thailand	BiscThe one, the only, Gilco Chocolate Pocky! This is a must-order Japanese Snack that will rock your world. Well, that may be a slight over-statement, but these cookie sticks covered in chocolate cream truly are enjoyable. Best of all, you don't have to live in Japan to get these. Our US based snack store ships internationally, to everywhere! So order a ton and get ready to be the coolest person on the block with Pocky Chocolate! uit Stick	\N	\N	7	http://www.amazon.com/Glico-Pocky-Chocolate/dp/B0002XVF4A/ref=sr_1_1_a_it?ie=UTF8&qid=1459589225&sr=8-1&keywords=Glico+Pocky+Chocolate	\N	2016-04-06 19:02:57.392	2016-04-07 13:33:02.525	3560
8	Tao Kae Noi Seaweed Wasabi	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p565_i5_w640.jpeg	Thailand	Our varied selection of Tao Kae Noi Chips are fairly new to our site. We never imaged they would be this popular. We can not seem to keep them in stock.  If you are looking this snack and we have some, you better order it right now!  The Tao Kae Noi Seaweed Wasabi is one of our favorites.  It's premium grilled seaweed coated with just the right amount of wasabi flavor.  Here at World of Snacks we offer all our Thai Snacks for sale here online in the US with international shipping.	\N	\N	4	http://www.amazon.com/Tao-Seaweed-Wasabi-Flavor-Packs/dp/B004NJDWVI/ref=sr_1_1_a_it?ie=UTF8&qid=1459589463&sr=8-1&keywords=Tao+Kae+Noi+Seaweed+Wasabi	\N	2016-04-06 19:02:57.424	2016-04-07 13:37:57.589	4855
11	Tao Kae Noi Super Crisp Hot Chili Squid	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p726_i8_w473.jpeg	Thailand	Tao Kae Noi Seaweed is one of our best selling snacks from Thailand.  Hot Chili Squid if our newest flavor and if you like the others - your are going to love this one.  World of Snacks sells a variety of Tao Kae Noi snacks here in the US with international shipping. No matter where you live you can now enjoy this yummy seaweed goodness.	\N	\N	2	http://www.amazon.com/Tao-Kae-Noi-Grilled-Thailand/dp/B00IOCISA0/ref=sr_1_1_a_it?ie=UTF8&qid=1459589535&sr=8-1&keywords=Tao+Kae+Noi+Super+Crisp+Hot+Chili+Squid	\N	2016-04-06 19:02:57.442	2016-04-07 13:40:04.317	2585
15	Queens Diamond Sweet Potato Chips	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p570_i10_w640.jpeg	Thailand	Like potato chips - but better! The Queens Diamond Sweet Potato Chips offer wholesome goodness that you are sure to love.  Not junk, just the stuff you are looking for.  World of Snacks offers a variety of Queens Diamond Chips for sale here in the US with international shipping.  So order one or order them all!	\N	\N	3	http://www.worldofsnacks.com/store/p570/Queens_Diamond_Sweet_Potato_Chips.html	\N	2016-04-06 19:02:57.465	2016-04-07 13:42:56.698	369
19	Mama Shrimp Creamy Tom Yum	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p558_i4_w480.jpeg	Thailand	Strong crisp spicy Tom Yum flavoring with a citrus bite over perfectly crumbly noodles, you are going to love Mama Shrimp Creamy Tom Yum Ramen!  Make them extra creamy by adding whole shrimp and bringing it all to a boil.  World of Snacks now offers many flavors of Mama Noodles from Thailand for sale here in the US with global shipping.	\N	\N	2	http://www.worldofsnacks.com/store/p558/Mama_Shrimp_Creamy_Tom_Yum.html	\N	2016-04-06 19:02:57.489	2016-04-07 13:45:48.39	1549
21	Mama Oriental Style Pa-Lo Duck	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p562_i8_w640.jpeg	Thailand	If you love Pa-Lo you are going to go crazy for the Mama Oriental Style Pa-Lo Duck instant noodles.  Never tried Pa-Lo?  Well, it's one of our favorite flavors of Thai Noodles and we think it will soon be yours too.  We sell the Mama Oriental Style Pa-Lo Duck noodles here in the United States with international shipping to virtually everywhere.  Order right now!	\N	\N	8	http://www.worldofsnacks.com/store/p562/Mama_Oriental_Style_Pa-Lo_Duck.html	\N	2016-04-06 19:02:57.501	2016-04-07 13:47:07.389	992
26	Asian Best Hot Tamarind Candy	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p661_i4_w640.jpeg	Thailand	One of our better selling snacks is the classic Asian Best Tamarind Candy. So when we found out there was a spicy version we knew we had to have it! It's made with the most simple ingredients - tamarind, sugar, salt, and chili powder. World of Snacks offers Asian Best Hot Tamarind Candy for sale online here in the US with global shipping to everywhere. Order right now! Hot Tamarind Candy Box	\N	\N	5	http://www.worldofsnacks.com/store/p661/Asian_Best_Hot_Tamarind_Candy.html	\N	2016-04-06 19:02:57.527	2016-04-07 13:49:57.295	1432
28	Hanami Prawn Crackers	http://www.worldofsnacks.com/uploads/1/3/1/2/13127180/s643667121527569464_p568_i2_w640.jpeg	Thailand	These Thai Chips are a crunchy baked shrimp snack and they are pretty awesome.  A favorite in Thailand, these are sure to be much loved around the world. Now you can enjoy Hanami Prawn Crackers no matter where you live. We ship from our snack store here in the US to anywhere in the world.  Order several bags now and get ready to fall in love.	\N	\N	5	http://www.worldofsnacks.com/store/p721/Hanami_Prawn_Crackers.html	\N	2016-04-06 19:02:57.536	2016-04-07 13:52:12.604	926
\.


--
-- Name: snacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Chibia
--

SELECT pg_catalog.setval('snacks_id_seq', 2, true);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: Chibia
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: snacks_pkey; Type: CONSTRAINT; Schema: public; Owner: Chibia
--

ALTER TABLE ONLY snacks
    ADD CONSTRAINT snacks_pkey PRIMARY KEY (id);


--
-- Name: index_comments_on_snack_id; Type: INDEX; Schema: public; Owner: Chibia
--

CREATE INDEX index_comments_on_snack_id ON comments USING btree (snack_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: Chibia
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_80c19fc601; Type: FK CONSTRAINT; Schema: public; Owner: Chibia
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_rails_80c19fc601 FOREIGN KEY (snack_id) REFERENCES snacks(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

