CREATE DATABASE P0

-- Create Tables.

CREATE TABLE Store(storeid int IDENTITY(1,1) NOT NULL PRIMARY KEY, location nvarchar(100) NOT NULL);

CREATE TABLE Users(userid int IDENTITY(1,1) NOT NULL PRIMARY KEY, firstname nvarchar(30) NOT NULL, lastname nvarchar(30) NOT NULL, password nvarchar(200) NOT NULL, defaultstore int, location nvarchar(200));

CREATE TABLE Item(itemid int IDENTITY(1,1) NOT NULL PRIMARY KEY, item nvarchar(100) NOT NULL, price decimal (12,2) NOT NULL, descriptionforconsole nvarchar(1000) NOT NULL);

CREATE TABLE Cat1(cat1id int IDENTITY(1,1) NOT NULL PRIMARY KEY, category1 nvarchar(30) NOT NULL);

CREATE TABLE Cat2(cat2id int IDENTITY(1,1) NOT NULL PRIMARY KEY, category2 nvarchar(30) NOT NULL);

CREATE TABLE Cat3(cat3id int IDENTITY(1,1) NOT NULL PRIMARY KEY, category3 nvarchar(30) NOT NULL);

CREATE TABLE Cat4(cat4id int IDENTITY(1,1) NOT NULL PRIMARY KEY, category4 nvarchar(30) NOT NULL);

CREATE TABLE Cat12(cat1id int foreign key references Cat1(cat1id) NOT NULL, cat2id int foreign key references Cat2(cat2id) NOT NULL, CONSTRAINT PKCat12 PRIMARY KEY CLUSTERED (cat1id, cat2id));

CREATE TABLE Cat23(cat2id int foreign key references Cat2(cat2id) NOT NULL, cat3id int foreign key references Cat3(cat3id) NOT NULL, CONSTRAINT PKCat23 PRIMARY KEY CLUSTERED (cat2id, cat3id));

CREATE TABLE Cat34(cat3id int foreign key references Cat3(cat3id) NOT NULL, cat4id int foreign key references Cat4(cat4id) NOT NULL, CONSTRAINT PKCat34 PRIMARY KEY CLUSTERED (cat3id, cat4id));

CREATE TABLE Keywords(keyword nvarchar(100) NOT NULL, itemid int FOREIGN KEY REFERENCES ITEM(itemid), CONSTRAINT PKKeyword PRIMARY KEY CLUSTERED (keyword, itemid));

CREATE TABLE Inventory(storeid int FOREIGN KEY REFERENCES Store(storeid), itemid int FOREIGN KEY REFERENCES Item(itemid), quantity int, CONSTRAINT PKInventory PRIMARY KEY CLUSTERED (storeid, itemid));

CREATE TABLE Orders(orderid int, storeid int FOREIGN KEY REFERENCES Store(storeid), itemid int FOREIGN KEY REFERENCES Item(itemid), userid int FOREIGN KEY REFERENCES Users(userid),
total decimal (20,10), orderdate datetime NOT NULL, CONSTRAINT PKInventory PRIMARY KEY CLUSTERED (storeid, itemid, userid, orderdate));

-- Insert Seed Info.

-- Stores.

INSERT INTO [dbo].[Store] ([location]) VALUES ('104th and Icky')

INSERT INTO [dbo].[Store] ([location]) VALUES ('Corner of Des and Troy')

INSERT INTO [dbo].[Store] ([location]) VALUES ('Downtown Kaiju City')

INSERT INTO [dbo].[Store] ([location]) VALUES ('The North Plateau')

INSERT INTO [dbo].[Store] ([location]) VALUES ('Under the Sea')

-- Inventory.

-- Store 1.
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,  1	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,  2	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	3	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	4	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	5	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	6	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	7	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	8	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	9	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	10	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	11	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	12	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	13	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	14	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	15	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	16	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	17	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	18	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	19	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	20	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	21	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	22	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	23	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	24	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	25	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	26	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	27	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	28	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	29	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	30	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	31	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	32	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	33	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	34	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	35	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	36	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	37	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	38	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	39	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	40	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	41	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	42	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	43	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	44	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	45	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	46	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	47	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	48	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	49	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	50	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	51	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	52	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	53	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	54	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	55	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	56	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	57	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	58	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	59	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	60	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	61	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	62	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	63	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	64	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	65	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	66	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	67	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	68	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	69	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	70	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	71	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	72	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	73	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	74	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	75	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	76	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	77	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	78	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	79	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	80	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	81	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	82	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	83	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	84	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	85	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	86	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	87	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	88	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	89	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	90	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	91	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	92	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	93	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	94	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	95	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	96	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	97	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	98	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	99	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	100	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	101	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	102	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	103	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	104	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	105	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	106	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	107	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	108	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	109	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	110	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	111	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	112	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	113	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	114	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	115	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	116	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	117	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	118	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	119	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	120	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	121	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	122	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	123	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	124	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	125	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	126	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	127	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	128	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	129	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	130	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	131	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	132	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	133	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	134	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	135	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	136	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	137	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	138	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	139	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	140	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	141	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	142	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	143	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	144	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	145	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	146	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	147	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	148	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	149	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	150	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	151	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	152	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	153	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	154	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	155	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	156	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	157	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	158	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	159	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	160	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	161	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	162	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	163	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	164	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	165	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	166	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	167	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	168	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	169	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	170	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	171	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	172	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	173	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	174	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	175	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	176	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	177	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	178	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	179	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	180	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	181	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	182	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	183	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	184	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	185	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	186	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	187	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	188	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	189	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	1,	190	,100	);

-- Store 2.

INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	1	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	2	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	3	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	4	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	5	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	6	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	7	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	8	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	9	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	10	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	11	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	12	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	13	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	14	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	15	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	16	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	17	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	18	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	19	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	20	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	21	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	22	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	23	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	24	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	25	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	26	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	27	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	28	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	29	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	30	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	31	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	32	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	33	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	34	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	35	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	36	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	37	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	38	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	39	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	40	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	41	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	42	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	43	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	44	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	45	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	46	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	47	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	48	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	49	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	50	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	51	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	52	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	53	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	54	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	55	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	56	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	57	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	58	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	59	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	60	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	61	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	62	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	63	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	64	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	65	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	66	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	67	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	68	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	69	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	70	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	71	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	72	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	73	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	74	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	75	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	76	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	77	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	78	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	79	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	80	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	81	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	82	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	83	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	84	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	85	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	86	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	87	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	88	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	89	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	90	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	91	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	92	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	93	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	94	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	95	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	96	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	97	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	98	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	99	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	100	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	101	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	102	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	103	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	104	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	105	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	106	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	107	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	108	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	109	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	110	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	111	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	112	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	113	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	114	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	115	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	116	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	117	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	118	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	119	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	120	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	121	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	122	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	123	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	124	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	125	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	126	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	127	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	128	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	129	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	130	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	131	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	132	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	133	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	134	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	135	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	136	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	137	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	138	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	139	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	140	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	141	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	142	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	143	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	144	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	145	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	146	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	147	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	148	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	149	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	150	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	151	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	152	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	153	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	154	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	155	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	156	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	157	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	158	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	159	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	160	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	161	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	162	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	163	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	164	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	165	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	166	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	167	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	168	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	169	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	170	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	171	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	172	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	173	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	174	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	175	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	176	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	177	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	178	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	179	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	180	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	181	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	182	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	183	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	184	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	185	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	186	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	187	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	188	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	189	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	2,	190	,100	);

-- Store 3.

INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	1	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	2	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	3	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	4	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	5	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	6	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	7	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	8	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	9	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	10	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	11	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	12	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	13	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	14	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	15	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	16	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	17	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	18	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	19	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	20	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	21	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	22	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	23	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	24	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	25	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	26	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	27	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	28	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	29	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	30	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	31	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	32	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	33	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	34	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	35	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	36	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	37	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	38	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	39	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	40	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	41	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	42	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	43	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	44	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	45	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	46	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	47	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	48	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	49	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	50	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	51	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	52	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	53	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	54	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	55	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	56	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	57	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	58	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	59	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	60	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	61	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	62	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	63	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	64	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	65	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	66	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	67	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	68	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	69	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	70	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	71	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	72	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	73	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	74	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	75	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	76	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	77	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	78	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	79	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	80	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	81	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	82	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	83	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	84	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	85	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	86	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	87	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	88	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	89	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	90	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	91	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	92	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	93	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	94	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	95	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	96	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	97	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	98	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	99	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	100	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	101	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	102	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	103	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	104	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	105	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	106	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	107	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	108	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	109	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	110	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	111	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	112	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	113	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	114	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	115	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	116	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	117	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	118	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	119	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	120	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	121	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	122	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	123	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	124	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	125	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	126	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	127	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	128	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	129	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	130	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	131	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	132	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	133	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	134	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	135	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	136	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	137	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	138	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	139	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	140	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	141	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	142	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	143	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	144	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	145	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	146	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	147	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	148	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	149	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	150	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	151	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	152	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	153	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	154	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	155	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	156	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	157	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	158	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	159	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	160	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	161	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	162	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	163	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	164	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	165	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	166	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	167	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	168	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	169	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	170	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	171	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	172	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	173	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	174	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	175	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	176	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	177	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	178	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	179	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	180	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	181	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	182	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	183	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	184	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	185	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	186	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	187	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	188	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	189	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	3,	190	,100	);
				
-- Store 4.

INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	1	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	2	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	3	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	4	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	5	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	6	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	7	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	8	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	9	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	10	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	11	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	12	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	13	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	14	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	15	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	16	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	17	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	18	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	19	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	20	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	21	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	22	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	23	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	24	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	25	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	26	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	27	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	28	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	29	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	30	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	31	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	32	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	33	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	34	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	35	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	36	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	37	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	38	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	39	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	40	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	41	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	42	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	43	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	44	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	45	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	46	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	47	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	48	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	49	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	50	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	51	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	52	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	53	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	54	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	55	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	56	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	57	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	58	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	59	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	60	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	61	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	62	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	63	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	64	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	65	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	66	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	67	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	68	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	69	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	70	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	71	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	72	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	73	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	74	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	75	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	76	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	77	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	78	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	79	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	80	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	81	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	82	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	83	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	84	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	85	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	86	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	87	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	88	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	89	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	90	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	91	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	92	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	93	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	94	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	95	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	96	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	97	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	98	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	99	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	100	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	101	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	102	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	103	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	104	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	105	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	106	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	107	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	108	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	109	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	110	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	111	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	112	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	113	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	114	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	115	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	116	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	117	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	118	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	119	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	120	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	121	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	122	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	123	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	124	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	125	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	126	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	127	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	128	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	129	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	130	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	131	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	132	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	133	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	134	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	135	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	136	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	137	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	138	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	139	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	140	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	141	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	142	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	143	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	144	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	145	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	146	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	147	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	148	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	149	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	150	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	151	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	152	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	153	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	154	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	155	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	156	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	157	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	158	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	159	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	160	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	161	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	162	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	163	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	164	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	165	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	166	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	167	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	168	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	169	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	170	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	171	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	172	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	173	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	174	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	175	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	176	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	177	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	178	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	179	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	180	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	181	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	182	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	183	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	184	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	185	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	186	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	187	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	188	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	189	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	4,	190	,100	);
				
-- Store 5.

INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	1	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	2	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	3	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	4	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	5	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	6	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	7	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	8	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	9	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	10	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	11	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	12	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	13	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	14	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	15	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	16	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	17	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	18	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	19	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	20	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	21	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	22	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	23	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	24	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	25	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	26	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	27	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	28	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	29	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	30	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	31	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	32	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	33	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	34	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	35	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	36	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	37	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	38	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	39	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	40	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	41	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	42	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	43	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	44	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	45	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	46	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	47	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	48	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	49	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	50	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	51	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	52	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	53	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	54	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	55	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	56	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	57	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	58	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	59	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	60	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	61	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	62	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	63	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	64	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	65	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	66	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	67	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	68	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	69	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	70	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	71	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	72	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	73	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	74	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	75	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	76	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	77	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	78	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	79	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	80	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	81	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	82	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	83	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	84	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	85	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	86	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	87	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	88	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	89	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	90	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	91	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	92	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	93	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	94	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	95	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	96	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	97	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	98	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	99	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	100	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	101	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	102	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	103	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	104	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	105	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	106	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	107	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	108	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	109	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	110	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	111	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	112	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	113	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	114	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	115	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	116	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	117	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	118	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	119	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	120	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	121	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	122	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	123	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	124	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	125	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	126	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	127	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	128	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	129	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	130	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	131	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	132	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	133	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	134	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	135	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	136	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	137	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	138	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	139	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	140	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	141	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	142	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	143	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	144	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	145	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	146	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	147	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	148	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	149	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	150	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	151	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	152	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	153	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	154	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	155	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	156	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	157	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	158	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	159	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	160	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	161	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	162	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	163	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	164	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	165	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	166	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	167	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	168	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	169	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	170	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	171	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	172	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	173	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	174	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	175	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	176	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	177	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	178	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	179	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	180	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	181	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	182	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	183	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	184	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	185	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	186	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	187	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	188	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	189	,100	);
INSERT INTO [dbo].[Inventory] ([storeid], [itemid], [quantity]) VALUES (	5,	190	,100	);

-- Category 1.

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Food');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Garden');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Clothing');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Electronics');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Toys');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Home Improvement');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Furniture');

INSERT INTO [dbo].[Cat1] ([category1]) VALUES ('Personal Care');

-- Category 2.

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Meat');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Snacks');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Drinks');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Frozen');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Dairy');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Bread');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Baking');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Fruit');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Vegetables');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Indoor Plants');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Outdoor Plants');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Garden Tools');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Amenities');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Seeds');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Mens Clothing');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Double Ugly Sweaters');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Computers');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Gaming');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('TV');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Phones');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Action Figures');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Cars');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Plushies');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Hardware');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Paint');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Tools');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Chairs');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Desks');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Bedding');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Containers');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Drapes');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Carpet');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Deodorant');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Hair');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Body');

INSERT INTO [dbo].[Cat2] ([category2]) VALUES ('Oral Hygiene');

-- Category 3.

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Beef');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Poultry');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Pork');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Fish');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('The Other White Meat');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Cookies');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Chips');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Nuts');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Pop');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Juice');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Energy Drinks');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Water');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Ice Cream');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Breakfast');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Pizza');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Pie');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Milk');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Cheese');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Yogurt');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Butter');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Cake');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Sliced');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Rolls');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Baking Ingredients');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Baking Mixes');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Spices');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Pasta');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Consoles');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Games');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Gaming Accessories');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Power Tools');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Hand Tools');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Shampoo');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Conditioner');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Shampoo and Conditioner 2-in-1');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Toothpaste');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Mouthwash');

INSERT INTO [dbo].[Cat3] ([category3]) VALUES ('Toothbrush');

-- Category 4.

INSERT INTO [dbo].[Cat4] ([category4]) VALUES ('Hamburger');

INSERT INTO [dbo].[Cat4] ([category4]) VALUES ('Steak');

INSERT INTO [dbo].[Cat4] ([category4]) VALUES ('Bacon');

INSERT INTO [dbo].[Cat4] ([category4]) VALUES ('Not Bacon');

-- Category1 and Category2 junction table.

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','1');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','2');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','3');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','4');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','5');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','6');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','7');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','8');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('1','9');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('2','10');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('2','11');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('2','12');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('2','13');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('2','14');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('3','15');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('3','16');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('4','17');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('4','18');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('4','19');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('4','20');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('5','21');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('5','22');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('5','23');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('6','24');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('6','25');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('6','26');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('7','27');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('7','28');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('7','29');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('7','30');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('7','31');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('7','32');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('8','33');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('8','34');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('8','35');

INSERT INTO Cat12 (cat1id, cat2ID) VALUES ('8','36');

-- Category2 and Category3 junction table.

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('1','1');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('1','2');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('1','3');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('1','4');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('1','5');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('2','6');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('2','7');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('2','8');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('3','9');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('3','10');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('3','11');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('3','12');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('4','13');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('4','14');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('4','15');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('4','16');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('5','17');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('5','18');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('5','19');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('5','20');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('6','21');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('6','22');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('6','23');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('7','24');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('7','25');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('7','26');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('7','27');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('18','28');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('18','29');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('18','30');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('26','31');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('26','32');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('34','33');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('34','34');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('34','35');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('36','36');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('36','37');

INSERT INTO Cat23 (cat2id, cat3ID) VALUES ('36','38');

-- Category3 and Category4 junction table.

INSERT INTO Cat34 (cat3id, cat4ID) VALUES ('1','1');

INSERT INTO Cat34 (cat3id, cat4ID) VALUES ('1','2');

INSERT INTO Cat34 (cat3id, cat4ID) VALUES ('1','3');

--Insert Items into Item.

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Fruit', 2.99, 'Apple');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Fruit', 1.99, 'Banana');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Fruit', 3.99, 'Grapes');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Fruit', 4.99, 'Pear');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Fruit', 2.99, 'Orange');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Vegetables', 2.99, 'Carrot');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Vegetables', 5.99, 'Cauliflower');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Vegetables', 4.99, 'Squash');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Vegetables', 2.99, 'Lettuce Head');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Nuts', 2.99, 'Bag of Peanuts');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Nuts', 2.49, 'Bag of Cashews');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Nuts', 3.99, 'Bag of Walnuts');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Indoor Plants', 8.99, 'Flytrap');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Indoor Plants', 7.99, 'Cactus');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Indoor Plants', 12.99, 'Bonsai');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Outdoor Plants', 26.99, 'Red Rose');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Outdoor Plants', 26.99, 'Pink Rose');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Outdoor Plants', 295.99, 'Maple Tree');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Outdoor Plants', 16.99, 'Hydrangea');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Garden Tools', 8.99, 'Rake');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Garden Tools', 12.99, 'Shovel');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Garden Tools', 5.99, 'Kneeling Pad');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Garden Tools', 48.99, 'Cart');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Amenities', 10.99, 'Manure');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Amenities', 5.99, 'Topsoil');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Amenities', 15.99, 'Mulch');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Amenities', 14.99, 'Potting Soil');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Seeds', 2.99, 'Snapdragon Seeds (12 pk)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Seeds', 2.59, 'Iris Seeds (Assorted Colors)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Seeds', 999999999.99, 'Magic Beans (Warning: Do not eat!)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Mens Clothing', 9.99, 'Men’s XL White T-Shirt');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Mens Clothing', 29.99, 'Men’s XXL Jeans (store brand)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Mens Clothing', 99.99, 'Men’s XXXXXXXXXL Jacket (can be used as a parachute)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Double Ugly Sweaters', 69.99, 'holiday-themed Double Ugly Sweater');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Double Ugly Sweaters', 49.99, 'office-party Double Ugly Sweater');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Computers', 9999999999.99, 'PC k21-9900 500ghz processor, 2tb DDR90 ram, 5pb SSD, comes with mind sync');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Computers', 309.99, 'generic laptop');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('TV', 309.99, '40 in TV super nice');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('TV', 1309.99, '100 in TV, good for compensating');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('TV', 999999.99, '8k projector, 1ms response, 165 hz');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Phones', 9.99, '8k projector, ear buds');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Phones', 59.99, 'wireless charger');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Phones', 39.99, 'backup battery');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Phones', 11.99, 'case for the 23492034xabdw that nobody even has anymore');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Action Figures', 666.00, 'plastic humanoid toy that screams "ARRRRRRRG" very loud every second');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Action Figures', 123.99, 'doll that can poop (why would you get this?)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Action Figures', 19.99, 'figure that transforms from a humanoid into a spaceship');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cars', 0.99, 'assorted 1:56 scale cars');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cars', 1.99, 'the cooler assorted 1:56 scale cars');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Plushies', 6.66, 'not-creepy-at-all dolls');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Plushies', 38.99, 'probably-not-just-a-taxidermized-animal');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Plushies', 19.99, 'name-brand doll from tv show');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hardware', 12.99, 'assorted screw/bolt/nut/washer set');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hardware', 4.99, 'standard 60w lightbulb');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hardware', 10.99, 'don’t-put-it-in-your-hair glue');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Paint', 14.99, 'indoor flat paint');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Paint', 10.99, 'indoor primer');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Paint', 18.99, 'outdoor gloss paint');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chairs', 88.99, 'office chair');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chairs', 108.99, 'gaming chair');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chairs', 214.99, 'reclining chair');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chairs', 54.99, 'futon');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chairs', 28.99, 'bean bag');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Desks', 56.99, 'cheap desk');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Desks', 184.99, 'desk with 800 pages of assembly instructions');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Desks', 114.99, 'gaming desk');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Bedding', 14.99, 'pillow');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Bedding', 114.99, 'king size bed set');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Bedding', 89.99, 'queen size bed set');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Containers', 9.99, 'lunchbox');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Containers', 89.99, '10 galleon storage tub');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Containers', 12.99, 'trash bucket');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Drapes', 1.99, 'pre-clawed drapes');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Drapes', 4.99, 'basically see-through drapes');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Drapes', 18.99, 'black cotton drapes');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Carpet', 79.99, '7x5 feet throw rug grey');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Carpet', 18.99, '1x2 feet run that always moves when you step on it');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Deodorant', 4.99, 'Deodorant: you should buy this');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Body', 8.99, 'best working soap');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Body', 8.99, 'also best working soap');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Body', 8.99, 'no THIS is the best working soap');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Body', 8.99, 'what’s even in this soap?');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cookies', 0.99, 'sugar cookie (has no chocolate) ');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cookies', 1.99, 'chocolate chip cookie');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cookies', 2.99, 'chocolate chocolate chip cookie');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cookies', 4.99, 'chocolate frosted chocolate chocolate chip cookie');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chips', 7.99, 'name-brand cheesy sticks');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chips', 4.99, 'off-brand cheesy sticks');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Chips', 4.99, 'generic salted potato chips');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pop', 3.99, 'orange-flavored pop');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pop', 3.99, 'pzzazz-flavored pop');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Juice', 4.99, 'orange juice');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Juice', 6.99, 'apple juice');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Juice', 3.99, '??? juice…what’s in here???');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Energy Drinks', 3.99, 'tea leaves');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Energy Drinks', 4.99, 'coffee grounds');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Energy Drinks', 5.99, 'slightly energetic sports drink');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Energy Drinks', 8.99, 'heart-pounding sugar rush liquid');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Energy Drinks', 13.99, 'LIQUID RAW ENERGY INCARNATE (Warning: Side effects include spontaneous combustion.)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Water', 1.99, 'bottled in some spring you’ve never heard of');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Water', 2.99, 'name-brand water');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Water', 0.99, 'tap-water but in a bottle');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Ice Cream', 3.99, 'vanilla cookie-dough topping ice cream');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Ice Cream', 3.99, 'chocolate ice cream with peanut butter mixed in');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Ice Cream', 2.99, 'ice cream: half chocolate, half vanilla, all disgusting');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Breakfast', 5.99, 'egg and cheese crescent ready-to-microwave breakfast');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Breakfast', 2.99, 'hash browns');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pizza', 4.99, 'sausage pizza');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pizza', 4.99, 'pepperoni pizza');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pizza', 5.99, 'fish, pineapple, broccoli, and anchovy pizza');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pie', 6.99, 'chocolate pie with gram cracker crust');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pie', 6.99, 'apple pie');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pie', 6.99, 'rhubarb pie');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Milk', 3.99, '6oz pasteurized milk');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Milk', 4.54, '1gal 6% vitamin D milk');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Milk', 1.99, '~4oz milk that I got this from a goat this morning');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cheese', 3.99, 'block of cheddar cheese');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cheese', 6.99, 'shredded mozzarella cheese');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cheese', 12.99, '48 pack American single sliced cheese');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Yogurt', 1.99, '6 pack strawberry yogurt');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Yogurt', 1.99, 'single chocolate yogurt');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Butter', 1.99, 'not actually butter');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Butter', 2.99, 'real butter');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Butter', 3.49, 'salted real butter');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cake', 1.49, 'single severing individually wrapped chocolate cake with frosted filling');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cake', 23.49, '7-layered chocolate cake (feeds 12 normal people) ');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Cake', 9.49, '6 pack cinnamon rolls');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Sliced', 3.49, 'loaf of sliced wheat bread');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Sliced', 3.49, 'loaf of sliced white bread');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Sliced', 4.49, 'hamburger buns');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Rolls', 6.49, '12 pack of buttered rolls');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Rolls', 9.49, '6 pack cinnamon rolls');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Baking Ingredients', 3.99, 'flour');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Baking Ingredients', 4.49, 'sugar');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Baking Ingredients', 3.49, 'graham cracker crust');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Baking Mixes', 1.99, 'brownie mix');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Baking Mixes', 1.49, 'apple pie mix');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Baking Mixes', 1.49, 'chocolate cake mix');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Spices', 2.19, 'salt');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Spices', 2.49, 'garlic powder');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Spices', 2.49, 'onion salt');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pasta', 8.49, 'lasagna noodles');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pasta', 3.49, 'macaroni');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Pasta', 6.49, 'spaghetti');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Consoles', 349.49, 'DaFlash65');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Consoles', 369.49, 'PewPewTwo');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Consoles', 420.00, 'NoLife');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Games', 39.99, 'generic grindy game with fetch quest spam');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Games', 0.49, 'rock-paper-scissors the digital edition for some reason…');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Games', 49.49, 'gotta go fast racing game but with arbitrary physics');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Gaming Accessories', 999999.99, 'the all-in-one chair to deal with ALL your needs');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Gaming Accessories', 36.49, 'NoLife handheld controller');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Gaming Accessories', 22.42, 'PewPewTwo on-the-go case and charger');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Power Tools', 43.49, 'power drill');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Power Tools', 118.99, 'table saw');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Power Tools', 2883.99, 'lathe (what kinda store is this???)');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hand Tools', 19.49, 'hammer');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hand Tools', 11.49, 'crowbar');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hand Tools', 26.99, 'bolt-cutter');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hand Tools', 26.49, 'set of screwdrivers');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hand Tools', 19.99, 'socket set');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Shampoo', 6.49, 'color protecting shampoo');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Shampoo', 6.49, 'doesn’t sting your eyes shampoo');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Shampoo', 6.49, 'moisturizing shampoo');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Conditioner', 6.23, 'color protecting conditioner');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Conditioner', 6.23, 'doesn’t sting your eyes conditioner');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Conditioner', 6.23, 'moisturizing conditioner');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Shampoo and Conditioner 2-in-1', 7.09, 'color protecting 2-in-1 shampoo and conditioner');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Shampoo and Conditioner 2-in-1', 7.09, 'doesn’t sting your eyes 2-in-1 shampoo and conditioner');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Shampoo and Conditioner 2-in-1', 7.09, 'moisturizing 2-in-1 shampoo and conditioner');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Toothpaste', 7.49, 'enamel rebuilding toothpaste');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Toothpaste', 9.49, 'cheeseburger flavored toothpaste (do not eat) ');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Toothpaste', 7.49, 'super whitening toothpaste');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Mouthwash', 8.49, '“that stings” mouthwash');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Mouthwash', 9.99, 'anti-bacterial mouthwash');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Mouthwash', 9.99, 'minty fresh mouthwash');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Toothbrush', 48.99, 'powered toothbrush');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Toothbrush', 3.99, 'set of 2 toothbrushes');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Toothbrush', 1.99, 'generic toothbrush');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('poultry', 6.49, 'Chicken');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('poultry', 4.49, 'Turkey');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('poultry', 209.49, 'Big Bird');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('fish', 11.99, 'Salmon');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('fish', 7.99, 'Catfish');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('fish', 14.49, 'Shark');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hamburger', 6.49, '93% hamburger');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hamburger', 5.49, '90% hamburger');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Hamburger', 4.44, '80% hamburger');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Steak', 18.49, '7oz prime rib');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Steak', 13.49, '4oz fillet mignon');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Steak', 33.99, '21oz ribeye');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Bacon', 9.49, '“the good stuff” bacon');

INSERT INTO [dbo].[Item] ([item], [price], [descriptionforconsole]) VALUES ('Bacon', 6.49, 'generic bacon');