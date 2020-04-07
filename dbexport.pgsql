--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying,
    author character varying,
    year integer,
    isbn character varying,
    rating integer,
    rating_num integer
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    book_id integer,
    "desc" character varying
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, title, author, year, isbn, rating, rating_num) FROM stdin;
3	The Dark Is Rising	Susan Cooper	1973	1416949658	\N	\N
4	The Black Unicorn 	Terry Brooks	1987	1857231082	\N	\N
5	I, Robot	Isaac Asimov	1950	0553803700	\N	\N
6	Four Blondes	Candace Bushnell	2000	080213825X	\N	\N
7	Love, Stargirl	Jerry Spinelli	2007	0375913750	\N	\N
8	The Tenth Circle	Jodi Picoult	2006	074349671X	\N	\N
9	Vanishing Acts	Jodi Picoult	2005	0743454553	\N	\N
10	Aztec	Gary Jennings	1980	0765317508	\N	\N
11	Marlfox	Brian Jacques	1998	0142501085	\N	\N
12	Lady Midnight	Cassandra Clare	2016	1442468351	\N	\N
13	The Secret Keeper	Kate Morton	2012	1439152802	\N	\N
14	The Afghan	Frederick Forsyth	2006	0399153942	\N	\N
15	A Touch of Dead	Charlaine Harris	2009	0441017835	\N	\N
16	Daja's Book	Tamora Pierce	1998	0590554107	\N	\N
17	Steve Jobs	Walter Isaacson	2011	1451648537	\N	\N
18	Cold Fire	Tamora Pierce	2002	0590396560	\N	\N
19	Thanks for the Memories	Cecelia Ahern	2008	000723368X	\N	\N
20	Bitterblue	Kristin Cashore	2012	0803734735	\N	\N
21	Daisy Miller	Henry James	1878	1592243002	\N	\N
22	The Brothers K	David James Duncan	1992	055337849X	\N	\N
23	The Pact	Jodi Picoult	1998	0061150142	\N	\N
24	Plum Spooky	Janet Evanovich	2009	0739328271	\N	\N
25	Twice Tempted 	Jeaniene Frost	2013	0062076108	\N	\N
26	Legend	Marie Lu	2011	039925675X	\N	\N
27	Thr3e	Ted Dekker	2003	1595543414	\N	\N
28	The Lion's Game	Nelson DeMille	2000	0446679097	\N	\N
29	The Rainmaker	John Grisham	1995	0385339607	\N	\N
30	Eleanor & Park	Rainbow Rowell	2013	1250012570	\N	\N
31	The Lightning Thief	Rick Riordan	2005	0786838655	\N	\N
32	The Final Detail	Harlan Coben	1999	0440225450	\N	\N
33	A Cry in the Night	Mary Higgins Clark	1982	0743484355	\N	\N
34	Half Bad	Sally Green	2014	0670016780	\N	\N
35	Lady Windermere's Fan	Oscar Wilde	1893	0140621733	\N	\N
36	The Awakening	Kelley Armstrong	2009	0061662763	\N	\N
37	Ham on Rye	Charles Bukowski	1982	006117758X	\N	\N
38	The Van Alen Legacy 	Melissa de la Cruz	2009	1423102266	\N	\N
39	A Pocket for Corduroy	Don Freeman	1978	067056172X	\N	\N
40	The Street Lawyer	John Grisham	1998	0385339097	\N	\N
41	Revolutionary Road	Richard Yates	1961	0413757102	\N	\N
42	Neuromancer	William Gibson	1984	0441569595	\N	\N
43	Catch-22	Joseph Heller	1961	0684833395	\N	\N
44	sTORI Telling	Tori Spelling	2008	1416950737	\N	\N
45	The Snowy Day	Ezra Jack Keats	1962	0140501827	\N	\N
46	Invisible Monsters	Chuck Palahniuk	1999	0099285444	\N	\N
47	Noughts & Crosses	Malorie Blackman	2001	0552555703	\N	\N
48	Separation of Power	Vince Flynn	2001	0671047345	\N	\N
49	The Weight of Blood	Laura McHugh	2014	0812995201	\N	\N
50	Lincoln in the Bardo	George Saunders	2017	0812995341	\N	\N
51	Kiss of Midnight	Lara Adrian	2007	0553589377	\N	\N
52	Did You Ever Have a Family	Bill Clegg	2015	1476798176	\N	\N
53	The Tiger Who Came to Tea	Judith Kerr	1968	0006640613	\N	\N
54	Tuesday	David Wiesner	1991	0395870828	\N	\N
55	My Man Jeeves	P.G. Wodehouse	1919	1585678759	\N	\N
56	Hit List	Laurell K. Hamilton	2011	0425241130	\N	\N
57	Cabal	Clive Barker	1988	0743417321	\N	\N
58	The Sea Wolf	Jack London	1904	1598184318	\N	\N
59	One Good Dog	Susan  Wilson	2010	0312571259	\N	\N
60	A Knight of the Word 	Terry Brooks	1998	0345424646	\N	\N
61	The Lonely Polygamist	Brady Udall	2010	0393062627	\N	\N
62	Born at Midnight	C.C. Hunter	2011	0312624670	\N	\N
63	Lover Reborn	J.R. Ward	2012	0451235843	\N	\N
64	The Plot Against America	Philip Roth	2004	1400079497	\N	\N
65	I Am Legend 	Richard Matheson	1954	1857988094	\N	\N
66	Hex Hall	Rachel Hawkins	2010	1423121309	\N	\N
67	It	Stephen King	1986	0451169514	\N	\N
68	The Player of Games	Iain M. Banks	1988	0061053562	\N	\N
69	The Waves	Virginia Woolf	1931	0156949601	\N	\N
70	The Angel Experiment	James Patterson	2005	0446617792	\N	\N
71	Teen Idol	Meg Cabot	2004	0060096187	\N	\N
72	Armageddon's Children	Terry Brooks	2006	0345484088	\N	\N
73	Legend 	David Gemmell	1984	0345379063	\N	\N
74	The Thief	Megan Whalen Turner	1996	0060824972	\N	\N
75	Welcome to Temptation	Jennifer Crusie	1996	0312932804	\N	\N
76	The Gods Themselves	Isaac Asimov	1972	1857989341	\N	\N
77	Bullet	Laurell K. Hamilton	2010	0425234339	\N	\N
78	A Dog's Purpose 	W. Bruce Cameron	2010	0765326264	\N	\N
79	The Devil You Know	Mike Carey	2006	0446580309	\N	\N
80	number9dream	David Mitchell	2001	0812966929	\N	\N
81	A Week to Be Wicked	Tessa Dare	2012	0062049879	\N	\N
82	A Place Called Here	Cecelia Ahern	2006	0007198914	\N	\N
83	Master and Commander	Patrick O'Brian	1969	0393307050	\N	\N
84	The Six Wives of Henry VIII	Alison Weir	1980	0802136834	\N	\N
85	Industrial Magic	Kelley Armstrong	2004	0553590162	\N	\N
86	The Will of the Empress	Tamora Pierce	2005	0439441722	\N	\N
87	Violets Are Blue	James Patterson	2001	0446611212	\N	\N
88	Men at Arms	Terry Pratchett	1993	0061092193	\N	\N
89	The Power of One	Bryce Courtenay	1989	034541005X	\N	\N
90	A Discovery of Witches	Deborah Harkness	2011	0670022411	\N	\N
91	Free Will	Sam Harris	2012	1451683405	\N	\N
92	Faithless	Karin Slaughter	2005	0440242916	\N	\N
93	Three Wishes	Liane Moriarty	2003	0060586133	\N	\N
94	Fatherland	Robert   Harris	1992	0061006629	\N	\N
95	Never Love a Highlander	Maya Banks	2011	0345519515	\N	\N
96	Altered	Jennifer Rush	2013	0316197084	\N	\N
97	Fractured	Karin Slaughter	2008	0385341954	\N	\N
98	The Charlemagne Pursuit	Steve Berry	2008	0345485793	\N	\N
99	I'll Be Seeing You	Mary Higgins Clark	1993	0671888587	\N	\N
100	Wench	Dolen Perkins-Valdez	2009	006170654X	\N	\N
101	Red Mars	Kim Stanley Robinson	1993	0553560735	\N	\N
102	The 100	Kass Morgan	2013	0316234478	\N	\N
103	The Mark of Athena	Rick Riordan	2012	1423140605	\N	\N
104	Her Fearful Symmetry	Audrey Niffenegger	2009	0224085611	\N	\N
105	Vicious	V.E. Schwab, Victoria Schwab	2013	0765335344	\N	\N
106	Bad Girls Don't Die	Katie Alender	2009	1423108760	\N	\N
107	Pebble in the Sky	Isaac Asimov	1950	0553293427	\N	\N
108	Safe Harbour	Danielle Steel	2003	0739437585	\N	\N
109	Lincoln	David Herbert Donald	1995	068482535X	\N	\N
110	The Titan's Curse	Rick Riordan	2007	0141382899	\N	\N
111	Tropic of Capricorn	Henry Miller	1938	0802151825	\N	\N
112	The Bluest Eye	Toni Morrison	1970	0452287065	\N	\N
113	Wife 22	Melanie Gideon	2008	034552795X	\N	\N
114	Frog and Toad Together	Arnold Lobel	1971	069401298X	\N	\N
115	The Lacuna	Barbara Kingsolver	2009	0060852577	\N	\N
116	Slapstick	Kurt Vonnegut Jr.	1976	0385334230	\N	\N
117	Fearless Fourteen	Janet Evanovich	2008	0312349513	\N	\N
118	A Christmas Carol	Charles Dickens	1843	1561797464	\N	\N
119	Straight Talking	Jane Green	1997	0767915593	\N	\N
120	Never Let Me Go	Kazuo Ishiguro	2005	1400078776	\N	\N
121	Ice Station Zebra	Alistair MacLean	1963	0006161413	\N	\N
122	The Edible Woman	Margaret Atwood	1969	0385491069	\N	\N
123	The English Assassin	Daniel Silva	2002	0451208188	\N	\N
124	Born of the Night	Sherrilyn Kenyon	1996	0312942303	\N	\N
125	Two Ravens and One Crow	Kevin Hearne	2012	0385366434	\N	\N
126	Nicholas and Alexandra	Robert K. Massie	1967	0345438310	\N	\N
127	A Grief Observed	C.S. Lewis	1961	0060652381	\N	\N
128	Right Ho, Jeeves	P.G. Wodehouse	1934	140690483X	\N	\N
129	Mr. Perfect	Linda Howard	2000	0743482883	\N	\N
130	Moonrise	Erin Hunter	2005	0060744545	\N	\N
131	Moon Over Manifest	Clare Vanderpool	2010	0385907508	\N	\N
132	MaddAddam	Margaret Atwood	2013	0385528787	\N	\N
133	The Good Guy	Dean Koontz	1989	0553804812	\N	\N
134	Shoe Addicts Anonymous 	Beth Harbison	2007	0312364687	\N	\N
135	The Gift	Julie Garwood	1991	0671702505	\N	\N
136	Winter's Bone	Daniel Woodrell	2006	031605755X	\N	\N
137	A Death in the Family	James Agee	1957	0375701230	\N	\N
138	The Firm	John Grisham	1991	0582418275	\N	\N
139	Antigone	Jean Anouilh	1944	041330860X	\N	\N
140	Spook Country	William Gibson	2007	0399154302	\N	\N
141	Esio Trot	Roald Dahl, Quentin Blake	1990	0224064924	\N	\N
142	The Lady Elizabeth	Alison Weir	2008	0345495357	\N	\N
143	One Crazy Summer	Rita Williams-Garcia	2010	0060760885	\N	\N
144	Teardrop	Lauren Kate	2013	0375990690	\N	\N
145	Fahrenheit 451	Ray Bradbury	1953	0307347974	\N	\N
146	Independent Study	Joelle Charbonneau	2014	0547959206	\N	\N
147	Tell Me Three Things	Julie Buxbaum	2016	0553535641	\N	\N
148	The Brutal Telling	Louise Penny	2009	0312377037	\N	\N
149	Wyrd Sisters	Terry Pratchett	1988	0061020664	\N	\N
150	Little Earthquakes	Jennifer Weiner	2004	1416528636	\N	\N
151	The City of Ember	Jeanne DuPrau	2003	0375822747	\N	\N
152	A Gate at the Stairs	Lorrie Moore	2009	0375409289	\N	\N
153	The Ugly Truth	Jeff Kinney	2010	0810984911	\N	\N
154	Beauty from Pain	Georgia Cates	2013	148234873X	\N	\N
155	Code to Zero	Ken Follett	2000	0451216725	\N	\N
156	The Twentieth Wife	Indu Sundaresan	2002	0743428188	\N	\N
157	The Big Nowhere	James Ellroy	1988	0099366614	\N	\N
158	Beautiful You	Chuck Palahniuk	2014	0385538030	\N	\N
159	Dreams of Gods & Monsters	Laini Taylor	2014	0316134074	\N	\N
160	Dragonfly in Amber	Diana Gabaldon	1992	0385335970	\N	\N
161	Freak the Mighty	Rodman Philbrick	1993	0439286069	\N	\N
162	Blue Mars 	Kim Stanley Robinson	1996	0553573357	\N	\N
163	The Virgin Suicides	Jeffrey Eugenides	1993	0747560595	\N	\N
164	Pandora's Star	Peter F. Hamilton	2004	0345461622	\N	\N
165	Cloudstreet	Tim Winton	1991	0743234413	\N	\N
166	The Lunatic Cafe	Laurell K. Hamilton	1996	0425201376	\N	\N
167	Under the Tuscan Sun	Frances Mayes	1996	0767900383	\N	\N
168	Memoirs of a Geisha	Arthur Golden	1997	0739326228	\N	\N
169	My Friend Leonard	James Frey	2005	1594481954	\N	\N
170	Calico Joe	John Grisham	2012	0385536073	\N	\N
171	Girl of Nightmares	Kendare Blake	2012	0765328666	\N	\N
172	Bad Monkey	Carl Hiaasen	2013	0307272591	\N	\N
173	High-Rise	J.G. Ballard	1975	0871404028	\N	\N
174	The Miniaturist	Jessie Burton	2014	0062306812	\N	\N
175	The Last Olympian	Rick Riordan	2009	0739380338	\N	\N
176	Trinity: A Novel of Ireland	Leon Uris	1976	0060827882	\N	\N
177	Ford County	John Grisham	2008	0385532458	\N	\N
178	Flowers for Algernon	Daniel Keyes	1966	0156030306	\N	\N
179	Ellen Foster	Kaye Gibbons	1987	0375703055	\N	\N
180	The Hollow Hills	Mary  Stewart	1973	0060548266	\N	\N
181	Fantasy In Death	J.D. Robb	2010	0399156240	\N	\N
182	First Among Equals	Jeffrey Archer	1983	0312997124	\N	\N
183	Madeline's Rescue	Ludwig Bemelmans	1953	0670447161	\N	\N
184	See Jane Date	Melissa Senate	2001	0373250118	\N	\N
185	The Almost Moon	Alice Sebold	2007	0316677469	\N	\N
186	Truly Madly Guilty	Liane Moriarty	2016	1250069793	\N	\N
187	Dead Heat	Patricia Briggs	2015	0425256758	\N	\N
188	The Obituary Writer	Ann Hood	2013	0393346773	\N	\N
189	Parts	Tedd Arnold	1997	0140565337	\N	\N
190	The Face	Dean Koontz	2003	0553584480	\N	\N
191	At Grave's End	Jeaniene Frost	2008	0061583073	\N	\N
192	The Collaborator	Margaret Leroy	2011	1401341705	\N	\N
193	The neon rain	James Lee Burke	1987	0753820331	\N	\N
194	Slated	Teri Terry	2012	1408319462	\N	\N
195	Sein und Zeit	Martin Heidegger	1927	0060638508	\N	\N
196	Saving Faith	David Baldacci	1999	0446608890	\N	\N
197	Jurassic Park	Michael Crichton	1990	030734813X	\N	\N
198	Chrysanthemum	Kevin Henkes	1991	0688147321	\N	\N
199	The Emerald Atlas	John  Stephens	2011	0375868704	\N	\N
200	Dragon Haven	Robin Hobb	2010	0061931411	\N	\N
201	The Charm School	Nelson DeMille	1988	0751531189	\N	\N
202	The Glass Castle	Jeannette Walls	2005	074324754X	\N	\N
203	Hogfather	Terry Pratchett	1996	0552154288	\N	\N
204	Plateforme	Michel Houellebecq	2001	1400030269	\N	\N
205	The Hellbound Heart	Clive Barker	1986	0061002828	\N	\N
206	Zodiac	Neal Stephenson	1988	0553573861	\N	\N
207	Redemption Ark	Alastair Reynolds	2003	044101173X	\N	\N
208	Montana Sky	Nora Roberts	1996	0425205754	\N	\N
209	Skin Game	Jim Butcher	2014	0451464397	\N	\N
210	The Game	Neil Strauss	2005	0060554738	\N	\N
211	Dawn 	V.C. Andrews	1990	0671670689	\N	\N
212	Our Souls at Night	Kent Haruf	2015	1101875895	\N	\N
213	One Day	David Nicholls	2009	0340896965	\N	\N
214	Fire Study	Maria V. Snyder	2008	0778325342	\N	\N
215	The Children Act	Ian McEwan	2014	0385539703	\N	\N
216	The First Rule	Robert Crais	2010	0399156135	\N	\N
217	Remember Me 	Mary Higgins Clark	1994	0743484363	\N	\N
218	The Heist	Daniel Silva	2014	006232005X	\N	\N
219	The Struggle	L.J. Smith	1991	006102001X	\N	\N
220	The Sky Is Everywhere	Jandy Nelson	2010	0803734956	\N	\N
221	Lawrence in Arabia	Scott Anderson	2013	038553292X	\N	\N
222	Broken Monsters	Lauren Beukes	2014	0316216828	\N	\N
223	The Sixth Man	David Baldacci	2011	0446573108	\N	\N
224	Tender Is the Night	F. Scott Fitzgerald	1933	068480154X	\N	\N
225	Port Mortuary	Patricia Cornwell	2010	0399157212	\N	\N
226	Crush	Nicole  Williams	2013	0062267175	\N	\N
227	Thankless in Death 	J.D. Robb	2013	0399164421	\N	\N
228	The Poisonwood Bible	Barbara Kingsolver	1998	0060786507	\N	\N
229	American on Purpose	Craig Ferguson	2009	0061719544	\N	\N
230	Pirate Latitudes	Michael Crichton	2009	0061929379	\N	\N
231	Again the Magic 	Lisa Kleypas	2004	0380811081	\N	\N
232	The Bone Bed	Patricia Cornwell	2012	0399157565	\N	\N
233	Stone Mattress	Margaret Atwood	2014	0385539126	\N	\N
234	Ship Breaker	Paolo Bacigalupi	2010	0316056219	\N	\N
235	Enchantment	Orson Scott Card	1999	0345482409	\N	\N
236	Night of the Living Dummy	R.L. Stine	1993	0439568404	\N	\N
237	The Crown Tower	Michael J. Sullivan	2013	031624371X	\N	\N
238	The Lathe of Heaven	Ursula K. Le Guin	1971	0060512741	\N	\N
239	Crispin: The Cross of Lead	Avi	2002	0786816589	\N	\N
240	California	Edan Lepucki	2014	0316250813	\N	\N
241	The Song of Achilles	Madeline Miller	2011	1408816032	\N	\N
242	Dark of the Moon	John Sandford	2004	0399154779	\N	\N
243	Eight Hundred Grapes	Laura Dave	2015	1476789258	\N	\N
244	Bad for You	Abbi Glines	2014	1481420763	\N	\N
245	The Black Cat	Edgar Allan Poe	1843	1594561753	\N	\N
246	A Wedding in December	Anita Shreve	2005	0316154512	\N	\N
247	The Capture	Kathryn Lasky	2003	0439405572	\N	\N
248	The Accident	Linwood Barclay	2011	0553807188	\N	\N
249	The Providence of Fire	Brian Staveley	2015	0765336413	\N	\N
250	The Sculptor	Scott McCloud	2015	1596435739	\N	\N
251	Dream Chaser	Sherrilyn Kenyon	2008	0312938829	\N	\N
252	Finding the Dream	Nora Roberts	1996	0515142891	\N	\N
253	Web of Lies	Jennifer Estep	2010	143914799X	\N	\N
254	The Ruby in the Smoke	Philip Pullman	1985	0394895894	\N	\N
255	The Martian	Andy Weir	2012	0804139024	\N	\N
256	The Light Between Oceans	M.L. Stedman	2012	1451681739	\N	\N
257	Fallen in Love	Lauren Kate	2012	0375990674	\N	\N
258	Pursuit of Honor	Vince Flynn	2009	1416595163	\N	\N
259	American Assassin	Vince Flynn	2010	141659518X	\N	\N
260	A Civil Action	Jonathan Harr	1995	0679772677	\N	\N
261	Frog Music	Emma Donoghue	2014	031632468X	\N	\N
262	On the Beach	Nevil Shute	1957	1842322761	\N	\N
263	Magician	Raymond E. Feist	1982	0586217835	\N	\N
264	The Shining Ones	David Eddings	1993	0345388666	\N	\N
265	Skeleton Crew	Stephen King	1985	0751504386	\N	\N
266	Skin	Ted Dekker	2006	1595542779	\N	\N
267	Trouble in Mudbug	Jana Deleon	2009	0505527847	\N	\N
268	Her Daughter's Dream	Francine Rivers	2010	1414334095	\N	\N
269	Chasing Fire	Nora Roberts	2011	0399157441	\N	\N
270	The Magicians	Lev Grossman	2009	0670020559	\N	\N
271	Morning, Noon & Night	Sidney Sheldon	1995	0446602213	\N	\N
272	Open House	Elizabeth Berg	2000	0345435168	\N	\N
273	Last to Die	Tess Gerritsen	2012	0345515633	\N	\N
274	Summer Knight	Jim Butcher	2002	0451458923	\N	\N
275	David and Goliath	Malcolm Gladwell	2011	0316204366	\N	\N
276	As I Lay Dying	William Faulkner	1930	067973225X	\N	\N
277	The Girl in the Steel Corset	Kady Cross	2011	0373210337	\N	\N
278	The Romanov Prophecy	Steve Berry	2004	0345460065	\N	\N
279	Max 	James Patterson	2009	0316002895	\N	\N
280	Sin Undone	Larissa Ione	2010	0446556815	\N	\N
281	Moonlight Mile 	Dennis Lehane	2010	0061836923	\N	\N
282	Sepulchre	Kate Mosse	2007	0752860550	\N	\N
283	Rock Chick Rescue	Kristen Ashley	2009	1849234752	\N	\N
284	Jack & Jill	James Patterson	1996	0446692654	\N	\N
285	Fracture Me	Tahereh Mafi	2013	0062284835	\N	\N
286	How I Live Now	Meg Rosoff	2004	0553376055	\N	\N
287	John Adams	David McCullough	2001	0743223136	\N	\N
288	Firefly Lane	Kristin Hannah	2008	0312364083	\N	\N
289	Mockingjay	Suzanne Collins	2010	0439023513	\N	\N
290	An Offer From a Gentleman	Julia Quinn	2001	0380815583	\N	\N
291	Elephants Can Remember	Agatha Christie	1972	0425067823	\N	\N
292	Angel	James Patterson	2011	0446545244	\N	\N
293	Succubus Blues	Richelle Mead	2007	0758216416	\N	\N
294	Necroscope 	Brian Lumley	1986	031285787X	\N	\N
295	Cross Country	James Patterson	2008	0316024643	\N	\N
296	The Pearls of Lutra	Brian Jacques	1996	0142401447	\N	\N
297	The Broken Window	Jeffery Deaver	2008	1416549978	\N	\N
298	The Truth	Terry Pratchett	2000	0413771164	\N	\N
299	Villa Incognito	Tom Robbins	2003	1842431021	\N	\N
300	Not Without My Daughter	Betty Mahmoody	1987	0552152161	\N	\N
301	Flash and Bones	Kathy Reichs	2011	1439102414	\N	\N
302	Endlessly	Kiersten White	2012	0061985880	\N	\N
303	The Chrysalids	John Wyndham	1955	0140013083	\N	\N
304	Rumpelstilzchen	Paul O. Zelinsky	1986	0140558640	\N	\N
305	Obsidian	Jennifer L. Armentrout	2011	1620610078	\N	\N
306	The Sound of Gravel	Ruth Wariner	2016	1250077699	\N	\N
307	The Pursuit of Happyness	Chris Gardner	2006	0060744871	\N	\N
308	Jailbird	Kurt Vonnegut Jr.	1979	0385333900	\N	\N
309	Falling Up	Shel Silverstein	1996	0060513098	\N	\N
310	A Walk to Remember	Nicholas Sparks	1999	0446693804	\N	\N
311	Clockwork Prince	Cassandra Clare	2011	1416975888	\N	\N
312	The Time Keeper	Mitch Albom	2012	1401322786	\N	\N
313	Childhood's End	Arthur C. Clarke	1953	0345347951	\N	\N
314	The Sorceress	Michael Scott	2009	0385735294	\N	\N
315	Guards! Guards!	Terry Pratchett	1989	0061020648	\N	\N
316	The Great and Secret Show	Clive Barker	1989	006093316X	\N	\N
317	Gabriel's Inferno	Sylvain Reynard	2011	1936305623	\N	\N
318	E Is for Evidence	Sue Grafton	1988	0312939035	\N	\N
319	Memories of Ice	Steven Erikson	2001	0765348802	\N	\N
320	Calculated in Death	J.D. Robb	2013	0399158820	\N	\N
321	Catherine, Called Birdy	Karen Cushman	1994	0060739428	\N	\N
322	Can Love Happen Twice?	Ravinder Singh	2011	0143417231	\N	\N
323	Twenties Girl	Sophie Kinsella	2009	0385342020	\N	\N
324	The Secret Speech	Tom Rob Smith	2009	0446402400	\N	\N
325	The Ringworld Engineers 	Larry Niven	1979	0345418417	\N	\N
326	Bloody Valentine	Melissa de la Cruz	2010	1423134494	\N	\N
327	Garden Spells	Sarah Addison Allen	2007	0553805487	\N	\N
328	Chasing Darkness	Robert Crais	2008	0743281640	\N	\N
329	The Magician's Apprentice	Trudi Canavan	2009	0316037885	\N	\N
330	Earth Abides	George R. Stewart	1949	0345487133	\N	\N
331	Keeping You a Secret	Julie Anne Peters	2007	0316009857	\N	\N
332	The White Rose	Glen Cook	1985	0812508440	\N	\N
333	A Spell for Chameleon	Piers Anthony	1977	034525855X	\N	\N
334	Midnight Tides	Steven Erikson	2004	0553813145	\N	\N
335	PS, I Love You	Cecelia Ahern	2003	0786890754	\N	\N
336	The Saving Graces	Patricia Gaffney	1999	0060598328	\N	\N
337	Daughter of the Forest	Juliet Marillier	1999	0765343436	\N	\N
338	Sea Swept	Nora Roberts	1998	0515121843	\N	\N
339	The Shining	Stephen King	1977	0450040186	\N	\N
340	Bloodline	Sidney Sheldon	1977	1568650949	\N	\N
341	Touching Spirit Bear	Ben Mikaelsen	1997	0060734000	\N	\N
342	Life of Pi	Yann Martel	2001	0770430074	\N	\N
343	Torment	Lauren Kate	2010	0385739141	\N	\N
344	Nutshell	Ian McEwan	2016	0385542070	\N	\N
345	The Wizard Heir	Cinda Williams Chima	2007	1423104870	\N	\N
346	Big Rock	Lauren Blakely	2016	0692572031	\N	\N
347	Mercy	Jodi Picoult	1996	0743422449	\N	\N
348	True Colors	Kristin Hannah	2009	0312364105	\N	\N
349	L.A. Requiem	Robert Crais	1999	2266120921	\N	\N
350	Seven Years to Sin	Sylvia Day	2011	0758290411	\N	\N
351	If There Be Thorns	V.C. Andrews	1981	0671729454	\N	\N
352	The Desert Spear	Peter V. Brett	2010	0345503813	\N	\N
353	Grey	E.L. James	2015	1101946342	\N	\N
354	Brother Odd	Dean Koontz	2006	0553804804	\N	\N
355	The Firm	John Grisham	1991	044021145X	\N	\N
356	Tricks	Ellen Hopkins	2009	1416950079	\N	\N
357	Into the Wild	Erin Hunter	2003	0061284203	\N	\N
358	The Never War	D.J. MacHale	2003	1597372552	\N	\N
359	Delirium	Lauren Oliver	2011	0061726834	\N	\N
360	Magic's Price	Mercedes Lackey	1990	0886774268	\N	\N
361	Two States	Chetan Bhagat	2009	8129115301	\N	\N
362	Footfall	Larry Niven, Jerry Pournelle	1985	0345418425	\N	\N
363	Zita the Spacegirl	Ben Hatke	2011	1596434465	\N	\N
364	Waiting	Ha Jin	1999	0375706410	\N	\N
365	Throne of Glass	Sarah J. Maas	2012	1599906953	\N	\N
366	The Book of Negroes	Lawrence Hill	2007	0393065782	\N	\N
367	The Wolf of Wall Street	Jordan Belfort	2007	0553805460	\N	\N
368	It's In His Kiss	Julia Quinn	2005	006053124X	\N	\N
369	Portrait in Death	J.D. Robb	2003	0425189031	\N	\N
370	Islands in the Stream	Ernest Hemingway	1970	0743253426	\N	\N
371	Darke	Angie Sage, Mark Zug	2011	006124242X	\N	\N
372	The Cove	Catherine Coulter	1996	0399150862	\N	\N
373	Fablehaven	Brandon Mull	2006	1590385810	\N	\N
374	Break No Bones	Kathy Reichs	2006	0743233492	\N	\N
375	Too Much Happiness	Alice Munro	2009	0307269760	\N	\N
376	Without Remorse	Tom Clancy	1993	0425143325	\N	\N
377	Wild Cards	Simone Elkeles	2013	0802734375	\N	\N
378	The Fuck-Up	Arthur Nersesian	1997	0671027638	\N	\N
379	Throne of Jade	Naomi Novik	2006	0345481291	\N	\N
380	One False Move	Harlan Coben	1998	0440225442	\N	\N
381	A Matter of Honor	Jeffrey Archer	1985	0312933541	\N	\N
382	Trunk Music	Michael Connelly	1997	0312941919	\N	\N
383	Monsters	Ilsa J. Bick	2011	1606841750	\N	\N
384	Calamity	Brandon Sanderson	2016	0385743602	\N	\N
385	Amadeus	Peter Shaffer	1979	0060935499	\N	\N
386	The Sky is Falling	Sidney Sheldon	2000	0446610178	\N	\N
387	A Civil Campaign	Lois McMaster Bujold	1999	0671578855	\N	\N
388	Rush	Maya Banks	2013	0425267040	\N	\N
389	The Brass Verdict	Michael Connelly	2008	0316166294	\N	\N
390	Ladies' Night 	Mary Kay Andrews	2013	1250019672	\N	\N
391	Sharp Objects	Gillian Flynn	2006	0307341542	\N	\N
392	The Incredible Journey	Sheila Burnford	1960	0440226708	\N	\N
393	Where We Belong	Emily Giffin	2012	0312554192	\N	\N
394	The Guilty	David Baldacci	2015	1455536253	\N	\N
395	Ruby	Cynthia Bond	2014	0804188246	\N	\N
396	Galveston	Nic Pizzolatto	2004	1439166641	\N	\N
397	The Pagan Stone	Nora Roberts	2008	0515144665	\N	\N
398	God Emperor of Dune	Frank Herbert	1981	0575075066	\N	\N
399	Seduction in Death	J.D. Robb	2001	0749934395	\N	\N
400	The Duchess War	Courtney Milan	2012	1937248097	\N	\N
401	Over Sea, Under Stone	Susan Cooper	1965	068987121X	\N	\N
402	Burn	Maya Banks	2013	0425267083	\N	\N
403	The Orphan Master's Son	Adam Johnson	2012	0812992792	\N	\N
404	The Last Star	Rick Yancey	2016	0399162437	\N	\N
405	Intensity	Dean Koontz	1987	0553582917	\N	\N
406	Going Too Far	Jennifer Echols	2009	1416571736	\N	\N
407	The Guard	Kiera Cass	2014	0062317148	\N	\N
408	Alex Cross, Run	James Patterson	2013	0316097527	\N	\N
409	Need	Carrie Jones	2008	1599903385	\N	\N
410	Screw It, Let's Do It	Richard Branson	2006	0753510995	\N	\N
411	The Codex	Douglas Preston	2003	076534629X	\N	\N
412	The Revenge of Seven	Pittacus Lore	2014	0062194720	\N	\N
413	King Solomon's Mines	H. Rider Haggard	1885	0812966295	\N	\N
414	Good Grief	Lolly Winston	2004	0446694843	\N	\N
415	Extras	Scott Westerfeld	2006	1416951172	\N	\N
416	The Dharma Bums	Jack Kerouac	1958	0140042520	\N	\N
417	Life after God	Douglas Coupland	1994	0743231511	\N	\N
418	London Bridges	James Patterson	2004	0446613355	\N	\N
419	The Lost Years of Merlin	T.A. Barron	1996	0441010288	\N	\N
420	Fish In A Tree	Lynda Mullaly Hunt	2015	0399162593	\N	\N
421	Darkest Fear	Harlan Coben	1999	0752849190	\N	\N
422	A Long Way From Chicago	Richard Peck	1998	0142401102	\N	\N
423	Bearing an Hourglass	Piers Anthony	1984	0345313151	\N	\N
424	The Life We Bury	Allen Eskens	2014	1616149981	\N	\N
425	The Winter Rose	Jennifer Donnelly	2008	0007191324	\N	\N
426	Moscow Rules	Daniel Silva	2008	0399155015	\N	\N
427	The Once and Future King	T.H. White	1958	0441627404	\N	\N
428	Ashfall	Mike Mullin	2011	1933718552	\N	\N
429	Equus : a play	Peter Shaffer	1973	0140260706	\N	\N
430	Warm Bodies	Isaac Marion	2010	0099549344	\N	\N
431	Harvesting the Heart	Jodi Picoult	1993	0140230270	\N	\N
432	Pale Demon	Kim Harrison	2011	0061138061	\N	\N
433	Consent to Kill	Vince Flynn	2005	1416505016	\N	\N
434	I'll Give You the Sun	Jandy Nelson	2014	0803734964	\N	\N
435	Reaper Man	Terry Pratchett	1991	0552152951	\N	\N
436	Sing You Home	Jodi Picoult	2011	1439102724	\N	\N
437	The Brooklyn Follies	Paul Auster	2005	0312426232	\N	\N
438	Plague	Michael  Grant	2011	0061449121	\N	\N
439	The Keep 	F. Paul Wilson	1981	0765357054	\N	\N
440	People of the Book	Geraldine Brooks	2008	067001821X	\N	\N
441	Fairest	Marissa Meyer	2015	1250060559	\N	\N
442	Spells	Aprilynne Pike	2009	0061668060	\N	\N
443	The Auschwitz Escape	Joel C. Rosenberg	2014	1414336241	\N	\N
444	The Survivors Club	Lisa Gardner	2002	0553589458	\N	\N
445	The Vacationers	Emma Straub	2014	1594631573	\N	\N
446	Imajica	Clive Barker	1991	0061094145	\N	\N
447	Pop Goes the Weasel	James Patterson	1999	0446608815	\N	\N
448	Lord Brocktree	Brian Jacques	2000	0142501107	\N	\N
449	Suspect	Robert Crais	2013	0399161481	\N	\N
450	Whispers	Dean Koontz	1980	042520992X	\N	\N
451	In Cold Blood	Truman Capote	1965	0679745580	\N	\N
452	Tar Baby	Toni Morrison	1981	1400033446	\N	\N
453	What Alice Forgot	Liane Moriarty	2009	0141043768	\N	\N
454	Wild Fire	Nelson DeMille	2006	044657967X	\N	\N
455	Area 7	Matthew Reilly	2001	0312983220	\N	\N
456	While I Was Gone	Sue Miller	1998	0345443284	\N	\N
457	The Painter	Peter Heller	2014	0385352093	\N	\N
458	Fool's Quest	Robin Hobb	2015	0553392921	\N	\N
459	Ceremony	Leslie Marmon Silko	1977	0140086838	\N	\N
460	Black Order	James Rollins	2006	0752876457	\N	\N
461	Siege of Darkness	R.A. Salvatore	1993	0786901640	\N	\N
462	On the Fence	Kasie West	2014	0062235672	\N	\N
463	Princess in the Spotlight	Meg Cabot	2001	0064472795	\N	\N
464	Champion	Marie Lu	2013	0399256776	\N	\N
465	Canada	Richard Ford	2012	0061692042	\N	\N
466	Stone Soup	Jon J. Muth	2003	043933909X	\N	\N
467	Rebel Heart	Moira Young	2012	1442430001	\N	\N
468	I Was So Mad (Look-Look)	Mercer Mayer	1983	0307119394	\N	\N
469	Dragon Prince	Melanie Rawn	1985	0756403014	\N	\N
470	The Bronze Bow	Elizabeth George Speare	1961	0395137195	\N	\N
471	Red	Ted Dekker	2004	1595540342	\N	\N
472	Miles to Go	Richard Paul Evans	2011	1439191379	\N	\N
473	After We Fell	Anna Todd	2014	147679250X	\N	\N
474	City of Bones	Michael Connelly	2002	0446699535	\N	\N
475	Dark Prince	Christine Feehan	1999	0843955287	\N	\N
476	Twenty Boy Summer	Sarah Ockler	2009	0316051594	\N	\N
477	Nevermore	James Patterson	2012	0316101842	\N	\N
478	Contact	Carl Sagan	1985	2266079999	\N	\N
479	Class A (Cherub #2)	Robert Muchamore	2004	0340881542	\N	\N
480	The Taking	Dean Koontz	2004	0553584502	\N	\N
481	Dreams from My Father	Barack Obama	1995	1921351438	\N	\N
482	Austenland	Shannon Hale	2007	1596912855	\N	\N
483	Wondrous Strange	Lesley Livingston	2009	1554682746	\N	\N
484	White Cat	Holly Black	2010	1416963960	\N	\N
485	First Drop of Crimson	Jeaniene Frost	2010	0061583227	\N	\N
486	Ricochet	Sandra Brown	2006	1416532358	\N	\N
487	Back on Blossom Street	Debbie Macomber	2007	0778324516	\N	\N
488	When She Woke	Hillary Jordan	2011	1565126297	\N	\N
489	Mister B. Gone	Clive Barker	2007	0060182989	\N	\N
490	Shattered	K.R. Dwyer, Dean Koontz	1973	0425099334	\N	\N
491	The House On Tradd Street	Karen   White	2008	0451225090	\N	\N
492	Dorothy Must Die	Danielle  Paige	2014	0062280678	\N	\N
493	The Shelters of Stone	Jean M. Auel	2002	0553382616	\N	\N
494	Perfect	Sara Shepard	2007	0060887370	\N	\N
495	Rebel Angels	Libba Bray	2005	0385733410	\N	\N
496	Visions of Sugar Plums	Janet Evanovich	2002	0312986343	\N	\N
497	The Bees	Laline Paull	2014	0062331159	\N	\N
498	Light in August	William Faulkner	1932	0679732268	\N	\N
499	Blood Promise	Richelle Mead	2009	1595141987	\N	\N
500	Heart of Darkness	Joseph Conrad	1899	1892295490	\N	\N
501	Fear of Flying	Erica Jong	1973	0451209435	\N	\N
502	Sunset Express	Robert Crais	1996	0345454944	\N	\N
503	The Crystal Cave	Mary  Stewart	1970	0060548258	\N	\N
504	The Blade Itself	Joe Abercrombie	2006	0575079797	\N	\N
505	Red Storm Rising	Tom Clancy	1986	0394298667	\N	\N
506	Sweetheart	Chelsea Cain	2008	031236847X	\N	\N
507	My Blood Approves	Amanda Hocking	2010	0557364639	\N	\N
508	The BFG	Roald Dahl, Quentin Blake	1982	0141311371	\N	\N
509	River God	Wilbur Smith	1993	0312954468	\N	\N
510	Owen	Kevin Henkes	1993	0688114490	\N	\N
511	The Hollow	Nora Roberts	2008	0515144592	\N	\N
512	The Hit	David Baldacci	2013	1455521213	\N	\N
513	Strangers in Death 	J.D. Robb	2008	0399154701	\N	\N
514	Ten Tiny Breaths	K.A. Tucker	2012	0991686004	\N	\N
515	Living Dead Girl	Elizabeth Scott	2008	1416960597	\N	\N
516	Blockade Billy	Stephen King	2010	1587672286	\N	\N
517	Chasing Harry Winston	Lauren Weisberger	2008	0743290119	\N	\N
518	MEG: A Novel of Deep Terror	Steve Alten	1997	0976165910	\N	\N
519	The Fog	James Herbert	1975	0330376152	\N	\N
520	Belong to Me	Marisa de los Santos	2008	0061240273	\N	\N
521	Dragonsinger	Anne McCaffrey	1977	0689860072	\N	\N
522	To Have and to Hold 	Jane Green	2002	0767912276	\N	\N
523	The Best Man	Kristan Higgins	2013	0373777922	\N	\N
524	Maine	J. Courtney Sullivan	2011	0307595129	\N	\N
525	The Overlook	Michael Connelly	2007	0316018953	\N	\N
526	Babyville	Jane Green	2001	0767912241	\N	\N
527	Olympos	Dan Simmons	2005	0380817934	\N	\N
528	John Dies at the End	David Wong	2007	0978970764	\N	\N
529	Black Cherry Blues	James Lee Burke	1989	0380712040	\N	\N
530	Succubus On Top	Richelle Mead	2008	0758216424	\N	\N
531	Honolulu	Alan Brennert	2009	0312360401	\N	\N
532	Dreamland 	Sarah Dessen	2000	0142401757	\N	\N
533	Victims	Jonathan Kellerman	2012	0345505719	\N	\N
534	A Midsummer's Nightmare	Kody Keplinger	2012	0316084220	\N	\N
535	Midnight's Children	Salman Rushdie	1981	0099578514	\N	\N
536	Stars Above	Marissa Meyer	2016	1250091845	\N	\N
537	Magic Slays	Ilona Andrews	2011	0441020429	\N	\N
538	The Son of Neptune 	Rick Riordan	2011	1423140591	\N	\N
539	Prior Bad Acts	Tami Hoag	2006	055358359X	\N	\N
540	All Tomorrow's Parties	William Gibson	1999	0425190447	\N	\N
541	Angel Falls	Kristin Hannah	2000	0345484274	\N	\N
542	The Green Mile	Stephen King	1996	0451933028	\N	\N
543	Asylum	Madeleine Roux	2013	0062220969	\N	\N
544	The Haj	Leon Uris	1984	0553248642	\N	\N
545	Divine Justice	David Baldacci	2008	0446195502	\N	\N
546	Sea of Silver Light	Tad Williams	2001	0641645473	\N	\N
547	The Awakening	L.J. Smith	1991	0061020001	\N	\N
548	The Great Hunt	Robert Jordan	1990	0812517725	\N	\N
549	Double Fudge	Judy Blume	2002	0142408786	\N	\N
550	Eligible	Curtis Sittenfeld	2016	1400068320	\N	\N
551	The Dot	Peter H. Reynolds	2003	0763619612	\N	\N
552	Unnatural Exposure	Patricia Cornwell	1997	0751530492	\N	\N
553	One Good Turn	Kate Atkinson	2006	0316012823	\N	\N
554	Glass Houses	Rachel Caine	2006	0451219945	\N	\N
555	The Johnstown Flood	David McCullough	1968	0844662925	\N	\N
556	The Nature of the Beast	Louise Penny	2015	1250022088	\N	\N
557	The Gemini Contenders	Robert Ludlum	1976	0553282093	\N	\N
558	Lost Souls	Poppy Z. Brite	1992	0440212812	\N	\N
559	My Sister's Keeper	Jodi Picoult	2004	0743454537	\N	\N
560	Icy Sparks	Gwyn Hyman Rubio	1998	0142000205	\N	\N
561	Street Magic	Tamora Pierce	2001	0590396439	\N	\N
562	Think of a Number	John Verdon	2010	0307588920	\N	\N
563	M Train	Patti Smith	2015	1101875100	\N	\N
564	Straight Man	Richard Russo	1997	0375701907	\N	\N
565	Cry, The Beloved Country	Alan Paton	1948	074326195X	\N	\N
566	Night Probe!	Clive Cussler	1981	0553277405	\N	\N
567	Broken Homes	Ben Aaronovitch	2013	0756409608	\N	\N
568	Alice in Zombieland	Gena Showalter	2012	0373210582	\N	\N
569	City of Thieves	David Benioff	2008	0670018708	\N	\N
570	The King of Attolia	Megan Whalen Turner	2006	006083577X	\N	\N
571	It's Kind of a Funny Story	Ned Vizzini	2006	078685197X	\N	\N
572	From Potter's Field	Patricia Cornwell	1995	0425204693	\N	\N
573	Ender's Game	Orson Scott Card	1985	0812550706	\N	\N
574	Addicted	Zane	1998	0743442849	\N	\N
575	A Hunger Like No Other	Kresley Cole	2006	1416509879	\N	\N
576	The Coldest Winter Ever	Sister Souljah	1999	1416521690	\N	\N
577	The Bell Jar	Sylvia Plath	1963	0061148512	\N	\N
578	Cosmopolis	Don DeLillo	2003	0330412744	\N	\N
579	The Secret	Julie Garwood	1992	0671744216	\N	\N
580	Mastiff	Tamora Pierce	2011	0375814701	\N	\N
581	Red Rabbit	Tom Clancy	2002	0399148701	\N	\N
582	Boneshaker 	Cherie Priest	2009	0765318415	\N	\N
583	Cross Fire	James Patterson	2010	031603617X	\N	\N
584	The Gift	James Patterson, Ned Rust	2010	1846054761	\N	\N
585	Point of Impact	Stephen Hunter	1993	0099453452	\N	\N
586	Cometh the Hour	Jeffrey Archer	2016	1466867507	\N	\N
587	The Starter Wife	Gigi Levangie Grazer	2005	0743265025	\N	\N
588	The Places In Between	Rory Stewart	2004	0156031566	\N	\N
589	Girl in Translation	Jean Kwok	2010	1594487561	\N	\N
590	Dark Legend	Christine Feehan	2002	084394952X	\N	\N
591	Castle of Wizardry	David Eddings	1984	0345335708	\N	\N
592	Surface Detail	Iain M. Banks	2010	0316123404	\N	\N
593	The Mediterranean Caper	Clive Cussler	1973	0425197395	\N	\N
594	The Lincoln Lawyer 	Michael Connelly	2005	0739465511	\N	\N
595	The Last Coyote	Michael Connelly	1995	075280944X	\N	\N
596	Princess of Glass	Jessica Day George	2010	1599904780	\N	\N
597	The Host	Stephenie Meyer	2008	0316068047	\N	\N
598	Spider's Bite	Jennifer Estep	2010	1439147973	\N	\N
599	Undead and Unwed	MaryJanice Davidson	2004	042519485X	\N	\N
600	Day by Day Armageddon	J.L. Bourne	2004	1411608313	\N	\N
601	Gateway	Frederik Pohl	1977	0345475836	\N	\N
602	King of the Murgos	David Eddings	1988	0552148032	\N	\N
603	P.S. I Still Love You	Jenny Han	2015	144242673X	\N	\N
604	The Young Elites	Marie Lu	2014	0399167838	\N	\N
605	We3	Grant Morrison, Frank Quitely	2005	1401204953	\N	\N
606	Brick Lane	Monica Ali	2003	0743243315	\N	\N
607	To Sir Phillip, With Love	Julia Quinn	2003	0380820854	\N	\N
608	Illuminae	Amie Kaufman, Jay Kristoff	2015	0553499114	\N	\N
609	The Long Haul 	Jeff Kinney	2014	141971189X	\N	\N
610	Exit to Eden	Anne Rampling, Anne Rice	1985	0727853414	\N	\N
611	The Fold	Peter Clines	2015	0553418297	\N	\N
612	Even Now	Karen Kingsbury	2005	0310247535	\N	\N
613	Skellig	David Almond	1998	0440229081	\N	\N
614	The Gashlycrumb Tinies	Edward Gorey	1963	0747541604	\N	\N
615	Lucky You	Carl Hiaasen	1991	0330369032	\N	\N
616	A Stolen Life	Jaycee Dugard	2011	1451629184	\N	\N
617	Man and Boy	Tony Parsons	1999	0743225082	\N	\N
618	The Giving Tree	Shel Silverstein	1964	0060256656	\N	\N
619	The Selection	Kiera Cass	2012	0062059939	\N	\N
620	Lord of the Flies 	William Golding	1954	0140283331	\N	\N
621	My Sunshine Away	M.O. Walsh	2015	0399169520	\N	\N
622	The Last Continent	Terry Pratchett	1998	0552154180	\N	\N
623	Castle in the Air	Diana Wynne Jones	1990	0064473457	\N	\N
624	Winter Stroll	Elin Hilderbrand	2015	0316261130	\N	\N
625	Wedding Night	Sophie Kinsella	2013	0812984277	\N	\N
626	Sever	Lauren DeStefano	2013	1442409096	\N	\N
627	A Single Man	Christopher Isherwood	1964	0816638624	\N	\N
628	The Raven King	Maggie Stiefvater	2016	0545424984	\N	\N
629	Fire Sea	Margaret Weis, Tracy Hickman	1991	0553295411	\N	\N
630	Night Road	Kristin Hannah	2011	0312364423	\N	\N
631	Eyes of Prey	John Sandford	1991	0425214435	\N	\N
632	Labyrinth	Kate Mosse	2005	0425213978	\N	\N
633	Rock Chick	Kristen Ashley	2008	1849231842	\N	\N
634	Hallowe'en Party	Agatha Christie	1969	0007120680	\N	\N
635	The Scorpio Races	Maggie Stiefvater	2011	054522490X	\N	\N
636	Moon Called	Patricia Briggs	2006	0441013813	\N	\N
637	Proven Guilty	Jim Butcher	2006	0451461037	\N	\N
638	Rough Country	John Sandford	2009	0399155988	\N	\N
639	Nineteen Minutes	Jodi Picoult	2007	0743496728	\N	\N
640	Fall on Your Knees	Ann-Marie MacDonald	1996	0743466527	\N	\N
641	Then Came You	Jennifer Weiner	2010	1451617720	\N	\N
642	The Mixed-Up Chameleon	Eric Carle	1975	0694011479	\N	\N
643	Weaveworld	Clive Barker	1987	0007117140	\N	\N
644	Switched	Amanda Hocking	2010	1453688935	\N	\N
645	The Underworld	Jessica Sorensen	2011	1463756976	\N	\N
646	The Passion of Artemisia	Susan Vreeland	2001	0142001821	\N	\N
647	Catching Jordan	Miranda Kenneally	2011	1402262272	\N	\N
648	Paradise Kiss 1	Ai Yazawa	2000	1931514607	\N	\N
649	Open Season	Linda Howard	2001	0671027581	\N	\N
650	Dune Messiah 	Frank Herbert	1969	0441172695	\N	\N
651	Heat Rises	Richard Castle	2011	1401324436	\N	\N
652	Fly Away Home	Jennifer Weiner	2010	0743294270	\N	\N
653	Starship Troopers	Robert A. Heinlein	1959	0441783589	\N	\N
654	Apollyon	Jennifer L. Armentrout	2013	1937053164	\N	\N
655	From Here to Eternity	James  Jones	1951	0517223007	\N	\N
656	Rumor Has it	Jill Mansell	2009	0755328175	\N	\N
657	Dark Angel	V.C. Andrews	1986	067172939X	\N	\N
658	Succubus Dreams 	Richelle Mead	2008	0758216432	\N	\N
659	The Space Between Us	Thrity Umrigar	2006	006079156X	\N	\N
660	The Paris Architect	Charles Belfoure	2013	1402284314	\N	\N
661	The Circle	Dave Eggers	2013	0385351399	\N	\N
662	Feast of Fools	Rachel Caine	2008	0451224639	\N	\N
663	War Horse	Michael Morpurgo	1982	0439796636	\N	\N
664	Lover at Last	J.R. Ward	2013	0451239350	\N	\N
665	Sudden Prey	John Sandford	1996	0425157539	\N	\N
666	A Game of Thrones	George R.R. Martin	1996	0553588486	\N	\N
667	Nation	Terry Pratchett	2008	0061433012	\N	\N
668	Room	Emma Donoghue	2010	0316098337	\N	\N
669	Spell Bound	Rachel Hawkins	2012	1423121325	\N	\N
670	Mariana	Susanna Kearsley	1994	0553573764	\N	\N
671	Pretty Girls	Karin Slaughter	2015	0062430874	\N	\N
672	Are You My Mother?	P.D. Eastman	1960	0001713221	\N	\N
673	Love Medicine	Louise Erdrich	1984	0060786469	\N	\N
674	Devil May Cry	Sherrilyn Kenyon	2007	0312369506	\N	\N
675	Shantaram	Gregory David Roberts	2003	192076920X	\N	\N
676	Luck in the Shadows	Lynn Flewelling	1996	0553575422	\N	\N
677	The Day of the Jackal	Frederick Forsyth	1971	0553266306	\N	\N
678	The Stainless Steel Rat	Harry Harrison	1961	1857984986	\N	\N
679	The Hotel New Hampshire	John Irving	1981	0552992097	\N	\N
680	The Woman in Cabin 10	Ruth Ware	2016	1501132938	\N	\N
681	Nobody's Fool	Richard Russo	1993	0679753338	\N	\N
682	Bridge to Haven	Francine Rivers	2014	1414368186	\N	\N
683	A Tree Grows In Brooklyn 	Betty  Smith	1943	0061120073	\N	\N
684	Great House	Nicole Krauss	2010	0393079988	\N	\N
685	Ramona Quimby, Age 8	Beverly Cleary	1981	0440800463	\N	\N
686	Fool	Christopher Moore	2009	0060590319	\N	\N
687	Moriarty	Anthony Horowitz	2014	0062377183	\N	\N
688	The Turner House	Angela Flournoy	2015	0544303164	\N	\N
689	The Rivers of Zadaa	D.J. MacHale	2005	0689869126	\N	\N
690	You Had Me At Hello	Mhairi McFarlane	2012	000748805X	\N	\N
691	Fool Moon 	Jim Butcher	2001	0451458125	\N	\N
692	Quicksilver	Neal Stephenson	2003	0060593083	\N	\N
693	What Happened to Goodbye	Sarah Dessen	2011	0670012947	\N	\N
694	The Body Farm	Patricia Cornwell	1994	0425201449	\N	\N
695	The Merchant of Death	D.J. MacHale	2002	0743437314	\N	\N
696	The Son of Sobek	Rick Riordan	2013	1423194551	\N	\N
697	The Complete Maus	Art Spiegelman	1986	0141014083	\N	\N
698	Insatiable	Meg Cabot	2010	006173506X	\N	\N
699	High Noon	Nora Roberts	2007	0399154345	\N	\N
700	Angels	Marian Keyes	2002	0060512148	\N	\N
701	Once a Runner	John L. Parker Jr.	1978	0915297019	\N	\N
702	A Million Suns 	Beth Revis	2012	159514398X	\N	\N
703	Behind Her Eyes	Sarah Pinborough	2017	125011117X	\N	\N
704	The Yearling	Marjorie Kinnan Rawlings	1930	0689846231	\N	\N
705	Party Princess	Meg Cabot	2006	0060724552	\N	\N
706	No Mercy	Sherrilyn Kenyon	2010	0312546564	\N	\N
707	Rhett Butler's People	Donald McCaig	2007	023070395X	\N	\N
708	Scorpia	Anthony Horowitz	2004	0142405787	\N	\N
709	L is for Lawless	Sue Grafton	1994	0449221490	\N	\N
710	Rainbow Boys	Alex   Sanchez	2001	0689857705	\N	\N
711	The Tenth Insight 	James Redfield	1996	0446674575	\N	\N
712	Presumed Innocent	Scott Turow	1986	0446350982	\N	\N
713	Thunderstruck	Erik Larson	2006	1400080665	\N	\N
714	The Shoemaker's Wife	Adriana Trigiani	2012	0061257095	\N	\N
715	A Little Life	Hanya Yanagihara	2015	0385539258	\N	\N
716	Glitter and Glue	Kelly Corrigan	2014	034553283X	\N	\N
717	Gathering Prey	John Sandford	2015	0399168796	\N	\N
718	Perfect Chemistry	Simone Elkeles	2008	0802798233	\N	\N
719	The High King 	Lloyd Alexander	1968	080508052X	\N	\N
720	The Astronaut Wives Club	Lily Koppel	2013	1455503258	\N	\N
721	When Calls the Heart	Janette Oke	1983	0764200119	\N	\N
722	The Sum of All Men	David Farland	1998	0812541626	\N	\N
723	Lost	Gregory Maguire, Douglas Smith	2001	0060988649	\N	\N
724	The Naked Face	Sidney Sheldon	1970	0446321214	\N	\N
725	Underworld	Don DeLillo	1997	0330369954	\N	\N
726	This Savage Song	Victoria Schwab	2016	0062380877	\N	\N
727	The Dragonbone Chair	Tad Williams	1988	0756402697	\N	\N
728	The Fault in Our Stars	John Green	2012	0525478817	\N	\N
729	Tiger's Voyage	Colleen Houck	2011	1450595987	\N	\N
730	The Wasp Factory	Iain Banks	1984	0684853159	\N	\N
731	Split Second	David Baldacci	2003	0446614459	\N	\N
732	Blindsighted	Karin Slaughter	2001	0380820889	\N	\N
733	Since You've Been Gone	Morgan Matson	2014	1442435003	\N	\N
734	Mirror Dance	Lois McMaster Bujold	1994	0671876465	\N	\N
735	Angelology	Danielle Trussoni	2010	0670021474	\N	\N
736	Blameless	Gail Carriger	2010	0316074152	\N	\N
737	L'isola del giorno prima	Umberto Eco	1994	0156030373	\N	\N
738	Diamonds are Forever	Ian Fleming	1956	0142002054	\N	\N
739	Up From the Grave 	Jeaniene Frost	2014	0062076116	\N	\N
740	Singularity Sky	Charles Stross	2003	1841493341	\N	\N
741	Waiting to Exhale	Terry McMillan	1992	0451217454	\N	\N
742	The Red Badge of Courage	Stephen Crane	1871	1580495869	\N	\N
743	River Marked	Patricia Briggs	2011	1841497975	\N	\N
744	Stone Cold	David Baldacci	2007	0446577391	\N	\N
745	Rachel's Holiday	Marian Keyes	1997	0060090383	\N	\N
746	The Book of Shadows	Paula Brackston	1991	031262168X	\N	\N
747	The Patron Saint of Liars	Ann Patchett	1992	1841150509	\N	\N
748	Sizzling Sixteen	Janet Evanovich	2009	0739377728	\N	\N
749	The Bonfire of the Vanities	Tom Wolfe	1987	0553381342	\N	\N
750	Paddy Clarke Ha Ha Ha	Roddy Doyle	1993	2264022442	\N	\N
751	Mad About the Boy	Helen Fielding	2013	0345807952	\N	\N
752	My Name Is Mary Sutter	Robin Oliveira	2010	0670021679	\N	\N
753	Infinite Jest	David Foster Wallace	1996	0316921173	\N	\N
754	The Ghost Brigades	John Scalzi	2006	0765354063	\N	\N
755	Another Fine Myth	Robert Lynn Asprin	1978	0441013465	\N	\N
756	To The Lighthouse 	Virginia Woolf	1927	140679239X	\N	\N
757	Heaven	Alexandra Adornetto	2012	0312656289	\N	\N
758	Captain's Fury	Jim Butcher	2007	0441015271	\N	\N
759	Night World, No. 3	L.J. Smith	2009	1416974520	\N	\N
760	David Gets in Trouble	David Shannon	2002	0439050227	\N	\N
761	Beautiful Stranger	Christina Lauren	2013	1476731535	\N	\N
762	Grave Surprise	Charlaine Harris	2006	0425212033	\N	\N
763	Empire of Ivory	Naomi Novik	2007	0345496876	\N	\N
764	The Lace Reader	Brunonia Barry	2006	097915930X	\N	\N
765	Curious George	H.A. Rey	1941	039515023X	\N	\N
766	Dance Upon The Air	Nora Roberts	2001	0749932775	\N	\N
767	Hausfrau	Jill Alexander Essbaum	2015	0812997530	\N	\N
768	The Bone People	Keri Hulme	1984	0140089225	\N	\N
769	A Rose for Emily	William Faulkner	1930	0675093244	\N	\N
770	Strip Tease	Carl Hiaasen	1993	044669567X	\N	\N
771	Frog and Toad Are Friends	Arnold Lobel	1970	0064440206	\N	\N
772	Uglies	Scott Westerfeld	2005	0689865384	\N	\N
773	Fool's Fate	Robin Hobb	2003	0553582461	\N	\N
774	White Witch, Black Curse	Kim Harrison	2009	0061138010	\N	\N
775	Children of God	Mary Doria Russell	1998	044900483X	\N	\N
776	Total Control	David Baldacci	1996	0446604844	\N	\N
777	The Chosen	Chaim Potok	1967	0449213447	\N	\N
778	Terms of Endearment	Larry McMurtry	1975	075283455X	\N	\N
779	Nachfolge	Dietrich Bonhoeffer	1937	0684815001	\N	\N
780	The Virgin Cure	Ami McKay	2011	0676979564	\N	\N
781	From Russia, with Love	Ian Fleming	1957	0142002070	\N	\N
782	Okay for Now	Gary D. Schmidt	2011	0547152604	\N	\N
783	Anil's Ghost	Michael Ondaatje	2000	0375724370	\N	\N
784	Fang	James Patterson	2010	0316036196	\N	\N
785	You Can Heal Your Life	Louise L. Hay	1984	8176210773	\N	\N
786	Still Life with Woodpecker	Tom Robbins	1980	184243022X	\N	\N
787	Waterfall	Lisa Tawn Bergren	2011	1434764338	\N	\N
788	Ilse Witch 	Terry Brooks	2000	0345396553	\N	\N
789	The Lost Wife	Alyson Richman	2011	042524413X	\N	\N
790	Greenwitch	Susan Cooper	1974	0689840349	\N	\N
791	Tell No One	Harlan Coben	2001	0440236703	\N	\N
792	Deity	Jennifer L. Armentrout	2012	1937053148	\N	\N
793	Girls in White Dresses	Jennifer Close	2011	0307596850	\N	\N
794	Debt Inheritance	Pepper Winters	2014	1500607533	\N	\N
795	The Notebook	Nicholas Sparks	1996	0553816713	\N	\N
796	From the Corner of His Eye	Dean Koontz	2000	0553582747	\N	\N
797	Prodigal Summer	Barbara Kingsolver	2000	0060959037	\N	\N
798	Stellaluna	Janell Cannon	1993	0152802177	\N	\N
799	Ghost World	Daniel Clowes	1998	1560974273	\N	\N
800	The Birth of Venus	Sarah Dunant	2003	0812968972	\N	\N
801	Sins of the Night	Sherrilyn Kenyon	2005	0312934327	\N	\N
802	The Search	Nora Roberts	2010	0399156577	\N	\N
803	Brokeback Mountain	Annie Proulx	1997	0743271327	\N	\N
804	Blow Fly	Patricia Cornwell	2003	0425198731	\N	\N
805	Lone Wolf	Jodi Picoult	2012	1439102759	\N	\N
806	Hallowed	Cynthia Hand	2012	0061996181	\N	\N
807	Servant of the Bones	Anne Rice	1996	0963192566	\N	\N
808	The Selfish Gene	Richard Dawkins	1976	0199291152	\N	\N
809	Prey	Michael Crichton	2002	0061015725	\N	\N
810	The Line of Beauty	Alan Hollinghurst	2004	0739464469	\N	\N
811	Hannibal Rising	Thomas Harris	2006	0385339410	\N	\N
812	The Source	James A. Michener	1965	0375760385	\N	\N
813	A Reliable Wife	Robert Goolrick	2009	1565125967	\N	\N
814	The Bourne Identity	Robert Ludlum	1980	0752864327	\N	\N
815	The Evolutionary Void	Peter F. Hamilton	2009	0345496574	\N	\N
816	Small Favor	Jim Butcher	2008	0451461894	\N	\N
817	The Grapes of Wrath	John Steinbeck	1939	0142000663	\N	\N
818	Ringworld	Larry Niven	1970	0575077026	\N	\N
819	The Return of the King	J.R.R. Tolkien	1955	0345339738	\N	\N
820	Being Nikki	Meg Cabot	2009	0545040566	\N	\N
821	Dawn	Erin Hunter	2005	006074457X	\N	\N
822	Losing It	Cora Carmack	2012	0988393506	\N	\N
823	The Blind Assassin	Margaret Atwood	2000	1860498809	\N	\N
824	Descent	Tim Johnston	2015	1616203048	\N	\N
825	The Omnivore's Dilemma	Michael Pollan	2006	1594200823	\N	\N
826	King of Foxes	Raymond E. Feist	2003	0380803267	\N	\N
827	Eternal Rider	Larissa Ione	2011	044657449X	\N	\N
828	The Other Side of Dawn	John Marsden	1999	0439858054	\N	\N
829	The Diviners	Libba Bray	2012	031612611X	\N	\N
830	Valley of the Dolls	Jacqueline Susann	1966	0739418378	\N	\N
831	Shatterglass	Tamora Pierce	2003	059039696X	\N	\N
832	Dawn	Octavia E. Butler	1987	0446603775	\N	\N
833	Boy Meets Girl	Meg Cabot	2004	0330418874	\N	\N
834	The Grand Sophy	Georgette Heyer	1950	0099465639	\N	\N
835	Mortal Coil	Derek Landy	2010	0007325983	\N	\N
836	Desperation	Stephen King	1996	0451188462	\N	\N
837	A Long Walk to Water	Linda Sue Park	2010	0547251270	\N	\N
838	Honor Among Enemies	David Weber	1996	0671877836	\N	\N
839	Heir of Novron	Michael J. Sullivan	2012	0316187712	\N	\N
840	The Copper Beech	Maeve Binchy	1992	0752876813	\N	\N
841	Forward the Foundation	Isaac Asimov	1993	0553565079	\N	\N
842	The Rumor	Elin Hilderbrand	2015	0316334529	\N	\N
843	Strong Poison	Dorothy L. Sayers	1930	0060809086	\N	\N
844	Gone for Good	Harlan Coben	2002	0440236738	\N	\N
845	Genesis	Karin Slaughter	2009	0385341962	\N	\N
846	Magic Bites	Ilona Andrews	2007	0441014895	\N	\N
847	Hatchet	Gary Paulsen	1986	0689840926	\N	\N
848	Dead and Gone	Charlaine Harris	2009	0441017150	\N	\N
849	Code Name Verity	Elizabeth Wein	2012	1405258217	\N	\N
850	Hourglass	Myra McEntire	2011	1606841440	\N	\N
851	Theft of Swords	Michael J. Sullivan	2011	0316187747	\N	\N
852	Dare Me	Megan Abbott	2012	0316097772	\N	\N
853	The Compound	S.A. Bodeen	2008	0312370156	\N	\N
854	The Sword Thief	Peter Lerangis	2009	0545135702	\N	\N
855	I Want My Hat Back	Jon Klassen	2011	0763655988	\N	\N
856	The Forgotten Garden	Kate Morton	2008	0330449605	\N	\N
857	Nine Stories	J.D. Salinger	1953	0316767727	\N	\N
858	Yes Please	Amy Poehler	2014	0062268341	\N	\N
859	Bel Canto	Ann Patchett	2001	0060838728	\N	\N
860	Blue Monday	Nicci French	2011	0718154959	\N	\N
861	Charmed Life 	Diana Wynne Jones	1977	000710653X	\N	\N
862	I Am Ozzy	Ozzy Osbourne, Chris Ayres	2009	0446569895	\N	\N
863	Devil Bones	Kathy Reichs	2008	0743294386	\N	\N
864	Driving Miss Daisy	Alfred Uhry	1986	0930452895	\N	\N
865	The Negotiator	Dee Henderson	2000	1414310560	\N	\N
866	The Perfect Hope	Nora Roberts	2012	1455807044	\N	\N
867	In the Lake of the Woods	Tim O'Brien	1994	061870986X	\N	\N
868	Trapped 	Kevin Hearne	2012	034553364X	\N	\N
869	Physik	Angie Sage, Mark Zug	2007	0060577371	\N	\N
870	Orlando: A Biography	Virginia Woolf	1928	0141184272	\N	\N
871	A Fire Upon The Deep	Vernor Vinge	1992	0812515285	\N	\N
872	Day After Night	Anita Diamant	2009	0743299841	\N	\N
873	The Help	Kathryn Stockett	2009	0399155341	\N	\N
874	Mercy Blade	Faith Hunter	2011	0451463722	\N	\N
875	Nightshade	Andrea Cremer	2010	039925482X	\N	\N
876	The Beach	Alex Garland	1996	1573226521	\N	\N
877	Private	Kate Brian	2006	1416918736	\N	\N
878	Calling Me Home	Julie Kibler	2012	1250014522	\N	\N
879	Counting by 7s	Holly Goldberg Sloan	2013	0803738552	\N	\N
880	Dear John	Nicholas Sparks	2006	0446528056	\N	\N
881	East of Eden  	John Steinbeck	1952	0142000655	\N	\N
882	Faefever	Karen Marie Moning	2008	0385341636	\N	\N
883	Just Listen	Sarah Dessen	2006	0670061050	\N	\N
884	Housekeeping	Marilynne Robinson	1980	0312424094	\N	\N
885	Forest Mage	Robin Hobb	2006	0060757639	\N	\N
886	Cranford	Elizabeth Gaskell	1853	0141439882	\N	\N
887	First Rider's Call	Kristen Britain	2003	0756401933	\N	\N
888	Night over Water	Ken Follett	1991	0451211472	\N	\N
889	L.A. Candy	Lauren Conrad	2009	0061767581	\N	\N
890	Everyman	Philip Roth	2006	0307277712	\N	\N
891	Winter Moon	Dean Koontz	1993	0553582933	\N	\N
892	Kushiel's Justice	Jacqueline Carey	2007	0446500038	\N	\N
893	The Prisoner of Zenda	Anthony Hope	1894	0140621318	\N	\N
894	Jewels of the Sun	Nora Roberts	1999	0515126772	\N	\N
895	Briar's Book	Tamora Pierce	1999	0590554115	\N	\N
896	Dragon bound	Thea Harrison	2011	0425241505	\N	\N
897	The Enchanted Wood	Enid Blyton	1939	0749748001	\N	\N
898	How the Mind Works	Steven Pinker	1997	0393318486	\N	\N
899	The Giver	Lois Lowry	1993	0385732554	\N	\N
900	Executive Power	Vince Flynn	2003	0743453964	\N	\N
901	The Virgin's Lover	Philippa Gregory	2004	0743269268	\N	\N
902	Magic Binds	Ilona Andrews	2016	0425270696	\N	\N
903	Rumble Fish	S.E. Hinton	1975	0440975344	\N	\N
904	Gemeinsames Leben	Dietrich Bonhoeffer	1939	0060608528	\N	\N
905	The Stranger	Harlan Coben	2015	0525953507	\N	\N
906	Jewel (Oprah's Book Club) 	Bret Lott	1991	0671042572	\N	\N
907	Northern Lights	Philip Pullman	1995	0679879242	\N	\N
908	Deliverance	James Dickey	1970	038531387X	\N	\N
909	The Castaways	Elin Hilderbrand	2009	0316043893	\N	\N
910	The Birth House	Ami McKay	2006	0676977731	\N	\N
911	Fox in Socks	Dr. Seuss	1965	0007158475	\N	\N
912	I Shall Wear Midnight	Terry Pratchett	2010	0385611072	\N	\N
913	The Autumn Republic 	Brian  McClellan	2015	0316219126	\N	\N
914	Iced	Karen Marie Moning	2012	0385344406	\N	\N
915	Leaving Time	Jodi Picoult	2014	0345544927	\N	\N
916	The Moor's Last Sigh	Salman Rushdie	1995	009959241X	\N	\N
917	One	Richard Bach	1988	0330311735	\N	\N
918	Sieben Jahre in Tibet	Heinrich Harrer	1952	0874778883	\N	\N
919	Blackberry Winter	Sarah Jio	2012	0452298385	\N	\N
920	I Capture the Castle	Dodie Smith	1948	0312181108	\N	\N
921	The Ruby Circle	Richelle Mead	2015	159514322X	\N	\N
922	Taken	Robert Crais	2012	0399158278	\N	\N
923	Between, Georgia	Joshilyn Jackson	2006	0446699454	\N	\N
924	Shugo Chara! 1 (Shugo Chara!)	Peach-Pit	2006	0345497457	\N	\N
925	Kindred	Octavia E. Butler	1979	0807083690	\N	\N
926	Rumors	Anna Godbersen	2008	0061345695	\N	\N
927	Lover Revealed	J.R. Ward	2007	0451412354	\N	\N
928	Before I Fall	Lauren Oliver	2010	0061726818	\N	\N
929	Death on the Nile	Agatha Christie	1937	0553119222	\N	\N
930	Great Expectations	Charles Dickens	1860	0192833596	\N	\N
931	The Rescue	Nicholas Sparks	2000	0446696129	\N	\N
932	The Cradle Will Fall	Mary Higgins Clark	1980	0743484274	\N	\N
933	Relic	Douglas Preston, Lincoln Child	1995	0765354942	\N	\N
934	Fever	Maya Banks	2013	0425267067	\N	\N
935	The Odd Couple	Neil Simon	1965	0573613311	\N	\N
936	Caught	Harlan Coben	2010	052595158X	\N	\N
937	Getting Over It	Anna Maxted	2000	006098824X	\N	\N
938	The Hydrogen Sonata	Iain M. Banks	2012	0356501507	\N	\N
939	Matter	Iain M. Banks	2008	1841494186	\N	\N
940	Excession	Iain M. Banks	1996	0553575376	\N	\N
941	My Stroke of Insight	Jill Bolte Taylor	2006	1430300612	\N	\N
942	The Chosen One	Carol Lynch Williams	2009	0312555113	\N	\N
943	Robopocalypse	Daniel H. Wilson	2011	0385533853	\N	\N
944	The Island of Dr. Moreau	H.G. Wells	1896	0553214322	\N	\N
945	Matilda	Roald Dahl, Quentin Blake	1988	0141301066	\N	\N
946	Double Whammy	Carl Hiaasen	1987	0446695661	\N	\N
947	Black Swan Green	David Mitchell	2006	0812974018	\N	\N
948	Secrets of a Summer Night	Lisa Kleypas	2004	0061259349	\N	\N
949	Jitterbug Perfume	Tom Robbins	1984	1842430351	\N	\N
950	A Summer Affair	Elin Hilderbrand	2008	0316018600	\N	\N
951	The Book of Illusions	Paul Auster	2002	0312990960	\N	\N
952	Microserfs	Douglas Coupland	1995	0060987049	\N	\N
953	Home Front	Kristin Hannah	2012	0312577206	\N	\N
954	Exodus	Leon Uris	1958	0553258478	\N	\N
955	Nevermore	Kelly Creagh	2010	1442402008	\N	\N
956	A Faint Cold Fear	Karin Slaughter	2003	0060534052	\N	\N
957	The Unlikely Spy	Daniel Silva	1996	0451209303	\N	\N
958	Holding the Dream	Nora Roberts	1996	0515142883	\N	\N
959	How to Save a Life	Sara Zarr	2011	0316036064	\N	\N
960	The Walk	Richard Paul Evans	2010	1439187312	\N	\N
961	Luckiest Girl Alive	Jessica Knoll	2015	1476789630	\N	\N
962	Angle of Repose	Wallace Stegner	1971	0140169300	\N	\N
963	Double Star	Robert A. Heinlein	1956	0345330137	\N	\N
964	Brown Girl Dreaming	Jacqueline Woodson	2014	0399252517	\N	\N
965	Berlin: The Downfall 1945	Antony Beevor	1998	0142002801	\N	\N
966	Manwhore	Katy Evans	2015	1501101536	\N	\N
967	Hideaway	Dean Koontz	1992	0425203891	\N	\N
968	Prep	Curtis Sittenfeld	2005	081297235X	\N	\N
969	A World Without Heroes	Brandon Mull	2011	141699792X	\N	\N
970	Little Brother	Cory Doctorow	2008	0765319853	\N	\N
971	Absolute Power	David Baldacci	1995	0330419641	\N	\N
972	Texas	James A. Michener	1985	0375761411	\N	\N
973	Harvest 	Tess Gerritsen	1996	067155302X	\N	\N
974	Another Piece of My Heart	Jane Green	2012	0312591829	\N	\N
975	The Forsyte Saga	John Galsworthy	1921	0192838628	\N	\N
976	Treasure	Clive Cussler	1988	0671704656	\N	\N
977	Landline	Rainbow Rowell	2014	1250049377	\N	\N
978	Love & Misadventure	Lang Leav	2013	0473235501	\N	\N
979	I, Claudius	Robert Graves	1934	067972477X	\N	\N
980	How to Be a Woman	Caitlin Moran	2011	0091940737	\N	\N
981	Alien	Alan Dean Foster	1979	2290011150	\N	\N
982	The Summons	John Grisham	2002	0385339593	\N	\N
983	Kiss of Frost	Jennifer Estep	2011	0758266944	\N	\N
984	The General's Daughter	Nelson DeMille	1992	0446364800	\N	\N
985	Betty Crocker's Cookbook	Betty Crocker	1969	0307098222	\N	\N
986	Broken prince	Erin Watt	2016	1682305031	\N	\N
987	Going After Cacciato	Tim O'Brien	1978	0767904427	\N	\N
988	The Minority Report	Philip K. Dick	1956	0375421874	\N	\N
989	Immortal in Death 	J.D. Robb	1996	0749934085	\N	\N
990	Last Night in Twisted River	John Irving	2009	1400063841	\N	\N
991	Return	Karen Kingsbury, Gary Smalley	2003	0842382895	\N	\N
992	Deliver Us From Evil	David Baldacci	2010	0446564087	\N	\N
993	The Acid House	Irvine Welsh	1994	0393312801	\N	\N
994	Metro Girl	Janet Evanovich	2004	0060584025	\N	\N
995	The Messenger	Daniel Silva	2006	0399153357	\N	\N
996	Walking Disaster	Jamie McGuire	2013	1476712980	\N	\N
997	The Piano Teacher	Janice Y.K. Lee	2008	0670020486	\N	\N
998	The Pledge	Kimberly Derting	2011	1442422017	\N	\N
999	A Painted House	John Grisham	2001	0385337930	\N	\N
1000	The Turn of the Screw	Henry James	1898	0140620613	\N	\N
1001	Kiss the Dead	Laurell K. Hamilton	2012	0425247546	\N	\N
1002	Deal Breaker	Harlan Coben	1995	0385340605	\N	\N
1003	The Hero of Ages	Brandon Sanderson	2008	0765316897	\N	\N
1004	Lipstick Jungle	Candace Bushnell	2005	0786887079	\N	\N
1005	Carry On, Jeeves	P.G. Wodehouse	1925	1585673927	\N	\N
1006	Queen of Sorcery	David Eddings	1982	0345335651	\N	\N
1007	Numbers	Rachel Ward	2008	0545142997	\N	\N
1008	The Gift	Alison Croggon	2002	0763631620	\N	\N
1009	Murder Must Advertise	Dorothy L. Sayers	1933	0061043559	\N	\N
1010	White Teeth	Zadie Smith	1999	0375703861	\N	\N
1011	Scrappy Little Nobody	Anna Kendrick	2016	1501117203	\N	\N
1012	The Invaders	John Flanagan	2012	0399256202	\N	\N
1013	All That Remains	Patricia Cornwell	1992	0684193957	\N	\N
1014	The Three Pigs	David Wiesner	2001	0618007016	\N	\N
1015	The Screaming Staircase	Jonathan Stroud	2013	0857532014	\N	\N
1016	The Peripheral	William Gibson	2014	0399158448	\N	\N
1017	For a Few Demons More 	Kim Harrison	2007	0060788380	\N	\N
1018	Girl, Interrupted	Susanna Kaysen	1993	0679746048	\N	\N
1019	The Sicilian	Mario Puzo	1984	0345441702	\N	\N
1020	Anathem	Neal Stephenson	2008	0061474096	\N	\N
1021	Splintered	A.G. Howard	2013	1419704281	\N	\N
1022	Fire Star	Chris d'Lacey	2005	0439845823	\N	\N
1023	Glory in Death	J.D. Robb	1995	0425150984	\N	\N
1024	City on Fire	Garth Risk Hallberg	2015	0385353774	\N	\N
1025	Midnight for Charlie Bone	Jenny Nimmo	2002	0439474299	\N	\N
1026	Tears of the Moon	Nora Roberts	1999	0515128546	\N	\N
1027	May We Be Forgiven	A.M. Homes	2012	0670025488	\N	\N
1028	Endless Summer	Jennifer Echols	2010	1442406593	\N	\N
1029	The Case for Christ	Lee Strobel	1988	0310226058	\N	\N
1030	The Secret Adversary	Agatha Christie	1922	1600963943	\N	\N
1031	Growing up Amish	Ira Wagler	2011	1414339364	\N	\N
1032	Waiting for the Barbarians	J.M. Coetzee	1980	0140283358	\N	\N
1033	Dragon Tears	Dean Koontz	1993	0425208435	\N	\N
1034	Body Movers 	Stephanie Bond	2006	0778324826	\N	\N
1035	Sandman Slim	Richard Kadrey	2009	0061714305	\N	\N
1036	Forest of Secrets	Erin Hunter	2003	0060525614	\N	\N
1037	The Thirty-Nine Steps	John Buchan	1915	1419151126	\N	\N
1038	Swindle	Gordon Korman	2008	0439903440	\N	\N
1039	The Carrie Diaries	Candace Bushnell	2010	0061728918	\N	\N
1040	Lean Mean Thirteen	Janet Evanovich	2007	0312349491	\N	\N
1041	Crown Duel 	Sherwood Smith	1997	0142301515	\N	\N
1042	Birds of America: Stories	Lorrie Moore	1998	0312241224	\N	\N
1043	The Monkey's Raincoat	Robert Crais	1987	0752816993	\N	\N
1044	Adam	Ted Dekker	2008	1595540075	\N	\N
1045	Feed	Mira Grant	2010	0316081051	\N	\N
1046	Aloha from Hell	Richard Kadrey	2011	0061714321	\N	\N
1047	The Final Warning	James Patterson	2008	0316002860	\N	\N
1048	Sworn to Silence	Linda Castillo	2009	0312374976	\N	\N
1049	Twilight	Erin Hunter	2006	0060827645	\N	\N
1050	The Handmaid's Tale	Margaret Atwood	1985	038549081X	\N	\N
1051	Go Set a Watchman	Harper Lee	2015	0062409859	\N	\N
1052	Homer's Odyssey 	Gwen Cooper	2009	038534385X	\N	\N
1053	The Clan of the Cave Bear	Jean M. Auel	1980	0553381679	\N	\N
1054	The Third Day, The Frost	John Marsden	1995	0439829127	\N	\N
1055	The Book of Three	Lloyd Alexander	1964	0805080481	\N	\N
1056	Master of the Senate	Robert A. Caro	2002	0394720954	\N	\N
1057	Patriot Games	Tom Clancy	1987	0425134350	\N	\N
1058	The Bronze Horseman	Paullina Simons	2001	0006513220	\N	\N
1059	You Suck 	Christopher Moore	2007	0060590297	\N	\N
1060	Sisters	Raina Telgemeier	2014	0545540607	\N	\N
1061	Flutter	Amanda Hocking	2010	0557489563	\N	\N
1062	The Secret Scripture	Sebastian Barry	2008	0571215289	\N	\N
1063	Tales of the City	Armistead Maupin	1978	0552998761	\N	\N
1064	The Last Detective	Robert Crais	2003	0345451902	\N	\N
1065	Sweet Evil	Wendy Higgins	2012	0062085611	\N	\N
1066	The Last Battle	C.S. Lewis	1956	0007202326	\N	\N
1067	K is for Killer	Sue Grafton	1994	0449000664	\N	\N
1068	Hot Water Music	Charles Bukowski	1983	0876855966	\N	\N
1069	Magic Steps	Tamora Pierce	2000	0590396056	\N	\N
1070	The Ipcress File	Len Deighton	1962	0586026193	\N	\N
1071	You	Caroline Kepnes	2014	1476785597	\N	\N
1072	Gilead	Marilynne Robinson	2004	031242440X	\N	\N
1073	Fever 1793	Laurie Halse Anderson	2000	0689848919	\N	\N
1074	Disappearing Acts	Terry McMillan	1989	0451209133	\N	\N
1075	Ilium	Dan Simmons	2003	0380817926	\N	\N
1076	Cinq semaines en ballon	Jules Verne	1863	1421820609	\N	\N
1077	The Kind Worth Killing	Peter  Swanson	2015	0062267523	\N	\N
1078	The Locket	Richard Paul Evans	1998	0671004239	\N	\N
1079	Commonwealth	Ann Patchett	2016	0062491792	\N	\N
1080	No Time for Goodbye	Linwood Barclay	2007	055380555X	\N	\N
1081	Sickened	Julie Gregory	2003	0553803077	\N	\N
1082	The Medusa Plot	Gordon Korman	2011	0545324092	\N	\N
1083	Demon Lord of Karanda	David Eddings	1988	0345363310	\N	\N
1084	The Book of Ruth	Jane Hamilton	1988	0385265700	\N	\N
1085	War and Remembrance	Herman Wouk	1978	0316954993	\N	\N
1086	Before They Are Hanged	Joe Abercrombie	2007	0575077883	\N	\N
1087	Carpe Jugulum	Terry Pratchett	1998	0061051586	\N	\N
1088	The Appeal	John Grisham	2008	0385515049	\N	\N
1089	Full Black	Brad Thor	2011	141658661X	\N	\N
1090	Four: The Transfer	Veronica Roth	2013	0062285637	\N	\N
1091	A Tale for the Time Being	Ruth Ozeki	2013	0670026638	\N	\N
1092	The Fixer Upper	Mary Kay Andrews	2009	0060837381	\N	\N
1093	The Good House	Ann Leary	2013	1250015545	\N	\N
1094	The Vampire Armand	Anne Rice	1998	0345434803	\N	\N
1095	The Death of Bunny Munro	Nick Cave	2009	1847673767	\N	\N
1096	I Was Here	Gayle Forman	2015	0451471474	\N	\N
1097	Longbourn	Jo Baker	2013	0385351232	\N	\N
1098	Time for Bed	Mem Fox, Jane Dyer	1993	0152010661	\N	\N
1099	Hoot	Carl Hiaasen	2002	0440421705	\N	\N
1100	Ask the Passengers	A.S. King	2012	0316194689	\N	\N
1101	Memory Man	David Baldacci	2015	1455559822	\N	\N
1102	Breath	Tim Winton	2008	0374116342	\N	\N
1103	The Gods of War	Conn Iggulden	2006	044024160X	\N	\N
1104	The Iron Queen	Julie Kagawa	2011	0373210183	\N	\N
1105	Scarlet	Marissa Meyer	2013	0312642962	\N	\N
1106	This is Water	David Foster Wallace	2009	0316068225	\N	\N
1107	The Executioner's Song	Norman Mailer	1979	0375700811	\N	\N
1108	The Blood of Olympus	Rick Riordan	2014	1484724917	\N	\N
1109	The Liars' Club: A Memoir	Mary Karr	1995	0143035746	\N	\N
1110	Say Goodbye	Lisa Gardner	2008	0553804332	\N	\N
1111	Auschwitz: A New History	Laurence Rees	2005	158648303X	\N	\N
1112	Mirror Mirror	Gregory Maguire	2003	0060988657	\N	\N
1113	Ladder of Years	Anne Tyler	1995	0804113475	\N	\N
1114	The Funhouse	Owen  West, Dean Koontz	1980	0425142485	\N	\N
1115	Paris to the Moon	Adam Gopnik	2000	0375758232	\N	\N
1116	Child of God	Cormac McCarthy	1973	0679728740	\N	\N
1117	Sapphique	Catherine Fisher	2000	0340893613	\N	\N
1118	Lightning	Dean Koontz	1988	0425192032	\N	\N
1119	Seduce Me at Sunrise	Lisa Kleypas	2008	0312949812	\N	\N
1120	S is for Silence	Sue Grafton	2005	0425212696	\N	\N
1121	Zomerhuis met zwembad	Herman Koch	2011	0804138818	\N	\N
1122	The Thirteenth Tale	Diane Setterfield	2006	0743298020	\N	\N
1123	The Wives of Henry VIII	Antonia Fraser	1992	0140132937	\N	\N
1124	Treasure Island	Robert Louis Stevenson	1882	0753453800	\N	\N
1125	The Eye of the World	Robert Jordan	1990	0812511816	\N	\N
1126	Bury Your Dead	Louise Penny	2010	0312377045	\N	\N
1127	Juliet, Naked	Nick Hornby	2009	1594488878	\N	\N
1128	Second Chance	Jane Green	2007	0670038571	\N	\N
1129	The Gatecrasher	Madeleine Wickham	1998	0312361270	\N	\N
1130	Crooked House	Agatha Christie	1949	031298166X	\N	\N
1131	Dance with the Devil	Sherrilyn Kenyon	2003	0312984839	\N	\N
1132	The Year of the Flood	Margaret Atwood	2009	0385528779	\N	\N
1133	Digging to America	Anne Tyler	2006	0307263940	\N	\N
1134	The Edge of Never	J.A. Redmerski	2012	1480095532	\N	\N
1135	The Fire Eternal	Chris d'Lacey	2007	1846164257	\N	\N
1136	Oh, the Places You'll Go!	Dr. Seuss	1990	0679805273	\N	\N
1137	Letter to My Daughter	Maya Angelou	2008	1400066124	\N	\N
1138	The Girls	Lori Lansens	2005	0316066346	\N	\N
1139	Eona: The Last Dragoneye	Alison Goodman	2011	0670063118	\N	\N
1140	The Scottish Prisoner	Diana Gabaldon	2011	1409135195	\N	\N
1141	Armor	John Steakley	1984	0886773687	\N	\N
1142	The Other Boleyn Girl	Philippa Gregory	2001	0743227441	\N	\N
1143	Stay Close	Harlan Coben	2012	0525952276	\N	\N
1144	The Last Templar	Raymond Khoury	2006	0451219953	\N	\N
1145	Sexing the Cherry	Jeanette Winterson	1989	0802135781	\N	\N
1146	Four Blind Mice	James Patterson	2002	0747266921	\N	\N
1147	Women Who Love Too Much	Robin Norwood	1985	0671733419	\N	\N
1148	Dissolution	C.J. Sansom	2003	0330411969	\N	\N
1149	The Gate Thief	Orson Scott Card	2013	0765326582	\N	\N
1150	Mountain of Black Glass	Tad Williams	1999	0886779065	\N	\N
1151	In Our Time	Ernest Hemingway	1925	0684822761	\N	\N
1152	Winter of the World	Ken Follett	2012	0525952926	\N	\N
1153	Ten Big Ones	Janet Evanovich	2004	0312936222	\N	\N
1154	Poison Study	Maria V. Snyder	2005	0778324338	\N	\N
1155	Outbreak	Robin Cook	1987	042510687X	\N	\N
1156	A Room of One's Own	Virginia Woolf	1929	0141183535	\N	\N
1157	National Velvet	Enid Bagnold	1935	1405209496	\N	\N
1158	Pastoralia	George Saunders	2000	0747553866	\N	\N
1159	The Fall of Five	Pittacus Lore	2013	0061974618	\N	\N
1160	Rise of the Elgen	Richard Paul Evans	2012	1442454148	\N	\N
1161	Eagle Strike	Anthony Horowitz	2003	0142406139	\N	\N
1162	That Summer	Sarah Dessen	1996	0670061107	\N	\N
1163	Sycamore Row	John Grisham	2013	0385537131	\N	\N
1164	Case Histories	Kate Atkinson	2004	0316010707	\N	\N
1165	Love Warrior	Glennon Doyle Melton	2016	1250128544	\N	\N
1166	Slash	Slash, Anthony Bozza	2007	0061351423	\N	\N
1167	Anastasia Krupnik	Lois Lowry	1978	0553153382	\N	\N
1168	The Commitments	Roddy Doyle	1987	0749391685	\N	\N
1169	North and South	John Jakes	1982	0451200810	\N	\N
1170	Curious George Rides a Bike	H.A. Rey	1952	1844285073	\N	\N
1171	There's a Wocket in My Pocket	Dr. Seuss	1974	0007169957	\N	\N
1172	Here on Earth 	Alice Hoffman	1997	0425169693	\N	\N
1173	The Prize	Julie Garwood	1991	0671702513	\N	\N
1174	American Wife	Curtis Sittenfeld	2008	1400064759	\N	\N
1175	A Hologram for the King	Dave Eggers	2012	193636574X	\N	\N
1176	Night Film	Marisha Pessl	2013	140006788X	\N	\N
1177	The Going-To-Bed Book	Sandra Boynton	1982	0671449028	\N	\N
1178	Extreme Measures	Vince Flynn	2008	1416599398	\N	\N
1179	Virgin	James Patterson	1980	0446609404	\N	\N
1180	The Goblin Emperor	Katherine Addison	2014	076532699X	\N	\N
1181	Oblivion	David Foster Wallace	2004	0316010766	\N	\N
1182	Eric	Terry Pratchett	1990	0380821214	\N	\N
1183	Echo Burning	Lee Child	2001	0515133310	\N	\N
1184	Lord Edgware Dies	Agatha Christie	1933	0002314576	\N	\N
1185	Heal Your Body	Louise L. Hay	1976	0937611352	\N	\N
1186	The Princess Diarist	Carrie Fisher	2016	0399173595	\N	\N
1187	When God Was a Rabbit	Sarah Winman	2011	0755379284	\N	\N
1188	Once We Were Brothers	Ronald H. Balson	2010	1250046394	\N	\N
1189	Caraval	Stephanie Garber	2017	1250095255	\N	\N
1190	Reunion in Death	J.D. Robb	2002	0749934409	\N	\N
1191	The Escape	David Baldacci	2014	1455521191	\N	\N
1192	Storm Born	Richelle Mead	2008	1420100963	\N	\N
1193	Night School	Lee Child, Dick Hill	2016	0804192979	\N	\N
1194	The Secret Life of Bees	Sue Monk Kidd	2001	0142001740	\N	\N
1195	Prisoner of my desire 	Johanna Lindsey	1991	0380756277	\N	\N
1196	The Angel of Darkness	Caleb Carr	1997	0345427637	\N	\N
1197	Bones Are Forever	Kathy Reichs	2012	1439102430	\N	\N
1198	Fledgling	Octavia E. Butler	2005	0446696161	\N	\N
1199	The Passenger	Lisa Lutz	2016	1451686633	\N	\N
1200	The Constant Princess	Philippa Gregory	2005	0743272498	\N	\N
1201	Superfudge	Judy Blume	1980	0142408808	\N	\N
1202	A Time to Kill	John Grisham	1989	0385338600	\N	\N
1203	Amy & Matthew	Cammie McGovern	2014	0062271121	\N	\N
1204	Peace Like a River	Leif Enger	2001	0802139256	\N	\N
1205	Simply Irresistible	Rachel Gibson	1998	0380790076	\N	\N
1206	Crazy For You	Jennifer Crusie	1999	0312932812	\N	\N
1207	The Boleyn Inheritance	Philippa Gregory	2006	0743272501	\N	\N
1208	Princess Academy	Shannon Hale	2005	1599900734	\N	\N
1209	The Perfect Play	Jaci Burton	2011	0425238814	\N	\N
1210	Bookends	Jane Green	2000	0767907817	\N	\N
1211	Lon Po Po	Ed Young	1989	0399216197	\N	\N
1212	The 19th Wife	David Ebershoff	2008	1400063973	\N	\N
1213	A Man in Full	Tom Wolfe	1998	0553381334	\N	\N
1214	Academ's Fury	Jim Butcher	2005	0441013406	\N	\N
1215	The Little Stranger	Sarah Waters	2009	1594488800	\N	\N
1216	Shiver	Maggie Stiefvater	2009	0545123267	\N	\N
1217	Eon	Greg Bear	1984	0812520475	\N	\N
1218	Noble House	James Clavell	1981	0440164842	\N	\N
1219	Scoop	Evelyn Waugh	1937	0141187492	\N	\N
1220	Fill-in boyfrined	Kasie West	2015	006233638X	\N	\N
1221	Post Office	Charles Bukowski	1971	0876850867	\N	\N
1222	Down Under	Bill Bryson	2000	0767903862	\N	\N
1223	The Golden Lily	Richelle Mead	2012	1595143181	\N	\N
1224	Rebel Belle	Rachel Hawkins	2014	0399256938	\N	\N
1225	Torn	Amanda Hocking	2010	1250006325	\N	\N
1226	Slammerkin	Emma Donoghue	2000	0156007479	\N	\N
1227	Jennifer Government	Max Barry	2002	0349117624	\N	\N
1228	Allegiant	Veronica Roth	2013	0007524277	\N	\N
1229	Mitosis	Brandon Sanderson	2013	0449818438	\N	\N
1230	Lucky Jim	Kingsley Amis, David Lodge	1954	0140186301	\N	\N
1231	One Summer	David Baldacci	2011	0446583146	\N	\N
1232	Hunger 	Michael  Grant	2009	0061449067	\N	\N
1233	A Work in Progress	Connor Franta	2015	1476791619	\N	\N
1234	Hate List	Jennifer Brown	2009	0316041440	\N	\N
1235	A Great and Terrible Beauty	Libba Bray	2003	0689875347	\N	\N
1236	Six of Crows	Leigh Bardugo	2015	1627792120	\N	\N
1237	The Crossing 	Cormac McCarthy	1994	0394574753	\N	\N
1238	Foundation and Empire	Isaac Asimov	1952	0553803727	\N	\N
1239	Gone with the Wind	Margaret Mitchell	1936	0446675539	\N	\N
1240	The Girl Next Door	Jack Ketchum	1989	0843955430	\N	\N
1241	Deep Six	Clive Cussler	1984	1416516859	\N	\N
1242	Elizabeth Street	Laurie Fabiano	2006	1442152613	\N	\N
1243	The Fall of Hyperion	Dan Simmons	1990	0553288202	\N	\N
1244	Uprooted	Naomi Novik	2015	0804179034	\N	\N
1245	The Secret History	Donna Tartt	1992	1400031702	\N	\N
1246	It's Not Summer Without You	Jenny Han	2010	1416995552	\N	\N
1247	Drei Kameraden	Erich Maria Remarque	1936	0449912426	\N	\N
1248	A Fistful of Charms	Kim Harrison	2006	0060788194	\N	\N
1249	Whitney, My Love	Judith McNaught	1985	1416530711	\N	\N
1250	Four Past Midnight	Stephen King	1990	0450542882	\N	\N
1251	The Thorn Birds	Colleen McCullough	1977	0380018179	\N	\N
1252	That Night	Chevy Stevens	2014	1250034604	\N	\N
1253	Broken Angels	Richard K. Morgan	2003	0345457714	\N	\N
1254	True Blue	David Baldacci	2009	0446195510	\N	\N
1255	The magician's nephew	C.S. Lewis	1953	0060764902	\N	\N
1256	La peste	Albert Camus, Stuart Gilbert	1947	0679720219	\N	\N
1257	The Fury and Dark Reunion	L.J. Smith	2007	0061140988	\N	\N
1258	The Da Vinci Code	Dan Brown	2003	0307277674	\N	\N
1259	Ninth Key	Meg Cabot	2001	0060725125	\N	\N
1260	Envy	Anna Godbersen	2009	0061345725	\N	\N
1261	Skippy Dies	Paul Murray	2010	0241141826	\N	\N
1262	The Lost Colony	Eoin Colfer	2006	0786849568	\N	\N
1263	Barefoot	Elin Hilderbrand	2007	0316018589	\N	\N
1264	Owl Moon	Jane Yolen, John Schoenherr	1987	0399214577	\N	\N
1265	Defending Jacob	William Landay	2012	0385344228	\N	\N
1266	Plum Lovin'	Janet Evanovich	2007	0312306342	\N	\N
1267	The Psychopath Test	Jon Ronson	2011	1594485755	\N	\N
1268	Ashes to Ashes	Tami Hoag	1999	0553589172	\N	\N
1269	Foxglove Summer	Ben Aaronovitch	2014	0575132507	\N	\N
1270	It Happened One Autumn	Lisa Kleypas	2005	0060562498	\N	\N
1271	The Wright Brothers	David McCullough	2015	1476728747	\N	\N
1272	The Prefect	Alastair Reynolds	2007	0575077166	\N	\N
1273	Undaunted Courage	Stephen E. Ambrose	1996	074347788X	\N	\N
1274	The History of Love	Nicole Krauss	2005	0393328627	\N	\N
1275	Sisterland	Curtis Sittenfeld	2013	1400068312	\N	\N
1276	Bloodfever	Karen Marie Moning	2007	038533916X	\N	\N
1277	In His Steps	Charles M. Sheldon	1896	1557488150	\N	\N
1278	Wife by wednesday	Catherine Bybee	2011	1467964409	\N	\N
1279	The First Bad Man	Miranda July	2015	1439172560	\N	\N
1280	Lover Avenged, part one	J.R. Ward	2010	0451229851	\N	\N
1281	Lover Enshrined, part one	J.R. Ward	2008	0451222725	\N	\N
1282	Redeployment	Phil Klay	2014	1594204993	\N	\N
1283	The Winds of War	Herman Wouk	1971	0316952664	\N	\N
1284	Morrigan's Cross	Nora Roberts	2006	0515141658	\N	\N
1285	The Other Typist	Suzanne Rindell	2013	0241963745	\N	\N
1286	Just Kids	Patti Smith	2010	006621131X	\N	\N
1287	The Dogs of Babel	Carolyn  Parkhurst	2003	0316778508	\N	\N
1288	Lit	Mary Karr	2008	0060596988	\N	\N
1289	Cat Among the Pigeons	Agatha Christie	1959	0425205967	\N	\N
1290	The Tortilla Curtain	T.C. Boyle	1995	014023828X	\N	\N
1291	Gossip Girl	Cecily von Ziegesar	2002	0316910333	\N	\N
1292	Erak's Ransom	John Flanagan	2007	1741662095	\N	\N
1293	The Fallen Angel	Daniel Silva	2012	0062073125	\N	\N
1294	The Alexandria Link	Steve Berry	2007	0345485750	\N	\N
1295	Reboot	Amy Tintera	2013	0062217070	\N	\N
1296	Anybody Out There?	Marian Keyes	2006	0061240850	\N	\N
1297	Little Altars Everywhere	Rebecca Wells	1992	0060759968	\N	\N
1298	The Last Time They Met	Anita Shreve	2001	0316713732	\N	\N
1299	Summer Sisters	Judy Blume	1998	0440243750	\N	\N
1300	Old Man's War	John Scalzi	2005	0765348276	\N	\N
1301	Love Walked In	Marisa de los Santos	2005	0452287898	\N	\N
1302	Bared to You	Sylvia Day	2012	0425263908	\N	\N
1303	Ordinary Grace	William Kent Krueger	2013	1451645821	\N	\N
1304	Tuck Everlasting	Natalie Babbitt	1975	0374480095	\N	\N
1305	Mercy	Julie Garwood	2001	0743430336	\N	\N
1306	Embrace the Night	Karen Chance	2008	0451461991	\N	\N
1307	The Gates of Rome	Conn Iggulden	2002	0440240948	\N	\N
1308	Seating Arrangements	Maggie Shipstead	2012	0307599469	\N	\N
1309	Storm Warning	Linda Sue Park	2010	0545060494	\N	\N
1310	C is for Corpse	Sue Grafton	1986	0312939019	\N	\N
1311	Lockdown	Alexander Gordon Smith	2009	0374324913	\N	\N
1312	Gravity's Rainbow	Thomas Pynchon	1973	0143039946	\N	\N
1313	The Venetian Betrayal	Steve Berry	2007	0345485777	\N	\N
1314	The Colour of Magic	Terry Pratchett	1983	0060855924	\N	\N
1315	The Analyst	John Katzenbach	2002	0552150215	\N	\N
1316	See Me	Nicholas Sparks	2015	1455520616	\N	\N
1317	Snow Falling on Cedars	David Guterson	1994	067976402X	\N	\N
1318	True Grit	Charles Portis	1968	1585673692	\N	\N
1319	Pyongyang	Guy Delisle	2003	1897299214	\N	\N
1320	The Golden Fool	Robin Hobb	2002	0553582453	\N	\N
1321	One Summer: America 1927	Bill Bryson	2013	0767919408	\N	\N
1322	Outpost	Ann Aguirre	2012	0312650094	\N	\N
1323	Evil Star	Anthony Horowitz	2006	0439679966	\N	\N
1324	Joyland	Stephen King	2013	1781162646	\N	\N
1325	Lies	Michael  Grant	2010	0061449091	\N	\N
1326	Blue Smoke	Nora Roberts	2005	0515141399	\N	\N
1327	Fade	Lisa McMann	2009	1416953582	\N	\N
1328	Goodnight Nobody	Jennifer Weiner	2005	0743470125	\N	\N
1329	Something Wonderful	Judith McNaught	1988	0671737635	\N	\N
1330	Catch Me	Lisa Gardner	2012	0525952764	\N	\N
1331	Candy Girl	Diablo Cody	2005	1592402739	\N	\N
1332	Winter Prey	John Sandford	1993	0425141233	\N	\N
1333	Firefight	Brandon Sanderson	2015	0385743580	\N	\N
1334	Odd Apocalypse	Dean Koontz	2012	0307990672	\N	\N
1335	Ghost Story	Jim Butcher	2011	045146379X	\N	\N
1336	Finnikin of the Rock	Melina Marchetta	2008	0670072818	\N	\N
1337	Witness	Sandra Brown	1995	044619154X	\N	\N
1338	Touch the Dark	Karen Chance	2006	0451460936	\N	\N
1339	Alexander Hamilton	Ron Chernow	2004	0143034758	\N	\N
1340	The Immortal Rules	Julie Kagawa	2012	0373210515	\N	\N
1341	Collected Poems 1909-1962	T.S. Eliot	1963	0151189781	\N	\N
1342	The Dragon Reborn 	Robert Jordan	1991	0765305119	\N	\N
1343	The 158-Pound Marriage	John Irving	1974	0345417968	\N	\N
1344	Princess Mia	Meg Cabot	2007	0060724617	\N	\N
1345	The Gods of Mars	Edgar Rice Burroughs	1913	0345324390	\N	\N
1346	Knife of Dreams	Robert Jordan	2005	0812577566	\N	\N
1347	Under the Skin	Michel Faber	2000	1841954802	\N	\N
1348	The Night Watch	Sarah Waters	2006	1594482306	\N	\N
1349	Magonia	Maria Dahvana Headley	2015	0062320521	\N	\N
1350	Kill Shot	Vince Flynn	2012	1416595201	\N	\N
1351	Danger in the Shadows	Dee Henderson	1999	1414310552	\N	\N
1352	How to Be Popular	Meg Cabot	2006	0060880120	\N	\N
1353	The Stone Monkey	Jeffery Deaver	2002	1410400964	\N	\N
1354	The Brethren	John Grisham	2000	0385339674	\N	\N
1355	Sojourn (Dark Elf #3)	R.A. Salvatore	1990	1560760478	\N	\N
1356	The Reckoning	Kelley Armstrong	2010	1841497126	\N	\N
1357	Scarlet	A.C. Gaughen	2012	0802723462	\N	\N
1358	I Let You Go	Clare Mackintosh	2016	0751554154	\N	\N
1359	Slam	Nick Hornby	2007	0399250484	\N	\N
1360	Vengeance in Death	J.D. Robb	1997	0749934131	\N	\N
1361	A Piece of Cake: A Memoir	Cupcake Brown	2006	1400052297	\N	\N
1362	Poison Princess	Kresley Cole	2012	1442436646	\N	\N
1363	Underworld	Meg Cabot	2012	0545415071	\N	\N
1364	The Bazaar of Bad Dreams	Stephen King	2015	1501111671	\N	\N
1365	Timequake	Kurt Vonnegut Jr.	1997	0099267543	\N	\N
1366	The Mistake	Elle Kennedy	2015	151166066X	\N	\N
1367	Succubus Heat	Richelle Mead	2009	0553820273	\N	\N
1368	Beat the Reaper	Josh Bazell	2008	0316032220	\N	\N
1369	No Second Chance	Harlan Coben	2003	0451210557	\N	\N
1370	Asterios Polyp	David Mazzucchelli	2009	0307377326	\N	\N
1371	Flight of the Intruder	Stephen Coonts	1986	1591141273	\N	\N
1372	The Honor of the Queen	David Weber	1993	0671721720	\N	\N
1373	The Twelfth Card	Jeffery Deaver	2005	0739455834	\N	\N
1374	Waiting For You	Susane Colasanti	2009	0670011304	\N	\N
1375	Funny Girl	Nick Hornby	2014	1594205418	\N	\N
1376	Kiss the Girls	James Patterson	1995	0446677388	\N	\N
1377	Evergreen	Belva Plain	1978	0440132940	\N	\N
1378	Sweetbitter	Stephanie Danler	2016	1101875941	\N	\N
1379	Dream Warrior	Sherrilyn Kenyon	2009	0749909056	\N	\N
1380	Watermelon	Marian Keyes	1995	0099489988	\N	\N
1381	Dark Reunion	L.J. Smith	1991	0061059927	\N	\N
1382	Night Fall	Nelson DeMille	2004	0446616621	\N	\N
1383	Eat to Live	Joel Fuhrman	2003	0316735507	\N	\N
1384	Spirit Bound	Richelle Mead	2010	1595142509	\N	\N
1385	Soul of the Fire	Terry Goodkind	1999	0812551494	\N	\N
1386	Carmilla	J. Sheridan Le Fanu	1872	0809510839	\N	\N
1387	Before I Go to Sleep	S.J. Watson	2011	0062060554	\N	\N
1388	The King Beyond the Gate	David Gemmell	1985	1857236653	\N	\N
1389	Into the Still Blue	Veronica Rossi	2014	0062072099	\N	\N
1390	The Darkest Night	Gena Showalter	2008	0373772467	\N	\N
1391	In Watermelon Sugar	Richard Brautigan	1968	0099437597	\N	\N
1392	White Fang	Jack London	1906	0439236193	\N	\N
1393	Herzog	Saul Bellow, Philip Roth	1964	0142437298	\N	\N
1394	The Passion	Jeanette Winterson	1987	0802135226	\N	\N
1395	The Fall of Reach	Eric S. Nylund	2001	0345451325	\N	\N
1396	The Fiery Heart	Richelle Mead	2013	1595143203	\N	\N
1397	Captivate	Carrie Jones	2010	1599903423	\N	\N
1800	Home	Toni Morrison	2011	0307594165	\N	\N
1398	Prince of Fire	Daniel Silva	2005	0451215737	\N	\N
1399	Left Drowning	Jessica Park	2013	1477817158	\N	\N
1400	Reunion	Meg Cabot	2001	0060725133	\N	\N
1401	My Soul to Keep	Rachel Vincent	2010	0373210051	\N	\N
1402	The Sun Also Rises	Ernest Hemingway	1926	0743297334	\N	\N
1403	Touch of Frost	Jennifer Estep	2011	0758266928	\N	\N
1404	The Shadow of the Torturer	Gene Wolfe	1980	0671540661	\N	\N
1405	Americanah	Chimamanda Ngozi Adichie	2013	0307271080	\N	\N
1406	The Man from St. Petersburg	Ken Follett	1982	0451208706	\N	\N
1407	Storm Front	Jim Butcher	2000	0451457811	\N	\N
1408	The Atlantis Complex	Eoin Colfer	2010	1423128192	\N	\N
1409	Magician's Gambit	David Eddings	1983	0345335457	\N	\N
1410	Soul On Ice	Eldridge Cleaver	1968	038533379X	\N	\N
1411	Belinda	Anne Rice, Anne Rampling	1986	0425176657	\N	\N
1412	The Fourth Estate	Jeffrey Archer	1996	0061092037	\N	\N
1413	The One Tree	Stephen R. Donaldson	1982	0345418476	\N	\N
1414	Llama, Llama Red Pajama	Anna Dewdney	2005	0670059838	\N	\N
1415	Secrets of a shoe addict	Beth Harbison	2008	0312348266	\N	\N
1416	Rosemary and Rue	Seanan McGuire	2009	0756405718	\N	\N
1417	Distant Shores	Kristin Hannah	2002	0345450728	\N	\N
1418	Columbine	Dave Cullen	2009	0446546933	\N	\N
1419	The Fifth Elephant	Terry Pratchett	1999	0552154229	\N	\N
1420	The Last Straw	Jeff Kinney	2009	0810970686	\N	\N
1421	Marathon Man	William Goldman	1974	0330247042	\N	\N
1422	The Enchanted	Rene Denfeld	2014	0062285505	\N	\N
1423	The Terminal Man	Michael Crichton	1972	0060092572	\N	\N
1424	Broken	Kelley Armstrong	2006	0553588184	\N	\N
1425	Succubus Shadows 	Richelle Mead	2010	0758232004	\N	\N
1426	Saving Francesca	Melina Marchetta	2003	0375829830	\N	\N
1427	Silver Girl	Elin Hilderbrand	2011	031609966X	\N	\N
1428	The Shifting Fog	Kate Morton	2006	0330448447	\N	\N
1429	Silverthorn	Raymond E. Feist	1985	0586064176	\N	\N
1430	Misery	Stephen King	1987	0450417395	\N	\N
1431	The Lorax	Dr. Seuss	1971	0679889108	\N	\N
1432	Homer Price	Robert McCloskey	1942	0140309276	\N	\N
1433	House of Chains	Steven Erikson	2004	0765348810	\N	\N
1434	The Darkest Minds	Alexandra Bracken	2012	1423157370	\N	\N
1435	The Winner's Curse	Marie Rutkoski	2014	0374384681	\N	\N
1436	Antrax	Terry Brooks	2001	0345397673	\N	\N
1437	Darth Vader and Son	Jeffrey Brown	2012	145210655X	\N	\N
1438	Virtual Light	William Gibson	1993	0140157727	\N	\N
1439	Night World, No. 2	L.J. Smith	2008	1416974512	\N	\N
1440	The Sellout	Paul Beatty	2015	0374260508	\N	\N
1441	The Magus	John Fowles	1965	0316296198	\N	\N
1442	We Are Not Ourselves	Matthew  Thomas	2014	147675666X	\N	\N
1443	Come Home	Lisa Scottoline	2012	0312380828	\N	\N
1444	Airhead 	Meg Cabot	2008	0545040523	\N	\N
1445	Thud!	Terry Pratchett	2006	0552152676	\N	\N
1446	Rapunzel	Paul O. Zelinsky	1997	0525456074	\N	\N
1447	Strange Highways	Dean Koontz	1995	0446531383	\N	\N
1448	Night Play	Sherrilyn Kenyon	2004	0312992424	\N	\N
1449	Little Women	Louisa May Alcott	1868	0451529308	\N	\N
1450	Lost & Found	Jacqueline Sheehan	2007	0061128643	\N	\N
1451	Sad Cypress	Agatha Christie	1940	0007120710	\N	\N
1452	Heft	Liz Moore	2012	0393081508	\N	\N
1453	Entice	Carrie Jones	2010	1408810441	\N	\N
1454	Gray Mountain	John Grisham	2014	038553714X	\N	\N
1455	Ashley Bell	Dean Koontz	2015	0345545966	\N	\N
1456	A Year in the Merde	Stephen Clarke	2004	1582346178	\N	\N
1457	Pompeii	Robert   Harris	2003	0812974611	\N	\N
1458	Napalm & Silly Putty	George Carlin	2001	0786887583	\N	\N
1459	The Last Nude	Ellis Avery	2012	1594488134	\N	\N
1460	Forever Odd	Dean Koontz	2005	0553588265	\N	\N
1461	The Wednesday Wars	Gary D. Schmidt	2007	0618724834	\N	\N
1462	Requiem	Lauren Oliver	2013	0062014536	\N	\N
1463	Blue Bloods	Melissa de la Cruz	2006	0786838922	\N	\N
1464	The Long Goodbye	Raymond Chandler	1953	0394757688	\N	\N
1465	Revelation Space	Alastair Reynolds	2000	0441009425	\N	\N
1466	Return to Paradise	Simone Elkeles	2010	0738718688	\N	\N
1467	Hop on Pop	Dr. Seuss	1963	0007158491	\N	\N
1468	Sempre	J.M. Darhower	2014	1456527738	\N	\N
1469	My Life on the Road	Gloria Steinem	2015	0679456201	\N	\N
1470	The Dark Hills Divide	Patrick Carman	2003	0439700930	\N	\N
1471	The Argonauts	Maggie Nelson	2015	1555977073	\N	\N
1472	La catedral del mar	Ildefonso Falcones	2006	0307376656	\N	\N
1473	Halt's Peril	John Flanagan	2009	1741663024	\N	\N
1474	Silver Bay	Jojo Moyes	2007	0340895934	\N	\N
1475	The Rats	James Herbert	1974	0333761189	\N	\N
1476	The One	Kiera Cass	2014	0062059998	\N	\N
1477	Die for Me	Amy Plum	2011	0062004018	\N	\N
1478	Imitation in Death	J.D. Robb	2003	0749934433	\N	\N
1479	The Glass Palace	Amitav Ghosh	2000	0375758771	\N	\N
1480	Gut gegen Nordwind	Daniel Glattauer	2006	3552060413	\N	\N
1481	In One Person	John Irving	2012	1451664125	\N	\N
1482	The Ruins	Scott B. Smith	2006	1400043875	\N	\N
1483	Not Quite Dating	Catherine Bybee	2012	1612187145	\N	\N
1484	Simply Irresistible	Jill Shalvis	2010	044657161X	\N	\N
1485	Thirteen Reasons Why	Jay Asher	2007	1595141715	\N	\N
1486	The Confession	John Grisham	2010	0385528043	\N	\N
1487	Neverwhere	Neil Gaiman	1996	0060557818	\N	\N
1488	Worth Dying For	Lee Child	2010	0440339340	\N	\N
1489	The Horse Whisperer	Nicholas Evans	1995	0440222656	\N	\N
1490	Foreplay	Sophie Jordan	2013	0062279874	\N	\N
1491	Minding Frankie	Maeve Binchy	2010	1409113965	\N	\N
1492	Veil of Midnight	Lara Adrian	2008	0440244498	\N	\N
1493	The Caine Mutiny	Herman Wouk	1951	0316955108	\N	\N
1494	Anne of the Island	L.M. Montgomery	1915	0553213172	\N	\N
1495	Five on a Treasure Island 	Enid Blyton	1942	0340796146	\N	\N
1496	Devil in Winter 	Lisa Kleypas	2006	006056251X	\N	\N
1497	V.	Thomas Pynchon	1963	2020418770	\N	\N
1498	The Enemy	Charlie Higson	2009	014132502X	\N	\N
1499	Arthur & George	Julian Barnes	2005	1400097037	\N	\N
1500	The Keepsake	Tess Gerritsen	2008	0345497627	\N	\N
1501	The Emperor's Code	Gordon Korman	2010	0545060486	\N	\N
1502	Unseen	Karin Slaughter	2013	0345539478	\N	\N
1503	The Lover's Dictionary	David Levithan	2011	0374193681	\N	\N
1504	The Sweet Gum Tree	Katherine Allred	2005	1419953249	\N	\N
1505	Burmese Days	George Orwell	1934	1421808307	\N	\N
1506	The Apostle	Brad Thor	2009	1416586571	\N	\N
1507	Top Secret Twenty-One	Janet Evanovich	2014	0345542924	\N	\N
1508	The Search	Iris Johansen	2000	0553589482	\N	\N
1509	Dead Poets Society 	N.H. Kleinbaum	1988	0553282980	\N	\N
1510	New York	Edward Rutherfurd	2009	0385521383	\N	\N
1511	Princess in Love	Meg Cabot	2001	0064472809	\N	\N
1512	Bloodline	James Rollins	2012	0061784796	\N	\N
1513	Prom and Prejudice	Elizabeth Eulberg	2011	0545240778	\N	\N
1514	The Seventh Scroll	Wilbur Smith	1995	0312957572	\N	\N
1515	Dry: A Memoir	Augusten Burroughs	2003	0312423799	\N	\N
1516	Hawksong	Amelia Atwater-Rhodes	2003	044023803X	\N	\N
1517	Every Thing On It	Shel Silverstein	2011	0061998168	\N	\N
1518	How Music Works	David Byrne	2012	1936365537	\N	\N
1519	Monument 14	Emmy Laybourne	2012	0312569033	\N	\N
1520	No Rest for the Wicked	Kresley Cole	2006	1416509887	\N	\N
1521	My Year of Meats	Ruth Ozeki	1998	0140280464	\N	\N
1522	Attachments	Rainbow Rowell	2011	0525951989	\N	\N
1523	Leviathan Wakes	James S.A. Corey	2011	1841499889	\N	\N
1524	Sh*t My Dad Says	Justin Halpern	2010	0061992704	\N	\N
1525	God Help the Child	Toni Morrison	2014	0307594173	\N	\N
1526	White Night	Jim Butcher	2007	0451461401	\N	\N
1527	The Heretic Queen	Michelle Moran	2008	0307381757	\N	\N
1528	My Soul to Steal	Rachel Vincent	2010	0373210272	\N	\N
1529	In Real Life	Cory Doctorow, Jen Wang	2014	1596436581	\N	\N
1530	Shades of Midnight	Lara Adrian	2009	0440245265	\N	\N
1531	Blaze	Richard Bachman, Stephen King	2007	141655484X	\N	\N
1532	Red Rising	Pierce Brown	2014	0345539788	\N	\N
1533	Eeny Meeny	M.J. Arlidge	2014	0451475496	\N	\N
1534	A Color of His Own	Leo Lionni	1975	0375836977	\N	\N
1535	Speak	Laurie Halse Anderson	1999	014131088X	\N	\N
1536	Days with Frog and Toad	Arnold Lobel	1979	0064440583	\N	\N
1537	My Friend Dahmer	Derf Backderf	2012	1419702173	\N	\N
1538	The Ambassador's Mission	Trudi Canavan	2010	0316037834	\N	\N
1539	Keep Holding On	Susane Colasanti	2012	0670012254	\N	\N
1540	A Beautiful Wedding	Jamie McGuire	2013	1476759545	\N	\N
1541	Ship of Destiny	Robin Hobb	2000	0553575651	\N	\N
1542	March	Geraldine Brooks	2004	0143036661	\N	\N
1543	First Lord's Fury	Jim Butcher	2008	044101769X	\N	\N
1544	Horton Hears a Who!	Dr. Seuss	1954	0679800034	\N	\N
1545	Horton Hatches the Egg	Dr. Seuss	1940	0007175191	\N	\N
1546	Tramp for the Lord	Corrie ten Boom	1974	0515089931	\N	\N
1547	The Cat in the Hat	Dr. Seuss	1957	039480001X	\N	\N
1548	Live and Let Die	Ian Fleming	1954	0142003239	\N	\N
1549	Into the Wilderness	Sara Donati	1998	0553578529	\N	\N
1550	Doll Bones	Holly Black, Eliza Wheeler	2013	1416963987	\N	\N
1551	West Side Story	Irving Shulman	1961	0671725661	\N	\N
1552	Chasm City	Alastair Reynolds	2001	0441010644	\N	\N
1553	Decision Points	George W. Bush	2010	0307590615	\N	\N
1554	Fever	Lauren DeStefano	2012	144240907X	\N	\N
1555	Rules of Civility	Amor Towles	2011	0670022691	\N	\N
1556	UnSouled	Neal Shusterman	2013	147111810X	\N	\N
1557	A Raisin in the Sun	Lorraine Hansberry	1959	0375508333	\N	\N
1558	Love Bites	Lynsay Sands	2004	0505525534	\N	\N
1559	A Fraction of the Whole	Steve Toltz	2008	0385521723	\N	\N
1560	Lost Light	Michael Connelly	2003	0446611638	\N	\N
1561	Queen Song	Victoria Aveyard	2015	0062422960	\N	\N
1562	Open Season	C.J. Box	2001	042518546X	\N	\N
1563	Fortune's Rocks	Anita Shreve	1999	0316734837	\N	\N
1564	Still Missing	Chevy Stevens	2010	0312595670	\N	\N
1565	Flyte	Angie Sage, Mark Zug	2006	0060577363	\N	\N
1566	The Catcher in the Rye	J.D. Salinger	1951	0316769177	\N	\N
1567	Deerskin	Robin McKinley	1993	0441012396	\N	\N
1568	Complete Me	J. Kenner	2013	0345545850	\N	\N
1569	Fatal Vision	Joe McGinniss	1983	0451165667	\N	\N
1570	Holding Up the Universe	Jennifer Niven	2016	0385755929	\N	\N
1571	The Ice Twins	S.K. Tremayne	2015	0007563035	\N	\N
1572	The Dream Thieves	Maggie Stiefvater	2013	0545424941	\N	\N
1573	Last Man Standing	David Baldacci	2001	0446611778	\N	\N
1574	Darkly Dreaming Dexter	Jeff Lindsay	2004	0307277887	\N	\N
1575	Oscar and Lucinda	Peter Carey	1988	0702229784	\N	\N
1576	Midnight Bayou	Nora Roberts	2001	0515142867	\N	\N
1577	Whiteout	Ken Follett	2004	0451215710	\N	\N
1578	What I Loved	Siri Hustvedt	2002	0340682388	\N	\N
1579	Bella Tuscany	Frances Mayes	1999	076790284X	\N	\N
1580	The Onion Field	Joseph Wambaugh	1973	0385341598	\N	\N
1581	My Soul to Take	Rachel Vincent	2009	0373210035	\N	\N
1582	The Dead Girls' Dance	Rachel Caine	2007	0451220897	\N	\N
1583	Deadline	Mira Grant	2011	031608106X	\N	\N
1584	Shades of Earth	Beth Revis	2013	1595143998	\N	\N
1585	Find Her	Lisa Gardner	2016	0525954570	\N	\N
1586	Abandon	Blake Crouch	2009	0312537409	\N	\N
1587	The Valley of Amazement	Amy Tan	2013	0062107313	\N	\N
1588	A Suitable Boy	Vikram Seth	1993	0060786523	\N	\N
1589	Heart of the Sea	Nora Roberts	2000	0515128554	\N	\N
1590	A Pocket Full of Rye	Agatha Christie	1953	0451199863	\N	\N
1591	Lethal	Sandra Brown	2011	1455501476	\N	\N
1592	The Ask and the Answer	Patrick Ness	2009	1406310263	\N	\N
1593	Imperium	Robert   Harris	2006	074326603X	\N	\N
1594	The Emperor's Soul	Brandon Sanderson	2012	1616960922	\N	\N
1595	Bitten	Kelley Armstrong	2001	0452286034	\N	\N
1596	Ark Angel	Anthony Horowitz	2005	0142407380	\N	\N
1597	The Girl Before	J.P. Delaney	2017	0425285049	\N	\N
1598	Alas, Babylon	Pat Frank	1959	0060741872	\N	\N
1599	Ceremony in Death	J.D. Robb	1997	0749934123	\N	\N
1600	Sula	Toni Morrison	1973	0452283868	\N	\N
1601	The Light Fantastic	Terry Pratchett	1986	0061020702	\N	\N
1602	Origin in Death	J.D. Robb	2005	042520426X	\N	\N
1603	Promise Not to Tell	Jennifer McMahon	2007	0061143316	\N	\N
1604	L.A. Confidential	James Ellroy	1990	0099366711	\N	\N
1605	In the Skin of a Lion	Michael Ondaatje	1987	0679772669	\N	\N
1606	Gregor the Overlander	Suzanne Collins	2003	043977134X	\N	\N
1607	Money	Martin Amis	1984	0099461889	\N	\N
1608	Ashes of Midnight	Lara Adrian	2009	0440244501	\N	\N
1609	Amy & Isabelle	Elizabeth Strout	1998	0375705198	\N	\N
1610	Winger	Andrew  Smith	2013	1442444924	\N	\N
1611	The Redhead Revealed	Alice Clayton	2010	1936305380	\N	\N
1612	A Storm of Swords	George R.R. Martin	2000	055357342X	\N	\N
1613	Left Neglected	Lisa Genova	2011	1439164630	\N	\N
1614	The Alienist	Caleb Carr	1994	0812976142	\N	\N
1615	Broken Prey	John Sandford	2005	0425204308	\N	\N
1616	To Say Nothing of the Dog	Connie Willis	1998	0553575384	\N	\N
1617	The Dovekeepers	Alice Hoffman	2011	145161747X	\N	\N
1618	Big Little Lies	Liane Moriarty	2014	0399167064	\N	\N
1619	Black Powder War	Naomi Novik	2006	0345481305	\N	\N
1620	The Kill Order	James Dashner	2012	0385742886	\N	\N
1621	The Last Sin Eater	Francine Rivers	1998	1414315716	\N	\N
1622	The Hours	Michael Cunningham	1998	0312305060	\N	\N
1623	The Breadwinner	Deborah Ellis	2000	0888994168	\N	\N
1624	Killer 	Sara Shepard	2009	0061566128	\N	\N
1625	Bay of Sighs	Nora Roberts	2016	042528011X	\N	\N
1626	Honour Among Thieves	Jeffrey Archer	1993	0312933533	\N	\N
1627	Ex-Heroes	Peter Clines	2010	0804136572	\N	\N
1628	Wideacre	Philippa Gregory	1987	0743249291	\N	\N
1629	More Than a Carpenter	Josh McDowell	1977	0842345523	\N	\N
1630	Johnny Got His Gun	Dalton Trumbo	1939	0806512814	\N	\N
1631	The Naked and the Dead	Norman Mailer	1948	0312265050	\N	\N
1632	Secret Daughter	Shilpi Somaya Gowda	2010	0061922315	\N	\N
1633	Keys to Drawing	Bert Dodson	1985	0891343377	\N	\N
1634	Shanghai Girls	Lisa See	2009	1400067111	\N	\N
1635	Dept. of Speculation	Jenny Offill	2014	0385350813	\N	\N
1636	Dragon's Oath	P.C. Cast, Kristin Cast	2011	1250000238	\N	\N
1637	Sunshine	Robin McKinley	2003	0515138819	\N	\N
1638	Indignation	Philip Roth	2008	054705484X	\N	\N
1639	Sophie & Carter	Chelsea Fine	2011	1935089447	\N	\N
1640	Kushiel's Scion	Jacqueline Carey	2006	044661002X	\N	\N
1641	The Wee Free Men	Terry Pratchett	2003	0060012382	\N	\N
1642	The Humans	Matt Haig	2013	1476727910	\N	\N
1643	Bloodlines	Richelle Mead	2011	1595143173	\N	\N
1644	The God Delusion	Richard Dawkins	2006	0618680004	\N	\N
1645	Death Masks	Jim Butcher	2003	0451459407	\N	\N
1646	Cloud Atlas	David Mitchell	2004	0375507256	\N	\N
1647	The Princess Diaries	Meg Cabot	2000	0613371658	\N	\N
1648	Mouse Paint	Ellen Stoll Walsh	1989	0152002650	\N	\N
1649	A Murder is Announced	Agatha Christie	1950	1579126294	\N	\N
1650	The Proposition	Katie Ashley	2012	1480114480	\N	\N
1651	The Finkler Question	Howard Jacobson	2010	1408808870	\N	\N
1652	Just Like Heaven	Julia Quinn	2011	0749941995	\N	\N
1653	Born in Ice	Nora Roberts	1995	0515116750	\N	\N
1654	Saint	Ted Dekker	2006	1595540067	\N	\N
1655	Takedown	Brad Thor	2006	0743271181	\N	\N
1656	Shadows Linger	Glen Cook	1984	0812508424	\N	\N
1657	Ulysses	James Joyce	1922	0679722769	\N	\N
1658	Bad Kitty	Nick Bruel	2005	1596430699	\N	\N
1659	Sundiver	David Brin	1980	0553269828	\N	\N
1660	State of Wonder	Ann Patchett	2011	0062049801	\N	\N
1661	The Arctic Incident	Eoin Colfer	2002	0786851473	\N	\N
1662	Brain Droppings	George Carlin	1997	0786891122	\N	\N
1663	The Goddess Test	Aimee Carter	2011	0373210264	\N	\N
1664	Hana	Lauren Oliver	2011	0062124366	\N	\N
1665	What Katy Did  	Susan Coolidge	1872	0543904709	\N	\N
1666	Redwall	Brian Jacques	1986	1862301387	\N	\N
1667	Some Girls Bite	Chloe Neill	2009	0451226259	\N	\N
1668	The Time Paradox	Eoin Colfer	2008	1423108361	\N	\N
1669	Coming Home	Rosamunde Pilcher	1995	0340752475	\N	\N
1670	How to Fall in Love	Cecelia Ahern	2014	000735049X	\N	\N
1671	Savvy	Ingrid Law	2008	0803733062	\N	\N
1672	Exile's Return	Raymond E. Feist	2004	0380803275	\N	\N
1673	The Lost Stories	John Flanagan	2011	0399256180	\N	\N
1674	Curse the Dawn	Karen Chance	2009	0451412702	\N	\N
1675	Peak	Roland Smith	2007	0152024174	\N	\N
1676	Mystic River	Dennis Lehane	2001	0060584750	\N	\N
1677	Ancillary Justice	Ann Leckie	2013	031624662X	\N	\N
1678	Loving Frank	Nancy Horan	2007	0345494997	\N	\N
1679	Playing For Pizza	John Grisham	2007	0385525001	\N	\N
1680	The Undead Pool	Kim Harrison	2014	0061957933	\N	\N
1681	Jemima J	Jane Green	2001	0767905180	\N	\N
1682	Damaged	H.M. Ward	2013	061579615X	\N	\N
1683	Rabbit Is Rich	John Updike	1981	0140249435	\N	\N
1684	The Midwife's Apprentice	Karen Cushman	1995	006440630X	\N	\N
1685	The Weight of Silence	Heather Gudenkauf	2008	077832740X	\N	\N
1686	The Renegades of Pern	Anne McCaffrey	1989	0345419391	\N	\N
1687	The Last Man	Vince Flynn	2012	141659521X	\N	\N
1688	Underground Airlines	Ben H. Winters	2016	0316261246	\N	\N
1689	The Target	David Baldacci	2014	1455521205	\N	\N
1690	Ella Enchanted	Gail Carson Levine	1997	0590920685	\N	\N
1691	Look Again	Lisa Scottoline	2009	0312380720	\N	\N
1692	Fifty Shades Freed	E.L. James	2012	0345803507	\N	\N
1693	Festive in Death	J.D. Robb	2014	0399164448	\N	\N
1694	Perfect	Natasha Friend	2004	1571316515	\N	\N
1695	Tris's Book	Tamora Pierce	1998	0590554093	\N	\N
1696	A Farewell to Arms	Ernest Hemingway	1929	0099910101	\N	\N
1697	The Bad Place	Dean Koontz	1989	0425195481	\N	\N
1698	Wicked Ties	Shayla Black	2007	0425213617	\N	\N
1699	Ptolemy's Gate	Jonathan Stroud	2006	0786818611	\N	\N
1700	Seriously...I'm Kidding	Ellen DeGeneres	2011	0446585025	\N	\N
1701	Dare You To	Katie McGarry	2013	0373210639	\N	\N
1702	Into the Wild	Jon Krakauer	1996	0385486804	\N	\N
1703	Swamplandia!	Karen Russell	2011	0307263991	\N	\N
1704	Beautiful Redemption	Jamie McGuire	2015	1502541858	\N	\N
1705	The Book of Speculation	Erika Swyler	2015	125005480X	\N	\N
1706	The Secret Place	Tana French	2014	0670026328	\N	\N
1707	One With You	Sylvia Day	2016	1250109302	\N	\N
1708	Destroy Me	Tahereh Mafi	2012	0062208195	\N	\N
1709	The Scorch Trials	James Dashner	2010	0385738757	\N	\N
1710	Transfer of Power	Vince Flynn	1999	1416516352	\N	\N
1711	Entwined	Heather Dixon	2011	0062001035	\N	\N
1712	Last Chance Saloon	Marian Keyes	1999	0060086246	\N	\N
1713	The Power of Six	Pittacus Lore	2011	0061974552	\N	\N
1714	Avalon High	Meg Cabot	2005	0060755865	\N	\N
1715	Death at La Fenice	Donna Leon	1992	006074068X	\N	\N
1716	The Cardinal of the Kremlin	Tom Clancy	1988	0425116840	\N	\N
1717	Scarecrow	Matthew Reilly	2003	0312937660	\N	\N
1718	Soul Music	Terry Pratchett	1994	057506689X	\N	\N
1719	Enduring Love	Ian McEwan	1997	0099481243	\N	\N
1720	Where the Heart Is	Billie Letts	1995	0446672211	\N	\N
1721	Mile 81	Stephen King	2011	1451665601	\N	\N
1722	The Last Runaway	Tracy Chevalier	2013	0525952993	\N	\N
1723	Sold	Patricia McCormick	2006	0786851716	\N	\N
1724	The Mummy	Anne Rice	1989	009947137X	\N	\N
1725	Summer of Night	Dan Simmons	1991	0446362662	\N	\N
1726	Bastard Out of Carolina	Dorothy Allison	1992	0452287057	\N	\N
1727	Love wins	Rob Bell	2011	006204964X	\N	\N
1728	The Black Circle	Patrick Carman	2009	0545060451	\N	\N
1729	Incendiary	Chris Cleave	2005	1400096685	\N	\N
1730	Long Lost	Harlan Coben	2009	0525951059	\N	\N
1731	Mister Monday	Garth Nix	2003	0439856264	\N	\N
1732	My Cousin Rachel	Daphne du Maurier	1951	0316252964	\N	\N
1733	Stormy, Misty's Foal	Marguerite Henry	1963	1416927883	\N	\N
1734	Crash Into You	Katie McGarry	2013	037321099X	\N	\N
1735	A Single Shard	Linda Sue Park	2001	0440418518	\N	\N
1736	Afterburn	Sylvia Day	2013	1459245954	\N	\N
1737	The Jefferson Key	Steve Berry	2011	0345505514	\N	\N
1738	Blood of Dragons	Robin Hobb	2013	0062116851	\N	\N
1739	My Life Next Door 	Huntley Fitzpatrick	2012	0803736991	\N	\N
1740	Hostage to Pleasure	Nalini Singh	2008	0425223256	\N	\N
1741	The Temporal Void	Peter F. Hamilton	2008	1405088834	\N	\N
1742	The Crow Road	Iain Banks	1992	0349103232	\N	\N
1743	The Subterraneans	Jack Kerouac	1958	0802131867	\N	\N
1744	Peony in Love	Lisa See	2007	140006466X	\N	\N
1745	The Face Of Deception	Iris Johansen	1998	0340739304	\N	\N
1746	Eye of the Storm	Jack Higgins	1992	0425138232	\N	\N
1747	Chesapeake	James A. Michener	1978	0812970438	\N	\N
1748	Tales from Earthsea	Ursula K. Le Guin	2001	0441011241	\N	\N
1749	Darkness, Take My Hand	Dennis Lehane	1996	055350584X	\N	\N
1750	Murder at the Vicarage	Agatha Christie	1930	1579126251	\N	\N
1751	Maskerade	Terry Pratchett	1995	0575058080	\N	\N
1752	Ascend	Amanda Hocking	2012	1250006333	\N	\N
1753	Tourist Season	Carl Hiaasen	1986	0446695718	\N	\N
1754	The Diamond of Darkhold	Jeanne DuPrau	2008	0375955712	\N	\N
1755	A Court of Wings and Ruin	Sarah J. Maas	2017	1408857901	\N	\N
1756	This Is Where It Ends	Marieke Nijkamp	2016	149262246X	\N	\N
1757	Almost Heaven	Judith McNaught	1989	0671011332	\N	\N
1758	Dawn on a Distant Shore	Sara Donati	2000	0553578553	\N	\N
1759	The Dice Man	Luke Rhinehart	1971	0006513905	\N	\N
1760	Conspiracy in Death	J.D. Robb	1999	0749934174	\N	\N
1761	Peter Pan	J.M. Barrie, Michael Hague	1904	0805072454	\N	\N
1762	Reflected in You	Sylvia Day	2012	0425263916	\N	\N
1763	The Innocent	Harlan Coben	2005	045121577X	\N	\N
1764	Dark Star Safari 	Paul Theroux	2002	0618446877	\N	\N
1765	Cold Fire	Dean Koontz	1991	0425199584	\N	\N
1766	The Martian Chronicles	Ray Bradbury	1950	0553278223	\N	\N
1767	Anyone But You 	Jennifer Crusie	1996	037377138X	\N	\N
1768	The Maze Runner	James Dashner	2009	0385737947	\N	\N
1769	White Oleander	Janet Fitch	1999	0316182540	\N	\N
1770	Dark Days	Derek Landy	2010	0007325940	\N	\N
1771	Star Island	Carl Hiaasen	2010	0307272583	\N	\N
1772	Wings 	Aprilynne Pike	2009	0061668036	\N	\N
1773	The ABC Murders	Agatha Christie	1936	1579126243	\N	\N
1774	Green	Ted Dekker	2009	1595542884	\N	\N
1775	The Lions of Al-Rassan	Guy Gavriel Kay	1995	0060733497	\N	\N
1776	S.	J.J. Abrams, Doug Dorst	2013	0316201642	\N	\N
1777	The Buddha in the Attic	Julie Otsuka	2011	0307700003	\N	\N
1778	The Bonehunters	Steven Erikson	2006	0553813153	\N	\N
1779	Suffer the Children	John Saul	1977	044018293X	\N	\N
1780	Summer and the City	Candace Bushnell	2011	0061728934	\N	\N
1781	Sugar and Spice	Lauren Conrad	2010	0061767603	\N	\N
1782	Shopgirl: A Novella	Steve Martin	2000	0786891076	\N	\N
1783	Thoughtless	S.C. Stephens	2009	146109111X	\N	\N
1784	Grave Witch	Kalayna Price	2010	0451463803	\N	\N
1785	Ancillary Sword	Ann Leckie	2014	0316246654	\N	\N
1786	The Goldfinch	Donna Tartt	2013	0316055433	\N	\N
1787	Certain Prey	John Sandford	1999	0743484193	\N	\N
1788	Don't You Cry	Mary Kubica	2016	0778319059	\N	\N
1789	Wielding a Red Sword	Piers Anthony	1986	0345322215	\N	\N
1790	The Hundred Secret Senses	Amy Tan	1995	080411109X	\N	\N
1791	Once Upon a Marigold	Jean Ferris	2002	0152050841	\N	\N
1792	Drowning Ruth	Christina Schwarz	2000	0345439104	\N	\N
1793	Bayou Moon	Ilona Andrews	2010	0441019455	\N	\N
1794	The Stranger Beside Me	Ann Rule	1980	0451203267	\N	\N
1795	Dead Until Dark	Charlaine Harris	2001	0441008534	\N	\N
1796	Goldfinger	Ian Fleming	1959	0142002046	\N	\N
1797	Thirteen Moons	Charles Frazier	2006	0375509321	\N	\N
1798	Just One Day	Gayle Forman	2013	0142422959	\N	\N
1799	Cocktails for Three	Madeleine Wickham	2000	0312349998	\N	\N
1801	For One More Day	Mitch Albom	2006	1401303277	\N	\N
1802	Roots	Alex Haley	1976	0440174643	\N	\N
1803	On Basilisk Station 	David Weber	1992	1416509372	\N	\N
1804	Mort	Terry Pratchett	1987	0061020680	\N	\N
1805	An Officer and a Spy	Robert   Harris	2013	0385349580	\N	\N
1806	The Ghost Road	Pat Barker	1995	0452276721	\N	\N
1807	Once	Morris Gleitzman	2005	014132063X	\N	\N
1808	Fingersmith	Sarah Waters	2002	1573229725	\N	\N
1809	Inkheart	Cornelia Funke	1990	1905294964	\N	\N
1810	Indemnity Only	Sara Paretsky	1982	0440210690	\N	\N
1811	The Path of Daggers	Robert Jordan	1998	0812550293	\N	\N
1812	The Death of Bees	Lisa O'Donnell	2012	0062209841	\N	\N
1813	Ruin and Rising	Leigh Bardugo	2014	080509461X	\N	\N
1814	Dr. No	Ian Fleming	1958	0142002038	\N	\N
1815	Consequences	Aleatha Romig	2011	1465341889	\N	\N
1816	Winter Garden	Kristin Hannah	2009	0312364121	\N	\N
1817	Vanish	Tess Gerritsen	2006	0345476980	\N	\N
1818	Prince of the Blood	Raymond E. Feist	1989	0553588117	\N	\N
1819	Blueberries for Sal	Robert McCloskey	1948	0670175919	\N	\N
1820	Nothing to Lose	Lee Child	2008	0385340567	\N	\N
1821	Me Before You	Jojo Moyes	2012	0670026603	\N	\N
1822	Just for You	Mercer Mayer	1975	030711838X	\N	\N
1823	Ghost Story	Peter Straub	1979	0671685635	\N	\N
1824	All Over But the Shoutin'	Rick Bragg	1997	0679774025	\N	\N
1825	Love That Dog	Sharon Creech	2001	0064409597	\N	\N
1826	The Jewel	Amy Ewing	2014	0062235796	\N	\N
1827	The Historian	Elizabeth Kostova	2005	0751537284	\N	\N
1828	The Dead-Tossed Waves 	Carrie Ryan	2010	0385736843	\N	\N
1829	The Amateur Marriage	Anne Tyler	2004	0345472454	\N	\N
1830	Garden of Shadows	V.C. Andrews	1987	067172942X	\N	\N
1831	Ape House	Sara Gruen	2010	0385664443	\N	\N
1832	The Abstinence Teacher	Tom Perrotta	2007	0307356361	\N	\N
1833	The Light in the Ruins	Chris Bohjalian	2013	0385534817	\N	\N
1834	The Darkest Surrender	Gena Showalter	2011	0373775814	\N	\N
1835	Needful Things	Stephen King	1991	045057458X	\N	\N
1836	The Last Picture Show	Larry McMurtry	1966	0752837214	\N	\N
1837	Glengarry Glen Ross	David Mamet	1983	0802130917	\N	\N
1838	The English Girl	Daniel Silva	2013	0062073168	\N	\N
1839	The Lake House	James Patterson	2003	0446696587	\N	\N
1840	Every Dead Thing	John Connolly	1999	067102731X	\N	\N
1841	The Descendants	Kaui Hart Hemmings	2007	1400066336	\N	\N
1842	Swimmy 	Leo Lionni	1963	0394826205	\N	\N
1843	Rules Of Prey	John Sandford	1989	0425205819	\N	\N
1844	The Lies of Locke Lamora	Scott Lynch	2006	0553804677	\N	\N
1845	Dreams of a Dark Warrior	Kresley Cole	2011	1439136807	\N	\N
1846	The Lion & the Mouse	Jerry Pinkney	2009	0316013560	\N	\N
1847	Wide Sargasso Sea	Jean Rhys	1966	0140274219	\N	\N
1848	The Children of Men	P.D. James	1992	0307279901	\N	\N
1849	The Rose Society	Marie Lu	2015	0399167846	\N	\N
1850	Five Go Adventuring Again	Enid Blyton	1943	0340796154	\N	\N
1851	Out of the Silent Planet	C.S. Lewis	1938	0007157150	\N	\N
1852	The Naked God 	Peter F. Hamilton	1999	0333725034	\N	\N
1853	The Gift	Danielle Steel	1986	0440221315	\N	\N
1854	JPod	Douglas Coupland	2006	1596911050	\N	\N
1855	Twilight	Stephenie Meyer	2005	0316015849	\N	\N
1856	Lenobia's Vow	P.C. Cast, Kristin Cast	2012	1250000246	\N	\N
1857	Ice Cold	Tess Gerritsen	2010	034551548X	\N	\N
1858	Agent to the stars	John Scalzi	2004	1596060204	\N	\N
1859	Blackmoore	Julianne Donaldson	2013	1609074602	\N	\N
1860	Paths of Glory	Jeffrey Archer	2009	0312539517	\N	\N
1861	Shutter Island	Dennis Lehane	2003	038073186X	\N	\N
1862	The Valley of Horses	Jean M. Auel	1982	0553381660	\N	\N
1863	The Third Option	Vince Flynn	2000	0743499697	\N	\N
1864	Messenger of Truth	Jacqueline Winspear	2006	0805078983	\N	\N
1865	The Third Victim	Lisa Gardner	2001	0553578685	\N	\N
1866	Illusions	Aprilynne Pike	2011	0061668095	\N	\N
1867	The Lost World	Michael Crichton	1995	0752224417	\N	\N
1868	Never Fade	Alexandra Bracken	2013	1423157516	\N	\N
1869	Bad Moon Rising	Sherrilyn Kenyon	2009	0749909226	\N	\N
1870	Stay Hungry Stay Foolish	Rashmi Bansal	2008	9381626715	\N	\N
1871	The Other Woman	Jane Green	2004	0452287146	\N	\N
1872	Eclipse	Stephenie Meyer	2007	0316160202	\N	\N
1873	The Last Werewolf	Glen Duncan	2011	1847679447	\N	\N
1874	The Luxe	Anna Godbersen	2007	0061345660	\N	\N
1875	Out to Canaan (Mitford)	Jan Karon	1997	0143035061	\N	\N
1876	When He was Wicked	Julia Quinn	2004	0060531231	\N	\N
1877	Shattered	Kevin Hearne	2014	0345548485	\N	\N
1878	Vampire Kisses	Ellen Schreiber	2003	0060093366	\N	\N
1879	Pushing Ice	Alastair Reynolds	2005	0441014011	\N	\N
1880	The Collectors	David Baldacci	2006	044653109X	\N	\N
1881	Secrets to the Grave	Tami Hoag	2010	052595192X	\N	\N
1882	Shadowland	Meg Cabot	2000	0060725117	\N	\N
1883	Remarkable Creatures	Tracy Chevalier	2009	0007178379	\N	\N
1884	Etiquette & Espionage	Gail Carriger	2013	031619008X	\N	\N
1885	Nine Princes in Amber	Roger Zelazny	1970	0380014300	\N	\N
1886	Reaper's Gale	Steven Erikson	2007	0593046315	\N	\N
1887	The Road to Character	David  Brooks	2015	081299325X	\N	\N
1888	Guilty Pleasures	Laurell K. Hamilton	1993	0425197549	\N	\N
1889	Things Fall Apart	Chinua Achebe	1958	0385474547	\N	\N
1890	Hot Six	Janet Evanovich	2000	0312976275	\N	\N
1891	Someone Like You	Sarah Dessen	1998	0142401773	\N	\N
1892	The Black Echo	Michael Connelly	1992	0446612731	\N	\N
1893	Such a Pretty Girl	Laura Wiess	2007	1416521836	\N	\N
1894	Purity in Death	J.D. Robb	2002	0749934417	\N	\N
1895	The Tea Rose	Jennifer Donnelly	2002	0007208006	\N	\N
1896	Heretic	Bernard Cornwell	2003	006053284X	\N	\N
1897	Living Dead in Dallas	Charlaine Harris	2002	1841493007	\N	\N
1898	The Heroes	Joe Abercrombie	2011	0316123358	\N	\N
1899	Naked	David Sedaris	1997	0316777730	\N	\N
1900	El Deafo	Cece Bell, David Lasky	2014	1419710206	\N	\N
1901	Crystal Singer	Anne McCaffrey	1982	0345327861	\N	\N
1902	Dog on It	Spencer Quinn	2008	1416585834	\N	\N
1903	Twelfth Grade Kills	Heather Brewer	2010	0525422242	\N	\N
1904	The Forgetting Time	Sharon Guskin	2016	1250076420	\N	\N
1905	Till We Have Faces	C.S. Lewis	1956	0156904365	\N	\N
1906	The Legend of Luke	Brian Jacques	1999	0142501093	\N	\N
1907	H is for Hawk	Helen Macdonald	2015	0224097008	\N	\N
1908	The Algebraist	Iain M. Banks	2004	1597800449	\N	\N
1909	Princess on the Brink	Meg Cabot	2006	0060724560	\N	\N
1910	When It Happens	Susane Colasanti	2006	0670060291	\N	\N
1911	Under the Volcano	Malcolm Lowry	1947	0060955228	\N	\N
1912	King & Maxwell	David Baldacci	2013	1455521310	\N	\N
1913	The Prophet	Kahlil Gibran	1923	000100039X	\N	\N
1914	Boomerang	Tatiana de Rosnay	2009	0312593317	\N	\N
1915	The Siege of Macindaw	John Flanagan	2006	174166134X	\N	\N
1916	We Were the Mulvaneys	Joyce Carol Oates	1996	0452282829	\N	\N
1917	Finally	Wendy Mass	2010	0545052424	\N	\N
1918	Dark Gold (Dark #3)	Christine Feehan	2000	0843958448	\N	\N
1919	This Lullaby	Sarah Dessen	2002	0142501557	\N	\N
1920	Rules of Attraction	Simone Elkeles	2010	0802720854	\N	\N
1921	The Bourne Ultimatum	Robert Ludlum	1990	0752858491	\N	\N
1922	The Nanny	Melissa Nathan	2003	0060560118	\N	\N
1923	The Demon King	Cinda Williams Chima	2009	1423118235	\N	\N
1924	Merrick	Anne Rice	2000	0345422406	\N	\N
1925	Midnight Crossroad	Charlaine Harris	2014	0425263150	\N	\N
1926	The Maze of Bones 	Rick Riordan	2008	0545060397	\N	\N
1927	The Obsession	Nora Roberts	2016	0399175164	\N	\N
1928	The Post-Birthday World 	Lionel Shriver	2007	0061187844	\N	\N
1929	QB VII	Leon Uris	1970	055327094X	\N	\N
1930	Silence 	Becca Fitzpatrick	2011	1442426640	\N	\N
1931	Say You're One of Them	Uwem Akpan	2008	0316113786	\N	\N
1932	The Sparrow	Mary Doria Russell	1996	0449912558	\N	\N
1933	The Dark Divine	Bree Despain	2009	1606840576	\N	\N
1934	RoomHate	Penelope Ward	2016	1523662441	\N	\N
1935	Takedown Twenty	Janet Evanovich	2013	0345542886	\N	\N
1936	The Alibi	Sandra Brown	1999	0446618675	\N	\N
1937	From Head to Toe	Eric Carle	1997	0061119725	\N	\N
1938	Until I Die	Amy Plum	2012	0062004042	\N	\N
1939	Unseen Academicals	Terry Pratchett	2009	0061161705	\N	\N
1940	The First World War	John Keegan	1998	0375700455	\N	\N
1941	Savannah Breeze	Mary Kay Andrews	2006	0060564679	\N	\N
1942	A Bad Case of Stripes	David Shannon	1998	0439598389	\N	\N
1943	Catering to Nobody	Diane Mott Davidson	1990	0553584707	\N	\N
1944	City of Stairs	Robert Jackson Bennett	2014	080413717X	\N	\N
1945	The Big Four	Agatha Christie	1927	0007120818	\N	\N
1946	Disgrace	J.M. Coetzee	1999	0143036378	\N	\N
1947	Night World, No. 1	L.J. Smith	2008	1416974504	\N	\N
1948	The Eye of Minds	James Dashner	2013	0385741391	\N	\N
1949	The Gods of Guilt	Michael Connelly	2013	0316069515	\N	\N
1950	Furies of Calderon 	Jim Butcher	2004	044101268X	\N	\N
1951	Sanctuary	Nora Roberts	1997	0515122734	\N	\N
1952	The Call of the Wild	Jack London	1903	0439227143	\N	\N
1953	Between Sisters	Kristin Hannah	2003	0345450744	\N	\N
1954	The North Water	Ian McGuire	2016	1627795944	\N	\N
1955	From a Buick 8	Stephen King	2002	0743211375	\N	\N
1956	Small Gods	Terry Pratchett	1992	0552152978	\N	\N
1957	The Rosie Effect	Graeme Simsion	2014	1922182109	\N	\N
1958	The Way to Cook	Julia Child	1989	0679747656	\N	\N
1959	The Far Pavilions	M.M. Kaye	1978	031215125X	\N	\N
1960	Silent in the Grave	Deanna Raybourn	2006	0778324109	\N	\N
1961	An Old-Fashioned Girl	Louisa May Alcott	1869	1406501069	\N	\N
1962	All My Puny Sorrows	Miriam Toews	2014	0345808002	\N	\N
1963	The Stepford Wives	Ira Levin	1972	0060080841	\N	\N
1964	The Mermaids Singing 	Val McDermid	1995	0312983603	\N	\N
1965	Tipping the Velvet	Sarah Waters	1998	1573227889	\N	\N
1966	Grave Secrets	Kathy Reichs	2002	0684859734	\N	\N
1967	Player Piano	Kurt Vonnegut Jr.	1952	0385333781	\N	\N
1968	Chasing The Night	Iris Johansen	2010	0312651198	\N	\N
1969	Please Ignore Vera Dietz	A.S. King	2010	0375865861	\N	\N
1970	Le Mur	Jean-Paul Sartre	1939	184391400X	\N	\N
1971	The Wise Man's Fear	Patrick Rothfuss	2011	0756404738	\N	\N
1972	The Winter King	Bernard Cornwell	1995	0312156960	\N	\N
1973	Variant	Robison Wells	2011	0062026089	\N	\N
1974	The Abolition of Man	C.S. Lewis	1943	0060652942	\N	\N
1975	Cathedral	Raymond Carver	1983	0679723692	\N	\N
1976	Ghostwritten	David Mitchell	1999	0375724508	\N	\N
1977	Finger Lickin' Fifteen	Janet Evanovich	2009	0312383282	\N	\N
1978	Cat's Eye	Margaret Atwood	1988	0385491026	\N	\N
1979	Out of My Mind	Sharon M. Draper	2010	141697170X	\N	\N
1980	You Belong to Me	Mary Higgins Clark	1998	0671004549	\N	\N
1981	The Husband	Dean Koontz	2006	0553804790	\N	\N
1982	The Thin Man	Dashiell Hammett	1934	0679722637	\N	\N
1983	August: Osage County	Tracy Letts	2008	1559363304	\N	\N
1984	Just the Sexiest Man Alive	Julie James	2008	0425224201	\N	\N
1985	Boy Meets Boy	David Levithan	2003	0375832998	\N	\N
1986	The Railway Children	E. Nesbit	1906	0486410226	\N	\N
1987	Shadow & Claw	Gene Wolfe	1994	0312890176	\N	\N
1988	Mona Lisa Overdrive	William Gibson	1988	0553281747	\N	\N
1989	Turn of Mind	Alice LaPlante	2011	0385669852	\N	\N
1990	The Untethered Soul	Michael A. Singer	2007	1572245379	\N	\N
1991	Clear and Present Danger	Tom Clancy	1989	0425144372	\N	\N
1992	Choke	Chuck Palahniuk	2001	0385720920	\N	\N
1993	Q & A: Slumdog Millionaire	Vikas Swarup	2005	0739467042	\N	\N
1994	Jazz	Toni Morrison	1992	0452269652	\N	\N
1995	Heart of the Matter	Emily Giffin	2010	0312554168	\N	\N
1996	Running with the Demon	Terry Brooks	1997	0345379624	\N	\N
1997	Dark Witch	Nora Roberts	2013	0425259854	\N	\N
1998	The Winter's Tale	William Shakespeare	1600	0521293731	\N	\N
1999	Certain Girls	Jennifer Weiner	2000	0743294254	\N	\N
2000	Flotsam	David Wiesner	2006	0618194576	\N	\N
2001	Moo, Baa, La La La!	Sandra Boynton	1982	0689861133	\N	\N
2002	The Cobra Event	Richard   Preston	1997	0679457143	\N	\N
2003	Inversions	Iain M. Banks	1998	074341196X	\N	\N
2004	Unearthly	Cynthia Hand	2011	0061996165	\N	\N
2005	I Can Read with My Eyes Shut!	Dr. Seuss	1978	0007158513	\N	\N
2006	Lucky Man	Michael J. Fox	2002	0091879205	\N	\N
2007	The Darkest Whisper	Gena Showalter	2009	0373773927	\N	\N
2008	The Shepherd's Crown	Terry Pratchett	2015	0062429973	\N	\N
2009	No Logo	Naomi Klein	1999	0312421435	\N	\N
2010	Smoke Screen	Sandra Brown	2008	1416563067	\N	\N
2011	More Tales of the City	Armistead Maupin	1980	055299877X	\N	\N
2012	The Omen	David Seltzer	1976	0451219422	\N	\N
2013	The Best Laid Plans	Sidney Sheldon	1997	0446604089	\N	\N
2014	Awakened	P.C. Cast, Kristin Cast	2011	0312650248	\N	\N
2015	Black Hills	Nora Roberts	2009	0399155813	\N	\N
2016	The Foundation Trilogy	Isaac Asimov	1953	0380508567	\N	\N
2017	Heartstone	C.J. Sansom	2010	0230711251	\N	\N
2018	Feverborn	Karen Marie Moning	2016	0385344422	\N	\N
2019	Evermore	Alyson Noel	2009	031253275X	\N	\N
2020	The Crying of Lot 49	Thomas Pynchon	1966	006091307X	\N	\N
2021	The Ruby Knight	David Eddings	1990	0345373529	\N	\N
2022	The Healer	Dee Henderson	2002	1414310609	\N	\N
2023	Naked in Death	J.D. Robb	1995	0399151575	\N	\N
2024	The Next Accident	Lisa Gardner	2001	0752848267	\N	\N
2025	Every Soul A Star	Wendy Mass	2008	0316002569	\N	\N
2026	The Sugar Queen	Sarah Addison Allen	2008	0553805495	\N	\N
2027	Flesh and Blood	Patricia Cornwell	2014	0062325345	\N	\N
2028	Faith	Jennifer Haigh	2011	0060755806	\N	\N
2029	TransAtlantic	Colum McCann	2013	1400069599	\N	\N
2030	The Forgotten	David Baldacci	2012	0446573051	\N	\N
2031	A Grief Observed	C.S. Lewis	1942	0060652896	\N	\N
2032	Hope Was Here	Joan Bauer	2000	0142404241	\N	\N
2033	Dead Witch Walking	Kim Harrison	2004	0060572965	\N	\N
2034	The Shipping News	Annie Proulx	1993	0743225422	\N	\N
2035	West with the Night	Beryl Markham	1942	0865471185	\N	\N
2036	Brilliance of the Moon 	Lian Hearn	2003	1594480869	\N	\N
2037	Hidden Order	Brad Thor	2013	1476717095	\N	\N
2038	Kon-Tiki Ekspedisjonen	Thor Heyerdahl	1948	0671726528	\N	\N
2039	The Gun Seller	Hugh Laurie	1996	067102082X	\N	\N
2040	A Dangerous Fortune	Ken Follett	1993	0440217490	\N	\N
2041	Glass (Crank, #2)	Ellen Hopkins	2007	1416940901	\N	\N
2042	Twisted	Sara Shepard	2011	0062081012	\N	\N
2043	The Good Father	Diane Chamberlain	2012	0778313468	\N	\N
2044	Little Mercies	Heather Gudenkauf	2014	0778316335	\N	\N
2045	Dubliners	James Joyce, Jeri Johnson	1914	0192839993	\N	\N
2046	Dark Magic	Christine Feehan	2000	0505523892	\N	\N
2047	A Town Like Alice	Nevil Shute	1950	1842323008	\N	\N
2048	The False Prince	Jennifer A. Nielsen	2012	0545284139	\N	\N
2049	Chill Factor	Sandra Brown	2005	0743466772	\N	\N
2050	Porno	Irvine Welsh	2005	8433972618	\N	\N
2051	Scarpetta	Patricia Cornwell	2008	0399155163	\N	\N
2052	Lord Foul's Bane	Stephen R. Donaldson	1977	0345348656	\N	\N
2053	Iceberg	Clive Cussler	1974	0425197387	\N	\N
2054	Here be Dragons	Sharon Kay Penman	1985	0345382846	\N	\N
2055	The Faceless Ones	Derek Landy	2008	0007302142	\N	\N
2056	The Narrows	Michael Connelly	2004	0446699543	\N	\N
2057	Nine Dragons	Michael Connelly	2009	0316166316	\N	\N
2058	Mother Night	Kurt Vonnegut Jr.	1961	0385334141	\N	\N
2059	Rock Hard	Olivia Cunning	2011	1402245793	\N	\N
2060	The Teeth of the Tiger	Tom Clancy	2003	0141004924	\N	\N
2061	Crewel	Gennifer Albin	2012	0374316414	\N	\N
2062	The Famished Road	Ben Okri	1991	0385425139	\N	\N
2063	Trace	Patricia Cornwell	2004	0425204200	\N	\N
2064	The Collector	John Fowles	1963	0099470470	\N	\N
2065	Shadow's Edge	Brent Weeks	2008	0316033650	\N	\N
2066	The Sentry	Robert Crais	2011	0399157077	\N	\N
2067	Family Pictures	Jane Green	2013	0312591837	\N	\N
2068	Plenty	Yotam Ottolenghi	2010	0091933684	\N	\N
2069	The Shock of the Fall	Nathan Filer	2013	0007491433	\N	\N
2070	Dream Man	Linda Howard	1994	0671019759	\N	\N
2071	The Daughter of Time	Josephine Tey	1951	0684803860	\N	\N
2072	Going Postal	Terry Pratchett	2004	0060502932	\N	\N
2073	This is Not My Hat	Jon Klassen	2012	0763655996	\N	\N
2074	Too Good To Be True	Kristan Higgins	2009	0373773552	\N	\N
2075	Lock and Key	Sarah Dessen	2008	067001088X	\N	\N
2076	The Shadow Rising 	Robert Jordan	1992	0812513738	\N	\N
2077	Six Years	Harlan Coben	2013	0525953485	\N	\N
2078	Winter's Tale	Mark Helprin	1983	0156031191	\N	\N
2079	Colonel Roosevelt	Edmund Morris	2010	0375504877	\N	\N
2080	Inside Out	Maria V. Snyder	2010	037321006X	\N	\N
2081	Pride and Prejudice	Jane Austen	1813	0679783261	\N	\N
2082	Crazy Rich Asians	Kevin Kwan	2013	0385536976	\N	\N
2083	A Feast for Crows	George R.R. Martin	2005	055358202X	\N	\N
2084	Burn For Me	Ilona Andrews	2014	0062289241	\N	\N
2085	Single White Vampire	Lynsay Sands	2003	0505525526	\N	\N
2086	A Prayer for Owen Meany	John Irving	1989	0552135399	\N	\N
2087	The Problem of Pain	C.S. Lewis	1940	0006280935	\N	\N
2088	On the Road	Jack Kerouac	1955	0140042598	\N	\N
2089	The Widow of the South	Robert Hicks	2005	0446697435	\N	\N
2090	Schooled	Gordon Korman	2000	0786856920	\N	\N
2091	Sense & Sensibility	Joanna Trollope	2013	0062200461	\N	\N
2092	Soumission 	Michel Houellebecq	2015	2081354802	\N	\N
2093	One Thousand Gifts	Ann Voskamp	2011	0310321913	\N	\N
2094	Go, Dog. Go!	P.D. Eastman	1961	0394800206	\N	\N
2095	The Road to Serfdom	Friedrich A. Hayek	1944	0226320618	\N	\N
2096	The Stone Diaries	Carol Shields	1993	014023313X	\N	\N
2097	Manual do guerreiro da luz	Paulo Coelho	1997	0060527986	\N	\N
2098	Body of Evidence 	Patricia Cornwell	1991	0743493915	\N	\N
2099	Vinegar Girl	Anne Tyler	2016	0804141266	\N	\N
2100	King of Thorns	Mark  Lawrence	2012	1937007472	\N	\N
2101	Star Wars: Darth Plagueis	James Luceno	2012	034551128X	\N	\N
2102	Ethan Frome	Edith Wharton	1911	0142437808	\N	\N
2103	Turbo Twenty-Three	Janet Evanovich	2016	0345543009	\N	\N
2104	City of Heavenly Fire	Cassandra Clare	2014	1481426303	\N	\N
2105	Hardline	Meredith Wild	2014	099050560X	\N	\N
2106	Portrait of a Spy	Daniel Silva	2011	0062072188	\N	\N
2107	Breakfast at Tiffany's	Truman Capote	1958	0679745653	\N	\N
2108	Only the Good Spy Young	Ally Carter	2010	1423128206	\N	\N
2109	Mine Till Midnight	Lisa Kleypas	2007	0312949804	\N	\N
2110	Tortilla Flat	John Steinbeck	1935	0582461502	\N	\N
2111	First King of Shannara	Terry Brooks	1996	1857236556	\N	\N
2112	The Serpent's Shadow	Rick Riordan	2012	1423140575	\N	\N
2113	The Lost Hero	Rick Riordan	2010	142311339X	\N	\N
2114	When the Lion Feeds	Wilbur Smith	1964	0312940661	\N	\N
2115	Brilliance	Marcus Sakey	2013	1611099692	\N	\N
2116	Rabbit Redux	John Updike	1971	0449911934	\N	\N
2117	Enchanters' End Game	David Eddings	1984	0345300785	\N	\N
2118	Live by Night	Dennis Lehane	2012	0060004878	\N	\N
2119	Paper Towns	John Green	2008	014241493X	\N	\N
2120	Pleasure of a Dark Prince 	Kresley Cole	2010	1416580956	\N	\N
2121	To Build a Fire	Jack London	1903	0968709184	\N	\N
2122	Red Queen	Victoria Aveyard	2015	1409151174	\N	\N
2123	Snow Like Ashes	Sara Raasch	2014	0062286927	\N	\N
2124	The Last Don	Mario Puzo	1996	0345412214	\N	\N
2125	A Hundred Summers	Beatriz Williams	2013	039916216X	\N	\N
2126	The Bone Collector	Jeffery Deaver	1997	0451188454	\N	\N
2127	The Broken Kingdoms	N.K. Jemisin	2010	0316043966	\N	\N
2128	The Heretic's Daughter	Kathleen Kent	2008	0316037532	\N	\N
2129	Storia della bruttezza	Umberto Eco	2007	0847829863	\N	\N
2130	Damaged	Cathy Glass	2007	0007236344	\N	\N
2131	Night Chills	Dean Koontz	1976	0425098648	\N	\N
2132	Winter Street	Elin Hilderbrand	2014	0316376116	\N	\N
2133	Await Your Reply	Dan Chaon	2009	0345476026	\N	\N
2134	The Persian Pickle Club	Sandra Dallas	1995	0312147015	\N	\N
2135	The Thousand Names	Django Wexler	2013	0451465105	\N	\N
2136	My Soul to Save	Rachel Vincent	2009	0373210043	\N	\N
2137	Saving Grace	Julie Garwood	1993	0671870114	\N	\N
2138	A Knight in Shining Armor	Jude Deveraux	1989	0743457269	\N	\N
2139	The Given Day	Dennis Lehane	2008	0688163181	\N	\N
2140	If You Could See Me Now	Cecelia Ahern	2005	140130866X	\N	\N
2141	Heir to the Shadows	Anne Bishop	1999	0451456726	\N	\N
2142	inf	Sherrilyn Kenyon	2010	0312599072	\N	\N
2143	Leaving Paradise	Simone Elkeles	2007	0738710180	\N	\N
2144	Touch of Power	Maria V. Snyder	2011	0778313077	\N	\N
2145	Personal	Lee Child	2014	0804178747	\N	\N
2146	Enemy of God	Bernard Cornwell	1996	0312187149	\N	\N
2147	Affinity	Sarah Waters	1999	1573228737	\N	\N
2148	A God in Ruins	Kate Atkinson	2015	0316176532	\N	\N
2149	The Mermaid Chair	Sue Monk Kidd	2004	0143036696	\N	\N
2150	Sister	Rosamund Lupton	2010	0749942010	\N	\N
2151	Covet	J.R. Ward	2009	0451228219	\N	\N
2152	The Last Days of Dogtown	Anita Diamant	2005	0743225740	\N	\N
2153	Arcadia	Lauren Groff	2012	1401340873	\N	\N
2154	Lunar Park	Bret Easton Ellis	2005	0375727272	\N	\N
2155	Sovereign 	C.J. Sansom	2006	0670038318	\N	\N
2156	The Red Tent	Anita Diamant	1997	0312353766	\N	\N
2157	Crocodile Tears	Anthony Horowitz	2009	0399250565	\N	\N
2158	Runaway 	Meg Cabot	2010	0545040604	\N	\N
2159	Children of Dune	Frank Herbert	1976	0441104029	\N	\N
2160	The Girl in the Red Coat	Kate Hamer	2015	0571313248	\N	\N
2161	Can You Keep a Secret?	Sophie Kinsella	2003	0440241901	\N	\N
2162	Ride Steady	Kristen Ashley	2015	145553322X	\N	\N
2163	Twilight	Meg Cabot	2005	0060724692	\N	\N
2164	Stargirl	Jerry Spinelli	2000	0439488400	\N	\N
2165	Revelation	C.J. Sansom	2008	1405092726	\N	\N
2166	The Next Big Thing	Johanna Edwards	2005	0425200280	\N	\N
2167	The Wisdom of Crowds	James Surowiecki	2004	0385721706	\N	\N
2168	Matched	Ally Condie	2010	0525423648	\N	\N
2169	Just Go to Bed	Mercer Mayer	1983	0307119408	\N	\N
2170	A Year in Provence	Peter Mayle	1989	0679731148	\N	\N
2171	Icefire	Chris d'Lacey	2003	0439672465	\N	\N
2172	Significance	Shelly Crane	2011	1481200577	\N	\N
2173	Looking for Alibrandi	Melina Marchetta	1992	0375836942	\N	\N
2174	Playing for Keeps	R.L. Mathewson	2011	0983212546	\N	\N
2175	Possession	A.S. Byatt	1990	0679735909	\N	\N
2176	Moab Is My Washpot	Stephen Fry	1997	1569472025	\N	\N
2177	Body Double	Tess Gerritsen	2004	034545894X	\N	\N
2178	Independence Day	Richard Ford	1995	0099447126	\N	\N
2179	Deception	Jonathan Kellerman	2009	0345505670	\N	\N
2180	Life After Life	Kate Atkinson	2013	0316176486	\N	\N
2181	A King's Ransom	Jude Watson	2011	0545298407	\N	\N
2182	The Devil's Punchbowl	Greg Iles	2009	0743292511	\N	\N
2183	The Law of Nines	Terry Goodkind	2009	0399156046	\N	\N
2184	New Spring	Robert Jordan	2004	1841492612	\N	\N
2185	Circle of Friends	Maeve Binchy	1990	0099498596	\N	\N
2186	Moon Over Soho	Ben Aaronovitch	2011	0345524594	\N	\N
2187	Heat Wave	Richard Castle	2008	1401323820	\N	\N
2188	Friction	Sandra Brown	2015	145558116X	\N	\N
2189	Mary, Mary	James Patterson	2005	0446619035	\N	\N
2190	Carrion Comfort	Dan Simmons	1989	0446359203	\N	\N
2191	The Sea of Monsters	Rick Riordan	2006	0786856866	\N	\N
2192	The Slap	Christos Tsiolkas	2008	1741753597	\N	\N
2193	The Lone Drow	R.A. Salvatore	2003	0786932287	\N	\N
2194	Grendel	John Gardner	1970	0679723110	\N	\N
2195	The Panther	Nelson DeMille	2012	1455518379	\N	\N
2196	Just a Mess (Look-Look)	Mercer Mayer	1987	0307119483	\N	\N
2197	Roses Are Red	James Patterson	2000	0446605484	\N	\N
2198	Crown of Midnight	Sarah J. Maas	2013	1619630621	\N	\N
2199	Testimony	Anita Shreve	2008	0316059862	\N	\N
2200	The Weird Sisters	Eleanor Brown	2011	0399157220	\N	\N
2201	Heart-Shaped Box	Joe Hill	2007	0061147931	\N	\N
2202	Faithful Place	Tana French	2010	0670021873	\N	\N
2203	Christ the Lord: Out of Egypt	Anne Rice	2005	0345436830	\N	\N
2204	Pulp	Charles Bukowski	1994	0876859260	\N	\N
2205	The Submission	Amy Waldman	2011	0374271569	\N	\N
2206	Raven Rise	D.J. MacHale	2008	1416914188	\N	\N
2207	Nesmrtelnost	Milan Kundera	1990	057114456X	\N	\N
2208	Haunted	Meg Cabot	2003	0060751649	\N	\N
2209	Another Brooklyn	Jacqueline Woodson	2016	0062359983	\N	\N
2210	Splendor	Anna Godbersen	2009	0061626317	\N	\N
2211	Point of Origin	Patricia Cornwell	1998	0751530484	\N	\N
2212	The Demolished Man	Alfred Bester	1953	1857988221	\N	\N
2213	Cover Her Face	P.D. James	1962	0743219570	\N	\N
2214	The Druid of Shannara	Terry Brooks	1991	1857233808	\N	\N
2215	Devil in a Blue Dress	Walter Mosley	1990	0743451791	\N	\N
2216	Something About You	Julie James	2010	0425233383	\N	\N
2217	Shalimar the Clown	Salman Rushdie	2005	0679783482	\N	\N
2218	The House Girl	Tara Conklin	2013	0062207393	\N	\N
2219	First Grave on the Right	Darynda Jones	2011	0312662750	\N	\N
2220	Thorn Queen	Richelle Mead	2008	0553819879	\N	\N
2221	Notes from a Big Country	Bill Bryson	1998	076790382X	\N	\N
2222	The Princess Bride	William Goldman	1973	0345418263	\N	\N
2223	At the Water's Edge	Sara Gruen	2015	0385523238	\N	\N
2224	The Wandering Fire	Guy Gavriel Kay	1986	0451458265	\N	\N
2225	The Celestine Prophecy	James Redfield	1993	0446671002	\N	\N
2226	The Eternal Dawn	Christopher Pike	2010	1442413174	\N	\N
2227	For Love of Evil	Piers Anthony	1988	0380752859	\N	\N
2228	Going Solo	Roald Dahl, Quentin Blake	1986	0141311428	\N	\N
2229	They Do it with Mirrors	Agatha Christie	1952	0451199901	\N	\N
2230	Siege and Storm	Leigh Bardugo	2013	0805094601	\N	\N
2231	A Bruxa de Portobello	Paulo Coelho	2006	0007251866	\N	\N
2232	Save the Date	Mary Kay Andrews	2014	1250019699	\N	\N
2233	The horse and his boy	C.S. Lewis	1954	0439861365	\N	\N
2234	The White Tiger	Aravind Adiga	2008	1416562591	\N	\N
2235	The Negotiator	Frederick Forsyth	1989	0553283936	\N	\N
2236	Swan Song	Robert McCammon	1987	0671741039	\N	\N
2237	The Hunt for Red October	Tom Clancy	1984	0425172902	\N	\N
2238	Still Life	Louise Penny	2005	0312948557	\N	\N
2239	Echo Park	Michael Connelly	2006	0316734950	\N	\N
2240	Lover Avenged, part two	J.R. Ward	2011	0451233166	\N	\N
2241	Cold Days	Jim Butcher	2012	0451464400	\N	\N
2242	Me & Emma	Elizabeth Flock	2005	0778322858	\N	\N
2243	A Death In Vienna	Daniel Silva	2003	0141019085	\N	\N
2244	The Glass Magician	Charlie N. Holmberg	2014	1477825940	\N	\N
2245	Waylander 	David Gemmell	1986	0345379071	\N	\N
2246	I've Got Your Number	Sophie Kinsella	2011	0385342063	\N	\N
2247	Queen of Shadows	Sarah J. Maas	2015	1619636042	\N	\N
2248	His Dark Materials	Philip Pullman	2000	0440238609	\N	\N
2249	Forgotten	Cat Patrick	2011	0316094617	\N	\N
2250	The Bone Season	Samantha Shannon	2013	1620401398	\N	\N
2251	The Night is for Hunting	John Marsden	1998	0439858046	\N	\N
2252	The Power of the Dog	Don Winslow	2005	1400096936	\N	\N
2253	The Krishna Key	Ashwin Sanghi	2012	9381626685	\N	\N
2254	Innocent	Scott Turow	2005	0446562424	\N	\N
2255	Keeping Faith	Jodi Picoult	1999	0060878061	\N	\N
2256	The Tombs of Atuan	Ursula K. Le Guin	1970	0689845367	\N	\N
2257	The Wedding Dress	Rachel Hauck	2012	1595549633	\N	\N
2258	Factotum	Charles Bukowski	1975	0876852630	\N	\N
2259	Peeps	Scott Westerfeld	2005	1595140838	\N	\N
2260	Romancing the Duke	Tessa Dare	2014	0062240196	\N	\N
2261	Bed of Roses	Nora Roberts	2009	0425230074	\N	\N
2262	The Good Girl	Mary Kubica	2014	0778316556	\N	\N
2263	The Heart of the Matter	Graham Greene	1948	0099478420	\N	\N
2264	Blessings	Anna Quindlen	2002	0345468694	\N	\N
2265	Lucky Us	Amy Bloom	2014	1400067243	\N	\N
2266	I Am Pilgrim	Terry Hayes	2013	1439177724	\N	\N
2267	V is for Vengeance	Sue Grafton	2011	0399157867	\N	\N
2268	Practice Makes Perfect	Julie James	2009	0425226743	\N	\N
2269	The Silent Sister	Diane Chamberlain	2014	1250010713	\N	\N
2270	HHhH	Laurent Binet	2009	2246760011	\N	\N
2271	The Heart of Betrayal	Mary E. Pearson	2015	0805099247	\N	\N
2272	Dream Team	Jack McCallum	2012	0345520483	\N	\N
2273	The Christmas Box	Richard Paul Evans	1993	0684832356	\N	\N
2274	Bet Me	Jennifer Crusie	2004	0312987854	\N	\N
2275	The Crown	Kiera Cass	2016	0062392174	\N	\N
2276	Changeless	Gail Carriger	2010	0316074144	\N	\N
2277	Dispatches	Michael Herr	1977	0679735259	\N	\N
2278	Skin Trade	Laurell K. Hamilton	2009	0425227723	\N	\N
2279	The Darkest Seduction	Gena Showalter	2012	0373776578	\N	\N
2280	The Grouchy Ladybug	Eric Carle	1977	0064434508	\N	\N
2281	Tinkers	Paul Harding	2008	1934137197	\N	\N
2282	Cold Sassy Tree	Olive Ann Burns	1984	038531258X	\N	\N
2283	Where She Went	Gayle Forman	2011	0525422943	\N	\N
2284	The Darkest Road	Guy Gavriel Kay	1986	0451451805	\N	\N
2285	Dust of Dreams	Steven Erikson	2009	0765316552	\N	\N
2286	The Sociopath Next Door	Martha Stout	2005	0767915828	\N	\N
2287	The Kill Artist	Daniel Silva	2000	0451209338	\N	\N
2288	City of Dragons	Robin Hobb	2011	0061561630	\N	\N
2289	Map of Bones	James Rollins	2005	0060765240	\N	\N
2290	Wish You Well	David Baldacci	2000	0446699489	\N	\N
2291	The Black Dahlia	James Ellroy	1987	0446698873	\N	\N
2292	News of the World	Paulette Jiles	2016	0062409204	\N	\N
2293	Night Star	Alyson Noel	2010	0312590989	\N	\N
2294	The Tale of Peter Rabbit	Beatrix Potter	1901	0723247706	\N	\N
2295	Behind Closed Doors	B.A. Paris	2016	1250121000	\N	\N
2296	Fire and Ice	Erin Hunter	2003	0060525592	\N	\N
2297	The Last Song	Nicholas Sparks	2008	0446547565	\N	\N
2298	Hopeless	Colleen Hoover	2012	1301949825	\N	\N
2299	Elsewhere	Gabrielle Zevin	2005	0312367465	\N	\N
2300	Fire	Kristin Cashore	2009	0803734611	\N	\N
2301	Bumi Manusia	Pramoedya Ananta Toer	1975	9799731232	\N	\N
2302	Exile 	R.A. Salvatore	1990	0786939834	\N	\N
2303	Snuff	Terry Pratchett	2011	038561926X	\N	\N
2304	Dead in the Family	Charlaine Harris	2010	0441018645	\N	\N
2305	The Way of Shadows	Brent Weeks	2008	0316033677	\N	\N
2306	Atlantis Found	Clive Cussler	1999	0425204030	\N	\N
2307	Midwives	Chris Bohjalian	1997	0375706771	\N	\N
2308	Geek Love	Katherine Dunn	1989	0375713344	\N	\N
2309	An Untamed State	Roxane Gay	2014	0802122515	\N	\N
2310	The Guns of Avalon	Roger Zelazny	1972	0380000830	\N	\N
2311	Rising Sun	Michael Crichton	1992	0606298231	\N	\N
2312	Empress of the World	Sara Ryan	2001	0142500593	\N	\N
2313	The Good Lord Bird	James McBride	2013	1594486344	\N	\N
2314	Sharpe's Tiger	Bernard Cornwell	1997	0060932309	\N	\N
2315	Unless	Carol Shields	2002	0007154615	\N	\N
2316	A Handful of Dust	Evelyn Waugh	1934	0316926051	\N	\N
2317	Journal 64	Jussi Adler-Olsen	2010	8756795459	\N	\N
2318	Lila	Marilynne Robinson	2014	0374187614	\N	\N
2319	Altered Carbon	Richard K. Morgan	2002	0345457692	\N	\N
2320	The Eternity Cure	Julie Kagawa	2013	0373210698	\N	\N
2321	I Know This Much Is True 	Wally Lamb	1998	0060987561	\N	\N
2322	Prince of Thorns	Mark  Lawrence	2011	0007423292	\N	\N
2323	Hawaii	James A. Michener	1959	0375760377	\N	\N
2324	Armada	Ernest Cline	2015	0804137250	\N	\N
2325	Wicked Appetite	Janet Evanovich	2009	0312652917	\N	\N
2326	Ozma of Oz	L. Frank Baum	1907	0543895149	\N	\N
2327	Maisie Dobbs	Jacqueline Winspear	2003	0142004332	\N	\N
2328	Catching Fire	Suzanne Collins	2009	0439023491	\N	\N
2329	What My Mother Doesn't Know	Sonya Sones	2001	0689855532	\N	\N
2330	Post Captain	Patrick O'Brian	1972	0006499163	\N	\N
2331	The Road	Cormac McCarthy	2006	0307265439	\N	\N
2332	Six Days of the Condor	James Grady	1974	0393086925	\N	\N
2333	Filth	Irvine Welsh	1998	0393318680	\N	\N
2334	Prodigy	Marie Lu	2013	0399256768	\N	\N
2335	The 4-Hour Body	Timothy Ferriss	2000	030746363X	\N	\N
2336	Arrow's Fall	Mercedes Lackey	1988	0886774004	\N	\N
2337	Sybil	Flora Rheta Schreiber	1973	0446359408	\N	\N
2338	Trojan Odyssey	Clive Cussler	2003	0425199320	\N	\N
2339	Raised by Wolves	Jennifer Lynn Barnes	2010	1606840592	\N	\N
2340	Pet Sematary	Stephen King	1983	1416524347	\N	\N
2341	The Round House	Louise Erdrich	2012	0062065246	\N	\N
2342	Love the One You're With	Emily Giffin	2008	0312348673	\N	\N
2343	The Dragonriders of Pern	Anne McCaffrey	1968	0785729194	\N	\N
2344	The Price of Salt	Patricia Highsmith	1952	0393325997	\N	\N
2345	Deadeye Dick	Kurt Vonnegut Jr.	1982	0385334176	\N	\N
2346	The Promise	Danielle Steel	1977	0751505544	\N	\N
2347	Ticktock	Dean Koontz	1996	0345405137	\N	\N
2348	Clariel: The Lost Abhorsen	Garth Nix	2014	006156155X	\N	\N
2349	Rose Under Fire	Elizabeth Wein	2013	1423183096	\N	\N
2350	On Liberty	John Stuart Mill	1859	0140432078	\N	\N
2351	Up Country	Nelson DeMille	2002	0446611913	\N	\N
2352	One Second After	William R. Forstchen	2009	0765317583	\N	\N
2353	Down London Road	Samantha Young	2013	0451419715	\N	\N
2354	The Third Wheel	Jeff Kinney	2012	1419705849	\N	\N
2355	South of Broad	Pat Conroy	2009	038541305X	\N	\N
2356	Station Eleven	Emily St. John Mandel	2014	0385353308	\N	\N
2357	Wither	Lauren DeStefano	2011	1442409053	\N	\N
2358	A Twist in the Tale	Jeffrey Archer	1988	0312933525	\N	\N
2359	Ghosts of Onyx	Eric S. Nylund	2006	0765354705	\N	\N
2360	Pivot Point	Kasie West	2013	0062117378	\N	\N
2361	The Great Gatsby	F. Scott Fitzgerald	1925	0743273567	\N	\N
2362	Coraline	Neil Gaiman	2002	0061139378	\N	\N
2363	The Warrior Heir	Cinda Williams Chima	2006	0786839171	\N	\N
2364	The Elves of Cintra 	Terry Brooks	2007	0345484118	\N	\N
2365	Demon Thief	Darren Shan	2005	0316012386	\N	\N
2366	Stolen Songbird	Danielle L. Jensen	2014	1908844965	\N	\N
2367	Dark Lover	J.R. Ward	2005	0451216954	\N	\N
2368	Whispers Under Ground	Ben Aaronovitch	2012	0345524616	\N	\N
2369	Good Night, Mr. Tom	Michelle Magorian	1981	006440174X	\N	\N
2370	The Kitchen God's Wife	Amy Tan	1991	0143038109	\N	\N
2371	Enna Burning	Shannon Hale	2004	1582349061	\N	\N
2372	Mein Kampf	Adolf Hitler	1925	0395083621	\N	\N
2373	Book of the Dead	Patricia Cornwell	2007	0399153934	\N	\N
2374	The Hidden City	David Eddings	1994	0345390407	\N	\N
2375	The Guardian	Dee Henderson	2001	1414310579	\N	\N
2376	With a Tangled Skein	Piers Anthony	1985	0345318854	\N	\N
2377	Rage of Angels	Sidney Sheldon	1980	0006178731	\N	\N
2378	Petals on the Wind	V.C. Andrews	1980	0671729470	\N	\N
2379	The Way of Kings	Brandon Sanderson	2010	0765326353	\N	\N
2380	Pawn of Prophecy	David Eddings	1982	0345468643	\N	\N
2381	Sourcery	Terry Pratchett	1988	0061020672	\N	\N
2382	Red Country	Joe Abercrombie	2012	0316214442	\N	\N
2383	Peace Child	Don Richardson	1974	0830737847	\N	\N
2384	My Name Is Asher Lev	Chaim Potok	1972	1400031044	\N	\N
2385	Wicked Nights	Gena Showalter	2012	0373776985	\N	\N
2386	Sign of the Unicorn	Roger Zelazny	1975	0380008319	\N	\N
2387	The Christmas List	Richard Paul Evans	2009	1439150001	\N	\N
2388	Ship of Magic	Robin Hobb	1998	000649885X	\N	\N
2389	Momo	Michael Ende	1973	3522168577	\N	\N
2390	Rose Daughter	Robin McKinley	1997	0441005837	\N	\N
2391	The Moving Finger	Agatha Christie	1942	0007120842	\N	\N
2392	The Warlock	Michael Scott	2011	0385735332	\N	\N
2393	Triptych	Karin Slaughter	2006	0385339461	\N	\N
2394	Stealing Parker	Miranda Kenneally	2012	1402271875	\N	\N
2395	Washington: A Life	Ron Chernow	2010	1594202664	\N	\N
2396	The Very Hungry Caterpillar	Eric Carle	1969	0241003008	\N	\N
2397	The Expats	Chris Pavone	2012	0307956350	\N	\N
2398	Pope Joan	Donna Woolfolk Cross	1996	0345416260	\N	\N
2399	The Flood	William C. Dietz	2003	0345459210	\N	\N
2400	The Tell-Tale Heart	Edgar Allan Poe	1843	0553212281	\N	\N
2401	Wildwood	Colin Meloy, Carson Ellis	2011	006202468X	\N	\N
2402	The Areas of My Expertise	John Hodgman	2005	1594482225	\N	\N
2403	Bleachers	John Grisham	2003	0099468190	\N	\N
2404	Outer Dark	Cormac McCarthy	1968	0330314920	\N	\N
2405	Frederica	Georgette Heyer	1965	0099465647	\N	\N
2406	Er ist wieder da	Timur Vermes	2012	3847905171	\N	\N
2407	Dragonquest	Anne McCaffrey	1971	0345335082	\N	\N
2408	Audrey Rose	Frank De Felitta	1975	0446324825	\N	\N
2409	Pattern Recognition	William Gibson	2003	0425198685	\N	\N
2410	The Way of Zen	Alan W. Watts	1957	0375705104	\N	\N
2411	True Believer	Nicholas Sparks	2003	044669651X	\N	\N
2412	City of Glass	Cassandra Clare	2009	1416914307	\N	\N
2413	Many Waters	Madeleine L'Engle	1986	0312368577	\N	\N
2414	The Undomestic Goddess	Sophie Kinsella	2005	0385338694	\N	\N
2415	Quentins	Maeve Binchy	2002	0752849522	\N	\N
2416	The Lifeboat	Charlotte Rogan	2012	0316185906	\N	\N
2417	East	Edith Pattou	2003	0152052216	\N	\N
2418	Cross Bones	Kathy Reichs	2005	0743453026	\N	\N
2419	A Caribbean Mystery	Agatha Christie	1964	0451199928	\N	\N
2420	Three to Get Deadly	Janet Evanovich	1997	0312966091	\N	\N
2421	The Nix	Nathan  Hill	2016	110194661X	\N	\N
2422	Once	Anna Carey	2012	0062048546	\N	\N
2423	Paladin of Souls	Lois McMaster Bujold	2003	0380818612	\N	\N
2424	Black Magic Sanction	Kim Harrison	2010	0061138037	\N	\N
2425	The First Wives Club	Olivia Goldsmith	1992	0099435136	\N	\N
2426	Lost In Time	Melissa de la Cruz	2011	1423121295	\N	\N
2427	A Wizard of Earthsea	Ursula K. Le Guin	1968	0553383043	\N	\N
2428	Thief of Time	Terry Pratchett	2001	0061031321	\N	\N
2429	The Sinner	Tess Gerritsen	2003	0553815024	\N	\N
2430	Maurice	E.M. Forster	1971	0393310329	\N	\N
2431	Round Ireland with a Fridge	Tony Hawks	1997	0312274920	\N	\N
2432	The Quillan Games	D.J. MacHale	2005	1416914234	\N	\N
2433	Point Blanc	Anthony Horowitz	2001	0142406120	\N	\N
2434	Second Grave on the Left	Darynda Jones	2011	0312360819	\N	\N
2435	Rubyfruit Jungle	Rita Mae Brown	1973	0553146963	\N	\N
2436	Murder in Mesopotamia	Agatha Christie	1936	0007113803	\N	\N
2437	Rocket Boys	Homer Hickam	1998	0385333218	\N	\N
2438	Bluebeard	Kurt Vonnegut Jr.	1987	038533351X	\N	\N
2439	The Elite	Kiera Cass	2013	0062059963	\N	\N
2440	The Blue Bistro	Elin Hilderbrand	2005	0312992629	\N	\N
2441	Mightier Than the Sword	Jeffrey Archer	2015	1250034515	\N	\N
2442	The Outcasts	John Flanagan	2011	0399256199	\N	\N
2443	House Rules	Jodi Picoult	2010	0743296435	\N	\N
2444	Miss Rumphius	Barbara Cooney	1981	0140505393	\N	\N
2445	O Monte Cinco	Paulo Coelho	1996	0722536542	\N	\N
2446	Last Breath	Rachel Caine	2011	0451234871	\N	\N
2447	Tangerine	Edward Bloor, Danny De Vito	1997	0152057803	\N	\N
2448	About That Night	Julie James	2012	0425246957	\N	\N
2449	The Laughing Corpse	Laurell K. Hamilton	1994	0425204669	\N	\N
2450	Thirst No. 2	Christopher Pike	2010	1416983090	\N	\N
2451	La Chute	Albert Camus, Justin O'Brien	1956	0679720227	\N	\N
2452	The Emperor's Blades	Brian Staveley	2014	0765336405	\N	\N
2453	The Silver Star	Jeannette Walls	2013	1451661509	\N	\N
2454	The Story of an Hour	Kate Chopin	1894	078915479X	\N	\N
2455	To the Nines	Janet Evanovich	2003	0747267634	\N	\N
2456	The Dark And Hollow Places	Carrie Ryan	2011	0385738595	\N	\N
2457	A Long Way Down	Nick Hornby	2005	1594481938	\N	\N
2458	Knit Two	Kate Jacobs	2007	039915583X	\N	\N
2459	The Vor Game	Lois McMaster Bujold	1990	0671720147	\N	\N
2460	The Path to Power	Robert A. Caro	1982	0679729453	\N	\N
2461	Frostbitten	Kelley Armstrong	2009	1841497762	\N	\N
2462	Vinegar Hill (P.S.)	A. Manette Ansay	1994	0060897848	\N	\N
2463	My Favorite Mistake	Chelsea M. Cameron	2012	1478322306	\N	\N
2464	Edge of Eternity	Ken Follett	2014	0525953094	\N	\N
2465	The Moon and More	Sarah Dessen	2013	0670785601	\N	\N
2466	Furiously Happy	Jenny  Lawson	2015	1250077001	\N	\N
2467	The Innocent	David Baldacci	2012	0446572993	\N	\N
2468	A Walk Across America	Peter Jenkins	1979	006095955X	\N	\N
2469	Magician	Raymond E. Feist	1982	0553564943	\N	\N
2470	The Prophet of Yonwood	Jeanne DuPrau	2006	0440421241	\N	\N
2471	All Together Dead	Charlaine Harris	2007	0441014941	\N	\N
2472	The Crimson Crown	Cinda Williams Chima	2012	1423144333	\N	\N
2473	The River Why	David James Duncan	1983	0553344862	\N	\N
2474	Wemberly Worried	Kevin Henkes	2000	0688170277	\N	\N
2475	Eve	Anna Carey	2011	0062048503	\N	\N
2476	Salt: A World History	Mark Kurlansky	2002	0142001619	\N	\N
2477	Galileo's Daughter	Dava Sobel	1999	0140280553	\N	\N
2478	The Quiet Game	Greg Iles	1999	0340686030	\N	\N
2479	Bloody Bones	Laurell K. Hamilton	1996	0425205673	\N	\N
2480	Flipped	Wendelin Van Draanen	2001	0375825444	\N	\N
2481	Dune	Frank Herbert	1965	0340839937	\N	\N
2482	The Dressmaker	Kate Alcott	2012	0385535589	\N	\N
2483	This Charming Man	Marian Keyes	2008	0718149122	\N	\N
2484	B is for Burglar	Sue Grafton	1985	0312939000	\N	\N
2485	Hornet's Nest	Patricia Cornwell	1996	042516098X	\N	\N
2486	Henry & Ramona	Cynthia J. McGean	1997	0871297485	\N	\N
2487	The Winner's Kiss	Marie Rutkoski	2016	0374384738	\N	\N
2488	Stolen	Kelley Armstrong	2002	0452285933	\N	\N
2489	I Still Dream About You	Fannie Flagg	2010	1400065933	\N	\N
2490	The Scarlet Pimpernel	Emmuska Orczy	1905	1576469239	\N	\N
2491	Among Others	Jo Walton	2011	076532153X	\N	\N
2492	The Secret	Rhonda Byrne	2006	1582701709	\N	\N
2493	The Boy Next Door (Boy #1)	Meg Cabot	2002	0060845546	\N	\N
2494	Fade Out	Rachel Caine	2009	0451228669	\N	\N
2495	Dearly Devoted Dexter	Jeff Lindsay	2005	1400095921	\N	\N
2496	The Razor's Edge	W. Somerset Maugham	1944	1400034205	\N	\N
2497	The Two Pearls of Wisdom	Alison Goodman	2008	0670062278	\N	\N
2498	Startide Rising	David Brin	1983	055327418X	\N	\N
2499	Finding Audrey	Sophie Kinsella	2015	0553536516	\N	\N
2500	Dead Beat	Jim Butcher	2005	045146091X	\N	\N
2501	Orientalism	Edward Said	1978	039474067X	\N	\N
2502	The Lady in the Lake	Raymond Chandler	1943	0394758250	\N	\N
2503	Winning	Jack Welch, Suzy Welch	1992	0060753943	\N	\N
2504	You Can Win	Shiv Khera	1998	1904910033	\N	\N
2505	Maitreyi	Mircea Eliade	1933	9735004100	\N	\N
2506	The Aquitaine Progression	Robert Ludlum	1984	0752858521	\N	\N
2507	Act of Treason	Vince Flynn	2006	0743270371	\N	\N
2508	Life	Keith Richards	2010	0297854399	\N	\N
2509	Damned	Chuck Palahniuk	2011	0385671105	\N	\N
2510	Say Cheese and Die!	R.L. Stine	1992	0439568420	\N	\N
2511	Absurdistan	Gary Shteyngart	2006	0812971671	\N	\N
2512	Copper Sun	Sharon M. Draper	2006	0689821816	\N	\N
2513	Skeletons at the Feast	Chris Bohjalian	2008	0307394956	\N	\N
2514	Peril at End House	Agatha Christie	1932	0007119305	\N	\N
2515	The Dragon Keeper	Robin Hobb	2009	0007273746	\N	\N
2516	Practical Magic	Alice Hoffman	1995	0425190374	\N	\N
2517	The Gate House	Nelson DeMille	2008	0446533424	\N	\N
2518	Magic Shifts	Ilona Andrews	2015	042527067X	\N	\N
2519	A Quick Bite	Lynsay Sands	2005	0060773758	\N	\N
2520	Seize the Night	Sherrilyn Kenyon	2004	0749935871	\N	\N
2521	Nemesis	Agatha Christie	1971	0451200187	\N	\N
2522	Dirty	Kylie Scott	2016	1250083214	\N	\N
2523	After	Anna Todd	2014	1476792488	\N	\N
2524	The Templar Legacy	Steve Berry	2006	0345476166	\N	\N
2525	After the Night	Linda Howard	1995	0671019708	\N	\N
2526	Kidnapped	Robert Louis Stevenson	1886	0439295785	\N	\N
2527	Fated	Benedict Jacka	2012	1937007294	\N	\N
2528	Blackout	Connie Willis	2010	0553803190	\N	\N
2529	Hard Magic	Larry Correia	2011	1439134340	\N	\N
2530	Third Grave Dead Ahead	Darynda Jones	2012	1250001544	\N	\N
2531	Blue Dahlia	Nora Roberts	2004	0749935332	\N	\N
2532	Fool Me Once	Harlan Coben	2016	0525955097	\N	\N
2533	Black Cat, Volume 1	Kentaro Yabuki	2001	142150605X	\N	\N
2534	Stars of Fortune	Nora Roberts	2015	0425280101	\N	\N
2535	Ramona and Her Mother	Beverly Cleary	1980	038070952X	\N	\N
2536	Accelerando	Charles Stross	2005	0441014151	\N	\N
2537	Breaking Dawn	Stephenie Meyer	2008	031606792X	\N	\N
2538	The Weight of Glory	C.S. Lewis	1949	0060653205	\N	\N
2539	Casino Royale	Ian Fleming	1953	014200202X	\N	\N
2540	Oryx and Crake	Margaret Atwood	2003	0385721676	\N	\N
2541	A Spot of Bother	Mark Haddon	2006	0385520514	\N	\N
2542	The Pale Rider	Bernard Cornwell	2005	0061144835	\N	\N
2543	Such a Rush	Jennifer Echols	2012	145165801X	\N	\N
2544	The Physician	Noah Gordon	1986	0751503894	\N	\N
2545	Skipping Christmas	John Grisham	2001	0099481685	\N	\N
2546	Sweethearts	Sara Zarr	2008	0316014559	\N	\N
2547	The Plains of Passage	Jean M. Auel	1990	0553381652	\N	\N
2548	Airframe	Michael Crichton	1996	0099556316	\N	\N
2549	Clean Sweep	Ilona Andrews	2012	1625173431	\N	\N
2550	Gone, Baby, Gone	Dennis Lehane	1998	0380730359	\N	\N
2551	Daughter	Jane Shemilt	2014	1405915293	\N	\N
2552	Frost Burned	Patricia Briggs	2013	0441020011	\N	\N
2553	Twelve Sharp	Janet Evanovich	2006	0312349486	\N	\N
2554	Flyy Girl	Omar Tyree	1993	0743218574	\N	\N
2555	Rabbit, Run	John Updike	1960	0449911659	\N	\N
2556	Homo faber: Ein Bericht	Max Frisch	1957	0156421356	\N	\N
2557	The Howling	Gary Brandner	1977	0449138240	\N	\N
2558	Hades	Alexandra Adornetto	2011	0312656270	\N	\N
2559	Babylon's Ashes	James S.A. Corey	2016	0356504263	\N	\N
2560	The Big Bad Wolf  	James Patterson	2003	0446610224	\N	\N
2561	Nemesis	Isaac Asimov	1989	0553286285	\N	\N
2562	Captains Courageous	Rudyard Kipling	1897	0543895882	\N	\N
2563	First Strike	Eric S. Nylund	2003	0345467817	\N	\N
2564	The Serpent of Venice	Christopher Moore	2014	0061779768	\N	\N
2565	Along for the Ride	Sarah Dessen	2009	0670011940	\N	\N
2566	Coyote Blue	Christopher Moore	1994	0060735430	\N	\N
2567	Tribute	Nora Roberts	2008	0399154914	\N	\N
2568	Foundation's Edge	Isaac Asimov	1982	0553293389	\N	\N
2569	The Violets of March	Sarah Jio	2011	0452297036	\N	\N
2570	Dead to the World	Charlaine Harris	2004	0441012183	\N	\N
2571	The Pilgrims of Rayne	D.J. MacHale	2007	1416914161	\N	\N
2572	Loser	Jerry Spinelli	2002	0060540745	\N	\N
2573	Elizabeth Is Missing	Emma Healey	2014	0062309668	\N	\N
2574	The Kings of Clonmel	John Flanagan	2008	1741663016	\N	\N
2575	The Measure of a Lady	Deeanne Gist	2006	0764200739	\N	\N
2576	Apple Tree Yard	Louise Doughty	2013	0571297889	\N	\N
2577	Soulless	Gail Carriger	2009	0316056634	\N	\N
2578	The Darkest Kiss	Gena Showalter	2008	0373772327	\N	\N
2579	The Well of Lost Plots	Jasper Fforde	2003	0143034359	\N	\N
2580	The Far Side Gallery	Gary Larson	1984	0836220625	\N	\N
2581	George	Alex Gino	2015	0545812542	\N	\N
2582	The Comfort of Strangers	Ian McEwan	1981	0679749845	\N	\N
2583	The Novice	Trudi Canavan	2002	1841493147	\N	\N
2584	The Mane Event	Shelly Laurenston	2007	0758220367	\N	\N
2585	I Am the Cheese	Robert Cormier	1977	0141300515	\N	\N
2586	On a Pale Horse	Piers Anthony	1983	0345338588	\N	\N
2587	The Caves of Steel	Isaac Asimov	1954	0586008357	\N	\N
2588	Tricked	Kevin Hearne	2012	0345533623	\N	\N
2589	Envy (Fallen Angels, #3)	J.R. Ward	2011	0349400202	\N	\N
2590	Light on Snow	Anita Shreve	2004	0316014281	\N	\N
2591	Clockwork Princess	Cassandra Clare	2013	1406321346	\N	\N
2592	The Returned	Jason Mott	2013	0778315339	\N	\N
2593	No Humans Involved	Kelley Armstrong	2007	0553588370	\N	\N
2594	The Summer Tree	Guy Gavriel Kay	1984	0451458222	\N	\N
2595	That Hideous Strength	C.S. Lewis	1945	0007157177	\N	\N
2596	The Manchurian Candidate	Richard Condon	1959	0743482972	\N	\N
2597	Cannery Row 	John Steinbeck	1945	014200068X	\N	\N
2598	Inside the O'Briens	Lisa Genova	2015	147671777X	\N	\N
2599	Beautiful Ruins	Jess Walter	2012	0061928127	\N	\N
2600	The Beautiful Mystery	Louise Penny	2012	1250031125	\N	\N
2601	The Painted Veil	W. Somerset Maugham	1925	0307277771	\N	\N
2602	The Blinding Knife	Brent Weeks	2012	031607991X	\N	\N
2603	Sometimes Never	Cheryl McIntyre	2012	1481268503	\N	\N
2604	Skinny Dip	Carl Hiaasen	2004	0446615129	\N	\N
2605	Zero History	William Gibson	2010	0399156828	\N	\N
2606	Look to Windward	Iain M. Banks	2000	0743421922	\N	\N
2607	Wolf in White Van	John Darnielle	2014	0374292086	\N	\N
2608	Evil Under the Sun	Agatha Christie	1941	1579126286	\N	\N
2609	Forget You	Jennifer Echols	2010	1439178232	\N	\N
2610	Sea of Poppies	Amitav Ghosh	2008	071956896X	\N	\N
2611	Lady Friday	Garth Nix	2007	0439700884	\N	\N
2612	Phantoms	Dean Koontz	1983	0425181103	\N	\N
2613	Get Shorty	Elmore Leonard	1990	006008216X	\N	\N
2614	Raven Black	Ann Cleeves	2006	0312359667	\N	\N
2615	The Bonesetter's Daughter	Amy Tan	2001	0345457374	\N	\N
2616	Black and Blue	Anna Quindlen	1998	0385333137	\N	\N
2617	Dexter by Design	Jeff Lindsay	2008	0752885170	\N	\N
2618	Aura	Carlos Fuentes	1962	9580469717	\N	\N
2619	Enclave	Ann Aguirre	2011	0312650086	\N	\N
2620	Perfect	Judith McNaught	1993	0743474171	\N	\N
2621	Daughter of Smoke & Bone	Laini Taylor	2011	0316134023	\N	\N
2622	Sphere	Michael Crichton	1987	0345418972	\N	\N
2623	Sahara	Clive Cussler	1992	030720961X	\N	\N
2624	Night Watch	Terry Pratchett	2002	055215430X	\N	\N
2625	Cry Wolf	Patricia Briggs	2008	0441016154	\N	\N
2626	Old Yeller	Fred Gipson	1956	0060935472	\N	\N
2627	The Book of Lost Things	John Connolly	2006	0743298853	\N	\N
2628	LaRose	Louise Erdrich	2016	0062277022	\N	\N
2629	House of Many Ways	Diana Wynne Jones	2008	0061477958	\N	\N
2630	Leota's Garden	Francine Rivers	1999	0842335722	\N	\N
2631	Gathering Blue	Lois Lowry	2000	0385732562	\N	\N
2632	Guilty as Sin (Deer Lake #2)	Tami Hoag	1996	0752815393	\N	\N
2633	The Art Forger	B.A. Shapiro	2012	1616201320	\N	\N
2634	Mere Christianity	C.S. Lewis	1952	0684823780	\N	\N
2635	Stolen Prey	John Sandford	2012	0399157689	\N	\N
2636	The Matchmaker	Elin Hilderbrand	2014	0316099759	\N	\N
2637	The Lost Symbol	Dan Brown	2009	0385504225	\N	\N
2638	The Storyteller	Jodi Picoult	2013	1439102767	\N	\N
2639	Black-Eyed Susans	Julia Heaberlin	2015	0804177996	\N	\N
2640	Grim Tuesday	Garth Nix	2004	0439703700	\N	\N
2641	King's Cage	Victoria Aveyard	2017	0062310712	\N	\N
2642	Diary	Chuck Palahniuk	2003	1400032814	\N	\N
2643	Passenger	Alexandra Bracken	2016	1484715772	\N	\N
2644	A Chair for My Mother 	Vera B. Williams	1982	0688040748	\N	\N
2645	The Kept Woman	Karin Slaughter	2016	0062430211	\N	\N
2646	The Life List	Lori Nelson Spielman	2013	0345540875	\N	\N
2647	Pandemonium	Lauren Oliver	2012	006197806X	\N	\N
2648	Fight Club	Chuck Palahniuk	1996	0393327345	\N	\N
2649	Train to Pakistan	Khushwant Singh	1956	0802132219	\N	\N
2650	Burned	Karen Marie Moning	2015	0385344414	\N	\N
2651	Moon Palace	Paul Auster	1989	0140115854	\N	\N
2652	My Booky Wook	Russell Brand	2007	0340936150	\N	\N
2653	I Heart New York	Lindsey Kelk	2009	0007288387	\N	\N
2654	Autumn in Paris	Ilana Tan	2007	9792230300	\N	\N
2655	Imperial Bedrooms	Bret Easton Ellis	2010	0330517090	\N	\N
2656	Angelfall	Susan Ee	2011	144477851X	\N	\N
2657	My Sweet Audrina	V.C. Andrews	1982	0671729462	\N	\N
2658	A Certain Slant of Light	Laura Whitcomb	2005	061858532X	\N	\N
2659	Airborn	Kenneth Oppel	2004	0060531827	\N	\N
2660	The Stonekeeper	Kazu Kibuishi	2008	0439846803	\N	\N
2661	Son (The Giver, #4)	Lois Lowry	2012	0547887205	\N	\N
2662	Amazonia	James Rollins	2002	0060002492	\N	\N
2663	Inherent Vice	Thomas Pynchon	2009	1594202249	\N	\N
2664	You'll Grow Out of It	Jessi Klein	2016	1455531189	\N	\N
2665	The Cement Garden	Ian McEwan	1978	0099468387	\N	\N
2666	Married By Morning	Lisa Kleypas	2010	0312605382	\N	\N
2667	Just After Sunset	Stephen King	2008	1416584080	\N	\N
2668	The Abduction	John Grisham	2010	1444736930	\N	\N
2669	While My Sister Sleeps	Barbara Delinsky	2009	0385524927	\N	\N
2670	Anne of Windy Poplars	L.M. Montgomery	1936	0808516965	\N	\N
2671	Main Street	Sinclair Lewis	1920	0375753141	\N	\N
2672	Fool's Errand	Robin Hobb	2001	0006486010	\N	\N
2673	Chocolat	Joanne Harris	1998	014100018X	\N	\N
2674	Incarceron	Catherine Fisher	2007	0340893605	\N	\N
2675	The Firebird	Susanna Kearsley	2013	140227663X	\N	\N
2676	The House We Grew Up In	Lisa Jewell	2013	1476702993	\N	\N
2677	Dandelion Wine	Ray Bradbury	1957	0671037706	\N	\N
2678	The Dispossessed	Ursula K. Le Guin	1974	0061054887	\N	\N
2679	The Tale of the Body Thief	Anne Rice	1992	0345419634	\N	\N
2680	Back Roads	Tawni O'Dell	1999	0451212452	\N	\N
2681	Oracle Night	Paul Auster	2004	0965913228	\N	\N
2682	The Indigo Spell	Richelle Mead	2013	159514319X	\N	\N
2683	Better Than Life	Grant Naylor	1990	0451452313	\N	\N
2684	The Mammoth Hunters	Jean M. Auel	1985	0553381644	\N	\N
2685	Shadows of Self	Brandon Sanderson	2015	0765378558	\N	\N
2686	Hot Ticket	Olivia Cunning	2013	1402245858	\N	\N
2687	The Invention of Wings	Sue Monk Kidd	2014	0670024783	\N	\N
2688	Whose Body?	Dorothy L. Sayers	1923	0061043575	\N	\N
2689	Us	David Nicholls	2014	034089699X	\N	\N
2690	Inheritance	Christopher Paolini	2011	0375856110	\N	\N
2691	The Last Patriot	Brad Thor	2008	141654383X	\N	\N
2692	Black Notice	Patricia Cornwell	1999	0425175405	\N	\N
2693	Until I Find You	John Irving	2005	0345479726	\N	\N
2694	Tiger Lily	Jodi Lynn Anderson	2012	0062114611	\N	\N
2695	The Human Stain	Philip Roth	2000	0099282194	\N	\N
2696	The Lords of Discipline	Pat Conroy	1980	0553271369	\N	\N
2697	Finding Cinderella	Colleen Hoover	2013	147677143X	\N	\N
2698	Shopaholic and Sister	Sophie Kinsella	2004	044024191X	\N	\N
2699	The Black Company	Glen Cook	1984	0812521390	\N	\N
2700	The Rose & the Dagger	Renee Ahdieh	2016	0399171622	\N	\N
2701	The Orc King	R.A. Salvatore	2007	0786943408	\N	\N
2702	Home	Marilynne Robinson	2008	0374299102	\N	\N
2703	Dark Guardian	Christine Feehan	2002	0843949945	\N	\N
2704	Strengths Finder 2.0	Tom Rath	2007	159562015X	\N	\N
2705	Edvard Munch	Ulrich Bischoff	1990	3822859710	\N	\N
2706	The Temple of My Familiar	Alice Walker	1989	0753819481	\N	\N
2707	Three Junes	Julia Glass	2002	0385721420	\N	\N
2708	Contest	Matthew Reilly	1996	0312286252	\N	\N
2709	A Cup of Friendship	Deborah Rodriguez	2011	174275001X	\N	\N
2710	Life As We Knew It	Susan Beth Pfeffer	2006	0152061548	\N	\N
2711	Nightmares & Dreamscapes 	Stephen King	1993	0450610098	\N	\N
2712	Glass Sword	Victoria Aveyard	2016	0062310666	\N	\N
2713	A Complicated Kindness	Miriam Toews	2004	1582433224	\N	\N
2714	Psycho	Robert Bloch	1959	0747545251	\N	\N
2715	The Glass Lake	Maeve Binchy	1994	0752876872	\N	\N
2716	Hollywood	Charles Bukowski	1989	843391426X	\N	\N
2717	An Ember in the Ashes	Sabaa Tahir	2015	1595148035	\N	\N
2718	The Other Daughter	Lisa Gardner	1999	0553576798	\N	\N
2719	Never Look Away	Linwood Barclay	2010	055380717X	\N	\N
2720	Written in Red	Anne Bishop	2013	0451464966	\N	\N
2721	One for the Money	Janet Evanovich	1994	0312362080	\N	\N
2722	The Lost World 	Arthur Conan Doyle	1912	0812967259	\N	\N
2723	Raising Steam	Terry Pratchett	2013	0857522272	\N	\N
2724	The Odessa File	Frederick Forsyth	1972	0553271989	\N	\N
2725	Salmon Fishing in the Yemen	Paul Torday	2006	0753821788	\N	\N
2726	Junk	Melvin Burgess	1996	0380732238	\N	\N
2727	Carolina Moon	Nora Roberts	2000	0515130389	\N	\N
2728	Cop Town	Karin Slaughter	2014	0345547497	\N	\N
2729	Library of Souls 	Ransom Riggs	2015	159474758X	\N	\N
2730	The Visitor	Lee Child	2000	0515130974	\N	\N
2731	The Dog Stars	Peter Heller	2012	0307959945	\N	\N
2732	Music of the Heart	Katie Ashley	2013	1301786454	\N	\N
2733	Economics in One Lesson	Henry Hazlitt	1946	0517548233	\N	\N
2734	Longitude	Dava Sobel, Neil Armstrong	1995	0802714625	\N	\N
2735	Blankets	Craig Thompson	2003	1891830430	\N	\N
2736	The Secret Servant	Daniel Silva	2007	0399154221	\N	\N
2737	After I'm Gone	Laura Lippman	2014	0062083392	\N	\N
2738	This Present Darkness	Frank E. Peretti	1986	1581345283	\N	\N
2739	A Scanner Darkly 	Philip K. Dick	1977	057507681X	\N	\N
2740	The Black Prism	Brent Weeks	2010	0316075558	\N	\N
2741	The Chaperone	Laura Moriarty	2012	1594487014	\N	\N
2742	Skinwalker	Faith Hunter	2009	0451462807	\N	\N
2743	Princeps' Fury	Jim Butcher	2008	0441016383	\N	\N
2744	Abarat	Clive Barker	2002	0064407330	\N	\N
2745	If You Find Me	Emily Murdoch	2013	1250021529	\N	\N
2746	The Secret Between Us	Barbara Delinsky	2008	0385518684	\N	\N
2747	The Collector	Nora Roberts	2014	0399171088	\N	\N
2748	Emperor of Thorns	Mark  Lawrence	2013	0425256855	\N	\N
2749	The Engagements	J. Courtney Sullivan	2013	030795871X	\N	\N
2750	Plum Island	Nelson DeMille	1997	0446679089	\N	\N
2751	The Oath	Frank E. Peretti	1995	1595541896	\N	\N
2752	Morgawr 	Terry Brooks	2002	0345435753	\N	\N
2753	The Smoke Jumper	Nicholas Evans	2001	0440235162	\N	\N
2754	Mortal Engines	Philip Reeve	2001	0060082097	\N	\N
2755	The Water is Wide	Pat Conroy	1969	0553381571	\N	\N
2756	Private Peaceful	Michael Morpurgo	2003	0439636485	\N	\N
2757	The Red Garden	Alice Hoffman	2011	0307393879	\N	\N
2758	A Perfect Evil	Alex Kava	2000	0778322335	\N	\N
2759	Sandry's Book	Tamora Pierce	1997	0590554085	\N	\N
2760	Forever . . .	Judy Blume	1975	033039780X	\N	\N
2761	Bless Me, Ultima	Rudolfo Anaya	1972	0446675369	\N	\N
2762	Mila 18	Leon Uris	1961	0553241605	\N	\N
2763	The Marriage Bargain	Jennifer Probst	2012	1937044963	\N	\N
2764	Requiem (Providence #2)	Jamie McGuire	2011	0615487424	\N	\N
2765	The Shining Girls	Lauren Beukes	2013	0316216852	\N	\N
2766	Dark Fire	Christine Feehan	2001	0505524473	\N	\N
2767	On the Way to Wedding	Julia Quinn	2006	0060531258	\N	\N
2768	Drop City	T.C. Boyle, Richard Poe	2003	0142003808	\N	\N
2769	Star Wars: Lost Stars	Claudia Gray	2015	1484724984	\N	\N
2770	The Sapphire Rose 	David Eddings	1991	034537472X	\N	\N
2771	The Runaway Jury	John Grisham	1996	0385339690	\N	\N
2772	The Shell Seekers	Rosamunde Pilcher	1987	051722285X	\N	\N
2773	Dark Rivers of the Heart	Dean Koontz	1994	0553582895	\N	\N
2774	Drowned Wednesday	Garth Nix	2004	0439436567	\N	\N
2775	Until You	Judith McNaught	1994	0552143545	\N	\N
2776	Tara Road	Maeve Binchy	1998	0440235596	\N	\N
2777	Revelations	Melissa de la Cruz	2008	1423102282	\N	\N
2778	The Feast of All Saints	Anne Rice	1979	0345376048	\N	\N
2779	Big Trouble	Dave Barry	1999	0425178102	\N	\N
2780	Stitches: A Memoir	David Small	2009	0393068579	\N	\N
2781	A Window Opens	Elisabeth Egan	2015	1501105434	\N	\N
2782	Darkest Hour	Meg Cabot	2001	0060725141	\N	\N
2783	Blood Red Road 	Moira Young	2011	1442429984	\N	\N
2784	Mountain Interval	Robert Frost	1916	0486275507	\N	\N
2785	Fuzzy Nation	John Scalzi	2011	0765328542	\N	\N
2786	A Gentleman in Moscow	Amor Towles	2016	0670026190	\N	\N
2787	Shadow Spell	Nora Roberts	2014	0425259862	\N	\N
2788	The Skull Throne	Peter V. Brett	2015	0345531485	\N	\N
2789	Songs of Willow Frost	Jamie Ford	2013	0345522028	\N	\N
2790	The Lost Saint	Bree Despain	2010	1606840584	\N	\N
2791	Partials	Dan Wells	2012	0062071041	\N	\N
2792	Prayers for Rain 	Dennis Lehane	1999	0380730367	\N	\N
2793	Fire Touched	Patricia Briggs	2016	0425256766	\N	\N
2794	A Different Blue	Amy Harmon	2013	1482658143	\N	\N
2795	Queen of Babble Gets Hitched	Meg Cabot	2008	006085202X	\N	\N
2796	Slave to Sensation	Nalini Singh	2006	0425212866	\N	\N
2797	The Wrath & the Dawn	Renee Ahdieh	2015	0399171614	\N	\N
2798	The Amulet of Samarkand	Jonathan Stroud	2003	078681859X	\N	\N
2799	The Memory of Earth	Orson Scott Card	1992	0812532597	\N	\N
2800	Supernova: Petir	Dee Lestari	2004	9799822939	\N	\N
2801	Children of the Mind	Orson Scott Card	1996	0765304740	\N	\N
2802	All the Pretty Horses	Cormac McCarthy	1992	0679744398	\N	\N
2803	Tyrannosaur Canyon	Douglas Preston	2005	0765349655	\N	\N
2804	The Akhenaten Adventure	P.B. Kerr	2004	0439670209	\N	\N
2805	Sabriel	Garth Nix	1995	0064471837	\N	\N
2806	Wicked Lovely 	Melissa Marr	2007	0061214655	\N	\N
2807	Graffiti Moon	Cath Crowley	2010	0330425781	\N	\N
2808	Magyk	Angie Sage	2005	0060577312	\N	\N
2809	The Heart Goes Last	Margaret Atwood	2015	0385540353	\N	\N
2810	These High, Green Hills	Jan Karon	1995	1589190645	\N	\N
2811	Living History	Hillary Rodham Clinton	2003	0743222253	\N	\N
2812	A Study in Scarlet	Arthur Conan Doyle	1887	1420925539	\N	\N
2813	Monster	Frank E. Peretti	2005	1595541217	\N	\N
2814	Deeper than Midnight	Lara Adrian	2011	0440246113	\N	\N
2815	The Likeness	Tana French	2008	0670018864	\N	\N
2816	Ragtime	E.L. Doctorow	1974	0812978188	\N	\N
2817	Second Chance Summer	Morgan Matson	2012	1416990674	\N	\N
2818	Cities of the Plain 	Cormac McCarthy	1996	0679747192	\N	\N
2819	Heartless	Marissa Meyer	2016	1250044650	\N	\N
2820	Half Blood Blues	Esi Edugyan	2011	1846687756	\N	\N
2821	City of Golden Shadow	Tad Williams	1996	0886777631	\N	\N
2822	Saphirblau	Kerstin Gier	2010	3401063472	\N	\N
2823	Deception Point	Dan Brown	2001	0671027387	\N	\N
2824	Chromosome 6	Robin Cook	1997	0425161242	\N	\N
2825	Christy	Catherine Marshall	1967	0310241634	\N	\N
2826	The Nest	Cynthia D'Aprix Sweeney	2016	0062414216	\N	\N
2827	Run	Ann Patchett	2007	0061340634	\N	\N
2828	Memory	Doug Lloyd	2015	1632168146	\N	\N
2829	On the Jellicoe Road	Melina Marchetta	2006	0670070297	\N	\N
2830	Lord of Scoundrels	Loretta Chase	1995	0380776162	\N	\N
2831	Rebel of the Sands	Alwyn Hamilton	2016	0698410424	\N	\N
2832	Skinny Legs and All	Tom Robbins	1990	1842430343	\N	\N
2833	T is for Trespass 	Sue Grafton	2007	0399154485	\N	\N
2834	The Girl of Fire and Thorns	Rae Carson	2011	0062026488	\N	\N
2835	In the Woods	Tana French	2007	0670038601	\N	\N
2836	Stone of Tears	Terry Goodkind	1995	0312857063	\N	\N
2837	The Assassin's Blade	Sarah J. Maas	2014	1408852594	\N	\N
2838	Vanish	Sophie Jordan	2011	0061935107	\N	\N
2839	A Trick of the Light	Louise Penny	2011	0312655452	\N	\N
2840	Beezus and Ramona	Beverly Cleary	1955	0192750968	\N	\N
2841	The Human Division	John Scalzi	2013	0765333511	\N	\N
2842	Barnyard Dance	Sandra Boynton	1993	1563054426	\N	\N
2843	Dark Desire	Christine Feehan	1999	0843956534	\N	\N
2844	Cleopatra's Daughter	Michelle Moran	2009	184724954X	\N	\N
2845	Twilight Eyes	Dean Koontz	1984	0425100650	\N	\N
2846	Lover Unbound	J.R. Ward	2007	0451222350	\N	\N
2847	The Namesake	Jhumpa Lahiri	2003	0618485228	\N	\N
2848	Pardonable Lies	Jacqueline Winspear	2005	0312426216	\N	\N
2849	The Summer I Turned Pretty	Jenny Han	2009	1416968237	\N	\N
2850	The Testament	John Grisham	1999	0440234743	\N	\N
2851	The Magic of Recluce	L.E. Modesitt Jr.	1991	0812505182	\N	\N
2852	The Year of Fog	Michelle Richmond	2006	0385340117	\N	\N
2853	Archangel's Blade	Nalini Singh	2011	0425243915	\N	\N
2854	SilverFin	Charlie Higson	2005	078683661X	\N	\N
2855	Lothaire	Kresley Cole	2012	1439136823	\N	\N
2856	Watership Down	Richard Adams	1972	038039586X	\N	\N
2857	Crank (Crank, #1)	Ellen Hopkins	2004	0689865198	\N	\N
2858	The Wounded Land	Stephen R. Donaldson	1979	0345418468	\N	\N
2859	Anne of Green Gables	L.M. Montgomery	1908	0451528824	\N	\N
2860	The Eternity Code	Eoin Colfer	2003	0141321318	\N	\N
2861	Key of Knowledge	Nora Roberts	2003	0739439065	\N	\N
2862	Lily and the Octopus	Steven  Rowley	2016	1501126229	\N	\N
2863	Rich Man, Poor Man	Irwin Shaw	1969	0440174244	\N	\N
2864	The Great Book of Amber	Roger Zelazny	1999	0380809060	\N	\N
2865	Love You More	Lisa Gardner	2011	0553807250	\N	\N
2866	Acceptance	Jeff VanderMeer	2014	0374104115	\N	\N
2867	Birthright	Nora Roberts	2003	0515137111	\N	\N
2868	Open City	Teju Cole	2011	1400068096	\N	\N
2869	Roses	Leila Meacham	2010	0446550000	\N	\N
2870	The Complete Works	William Shakespeare	1623	0517053616	\N	\N
2871	Best Kept Secret	Jeffrey Archer	2013	125000098X	\N	\N
2872	The Lions of Lucerne	Brad Thor	2002	1416543686	\N	\N
2873	The Magician King	Lev Grossman	2011	043402080X	\N	\N
2874	One Week Girlfriend	Monica  Murphy	2013	098836946X	\N	\N
2875	The Queen	Kiera Cass	2014	0062351206	\N	\N
2876	The Bitter Kingdom	Rae Carson	2013	0062026542	\N	\N
2877	Lucky	Alice Sebold	1999	033041836X	\N	\N
2878	Lucky	Jackie Collins	1985	0743482867	\N	\N
2879	Tiger's Quest	Colleen Houck	2011	140278404X	\N	\N
2880	The Simple Truth	David Baldacci	1998	0446607711	\N	\N
2881	A Rogue by Any Other Name	Sarah MacLean	2012	0062068520	\N	\N
2882	End of Watch	Stephen King	2016	1501129740	\N	\N
2883	La lenteur	Milan Kundera, Linda Asher	1995	0060928417	\N	\N
2884	The Colorado Kid	Stephen King	2005	0843955848	\N	\N
2885	The Fifth Season	N.K. Jemisin	2015	0316229296	\N	\N
2886	'Tis: A Memoir	Frank McCourt	1999	0006551815	\N	\N
2887	The Gold Coast	Nelson DeMille	1990	0751531219	\N	\N
2888	Cruel & Unusual	Patricia Cornwell	1993	0380718340	\N	\N
2889	X	Sue Grafton	2015	0399163840	\N	\N
2890	Valley of Silence	Nora Roberts	2006	0786286806	\N	\N
2891	Happy Ever After	Nora Roberts	2010	1423368991	\N	\N
2892	The Faithful Spy	Alex Berenson	2006	0345478991	\N	\N
2893	Rules	Cynthia Lord	2006	0439443822	\N	\N
2894	Z for Zachariah	Robert C. O'Brien	1974	0435122118	\N	\N
2895	Chasing the Dime	Michael Connelly	2002	044661162X	\N	\N
2896	Naked Heat	Richard Castle	2010	1401324029	\N	\N
2897	The Flamethrowers	Rachel Kushner	2013	1439142009	\N	\N
2898	Airport	Arthur Hailey	1968	0425176088	\N	\N
2899	The House at Tyneford	Natasha Solomons	2011	0452297648	\N	\N
2900	Howards End	E.M. Forster	1910	0486424545	\N	\N
2901	This Boy's Life: A Memoir	Tobias Wolff	1989	0802136680	\N	\N
2902	Dumplin'	Julie   Murphy	2015	0062327186	\N	\N
2903	Just One Look	Harlan Coben	2004	0451213203	\N	\N
2904	Temple	Matthew Reilly	1999	0312981260	\N	\N
2905	Plum Lucky 	Janet Evanovich	2008	0312377630	\N	\N
2906	The Gunslinger	Stephen King	1982	0452284694	\N	\N
2907	Back Spin	Harlan Coben	1997	0440222702	\N	\N
2908	Fallen	Karin Slaughter	2011	0345528204	\N	\N
2909	Zero Day	David Baldacci	2011	0446573019	\N	\N
2910	Revenge of the Spellmans	Lisa Lutz	2009	1416593381	\N	\N
2911	Gaudy Night	Dorothy L. Sayers	1935	0061043494	\N	\N
2912	The Passage	Justin Cronin	2010	0345504968	\N	\N
2913	The Exiled Queen	Cinda Williams Chima	2010	1423118243	\N	\N
2914	The Bookseller	Cynthia Swanson	2015	0062333003	\N	\N
2915	The Art of Fielding	Chad Harbach	2011	0316126691	\N	\N
2916	Le Roi Babar	Jean de Brunhoff	1933	1405204664	\N	\N
2917	Angels Fall	Nora Roberts	2006	0399153721	\N	\N
2918	Means of Ascent 	Robert A. Caro	1990	067973371X	\N	\N
2919	Shroud for a Nightingale	P.D. James	1971	0743219600	\N	\N
2920	The Wanderer	Robyn Carr	2013	0778314472	\N	\N
2921	The Last Full Measure	Jeff Shaara	1991	0345434811	\N	\N
2922	Unleash the Night	Sherrilyn Kenyon	2005	0312934335	\N	\N
2923	Sandstorm	James Rollins	2004	0060580674	\N	\N
2924	The 5th Wave	Rick Yancey	2013	0399162410	\N	\N
2925	Black 1. The Birth of Evil	Ted Dekker	2003	1595540210	\N	\N
2926	Kill Alex Cross	James Patterson	2011	1846057647	\N	\N
2927	The Rapture of Canaan	Sheri Reynolds	1995	0425162443	\N	\N
2928	The Client	John Grisham	1993	0385339089	\N	\N
2929	Pretties	Scott Westerfeld	2005	0689865392	\N	\N
2930	Outlander	Diana Gabaldon	1991	0440242940	\N	\N
2931	Sleepers	Lorenzo Carcaterra	1995	2266071289	\N	\N
2932	Graduation Day	Joelle Charbonneau	2014	0547959214	\N	\N
2933	The Private Patient	P.D. James	2008	0571242448	\N	\N
2934	Rise of the Evening Star	Brandon Mull	2006	1590387422	\N	\N
2935	The Power of Now	Eckhart Tolle	1997	1577314808	\N	\N
2936	A Mango-Shaped Space	Wendy Mass	2005	0316058254	\N	\N
2937	The Viscount Who Loved Me	Julia Quinn	2000	0380815575	\N	\N
2938	Angel 	L.A. Weatherly	2010	1409521966	\N	\N
2939	All Our Yesterdays	Cristin Terrill	2013	1423176375	\N	\N
2940	The Robber Bride	Margaret Atwood	1993	0385491034	\N	\N
2941	Born to Run	Bruce Springsteen	2016	1501141511	\N	\N
2942	Look Homeward, Angel	Thomas Wolfe	1929	0743297318	\N	\N
2943	Heartsick	Chelsea Cain	2007	0312368461	\N	\N
2944	My Life	Bill Clinton	2004	140003003X	\N	\N
2945	Bee Season	Myla Goldberg	2000	0385498802	\N	\N
2946	Generation Kill	Evan Wright	2004	042520040X	\N	\N
2947	Innocence	Dean Koontz	2013	0553808036	\N	\N
2948	The Peach Keeper 	Sarah Addison Allen	2011	0553807226	\N	\N
2949	Shopaholic Abroad	Sophie Kinsella	2001	0440241812	\N	\N
2950	The Last Policeman	Ben H. Winters	2012	1594745765	\N	\N
2951	The Sword in the Stone	T.H. White	1938	000675399X	\N	\N
2952	Red Dragon	Thomas Harris	1981	0525945563	\N	\N
2953	Tigers in Red Weather	Liza Klaussmann	2012	0316211338	\N	\N
2954	Mean Streak	Sandra Brown	2014	1455581127	\N	\N
2955	Delicious!	Ruth Reichl	2014	1400069629	\N	\N
2956	Lost in a Good Book	Jasper Fforde	2002	0142004030	\N	\N
2957	Magic Rises	Ilona Andrews	2013	1937007588	\N	\N
2958	Daddy's Little Girl	Mary Higgins Clark	2002	0743460529	\N	\N
2959	Heir to the Empire	Timothy Zahn	1991	0553296124	\N	\N
2960	MacRieve	Kresley Cole	2013	1451649916	\N	\N
2961	SantaLand Diaries	David Sedaris	1998	0349119759	\N	\N
2962	Where Rainbows End	Cecelia Ahern	2004	0786891084	\N	\N
2963	Ice Hunt	James Rollins	2003	0060521600	\N	\N
2964	Birdman	Mo Hayder	1999	0440236169	\N	\N
2965	Sweet Tooth	Ian McEwan	2012	0224097377	\N	\N
2966	Misguided Angel	Melissa de la Cruz	2010	1423121287	\N	\N
2967	The Uplift War	David Brin	1987	0553279718	\N	\N
2968	Sir Thursday	Garth Nix	2006	0439436575	\N	\N
2969	Big Brother	Lionel Shriver	2013	0061458570	\N	\N
2970	The Diamond Throne	David Eddings	1989	0345367693	\N	\N
2971	Bright Lights, Big City	Jay McInerney	1984	0394726413	\N	\N
2972	The Dark Half	Stephen King	1989	045052468X	\N	\N
2973	Everbound	Brodi Ashton	2013	0062071165	\N	\N
2974	Legally Blonde	Amanda Brown	2001	0751534552	\N	\N
2975	The Orenda	Joseph Boyden	2013	0670064181	\N	\N
2976	Silence	Natasha Preston	2012	1480118516	\N	\N
2977	Howl's Moving Castle	Diana Wynne Jones	1986	006441034X	\N	\N
2978	Reservation Blues	Sherman Alexie	1995	0802141900	\N	\N
2979	Elantris	Brandon Sanderson	2005	0765350378	\N	\N
2980	Cujo	Stephen King	1981	0307348245	\N	\N
2981	The Beast	J.R. Ward	2016	045147516X	\N	\N
2982	The Dark Tower	Stephen King	2004	1416524525	\N	\N
2983	The Monstrumologist	Rick Yancey	2009	1416984488	\N	\N
2984	Remember Me?	Sophie Kinsella	2008	0593053893	\N	\N
2985	We Are Water	Wally Lamb	2013	0061941026	\N	\N
2986	Hope to Die	James Patterson	2014	178089015X	\N	\N
2987	The Edge of Always	J.A. Redmerski	2013	1455549002	\N	\N
2988	Black Dawn	Rachel Caine	2012	0451236718	\N	\N
2989	Die Traumdeutung	Sigmund Freud	1899	1566195764	\N	\N
2990	Slade House	David Mitchell	2015	0812998685	\N	\N
2991	The Color Purple	Alice Walker	1982	0671727796	\N	\N
2992	Aftermath	Chuck Wendig	2015	080417766X	\N	\N
2993	Starters	Lissa Price	2012	0385742371	\N	\N
2994	Assassin's Apprentice	Robin Hobb	1995	0006480098	\N	\N
2995	Annihilation	Jeff VanderMeer	2014	0374104093	\N	\N
2996	Green Mars	Kim Stanley Robinson	1994	0553572393	\N	\N
2997	Book of Shadows	Cate Tiernan	2001	0142409863	\N	\N
2998	Tai-Pan	James Clavell	1966	0440184622	\N	\N
2999	Succulent Wild Woman	S.A.R.K.	1997	068483376X	\N	\N
3000	Shotgun Lovesongs	Nickolas Butler	2014	1250039819	\N	\N
3001	Seven Up	Janet Evanovich	2001	0312980140	\N	\N
3002	Silken Prey	John Sandford	2013	0399159312	\N	\N
3003	Mutant Message Down Under	Marlo Morgan	1990	0060723513	\N	\N
3004	The Dark Highlander	Karen Marie Moning	2002	0440237556	\N	\N
3005	Five Go to Smuggler's Top	Enid Blyton	1942	0340796189	\N	\N
3006	The Joy Luck Club	Amy Tan	1989	0143038095	\N	\N
3007	The Matlock Paper	Robert Ludlum	1973	0752858637	\N	\N
3008	Feed	M.T. Anderson	2002	0763622591	\N	\N
3009	The Illearth War	Stephen R. Donaldson	1977	0345348664	\N	\N
3010	I Am Number Four	Pittacus Lore	2010	0061969559	\N	\N
3011	Not My Daughter	Barbara Delinsky	2009	0385524986	\N	\N
3012	Doctors	Erich Segal	1988	0553278118	\N	\N
3013	Panic	Lauren Oliver	2014	0062014552	\N	\N
3014	All He Ever Wanted	Anita Shreve	2003	0316010367	\N	\N
3015	Black List	Brad Thor	2012	1439192987	\N	\N
3016	Story of a Girl	Sara Zarr	2007	0316014532	\N	\N
3017	Terrier	Tamora Pierce	2006	037581468X	\N	\N
3018	Franny and Zooey	J.D. Salinger	1961	0316769029	\N	\N
3019	September	Rosamunde Pilcher	1990	0340752459	\N	\N
3020	Mister Pip	Lloyd Jones	2006	0385341067	\N	\N
3021	xxxHOLiC #1	CLAMP, William Flanagan	2003	0345470583	\N	\N
3022	Magic's Promise	Mercedes Lackey	1990	0886774012	\N	\N
3023	Hell's Angels	Hunter S. Thompson	1966	222109073X	\N	\N
3024	Wizard at Large 	Terry Brooks	1987	1857231031	\N	\N
3025	The Lions of Little Rock	Kristin Levine	2012	039925644X	\N	\N
3026	Horus Rising	Dan Abnett	2006	184416294X	\N	\N
3027	Hallucinations	Oliver Sacks	1995	0307957241	\N	\N
3028	The Castle of Llyr	Lloyd Alexander	1966	0805080503	\N	\N
3029	Dreamless	Josephine Angelini	2012	0062012010	\N	\N
3030	The Book of Life	Deborah Harkness	2014	0670025593	\N	\N
3031	Two-Way Street	Lauren Barnholdt	2007	1416913184	\N	\N
3032	The Little Friend	Donna Tartt	2002	1400031699	\N	\N
3033	The Sword of Summer	Rick Riordan	2015	1423160916	\N	\N
3034	The Secret River	Kate Grenville	2005	1841959146	\N	\N
3035	The Art of Travel	Alain de Botton	2002	0375725342	\N	\N
3036	The Invisible Library	Genevieve Cogman	2015	1447256239	\N	\N
3037	The Blessing Way	Tony Hillerman	1970	0061000019	\N	\N
3038	Daring to Dream	Nora Roberts	1996	0515142905	\N	\N
3039	Laskar Pelangi	Andrea Hirata	2005	9793062797	\N	\N
3040	Best Friends Forever	Jennifer Weiner	2009	0743294297	\N	\N
3041	Tower Lord	Anthony  Ryan	2014	0425265625	\N	\N
3042	Salvage the Bones	Jesmyn Ward	2010	1608195228	\N	\N
3043	Don't Look Back	Jennifer L. Armentrout	2014	1423175123	\N	\N
3044	The Gargoyle	Andrew Davidson	2008	0385524943	\N	\N
3045	Karin	Yuna Kagesaki	2003	1598163221	\N	\N
3046	The Water-Method Man	John Irving	1972	034541800X	\N	\N
3047	The Damnation Game	Clive Barker	1985	0425188930	\N	\N
3048	Shadow Puppets	Orson Scott Card	2002	0765340054	\N	\N
3049	Brida	Paulo Coelho, Montserrat Mira	1990	9504915248	\N	\N
3050	Priestess of the White	Trudi Canavan	2005	0060815701	\N	\N
3051	Flawless	Sara Shepard	2007	0060887338	\N	\N
3052	How to Be Good	Nick Hornby	2001	3426615355	\N	\N
3053	State Of The Union	Brad Thor	2004	1416543694	\N	\N
3054	A Clockwork Orange	Anthony Burgess	1962	0393312836	\N	\N
3055	Last Orders	Graham Swift	1996	0330489674	\N	\N
3056	Sins & Needles	Karina Halle	2013	1479359084	\N	\N
3057	The Dragon Heir	Cinda Williams Chima	2008	1423110706	\N	\N
3058	Change of Heart	Jodi Picoult	2008	0743496744	\N	\N
3059	Hounded	Kevin Hearne	2011	0345522478	\N	\N
3060	The Pleasure of My Company	Steve Martin	2003	0786888016	\N	\N
3061	Magic Burns	Ilona Andrews	2008	0441015832	\N	\N
3062	Shards of Honor	Lois McMaster Bujold	1986	0743468422	\N	\N
3063	The Cold Dish	Craig Johnson	2004	0143036424	\N	\N
3064	Shadowland	Alyson Noel	2009	031259044X	\N	\N
3065	Deep Fathom	James Rollins	2001	0380818809	\N	\N
3066	Hearts in Atlantis	Stephen King	1999	0340818670	\N	\N
3067	The Island	Victoria Hislop	2005	0755309510	\N	\N
3068	I, Elizabeth	Rosalind Miles	1992	0609809105	\N	\N
3069	Astonish Me	Maggie Shipstead	2014	0307962903	\N	\N
3070	Duck On A Bike	David Shannon	2002	0439050235	\N	\N
3071	Darkness, Be My Friend	John Marsden	1996	043985802X	\N	\N
3072	Mattimeo	Brian Jacques	1990	0441006108	\N	\N
3073	Hark! A Vagrant	Kate Beaton	2011	1770460608	\N	\N
3074	When You Reach Me	Rebecca Stead	2009	0385737424	\N	\N
3075	Bagombo Snuff Box	Kurt Vonnegut Jr.	1999	0099282968	\N	\N
3076	Leviathan	Scott Westerfeld	2009	1416971734	\N	\N
3077	Crescendo	Becca Fitzpatrick	2010	1416989439	\N	\N
3078	The Red Queen	Philippa Gregory	2010	1416563725	\N	\N
3079	NOS4A2	Joe Hill	2013	0062200577	\N	\N
3080	Shadow of the Hegemon	Orson Scott Card	2000	0812565959	\N	\N
3081	Keep Quiet	Lisa Scottoline	2014	1250010098	\N	\N
3082	Sisterhood Everlasting	Ann Brashares	2011	0385521227	\N	\N
3083	Leviathan	Paul Auster	1992	0140178139	\N	\N
3084	Pyramids	Terry Pratchett	1989	0061020656	\N	\N
3085	World After	Susan Ee	2013	1444778536	\N	\N
3086	Time and Again	Jack Finney	1970	0575073608	\N	\N
3087	Something Blue	Emily Giffin	2005	0312323867	\N	\N
3088	Epic Fail	Claire LaZebnik	2011	0061921262	\N	\N
3089	The Gathering	Kelley Armstrong	2011	0061797022	\N	\N
3090	The Darkest Pleasure	Gena Showalter	2008	0373773102	\N	\N
3091	The Story of My Life	Helen Keller	1902	0553213873	\N	\N
3092	The Imperfectionists	Tom Rachman	2010	0385343663	\N	\N
3093	Shadowfever	Karen Marie Moning	2011	0385341679	\N	\N
3094	Very Valentine	Adriana Trigiani	2009	0061257052	\N	\N
3095	Why Not Me?	Mindy Kaling	2015	0804138141	\N	\N
3096	A Wrinkle in Time	Madeleine L'Engle	1962	0440498058	\N	\N
3097	The Revenant	Michael Punke	2002	125006662X	\N	\N
3098	Strangers on a Train	Patricia Highsmith	1950	0393321983	\N	\N
3099	The Ice Queen	Alice Hoffman	2005	0316154385	\N	\N
3100	Faking It 	Jennifer Crusie	2002	0312932782	\N	\N
3101	The People of Sparks	Jeanne DuPrau	2004	0375828257	\N	\N
3102	Food Rules	Michael Pollan	2008	014311638X	\N	\N
3103	Promises in Death	J.D. Robb	2009	0399155481	\N	\N
3104	Kane and Abel	Jeffrey Archer	1979	0312995059	\N	\N
3105	Dark Desires After Dusk	Kresley Cole	2008	1416576754	\N	\N
3106	Wolf Hall	Hilary Mantel	2009	0007230206	\N	\N
3107	Real	Katy Evans	2013	1301347949	\N	\N
3108	Euphoria	Lily King	2014	0802122558	\N	\N
3109	Indelible	Karin Slaughter	2004	0060567112	\N	\N
3110	Yu Yu Hakusho	Yoshihiro Togashi	1990	1569319049	\N	\N
3111	Dreamfever	Karen Marie Moning	2009	0385341652	\N	\N
3112	Tigana	Guy Gavriel Kay	1990	0451457765	\N	\N
3113	The Burning Land	Bernard Cornwell	2009	000721975X	\N	\N
3114	Storm Glass	Maria V. Snyder	2009	0778325644	\N	\N
3115	The Death Cure	James Dashner	2011	0385738773	\N	\N
3116	Rejoice	Karen Kingsbury, Gary Smalley	2004	0084386874	\N	\N
3117	Before I Die	Jenny Downham	2007	0385613466	\N	\N
3118	The Iron Daughter	Julie Kagawa	2010	0373210132	\N	\N
3119	W is for Wasted	Sue Grafton	2013	0399158987	\N	\N
3120	Dark Places	Gillian Flynn	2009	0307341569	\N	\N
3121	Strangers	Dean Koontz	1986	0425181111	\N	\N
3122	Ghost Town	Rachel Caine	2010	0451231619	\N	\N
3123	Brotherhood in Death	J.D. Robb	2016	0399170898	\N	\N
3124	Ash	Malinda Lo	2009	0316040096	\N	\N
3125	Firestar's Quest	Erin Hunter	2007	0061131644	\N	\N
3126	The Fifth Witness	Michael Connelly	2011	0316069353	\N	\N
3127	The Cider House Rules	John Irving	1985	0786226749	\N	\N
3128	Gabriel's redemption	Sylvain Reynard	2013	0425266516	\N	\N
3129	Prized	Caragh M. O'Brien	2011	1596435704	\N	\N
3130	Buried Prey	John Sandford	2011	0399157387	\N	\N
3131	The Witching Hour	Anne Rice	1990	0099471426	\N	\N
3132	And the Shofar Blew	Francine Rivers	2003	0842365834	\N	\N
3133	Wicked Business	Janet Evanovich	2012	0345527771	\N	\N
3134	How We Are Hungry	Dave Eggers	2005	1400095565	\N	\N
3135	The World Without Us	Alan Weisman	2007	0312347294	\N	\N
3136	Four to Score 	Janet Evanovich	1998	0312966970	\N	\N
3137	Field of Dishonor	David Weber	1994	0743435745	\N	\N
3138	Emotional Intelligence	Daniel Goleman	1995	055380491X	\N	\N
3139	The Confessor	Daniel Silva	2003	014101587X	\N	\N
3140	Off to Be the Wizard	Scott  Meyer	2013	1612184715	\N	\N
3141	The Raw Shark Texts	Steven Hall	2007	1841959111	\N	\N
3142	The Throne of Fire	Rick Riordan	2011	1423140567	\N	\N
3143	The Snowman	Raymond Briggs	1978	0394839730	\N	\N
3144	Interpreter of Maladies	Jhumpa Lahiri	1999	0618101365	\N	\N
3145	Deep Storm	Lincoln Child	2007	0385515502	\N	\N
3146	The Grey King	Susan Cooper	1975	1416949674	\N	\N
3147	Darker After Midnight	Lara Adrian	2012	1849013764	\N	\N
3148	The Last Child	John Hart	2009	0312359322	\N	\N
3149	Edenbrooke	Julianne Donaldson	2012	1609089464	\N	\N
3150	Grave Dance	Kalayna Price	2011	0451464095	\N	\N
3151	Women of the Silk	Gail Tsukiyama	1991	0312099436	\N	\N
3152	The Scarlet Thread 	Francine Rivers	1995	0842342710	\N	\N
3153	A Bridge Too Far	Cornelius Ryan	1974	0450837319	\N	\N
3154	Gone Tomorrow	Lee Child	2009	0593057058	\N	\N
3155	Blackout	Mira Grant	2012	1841499005	\N	\N
3156	Island	Aldous Huxley	1962	0060085495	\N	\N
3157	Rendezvous with Rama	Arthur C. Clarke	1973	1857231589	\N	\N
3158	Wallbanger	Alice Clayton	2012	1623420024	\N	\N
3159	The Jesus I Never Knew	Philip Yancey	1995	031021923X	\N	\N
3160	Blood Memory	Greg Iles	2005	0743454154	\N	\N
3161	Lonesome Dove	Larry McMurtry	1985	067168390X	\N	\N
3162	Duma Key	Stephen King	2008	1416552510	\N	\N
3163	The Virgin Blue	Tracy Chevalier	1997	0452284449	\N	\N
3164	Danny and the Dinosaur	Syd Hoff	1958	0064440028	\N	\N
3165	Paint It Black	Janet Fitch	2006	0316182745	\N	\N
3166	Paula	Isabel Allende	1994	849759388X	\N	\N
3167	Seabiscuit	Laura Hillenbrand	1999	0345465083	\N	\N
3168	The Twits	Roald Dahl, Quentin Blake	1980	0141318309	\N	\N
3169	Eating the Dinosaur	Chuck Klosterman	2009	1416544208	\N	\N
3170	Moonraker	Ian Fleming	1955	0142002062	\N	\N
3171	Destined	P.C. Cast, Kristin Cast	2011	1905654871	\N	\N
3172	Saturday	Ian McEwan	2005	1400076196	\N	\N
3173	Making Money	Terry Pratchett	2007	0061161640	\N	\N
3174	Me Talk Pretty One Day	David Sedaris	2000	0349113912	\N	\N
3175	More Than Human	Theodore Sturgeon	1953	0375703713	\N	\N
3176	Stone of Farewell	Tad Williams	1990	0756402972	\N	\N
3177	The Rosie Project	Graeme Simsion	2013	1476729085	\N	\N
3178	The Confusion	Neal Stephenson	2004	0060733357	\N	\N
3179	Interview with the Vampire	Anne Rice	1976	0345476875	\N	\N
3180	Invisible Man	Ralph Ellison	1952	0679732764	\N	\N
3181	A Wanted Man	Lee Child, Dick Hill	2012	0307749606	\N	\N
3182	H.M.S. Surprise 	Patrick O'Brian	1973	0393307611	\N	\N
3183	Cane River	Lalita Tademy	2001	0446678457	\N	\N
3184	A Wolf at the Table	Augusten Burroughs	2008	0312342020	\N	\N
3185	The Magic Faraway Tree	Enid Blyton	1943	074974801X	\N	\N
3186	Desert Solitaire	Edward Abbey	1968	0345326490	\N	\N
3187	Faking It	Cora Carmack	2013	0062273264	\N	\N
3188	Two Boys Kissing	David Levithan	2013	0307931900	\N	\N
3189	Annabel	Lauren Oliver	2012	0062237381	\N	\N
3190	The Emperor's Children	Claire Messud	2006	030726419X	\N	\N
3191	The Dream Hunter	Sherrilyn Kenyon	2007	0312938810	\N	\N
3192	Castle Roogna	Piers Anthony	1979	0345418514	\N	\N
3193	Blood of the Fold	Terry Goodkind	1996	0812551478	\N	\N
3194	Goddess Interrupted	Aimee Carter	2012	0373210450	\N	\N
3195	Playing with Fire	Derek Landy	2008	0061240885	\N	\N
3196	United We Spy	Ally Carter	2013	1423165993	\N	\N
3197	Native Son 	Richard Wright	1940	006083756X	\N	\N
3198	The Monk	Matthew      Lewis	1796	0140436030	\N	\N
3199	At Bertram's Hotel	Agatha Christie	1965	0002310015	\N	\N
3200	Gang Leader for a Day	Sudhir Venkatesh	2008	1594201501	\N	\N
3201	The Chamber	John Grisham	1994	0385339666	\N	\N
3202	Impulse	Ellen Hopkins	2007	1416903569	\N	\N
3203	A Stranger in the Mirror	Sidney Sheldon	1976	0006471250	\N	\N
3204	Mostly Harmless	Douglas Adams	1992	0345418778	\N	\N
3205	Gabriel's Rapture	Sylvain Reynard	2012	1936305550	\N	\N
3206	Robots and Empire	Isaac Asimov	1985	0586062009	\N	\N
3207	Pygmalion	George Bernard Shaw	1912	0486282228	\N	\N
3208	Clara and Mr. Tiffany	Susan Vreeland	2010	1400068169	\N	\N
3209	The Girls	Emma Cline	2016	081299860X	\N	\N
3210	The Farthest Shore	Ursula K. Le Guin	1972	141650964X	\N	\N
3211	The Other Hand	Chris Cleave	2008	1416589643	\N	\N
3212	The Winner's Crime	Marie Rutkoski	2015	0374384711	\N	\N
3213	Good Night, Gorilla	Peggy Rathmann	1994	0399230033	\N	\N
3214	The Crossing Places	Elly Griffiths	2009	0547229895	\N	\N
3215	The Vampire Lestat	Anne Rice	1985	0345476883	\N	\N
3216	Leaves of Grass	Walt Whitman	1855	1416523715	\N	\N
3217	Easy	Tammara Webber	2012	0425266745	\N	\N
3218	If Tomorrow Comes	Sidney Sheldon	1985	0006479677	\N	\N
3219	Live To Tell	Lisa Gardner	2010	0553807242	\N	\N
3220	Travel Team	Mike Lupica	2004	0142404624	\N	\N
3221	The Calling	Kelley Armstrong	2012	0061797057	\N	\N
3222	Pandora	Anne Rice	1998	8466302948	\N	\N
3223	The Keep	Jennifer Egan	2006	1400043921	\N	\N
3224	Chronicles: Volume One	Bob Dylan	2004	0743244583	\N	\N
3225	Roller Girl	Victoria Jamieson	2015	0803740166	\N	\N
3226	Chapterhouse: Dune	Frank Herbert	1985	0441102670	\N	\N
3227	Mortality	Christopher Hitchens	2012	1455502758	\N	\N
3228	At First Sight	Nicholas Sparks	2004	0446698466	\N	\N
3229	Caliban's War	James S.A. Corey	2012	1841499900	\N	\N
3230	Awake at Dawn	C.C. Hunter	2011	0312624689	\N	\N
3231	Dexter Is Delicious	Jeff Lindsay	2010	0385532350	\N	\N
3232	A Lot Like Love	Julie James	2011	0425240169	\N	\N
3233	Huis clos	Jean-Paul Sartre	1944	0573613052	\N	\N
3234	Between Shades of Gray	Ruta Sepetys	2011	0399254129	\N	\N
3235	Bergdorf Blondes	Plum Sykes	2004	1401359604	\N	\N
3236	The Forever War	Joe Haldeman	1974	0060510862	\N	\N
3237	Son of the Shadows	Juliet Marillier	2000	0765343266	\N	\N
3238	Birthmarked	Caragh M. O'Brien	2010	1596435690	\N	\N
3239	Native Tongue	Carl Hiaasen	1991	044669570X	\N	\N
3240	Reamde	Neal Stephenson	2011	0061977969	\N	\N
3241	Black Hole	Charles Burns	1995	037542380X	\N	\N
3242	The Woods	Harlan Coben	2007	0525950125	\N	\N
3243	About a Boy	Nick Hornby	1998	0140285679	\N	\N
3244	The Time of My Life	Cecelia Ahern	2011	0007350430	\N	\N
3245	Maniac Magee	Jerry Spinelli	1990	0590452037	\N	\N
3246	Tehanu	Ursula K. Le Guin	1990	1416509631	\N	\N
3247	Number the Stars	Lois Lowry	1989	0440227534	\N	\N
3248	Curious George Takes a Job	H.A. Rey	1947	1844285081	\N	\N
3249	Falling Angels	Tracy Chevalier	2001	0452283205	\N	\N
3250	Demon From the Dark 	Kresley Cole	2010	1439123128	\N	\N
3251	The One Plus One	Jojo Moyes	2014	0525426582	\N	\N
3252	One Tuesday Morning	Karen Kingsbury	2003	0310247527	\N	\N
3253	Pretty Baby	Mary Kubica	2015	0778317706	\N	\N
3254	Wizard's First Rule	Terry Goodkind	1994	0765346524	\N	\N
3255	Wit : A Play	Margaret Edson	1995	0571198775	\N	\N
3256	The Sense of an Ending	Julian Barnes	2011	0224094157	\N	\N
3257	The Eyre Affair	Jasper Fforde	2001	0142001805	\N	\N
3258	Where's Spot? 	Eric Hill	1980	0140504206	\N	\N
3259	Hour Game	David Baldacci	2004	0446616494	\N	\N
3260	Light	Michael  Grant	2013	0061449180	\N	\N
3261	Not My Father's Son	Alan Cumming	2014	0062225073	\N	\N
3262	The Tenth Justice	Brad Meltzer	1997	0446606243	\N	\N
3263	The Hat	Jan Brett	1997	0750026049	\N	\N
3264	Gone Girl	Gillian Flynn	2012	0297859382	\N	\N
3265	Radiant Angel	Nelson DeMille	2015	0446580856	\N	\N
3266	Live Wire	Harlan Coben	2011	0525952063	\N	\N
3267	River Secrets	Shannon Hale	2006	1582349010	\N	\N
3268	Forrest Gump	Winston Groom	1986	0743453255	\N	\N
3269	Gardens of the Moon	Steven Erikson	1999	0765348780	\N	\N
3270	The Story of Philosophy	Will Durant	1926	0671739166	\N	\N
3271	Why Evolution Is True	Jerry A. Coyne	2008	0670020532	\N	\N
3272	Passion's Reign	Karen Harper	1983	0307237907	\N	\N
3273	First Term at Malory Towers	Enid Blyton	1946	0749744812	\N	\N
3274	Hyperion	Dan Simmons	1989	0553283685	\N	\N
3275	Zoe's Tale	John Scalzi	2008	0765316986	\N	\N
3276	Out of the Dust	Karen Hesse	1997	0439771277	\N	\N
3277	The Mime Order	Samantha Shannon	2015	1408857391	\N	\N
3278	Guardians of the West	David Eddings	1985	0345352661	\N	\N
3279	Sellevision	Augusten Burroughs	2000	0312422288	\N	\N
3280	Anya's Ghost	Vera Brosgol	2011	1596437138	\N	\N
3281	Shaman's Crossing	Robin Hobb	2005	0060758287	\N	\N
3282	The Mothers	Brit Bennett	2016	0399184511	\N	\N
3283	Friends and Lovers	Eric Jerome Dickey	1997	0451201027	\N	\N
3284	Rose in Bloom	Louisa May Alcott	1876	0316030899	\N	\N
3285	The Sun Is Also a Star	Nicola Yoon	2016	0553496689	\N	\N
3286	Hocus Pocus	Kurt Vonnegut Jr.	1990	0425161293	\N	\N
3287	Demonglass	Rachel Hawkins	2011	1423121317	\N	\N
3288	His Majesty's Dragon	Naomi Novik	2006	0345481283	\N	\N
3289	The Legacy	R.A. Salvatore	1992	0786939842	\N	\N
3290	Infected	Scott Sigler	2008	0307406105	\N	\N
3291	The Book of Tomorrow	Cecelia Ahern	2009	0007233701	\N	\N
3292	Hell House	Richard Matheson	1971	0727860992	\N	\N
3293	Lord of Misrule	Rachel Caine	2008	0451225724	\N	\N
3294	Outcast of Redwall	Brian Jacques	1995	0142401420	\N	\N
3295	The Dead Zone	Stephen King	1979	0451155750	\N	\N
3296	See Jane Score	Rachel Gibson	2003	0060009241	\N	\N
3297	Fly Away	Kristin Hannah	2013	0312577214	\N	\N
3298	Big Red	Jim Kjelgaard, Carl Pfeuffer	1945	0553154346	\N	\N
3299	Serena	Ron Rash	2008	0061470856	\N	\N
3300	Flush	Carl Hiaasen	2005	0375821821	\N	\N
3301	Fugitive Pieces	Anne Michaels	1996	0679776591	\N	\N
3302	Blackwood Farm	Anne Rice	2002	0099446723	\N	\N
3303	Something Borrowed	Emily Giffin	2004	031232118X	\N	\N
3304	The Book of Luke	Jenny O'Connell	2007	1416520406	\N	\N
3305	The Tin Roof Blowdown	James Lee Burke	2007	1416548483	\N	\N
3306	Sleeping Murder	Agatha Christie	1976	0002317850	\N	\N
3307	Cruel Beauty	Rosamund Hodge	2014	0062224735	\N	\N
3308	A Beautiful Dark 	Jocelyn Davies	2011	0061990655	\N	\N
3309	The Shadowy Horses	Susanna Kearsley	1997	0515124648	\N	\N
3310	All the Weyrs of Pern	Anne McCaffrey	1991	0345419359	\N	\N
3311	Beach Music	Pat Conroy	1975	0553381539	\N	\N
3312	In The Afterlight	Alexandra Bracken	2014	1423157524	\N	\N
3313	Sea Glass	Maria V. Snyder	2009	0778325806	\N	\N
3314	The Inheritance of Loss	Kiran Desai	2006	0802142818	\N	\N
3315	Your Heart Belongs to Me	Dean Koontz	2008	0553807137	\N	\N
3316	A Redbird Christmas	Fannie Flagg	2004	0345480260	\N	\N
3317	House of Leaves	Mark Z. Danielewski	2000	038560310X	\N	\N
3318	Unfamiliar Fishes	Sarah Vowell	2011	1594487871	\N	\N
3319	The Baker's Daughter	Sarah McCoy	2012	0307460207	\N	\N
3320	Push	Sapphire	1996	0679766758	\N	\N
3321	The Garden of Eden	Ernest Hemingway	1985	0684804522	\N	\N
3322	City of Lost Souls	Cassandra Clare	2012	1442416866	\N	\N
3323	The End of Mr. Y.	Scarlett Thomas	2006	0156031612	\N	\N
3324	Reached	Ally Condie	2012	0525423664	\N	\N
3325	Monster	Walter Dean Myers	1999	0064407314	\N	\N
3326	Assassin's Quest	Robin Hobb	1997	0553565699	\N	\N
3327	Snakehead	Anthony Horowitz	2007	1406309354	\N	\N
3328	Emily of New Moon	L.M. Montgomery	1923	055323370X	\N	\N
3329	Wanted	Sara Shepard	2010	0061566179	\N	\N
3330	Still Alice	Lisa Genova	2007	0595440096	\N	\N
3331	Suicide Notes	Michael Thomas Ford	2008	0060737557	\N	\N
3332	Jumanji	Chris Van Allsburg	1981	0395304482	\N	\N
3333	Caddie Woodlawn	Carol Ryrie Brink	1935	1416940286	\N	\N
3334	A Separate Peace	John Knowles	1959	0743253973	\N	\N
3335	Beyond Reach	Karin Slaughter	2007	038533947X	\N	\N
3336	Fragments	Dan Wells	2013	0062071076	\N	\N
3337	Scorpia Rising	Anthony Horowitz	2011	0399250573	\N	\N
3338	The Hate U Give	Angie Thomas	2017	0062498533	\N	\N
3339	Rise of Empire	Michael J. Sullivan	2010	0316187704	\N	\N
3340	Born in Fire 	Nora Roberts	1994	0515114693	\N	\N
3341	I'll Walk Alone	Mary Higgins Clark	2011	1439180962	\N	\N
3342	Two for the Dough	Janet Evanovich	1996	0140255559	\N	\N
3343	The Wordy Shipmates	Sarah Vowell	2008	1594489998	\N	\N
3344	Holiday in Death	J.D. Robb	1998	0425163717	\N	\N
3345	Stray	Rachel Vincent	2007	0778324214	\N	\N
3346	Stormy Weather	Carl Hiaasen	1995	0446677167	\N	\N
3347	More Than This	Patrick Ness	2013	1406350486	\N	\N
3348	Evernight	Claudia Gray	2008	0061284394	\N	\N
3349	Domes of Fire	David Eddings	1992	0345383273	\N	\N
3350	A Kiss in Time	Alex Flinn	2008	0060874198	\N	\N
3351	Shoeless Joe	W.P. Kinsella	1982	078572902X	\N	\N
3352	Boy's Life	Robert McCammon	1991	0671743058	\N	\N
3353	Disclosure	Michael Crichton	1994	0099303744	\N	\N
3354	Twisted	Laurie Halse Anderson	2007	0670061018	\N	\N
3355	Count Zero	William Gibson	1986	0441013678	\N	\N
3356	The Puppet Masters	Robert A. Heinlein	1951	143913376X	\N	\N
3357	The Wave	Morton Rhue, Todd Strasser	1981	0440993717	\N	\N
3358	The Stars Shine Down	Sidney Sheldon	1992	0006178715	\N	\N
3359	Silver Shadows	Richelle Mead	2014	1595143211	\N	\N
3360	The End of Eternity	Isaac Asimov	1955	0449016196	\N	\N
3361	Doubt: A Parable	John Patrick Shanley	2005	1559362766	\N	\N
3362	Ready or Not	Meg Cabot	2005	0060724501	\N	\N
3363	Let the Great World Spin	Colum McCann	2009	1400063736	\N	\N
3364	Empire Falls	Richard Russo	2001	0375726403	\N	\N
3365	Linger	Maggie Stiefvater	2010	0545123283	\N	\N
3366	The Last Oracle	James Rollins	2008	0061230944	\N	\N
3367	The Twelve	Justin Cronin	2012	0345504984	\N	\N
3368	A Perfect Blood	Kim Harrison	2012	0061957895	\N	\N
3369	Summer House	Nancy Thayer	2009	0345498208	\N	\N
3370	The Bellmaker	Brian Jacques	1994	0142400300	\N	\N
3371	Luna	Julie Anne Peters	2004	0316011274	\N	\N
3372	Appointment with Death	Agatha Christie	1938	0007119356	\N	\N
3373	Perelandra	C.S. Lewis	1943	0007157169	\N	\N
3374	Fragile Eternity	Melissa Marr	2009	006121471X	\N	\N
3375	A Vintage Affair	Isabel Wolff	2009	0007245823	\N	\N
3376	The Hunger Games	Suzanne Collins	2008	0439023483	\N	\N
3377	The Poet	Michael Connelly	1996	0446690457	\N	\N
3378	The First Confessor	Terry Goodkind	2012	0615651011	\N	\N
3379	The Hour I First Believed	Wally Lamb	2007	0060393491	\N	\N
3380	A Thousand Acres	Jane Smiley	1991	1400033837	\N	\N
3381	Pleasure Unbound	Larissa Ione	2008	044640103X	\N	\N
3382	Hard Luck	Jeff Kinney	2013	1419711326	\N	\N
3383	Darkest Mercy	Melissa Marr	2011	0061659258	\N	\N
3384	Rubinrot	Kerstin Gier, Anthea Bell	2009	0805092528	\N	\N
3385	Kisscut	Karin Slaughter	2002	0060534044	\N	\N
3386	The Closers	Michael Connelly	2005	0446699551	\N	\N
3387	High Five	Janet Evanovich	1999	0330371231	\N	\N
3388	The God of Small Things	Arundhati Roy	1997	0679457313	\N	\N
3389	City of Fallen Angels	Cassandra Clare	2011	1442403543	\N	\N
3390	Identical	Ellen Hopkins	2008	1416950052	\N	\N
3391	City of Masks	Mary Hoffman	2002	1582349177	\N	\N
3392	Journals	Kurt Cobain	2002	157322359X	\N	\N
3393	Until Friday Night	Abbi Glines	2015	1481438867	\N	\N
3394	The Drawing of the Three	Stephen King	1987	0451210859	\N	\N
3395	Wreck This Journal	Keri Smith	2007	039953346X	\N	\N
3396	The Satanic Verses	Salman Rushdie	1988	0312270828	\N	\N
3397	The Madonnas of Leningrad	Debra Dean	2006	0060825316	\N	\N
3398	The Prince of Tides	Pat Conroy	1986	0553381547	\N	\N
3399	Orphan X	Gregg Hurwitz	2016	1250067847	\N	\N
3400	Life Expectancy	Dean Koontz	2004	0553588249	\N	\N
3401	From Dead to Worse	Charlaine Harris	2008	0441015891	\N	\N
3402	Fool's Assassin	Robin Hobb	2014	0553392425	\N	\N
3403	Talon	Julie Kagawa	2014	0373211392	\N	\N
3404	London: The Novel	Edward Rutherfurd	1997	0345455681	\N	\N
3405	Explosive Eighteen	Janet Evanovich	2011	0345527712	\N	\N
3406	Fine Things	Danielle Steel	1987	0440244056	\N	\N
3407	Obsession in Death	J.D. Robb	2015	0399170871	\N	\N
3408	The Lottery	Shirley Jackson	1948	1563127873	\N	\N
3409	The Great Divorce	C.S. Lewis	1945	0006280560	\N	\N
3410	The Pagan Lord	Bernard Cornwell	2013	0007331908	\N	\N
3411	Dear Daughter	Elizabeth Little	2014	0670016381	\N	\N
3412	Glimmerglass	Jenna Black	2010	0312575939	\N	\N
3413	Rescue	Anita Shreve	2010	0316020729	\N	\N
3414	The Replacement	Brenna Yovanoff	2010	1595143378	\N	\N
3415	Winter	Marissa Meyer	2015	0312642989	\N	\N
3416	Goddess	Josephine Angelini	2013	0062012037	\N	\N
3417	The Hungry Tide	Amitav Ghosh	2004	061871166X	\N	\N
3418	To Challenge a Dragon	G.A. Aiken	2004	1420103733	\N	\N
3419	Effortless	S.C. Stephens	2011	1476717486	\N	\N
3420	Northern Lights	Nora Roberts	2004	0515139742	\N	\N
3421	The Watchman	Robert Crais	2007	0743281632	\N	\N
3422	The Paris Wife	Paula McLain	2011	0345521307	\N	\N
3423	Half a King	Joe Abercrombie	2014	0804178321	\N	\N
3424	The King of Torts	John Grisham	2003	0385339658	\N	\N
3425	The Terror	Dan Simmons	2007	0316017442	\N	\N
3426	Mad Dogs	Robert Muchamore	2007	0340911719	\N	\N
3427	Haunted	Kelley Armstrong	2005	0553587080	\N	\N
3428	Unaccustomed Earth	Jhumpa Lahiri	2008	0676979343	\N	\N
3429	Freedom	Jonathan Franzen	2010	0374158460	\N	\N
3430	Sorceress of Darshiva	David Eddings	1989	0345369351	\N	\N
3431	Boundless	Cynthia Hand	2013	0061996203	\N	\N
3432	So B. It	Sarah Weeks	2004	0064410471	\N	\N
3433	Lords and Ladies	Terry Pratchett	1992	055215315X	\N	\N
3434	Sometimes a Great Notion	Ken Kesey	1964	0140045295	\N	\N
3435	Whiskey Beach	Nora Roberts	2013	0399159894	\N	\N
3436	Under The Net	Iris Murdoch	1954	0140014454	\N	\N
3437	Big Nate on a Roll	Lincoln Peirce	2009	0061944394	\N	\N
3438	The Missing Piece	Shel Silverstein	1976	0060256710	\N	\N
3439	The Lovely Bones	Alice Sebold	2002	0316166685	\N	\N
3440	Girlfriend in a Coma	Douglas Coupland	1998	0060987324	\N	\N
3441	Hornet Flight	Ken Follett	2002	0451210743	\N	\N
3442	The Rose Garden	Susanna Kearsley	2011	0749009519	\N	\N
3443	The Black house	Peter  May	2009	1849163847	\N	\N
3444	Dead as a Doornail 	Charlaine Harris	2005	0441013333	\N	\N
3445	The Illustrated Man	Ray Bradbury	1951	000712774X	\N	\N
3446	The Defector	Daniel Silva	2009	0399155686	\N	\N
3447	Eating Animals	Jonathan Safran Foer	2009	0316069906	\N	\N
3448	The Paying Guests	Sarah Waters	2014	1594633118	\N	\N
3449	Blood Rites	Jim Butcher	2004	0451459873	\N	\N
3450	Fear	Michael  Grant	2012	0061449156	\N	\N
3451	I Hunt Killers	Barry Lyga	2012	0316125849	\N	\N
3452	Sunset	Erin Hunter	2006	0060827696	\N	\N
3453	A Drink Before the War	Dennis Lehane	1994	0156029022	\N	\N
3454	Green Rider	Kristen Britain	1998	0886778581	\N	\N
3455	The Atonement Child	Francine Rivers	1997	084230052X	\N	\N
3456	Anne of Avonlea	L.M. Montgomery	1909	0553213148	\N	\N
3457	Runaway	Alice Munro	2004	1400077915	\N	\N
3458	Annie on My Mind	Nancy Garden	1982	0374404143	\N	\N
3459	Love in the Afternoon	Lisa Kleypas	2010	0312605390	\N	\N
3460	Women	Charles Bukowski	1978	0061177598	\N	\N
3461	Doctor Sleep	Stephen King	2013	1476727651	\N	\N
3462	Magic Hour	Kristin Hannah	2006	0345467531	\N	\N
3463	Feet of Clay	Terry Pratchett	1996	0552153257	\N	\N
3464	Incarnate	Jodi Meadows	2012	0062060759	\N	\N
3465	The Sands of Time	Sidney Sheldon	1988	0006174434	\N	\N
3466	Gods in Alabama	Joshilyn Jackson	2005	0446694533	\N	\N
3467	Gentle Rogue	Johanna Lindsey	1990	0380753022	\N	\N
3468	One True Thing	Anna Quindlen	1994	0812976185	\N	\N
3469	Chasing Perfect	Susan Mallery	2010	0373774524	\N	\N
3470	Dark Reunion	L.J. Smith	1991	1847386823	\N	\N
3471	White	Ted Dekker	2004	1595540350	\N	\N
3472	Less Than Zero	Bret Easton Ellis	1985	0679781498	\N	\N
3473	Trickster's Queen	Tamora Pierce	2004	0375828788	\N	\N
3474	Hotel du Lac	Anita Brookner	1984	0679759328	\N	\N
3475	Forbidden	Tabitha Suzuma	2010	1862308160	\N	\N
3476	Eileen	Ottessa Moshfegh	2015	1594206627	\N	\N
3477	Skippyjon Jones	Judy Schachner	2003	0525471340	\N	\N
3478	Spindle's End	Robin McKinley	2000	0441008658	\N	\N
3479	Dust	Hugh Howey	2013	1490904387	\N	\N
3480	The Killing Hour	Lisa Gardner	2003	0553584529	\N	\N
3481	The Tempest	William Shakespeare	1623	0743482832	\N	\N
3482	Pigs in Heaven	Barbara Kingsolver	1993	0571171788	\N	\N
3483	What the Night Knows	Dean Koontz	2010	0553807722	\N	\N
3484	The Boys from Brazil	Ira Levin	1976	0394402677	\N	\N
3485	The Lying Game	Sara Shepard	2010	0061869708	\N	\N
3486	Ramona Forever	Beverly Cleary	1984	038072801X	\N	\N
3487	The Siren	Kiera Cass	2009	1440154236	\N	\N
3488	Spider Bones	Kathy Reichs	2010	1439102392	\N	\N
3489	Beautiful Secret	Christina Lauren	2015	1476778019	\N	\N
3490	The Forbidden Game	L.J. Smith	1997	1416989404	\N	\N
3491	Heretics of Dune	Frank Herbert	1984	0441328008	\N	\N
3492	Rosemary's Baby	Ira Levin	1967	0451194004	\N	\N
3493	Legion	Brandon Sanderson	2012	1596064854	\N	\N
3494	Uncommon Criminals	Ally Carter	2011	1423147952	\N	\N
3495	The Last Colony	John Scalzi	2007	0765316978	\N	\N
3496	The Truth About Forever	Sarah Dessen	2004	0142406252	\N	\N
3497	The Gathering	Anne Enright	2007	0802170390	\N	\N
3498	An Abundance of Katherines	John Green	2006	0525476881	\N	\N
3499	Wildwood Dancing	Juliet Marillier	2007	0375833641	\N	\N
3500	The Moviegoer	Walker Percy	1961	0375701966	\N	\N
3501	The Things They Carried	Tim O'Brien	1990	0767902890	\N	\N
3502	Ungifted	Gordon Korman	2012	006174266X	\N	\N
3503	Replay	Ken Grimwood	1986	068816112X	\N	\N
3504	Seeing Redd	Frank Beddor	2007	0803731558	\N	\N
3505	A Mercy	Toni Morrison	2008	0307264238	\N	\N
3506	Breathe	Sarah Crossan	2012	0062118692	\N	\N
3507	Habibi	Craig Thompson	2011	0375424148	\N	\N
3508	Animalia	Graeme Base	1986	0810918684	\N	\N
3509	Three Day Road	Joseph Boyden	2005	0143017861	\N	\N
3510	Nights in Rodanthe	Nicholas Sparks	2002	0446612707	\N	\N
3511	Hiroshima	John Hersey	1946	0679721037	\N	\N
3512	Perfect Scoundrels	Ally Carter	2013	1423166000	\N	\N
3513	Anna Dressed in Blood	Kendare Blake	2011	0765328658	\N	\N
3514	Half-Blood	Jennifer L. Armentrout	2011	0983157200	\N	\N
3515	Blood Magick	Nora Roberts	2014	0425259870	\N	\N
3516	Girl Waits with Gun	Amy  Stewart	2015	0544409914	\N	\N
3517	Games People Play	Eric Berne	1964	0345032799	\N	\N
3518	These things hidden	Heather Gudenkauf	2011	0778328791	\N	\N
3519	Before we met	Lucie Whitehouse	2014	1620402750	\N	\N
3520	Pathfinder	Orson Scott Card	2010	141699176X	\N	\N
3521	Dances with Wolves	Michael Blake	1988	0449000753	\N	\N
3522	A Modest Proposal	Jonathan Swift	1729	1605977276	\N	\N
3523	Deadlocked	Charlaine Harris	2012	0575096578	\N	\N
3524	I Will Teach You To Be Rich	Ramit Sethi	2009	0761147489	\N	\N
3525	One Hundred Names	Cecelia Ahern	2012	0007350481	\N	\N
3526	The Diamond Age	Neal Stephenson	1995	0553380966	\N	\N
3527	Cabin Fever	Jeff Kinney	2010	1419702238	\N	\N
3528	Pushing the Limits	Katie McGarry	2012	0373210493	\N	\N
3529	A Countess Below Stairs	Eva Ibbotson	1981	0142408654	\N	\N
3530	All Around the Town	Mary Higgins Clark	1992	1416516727	\N	\N
3531	Those Who Save Us	Jenna Blum	2004	0156031663	\N	\N
3532	Perfect Match	Jodi Picoult	2002	0743418735	\N	\N
3533	The Bourbon Kings	J.R. Ward	2015	0698193032	\N	\N
3534	Freckle Juice	Judy Blume	1978	9991373764	\N	\N
3535	La tregua	Mario Benedetti	1960	9707311169	\N	\N
3536	The Night Angel Trilogy	Brent Weeks	2009	160751351X	\N	\N
3537	The Last Kingdom	Bernard Cornwell	2004	0060887184	\N	\N
3538	The Andromeda Strain	Michael Crichton	1969	0060541814	\N	\N
3539	Wait for Me	Elisabeth Naughton	2011	1468139339	\N	\N
3540	Promise of Blood	Brian  McClellan	2013	0316219037	\N	\N
3541	To Kill a Mockingbird	Harper Lee	1960	0061120081	\N	\N
3542	Be Here Now	Ram Dass, Richard Alpert	1971	0517543052	\N	\N
3543	The Lion	Nelson DeMille	2010	044658083X	\N	\N
3544	Ironweed	William  Kennedy	1983	0743263065	\N	\N
3545	The Lollipop Shoes	Joanne Harris	2007	0061431621	\N	\N
3546	What The Dead Know	Laura Lippman	2007	0061128856	\N	\N
3547	The Rise of Nine	Pittacus Lore	2012	0061974587	\N	\N
3548	Prince Lestat	Anne Rice	2014	0307962520	\N	\N
3549	The Farm	Tom Rob Smith	2014	1471110672	\N	\N
3550	City of Ashes	Cassandra Clare	2008	1416914293	\N	\N
3551	The Shock of the New	Robert Hughes	1980	0500275823	\N	\N
3552	The River	Gary Paulsen	1991	044022750X	\N	\N
3553	Royal Assassin	Robin Hobb	1996	0006480101	\N	\N
3554	Sea Glass	Anita Shreve	2002	0316013838	\N	\N
3555	Eyes of the Dragon	Stephen King	1987	0751504572	\N	\N
3556	The Marriage Plot	Jeffrey Eugenides	2011	0374203059	\N	\N
3557	Steelheart	Brandon Sanderson	2013	0385743564	\N	\N
3558	The Reversal	Michael Connelly	2010	0316069485	\N	\N
3559	Just Ella	Margaret Peterson Haddix	1999	1416936491	\N	\N
3560	Defiance	C.J. Redwine	2012	0062117181	\N	\N
3561	The Witch with No Name	Kim Harrison	2014	006195795X	\N	\N
3562	Meant to Be	Lauren Morrill	2012	0385741774	\N	\N
3563	Carry On	Rainbow Rowell	2015	1250049555	\N	\N
3564	A Land More Kind Than Home	Wiley Cash	2012	0062088149	\N	\N
3565	Aurora	Kim Stanley Robinson	2015	0316098108	\N	\N
3566	Magic Strikes	Ilona Andrews	2009	0441017029	\N	\N
3567	Amphigorey	Edward Gorey	1972	0399504338	\N	\N
3568	Ariel	Sylvia Plath	1965	0060931728	\N	\N
3569	Blue Nights	Joan Didion	2011	0307267679	\N	\N
3570	Days of Blood & Starlight	Laini Taylor	2012	0316133973	\N	\N
3571	A Bend in the Road	Nicholas Sparks	2001	0446696137	\N	\N
3572	The Murder on the Links	Agatha Christie	1923	0425067947	\N	\N
3573	The Red Knight	Miles  Cameron	2012	0575113294	\N	\N
3574	Grass for His Pillow 	Lian Hearn	2003	1594480036	\N	\N
3575	Girls in Love	Jacqueline Wilson	1997	0552551317	\N	\N
3576	The Holiness of God	R.C. Sproul	1984	0842339655	\N	\N
3577	Vampires are Forever	Lynsay Sands	2008	0061229695	\N	\N
3578	Girl, Stolen	April Henry	2010	0805090053	\N	\N
3579	Then We Came to the End	Joshua Ferris	2007	0316016381	\N	\N
3580	Cut	Patricia McCormick	2000	0439324599	\N	\N
3581	Brain on Fire	Susannah Cahalan	2012	145162137X	\N	\N
3582	Onyx	Jennifer L. Armentrout	2012	1620610116	\N	\N
3583	The House of Hades	Rick Riordan	2013	1423146727	\N	\N
3584	The Daylight War	Peter V. Brett	2013	0345503821	\N	\N
3585	The Dogs of War	Frederick Forsyth	1974	0553268465	\N	\N
3586	Monsters of Men	Patrick Ness	2010	1406310271	\N	\N
3587	Downtown Owl	Chuck Klosterman	2008	1416544186	\N	\N
3588	The Husband's Secret 	Liane Moriarty	2013	0399159347	\N	\N
3589	Cell	Stephen King	2006	1416524517	\N	\N
3590	Sullivan's Island	Dorothea Benton Frank	1999	0425193942	\N	\N
3591	A Tale Dark and Grimm	Adam Gidwitz	2010	0525423346	\N	\N
3592	The Sword of Shannara	Terry Brooks	1977	1857231511	\N	\N
3593	Seta	Alessandro Baricco	1996	0375703829	\N	\N
3594	Foundation and Earth	Isaac Asimov	1986	0553587579	\N	\N
3595	The Goose Girl	Shannon Hale	2003	1582349908	\N	\N
3596	The Penelopiad	Margaret Atwood	2005	1841957178	\N	\N
3597	This Body of Death	Elizabeth  George	2010	0061160881	\N	\N
3598	Stone Butch Blues	Leslie Feinberg	1993	1555838537	\N	\N
3599	All But My Life	Gerda Weissmann Klein	1959	0809015803	\N	\N
3600	Tenth of December	George Saunders	2013	0812993802	\N	\N
3601	Broken Harbor	Tana French	2012	1444705105	\N	\N
3602	Giovanni's Room	James     Baldwin	1956	0141186356	\N	\N
3603	Heartless	Sara Shepard	2010	0061566152	\N	\N
3604	My Last Duchess	Daisy Goodwin	2010	0312658656	\N	\N
3605	Kitten's First Full Moon	Kevin Henkes	2004	0060588284	\N	\N
3606	A Deepness in the Sky	Vernor Vinge	1998	0812536355	\N	\N
3607	Personal History	Katharine Graham	1997	0375701044	\N	\N
3608	U Is for Undertow	Sue Grafton	2009	039915597X	\N	\N
3609	Interesting Times	Terry Pratchett	1994	0061056901	\N	\N
3610	The Supernaturalist	Eoin Colfer	2004	078685149X	\N	\N
3611	Our Mutual Friend	Charles Dickens	1865	0375761144	\N	\N
3612	Tropic of Cancer	Henry Miller	1934	0802131786	\N	\N
3613	The Perfume Collector	Kathleen Tessaro	2013	0062257838	\N	\N
3614	Excalibur	Bernard Cornwell	1997	0312206488	\N	\N
3615	The Remains of the Day	Kazuo Ishiguro	1989	0571225381	\N	\N
3616	A Dangerous Path	Erin Hunter	2004	0060525657	\N	\N
3617	Alienated	Melissa Landers	2014	1423170288	\N	\N
3618	Rogue Squadron	Michael A. Stackpole	1996	0553568019	\N	\N
3619	The Sportswriter	Richard Ford	1986	0394743253	\N	\N
3620	Afterlife	Claudia Gray	2011	0061284424	\N	\N
3621	Palace of Stone	Shannon Hale	2012	1599908735	\N	\N
3622	The Lewis Man	Peter  May	2011	0857382209	\N	\N
3623	Tiger's Destiny	Colleen Houck	2012	1402798431	\N	\N
3624	Shut Out	Kody Keplinger	2011	0316175560	\N	\N
3625	Scruples	Judith Krantz	1978	0297775340	\N	\N
3626	Brisingr	Christopher Paolini	2008	0375826726	\N	\N
3627	Beatrice and Virgil	Yann Martel	2010	1400069262	\N	\N
3628	The Christmas Sweater	Glenn Beck	2008	141659485X	\N	\N
3629	milk and honey	Rupi Kaur	2014	1502784270	\N	\N
3630	Night Broken	Patricia Briggs	2014	042525674X	\N	\N
3631	The Pigman	Paul Zindel	1968	0060757353	\N	\N
3632	Toujours Provence	Peter Mayle	1991	0679736042	\N	\N
3633	The Buddha of Suburbia	Hanif Kureishi	1990	014013168X	\N	\N
3634	Wise Blood	Flannery O'Connor	1952	0374530637	\N	\N
3635	The Naked Sun	Isaac Asimov	1957	0586010165	\N	\N
3636	What Do You Do?	Gillian Flynn	2014	0804188971	\N	\N
3637	The Night Circus	Erin Morgenstern	2011	0385534639	\N	\N
3638	Breakable	Tammara Webber	2014	0425266869	\N	\N
3639	Bridge to Terabithia	Katherine Paterson	1977	0439366771	\N	\N
3640	Queen of the Darkness	Anne Bishop	2000	0451456734	\N	\N
3641	After We Collided	Anna Todd	2013	1476792496	\N	\N
3642	The Happiness Project	Gretchen Rubin	2009	0061583251	\N	\N
3643	Pilgrim at Tinker Creek	Annie Dillard	1974	0072434171	\N	\N
3644	Swing Time	Zadie Smith	2016	0241144159	\N	\N
3645	Brave New World	Aldous Huxley	1932	0060929871	\N	\N
3646	Capital	John Lanchester	2012	0571234607	\N	\N
3647	Schindler's Ark	Thomas Keneally	1982	0340606517	\N	\N
3648	Renegade's Magic	Robin Hobb	2007	006147312X	\N	\N
3649	Flight Behavior	Barbara Kingsolver	2012	0062124269	\N	\N
3650	Jamaica Inn	Daphne du Maurier	1935	0316252905	\N	\N
3651	Of Mice and Men 	John Steinbeck	1937	0142000671	\N	\N
3652	Jingo	Terry Pratchett	1997	0552154164	\N	\N
3653	Reasons To Stay Alive 	Matt Haig	2015	1782115080	\N	\N
3654	The Runaway King	Jennifer A. Nielsen	2013	0545284155	\N	\N
3655	Fallout (Crank, #3)	Ellen Hopkins	2010	1416950095	\N	\N
3656	The Great Dune Trilogy	Frank Herbert	1977	0575070706	\N	\N
3657	A Spool of Blue Thread	Anne Tyler	2015	0385683421	\N	\N
3658	Mr. Brown Can Moo! Can You?	Dr. Seuss	1970	0007169914	\N	\N
3659	The Red Pyramid	Rick Riordan	2010	1423113381	\N	\N
3660	The Haunted	Jessica Verday	2010	141697895X	\N	\N
3661	Double Time	Olivia Cunning	2012	1402271514	\N	\N
3662	The Golden Notebook	Doris Lessing	1962	006093140X	\N	\N
3663	Ser Como o Rio que Flui	Paulo Coelho	2000	0007235801	\N	\N
3664	Things Not Seen	Andrew Clements	2002	0142400769	\N	\N
3665	Nights of Rain and Stars	Maeve Binchy	2004	0752865366	\N	\N
3666	The Robots of Dawn	Isaac Asimov	1983	0553299492	\N	\N
3667	Just One Night	Gayle Forman	2014	0698184890	\N	\N
3668	North of Beautiful	Justina Chen	2009	0316025054	\N	\N
3669	Beautiful Day	Elin Hilderbrand	2013	0316099783	\N	\N
3670	On Beauty	Zadie Smith	2005	0143037749	\N	\N
3671	F is for Fugitive	Sue Grafton	1988	0312939043	\N	\N
3672	Graceling	Kristin Cashore	2008	015206396X	\N	\N
3673	Thirst No. 1	Christopher Pike	1998	1416983082	\N	\N
3674	Child 44	Tom Rob Smith	2008	0446402397	\N	\N
3675	One Foot in the Grave	Jeaniene Frost	2008	0061245097	\N	\N
3676	Forever Princess	Meg Cabot	2008	0061232920	\N	\N
3677	Dust & Decay	Jonathan Maberry	2011	1442402350	\N	\N
3678	The Fourth Bear	Jasper Fforde	2006	0670037729	\N	\N
3679	All Fall Down	Ally Carter	2015	0545654742	\N	\N
3680	Radiant Shadows	Melissa Marr	2010	0061659223	\N	\N
3681	Prophet	Frank E. Peretti	1992	1581345267	\N	\N
3682	Bloodsucking Fiends	Christopher Moore	1995	0060735414	\N	\N
3683	Black Hawk Down	Mark Bowden	1999	0871137380	\N	\N
3684	Queen of Babble	Meg Cabot	2006	0060851988	\N	\N
3685	Personal Demon	Kelley Armstrong	2008	0553806610	\N	\N
3686	Prozac Nation	Elizabeth Wurtzel	1994	1573225126	\N	\N
3687	I Am Half-Sick of Shadows 	Alan Bradley	2011	0385344015	\N	\N
3688	Magic's Pawn	Mercedes Lackey	1989	0886773520	\N	\N
3689	A Bite to Remember	Lynsay Sands	2006	006077407X	\N	\N
3690	Messenger 	Lois Lowry	2004	0385732538	\N	\N
3691	Under the Never Sky	Veronica Rossi	2011	1907411054	\N	\N
3692	Deeper than the Dead	Tami Hoag	2008	0752891634	\N	\N
3693	Beauty Queens	Libba Bray	2011	0439895979	\N	\N
3694	The Devil Wears Prada	Lauren Weisberger	2003	0307275558	\N	\N
3695	The Silent Wife	A.S.A. Harrison	2013	0143123238	\N	\N
3696	Heist Society	Ally Carter	2010	1423116399	\N	\N
3697	True Evil	Greg Iles	2006	0743292499	\N	\N
3698	The Lost Prince	Julie Kagawa	2012	0373210574	\N	\N
3699	Odd Thomas	Dean Koontz	2003	0553384287	\N	\N
3700	The Killer Inside Me	Jim Thompson	1952	0679733973	\N	\N
3701	Wintergirls	Laurie Halse Anderson	2009	067001110X	\N	\N
3702	Falling Under	Gwen Hayes	2011	0451232682	\N	\N
3703	Jesus' Son: Stories	Denis Johnson	1992	0060975776	\N	\N
3704	Executive Orders	Tom Clancy	1996	0006479758	\N	\N
3705	The Book Thief	Markus Zusak	2005	0375831002	\N	\N
3706	Grip of the Shadow Plague	Brandon Mull	2008	1590388984	\N	\N
3707	The Outsiders	S.E. Hinton	1967	014038572X	\N	\N
3708	Passage to Dawn	R.A. Salvatore	1993	0786907509	\N	\N
3709	The Fury	L.J. Smith	1991	0061059919	\N	\N
3710	The Whole Truth	David Baldacci	2008	0446195979	\N	\N
3711	Endymion	Dan Simmons	1996	0553572946	\N	\N
3712	Dodger	Terry Pratchett	2012	0062009494	\N	\N
3713	Wonderstruck	Brian Selznick	2011	0545027896	\N	\N
3714	The City of Mirrors	Justin Cronin	2016	034550500X	\N	\N
3715	Happily Ever After	Kiera Cass	2015	0008143676	\N	\N
3716	The Archived	Victoria Schwab	2013	1423157311	\N	\N
3717	The Perfect Husband	Lisa Gardner	1997	0553587692	\N	\N
3718	After the Funeral 	Agatha Christie	1953	0425173909	\N	\N
3719	Llama Llama Mad at Mama	Anna Dewdney	2007	0670062405	\N	\N
3720	Greg Heffley's Journal	Jeff Kinney	2004	0810993139	\N	\N
3721	Strange Candy	Laurell K. Hamilton	2006	0425212017	\N	\N
3722	Going Bovine	Libba Bray	2009	0385733976	\N	\N
3723	Cross Justice	James Patterson	2015	0316407135	\N	\N
3724	Assassination Vacation	Sarah Vowell	2005	074326004X	\N	\N
3725	The Seeress of Kell	David Eddings	1991	0552148067	\N	\N
3726	The Lowland	Jhumpa Lahiri	2013	0307265749	\N	\N
3727	A Widow for One Year	John Irving	1998	0345469011	\N	\N
3728	The Kite Runner 	Khaled Hosseini	2003	1594480001	\N	\N
3729	Snuff	Chuck Palahniuk	2008	0385517882	\N	\N
3730	Rodrick Rules	Jeff Kinney	2008	0810994739	\N	\N
3731	Predator	Patricia Cornwell	2005	0425210278	\N	\N
3732	Death Without Company	Craig Johnson	2006	0143038389	\N	\N
3733	Tempted	P.C. Cast, Kristin Cast	2008	1905654588	\N	\N
3734	The Longest Ride	Nicholas Sparks	2012	1455520659	\N	\N
3735	Skin Tight	Carl Hiaasen	1989	0446695696	\N	\N
3736	Intet	Janne Teller, Martin Aitken	2000	1416985794	\N	\N
3737	Breaking Free	Beth Moore	1999	0805445528	\N	\N
3738	Raven's Gate	Anthony Horowitz	2005	0439680093	\N	\N
3739	Lexicon	Max Barry	2013	1594205388	\N	\N
3740	Crossing to Safety	Wallace Stegner	1987	037575931X	\N	\N
3741	Every Which Way But Dead	Kim Harrison	2005	006057299X	\N	\N
3742	The Amityville Horror	Jay Anson	1977	0553116606	\N	\N
3743	Blood Canticle	Anne Rice	2003	0099460173	\N	\N
3744	Marked in Flesh	Anne Bishop	2016	0451474473	\N	\N
3745	Beneath a Marble Sky	John Shors	2004	0451218469	\N	\N
3746	The Far Side Gallery 3	Gary Larson	1984	0836218310	\N	\N
3747	Equal Rites	Terry Pratchett	1987	0060855908	\N	\N
3748	Thinner	Richard Bachman, Stephen King	1984	0451190750	\N	\N
3749	Prince of Fools	Mark  Lawrence	2014	0425268780	\N	\N
3750	The Empty Chair 	Jeffery Deaver	2000	0684855631	\N	\N
3751	Blink	Ted Dekker	2002	0849945119	\N	\N
3752	Track of the Cat	Nevada Barr	1993	0380721643	\N	\N
3753	The Name of the Wind	Patrick Rothfuss	2007	075640407X	\N	\N
3754	Afterworlds	Scott Westerfeld	2014	1481422340	\N	\N
3755	Mistral's Kiss	Laurell K. Hamilton	2006	0345443586	\N	\N
3756	The Weight of Water	Anita Shreve	1997	0316780375	\N	\N
3757	Witches Abroad	Terry Pratchett	1991	0061020613	\N	\N
3758	Mr. Mercedes	Stephen King	2014	1476754454	\N	\N
3759	The Corrections	Jonathan Franzen	2001	1841156736	\N	\N
3760	The Litigators	John Grisham	2011	1444729705	\N	\N
3761	Anne of Ingleside	L.M. Montgomery	1939	0553213156	\N	\N
3762	Odd Hours	Dean Koontz	2008	0553807056	\N	\N
3763	The Pilot's Wife	Anita Shreve	1998	0316601950	\N	\N
3764	Seeds of Yesterday	V.C. Andrews	1984	0671729489	\N	\N
3765	The Julian chapter	R.J. Palacio	2014	0553499084	\N	\N
3766	The Rise of Endymion	Dan Simmons	1997	0553572989	\N	\N
3767	The Yellow Birds	Kevin Powers	2012	0316219363	\N	\N
3768	Steal Like an Artist	Austin Kleon	2010	0761169253	\N	\N
3769	The Christmas Train	David Baldacci	2001	0446615757	\N	\N
3770	Skeleton Key	Anthony Horowitz	2002	0142406147	\N	\N
3771	The Last Mile	David Baldacci	2016	1455566020	\N	\N
3772	Drama	Raina Telgemeier, Gurihiru	2012	0545326990	\N	\N
3773	Entwined with You	Sylvia Day	2013	0425263924	\N	\N
3774	Great North Road	Peter F. Hamilton	2012	034552666X	\N	\N
3775	Bad Blood	John Sandford	2010	0399156909	\N	\N
3776	Suttree	Cormac McCarthy	1979	0679736328	\N	\N
3777	The Last Juror	John Grisham	2004	0385339682	\N	\N
3778	Flight Of The Old Dog	Dale Brown	1987	042519518X	\N	\N
3779	Gone	Michael  Grant	2008	0061448761	\N	\N
3780	The Declaration	Gemma Malley	2007	1599901196	\N	\N
3781	The Red House	Mark Haddon	2012	0385535775	\N	\N
3782	Inferno	Dan Brown	2013	0385537859	\N	\N
3783	Friday	Robert A. Heinlein	1982	0345414004	\N	\N
3784	Drop Shot	Harlan Coben	1996	0440220459	\N	\N
3785	Foreign Influence	Brad Thor	2010	1416586598	\N	\N
3786	The Fireman	Joe Hill	2016	0062200631	\N	\N
3787	The Prestige	Christopher Priest	1995	0312858868	\N	\N
3788	The Spellman Files	Lisa Lutz	2007	0743571355	\N	\N
3789	Voyager	Diana Gabaldon	1993	0385335997	\N	\N
3790	The Queen's Fool	Philippa Gregory	2003	0743246071	\N	\N
3791	The Associate	John Grisham	2009	0385517831	\N	\N
3792	Salt to the Sea	Ruta Sepetys	2016	0399160302	\N	\N
3793	Indulgence in Death	J.D. Robb	2010	0399156879	\N	\N
3794	The Reality Bug	D.J. MacHale	2003	0743437349	\N	\N
3795	Kiss of the Night	Sherrilyn Kenyon	2004	074990741X	\N	\N
3796	Back When We Were Grownups	Anne Tyler	2001	0345477243	\N	\N
3797	The Persuader	Lee Child	2003	0440241006	\N	\N
3798	The Bone Tree	Greg Iles	2015	0062311115	\N	\N
3799	Wintersmith	Terry Pratchett	2006	0060890312	\N	\N
3800	The Lost City of Faar	D.J. MacHale	2003	0743437322	\N	\N
3801	Revolution	Jennifer Donnelly	2010	0385737637	\N	\N
3802	Dark Needs at Night's Edge	Kresley Cole	2008	141654707X	\N	\N
3803	The Sands of Time	Sidney Sheldon	1985	0007165161	\N	\N
3804	Sick Puppy	Carl Hiaasen	2000	0446695688	\N	\N
3805	Anatomy for the Artist	Sarah Simblet	2001	078948045X	\N	\N
3806	In the Unlikely Event	Judy Blume	2015	1101875046	\N	\N
3807	The Last Guardian	Eoin Colfer	2012	1423161610	\N	\N
3808	Maktub	Paulo Coelho	1994	8408057235	\N	\N
3809	Bite Me	Christopher Moore	2010	0061779725	\N	\N
3810	Modern Lovers	Emma Straub	2016	159463467X	\N	\N
3811	Safe Haven	Nicholas Sparks	2010	044654759X	\N	\N
3812	Gods and Generals	Jeff Shaara	1996	1841580651	\N	\N
3813	King Rat	James Clavell	1962	0385333765	\N	\N
3814	Salem Falls	Jodi Picoult	2001	0743418719	\N	\N
3815	Eaters of the Dead	Michael Crichton	1976	0060891564	\N	\N
3816	The Invisible Man	H.G. Wells	1897	0451528522	\N	\N
3817	The Raven Boys	Maggie Stiefvater	2012	0545424925	\N	\N
3818	The Cartel	Don Winslow	2015	1101874996	\N	\N
3819	A Northern Light	Jennifer Donnelly	2003	0152053107	\N	\N
3820	Common Sense	Thomas Paine	1776	0143036254	\N	\N
3821	Shadows	Jennifer L. Armentrout	2012	1620610086	\N	\N
3822	Hissy Fit	Mary Kay Andrews	2004	0060564652	\N	\N
3823	Pay It Forward	Catherine Ryan Hyde	1999	0743412028	\N	\N
3824	The Bone Garden	Tess Gerritsen	2007	0593057775	\N	\N
3825	Lost Lake	Sarah Addison Allen	2014	125001980X	\N	\N
3826	Tithe: A Modern Faerie Tale	Holly Black	2002	0689867042	\N	\N
3827	Heaven	V.C. Andrews	1985	0671729446	\N	\N
3828	The Beach House	Jane Green	2008	0670018856	\N	\N
3829	Midnight	Dean Koontz	1989	0425194515	\N	\N
3830	American Tabloid	James Ellroy	1995	037572737X	\N	\N
3831	The Sheltering Sky	Paul Bowles	1949	0141023422	\N	\N
3832	Mr. Darcy's Diary	Amanda Grange	2005	1402208766	\N	\N
3833	The Messenger	Markus Zusak	2002	0375836675	\N	\N
3834	The Right Stuff	Tom Wolfe	1979	0553381350	\N	\N
3835	Blindsight	Peter Watts	2006	0765312182	\N	\N
3836	Strength in What Remains	Tracy Kidder	2000	1400066212	\N	\N
3837	Financial Peace Revisited	Dave Ramsey	1992	0670032085	\N	\N
3838	Save Me	Lisa Scottoline	2011	031238078X	\N	\N
3839	Second Glance	Jodi Picoult	2003	0743454510	\N	\N
3840	The Witches	Roald Dahl, Quentin Blake	1983	0590032496	\N	\N
3841	A Thousand Pieces of You	Claudia Gray	2014	0062278967	\N	\N
3842	Absolute Fear	Lisa Jackson	2007	0758211821	\N	\N
3843	Ender's Shadow	Orson Scott Card	1998	0765342405	\N	\N
3844	The View from Saturday	E.L. Konigsburg	1996	0689862210	\N	\N
3845	Blubber	Judy Blume	1974	0330398059	\N	\N
3846	Sword Song	Bernard Cornwell	2007	0060888644	\N	\N
3847	Heartless	Gail Carriger	2011	0316127191	\N	\N
3848	The Middlesteins	Jami Attenberg	2012	1455507199	\N	\N
3849	Once and Always	Judith McNaught	1987	1416530738	\N	\N
3850	Second Life	S.J. Watson	2015	0857520199	\N	\N
3851	Ruby Holler	Sharon Creech	2002	0060560150	\N	\N
3852	The Liar	Nora Roberts	2014	0399170863	\N	\N
3853	Dairy Queen	Catherine Gilbert Murdock	2006	0618683070	\N	\N
3854	Unbelievable	Sara Shepard	2008	0060887397	\N	\N
3855	The MasterHarper of Pern	Anne McCaffrey	1998	0552142743	\N	\N
3856	Regeneration	Pat Barker	1991	0140236236	\N	\N
3857	Bad Luck and Trouble	Lee Child	2007	0385340559	\N	\N
3858	Princess in Pink	Meg Cabot	2003	0060096128	\N	\N
3859	The Alloy of Law	Brandon Sanderson	2011	0765330423	\N	\N
3860	Letter to a Christian Nation	Sam Harris	2006	0307265773	\N	\N
3861	A Walk Across the Sun	Corban Addison	2011	1402792808	\N	\N
3862	No Country for Old Men	Cormac McCarthy	2005	0375706674	\N	\N
3863	Sang Pemimpi	Andrea Hirata	2006	9793062924	\N	\N
3864	The System of the World	Neal Stephenson	2004	0060750863	\N	\N
3865	Flight: A Novel	Sherman Alexie	2007	0802170374	\N	\N
3866	Born in Shame	Nora Roberts	1996	051511779X	\N	\N
3867	Absolution Gap	Alastair Reynolds	2003	0441012914	\N	\N
3868	The Judas Strain	James Rollins	2007	0060763892	\N	\N
3869	Cards on the Table	Agatha Christie	1936	0425205959	\N	\N
3870	Jackdaws	Ken Follett	2001	0451219597	\N	\N
3871	Without Fail 	Lee Child, Dick Hill	2002	1590860624	\N	\N
3872	The Siren	Tiffany Reisz	2012	0373605692	\N	\N
3873	Little Children	Tom Perrotta	2004	0312315732	\N	\N
3874	Art of Seduction	Robert Greene	2001	1861977697	\N	\N
3875	The Known World	Edward P. Jones	2003	0061159174	\N	\N
3876	Swallowing Darkness	Laurell K. Hamilton	2008	0345495934	\N	\N
3877	Night Pleasures	Sherrilyn Kenyon	2002	0312593554	\N	\N
3878	The Girl on the Train	Paula Hawkins	2015	1594633665	\N	\N
3879	Darkfever	Karen Marie Moning	2006	0385339151	\N	\N
3880	Crave	J.R. Ward	2010	0451229444	\N	\N
3881	Ten Little Niggers	Agatha Christie	1939	0312330871	\N	\N
3882	Masquerade	Melissa de la Cruz	2007	0786838930	\N	\N
3883	Holidays on Ice	David Sedaris	1997	0316191299	\N	\N
3884	Put Me in the Zoo	Robert Lopshire	1960	067984483X	\N	\N
3885	Autobiography of a Face	Lucy Grealy	1994	0060569662	\N	\N
3886	Rivers of London	Ben Aaronovitch	2011	034552425X	\N	\N
3887	The Black Cauldron	Lloyd Alexander	1965	080508049X	\N	\N
3888	Bloodrose	Andrea Cremer	2012	0399256121	\N	\N
3889	Chomp!	Carl Hiaasen	2012	0375868429	\N	\N
3890	The Windup Girl	Paolo Bacigalupi	2009	1597801577	\N	\N
3891	Magic Study	Maria V. Snyder	2006	0373802498	\N	\N
3892	As You Like It	William Shakespeare	1599	074348486X	\N	\N
3893	Vision in White	Nora Roberts	2009	0425227510	\N	\N
3894	City of Glass	Paul Auster	1985	0140097317	\N	\N
3895	The Longest Day	Cornelius Ryan	1959	0671890913	\N	\N
3896	The Polar Express	Chris Van Allsburg	1985	0395389496	\N	\N
3897	Rabbit at Rest	John Updike	1990	0449911942	\N	\N
3898	American Psycho	Bret Easton Ellis	1991	0679735771	\N	\N
3899	Blue Moon	Alyson Noel	2009	0312532768	\N	\N
3900	The Darkest Hour	Maya Banks	2010	0425227944	\N	\N
3901	Stepbrother Dearest	Penelope Ward	2014	1502446936	\N	\N
3902	Wishful Drinking	Carrie Fisher	2008	1439102252	\N	\N
3903	The Cat in the Hat Comes Back	Dr. Seuss	1958	0394800028	\N	\N
3904	The Sirens of Titan	Kurt Vonnegut Jr.	1959	1857988841	\N	\N
3905	Valis	Philip K. Dick	1981	0679734465	\N	\N
3906	The 20th Century Art Book	Phaidon Press	1996	0714847984	\N	\N
3907	The Bird and the Sword	Amy Harmon	2016	1533134138	\N	\N
3908	Before the Fall	Noah Hawley	2016	1455561789	\N	\N
3909	The Queen of the Damned	Anne Rice	1988	0345419626	\N	\N
3910	Toll the Hounds	Steven Erikson	2008	0765310082	\N	\N
3911	The Atrocity Archives	Charles Stross	2004	0441013651	\N	\N
3912	The Chocolate War	Robert Cormier	1974	0375829873	\N	\N
3913	The Last Dragonslayer	Jasper Fforde	2010	0547738471	\N	\N
3914	Willow	Julia Hoban	2009	0803733569	\N	\N
3915	Velocity	Dean Koontz	2005	0553588257	\N	\N
3916	Nexus	Ramez Naam	2012	0857662937	\N	\N
3917	All-of-a-Kind Family	Sydney Taylor	1951	0385732953	\N	\N
3918	Devil's Game	Joanna Wylde	2014	0425272354	\N	\N
3919	The Dive From Clausen's Pier	Ann Packer	2002	0375727132	\N	\N
3920	Path of the Assassin	Brad Thor	2003	141651631X	\N	\N
3921	Pursuit of God	A.W. Tozer	1948	0875093663	\N	\N
3922	How We Decide	Jonah Lehrer	2009	0618620117	\N	\N
3923	Mockingbird	Kathryn Erskine	2010	0399252649	\N	\N
3924	The Wretched of Muirwood	Jeff Wheeler	2011	1612187005	\N	\N
3925	Raise the Titanic!	Clive Cussler	1976	0425194523	\N	\N
3926	On Chesil Beach	Ian McEwan	2007	0224081187	\N	\N
3927	Shadow Kiss	Richelle Mead	2008	1595141979	\N	\N
3928	Reunion	Karen Kingsbury, Gary Smalley	2004	0842386882	\N	\N
3929	The Paper Magician	Charlie N. Holmberg	2014	1477823832	\N	\N
3930	Fatal Voyage	Kathy Reichs	2001	1416510567	\N	\N
3931	The Concrete Blonde	Michael Connelly	1994	044661758X	\N	\N
3932	Hold Still	Nina LaCour	2009	0525421556	\N	\N
3933	Sleeping Arrangements	Madeleine Wickham	2001	0552772291	\N	\N
3934	The Blue Castle	L.M. Montgomery	1926	0553280511	\N	\N
3935	Tintentod	Cornelia Funke	2007	1905294719	\N	\N
3936	Killing Floor	Lee Child	1997	0515141429	\N	\N
3937	Red Lily	Nora Roberts	2005	0515139408	\N	\N
3938	Harriet the Spy	Louise Fitzhugh	1964	0440416795	\N	\N
3939	Drinking: A Love Story	Caroline Knapp	1996	0385315546	\N	\N
3940	Supernaturally	Kiersten White	2011	0061985864	\N	\N
3941	Full Dark, No Stars	Stephen King	2010	1439192561	\N	\N
3942	The Android's Dream	John Scalzi	2006	0765309416	\N	\N
3943	Delusion in Death	J.D. Robb	2012	0399158812	\N	\N
3944	Birdsong	Sebastian Faulks	1993	0679776818	\N	\N
3945	Ice Station	Matthew Reilly	1998	0312971230	\N	\N
3946	Saving June	Hannah Harrington	2011	1921794097	\N	\N
3947	Last Argument of Kings	Joe Abercrombie	2008	0575077905	\N	\N
3948	Midnight Awakening 	Lara Adrian	2007	0553589393	\N	\N
3949	Redshirts	John Scalzi	2012	0765316994	\N	\N
3950	The Water Knife	Paolo Bacigalupi	2015	0385352875	\N	\N
3951	Rainbow Six	Tom Clancy	1998	0425170349	\N	\N
3952	The Six Sacred Stones	Matthew Reilly	2007	1405038160	\N	\N
3953	The Secret Chord	Geraldine Brooks	2015	0670025771	\N	\N
3954	The Dreaming Void	Peter F. Hamilton	2007	0345496531	\N	\N
3955	The Matarese Circle	Robert Ludlum	1979	0752858556	\N	\N
3956	Never Seduce a Scot	Maya Banks	2012	0345533232	\N	\N
3957	The summer I turned pretty	Jenny Han	2009	144244228X	\N	\N
3958	Lake in the Clouds	Sara Donati	2002	0553582798	\N	\N
3959	Double Cross	James Patterson	2007	0316015059	\N	\N
3960	Brian's Winter	Gary Paulsen	1996	0440227194	\N	\N
3961	The Wedding Girl	Madeleine Wickham	1999	0552772275	\N	\N
3962	Orphan Train	Christina Baker Kline	2013	0061950726	\N	\N
3963	Bag of Bones	Stephen King	1998	067102423X	\N	\N
3964	As The Crow Flies	Jeffrey Archer	1990	0312997116	\N	\N
3965	Double Indemnity	James M. Cain	1936	0679723226	\N	\N
3966	Dark Flame	Alyson Noel	2010	0312590970	\N	\N
3967	Locked On	Tom Clancy, Mark Greaney	2011	039915731X	\N	\N
3968	The Rogue	Trudi Canavan	2011	184149593X	\N	\N
3969	Lucia, Lucia	Adriana Trigiani	2003	0345472446	\N	\N
3970	A Bend in the River	V.S. Naipaul	1979	0330487140	\N	\N
3971	The Scarlet Feather	Maeve Binchy	2000	0451203771	\N	\N
3972	Ordinary People	Judith Guest	1976	0140065172	\N	\N
3973	The Big Over Easy	Jasper Fforde	2005	0143037234	\N	\N
3974	Cryptonomicon	Neal Stephenson	1999	0060512806	\N	\N
3975	The Amber Spyglass	Philip Pullman	2000	0440238153	\N	\N
3976	Handle with Care	Jodi Picoult	2009	0743296419	\N	\N
3977	The Innocent Man	John Grisham	2006	0385517238	\N	\N
3978	Dad Is Fat	Jim Gaffigan	2013	0385349068	\N	\N
3979	Patient Zero	Jonathan Maberry	2009	0312382855	\N	\N
3980	The Book of Joe	Jonathan Tropper	2003	0385338104	\N	\N
3981	Zeitoun	Dave Eggers	2008	1934781630	\N	\N
3982	Sex and the City	Candace Bushnell	1996	0446617687	\N	\N
3983	Corduroy	Don Freeman	1948	0670241334	\N	\N
3984	The Miracle Worker	William  Gibson	1956	0743457587	\N	\N
3985	A Prisoner of Birth	Jeffrey Archer	2008	0312379293	\N	\N
3986	First Family	David Baldacci	2009	0446539759	\N	\N
3987	Motherless Brooklyn	Jonathan Lethem	1999	0375724834	\N	\N
3988	Pnin	Vladimir Nabokov, David Lodge	1953	1400041988	\N	\N
3989	We Are Called to Rise	Laura  McBride	2014	1476738963	\N	\N
3990	Child of the Prophecy 	Juliet Marillier	2001	0765345013	\N	\N
3991	The Westing Game	Ellen Raskin	1978	014240120X	\N	\N
3992	Silver on the Tree	Susan Cooper	1977	0689840330	\N	\N
3993	Eight Cousins	Louisa May Alcott	1874	0486455599	\N	\N
3994	The Sight	Erin Hunter	2007	0060892013	\N	\N
3995	Every Day	David Levithan	2012	0307931889	\N	\N
3996	The Aviator's Wife	Melanie Benjamin	2013	0345528670	\N	\N
3997	Gerald's Game	Stephen King	1992	0831727527	\N	\N
3998	Black Like Me	John Howard Griffin	1960	0451208641	\N	\N
3999	Mr. Murder	Dean Koontz	1993	0425210758	\N	\N
4000	A Million Little Pieces	James Frey	2003	0307276902	\N	\N
4001	Pretty Little Liars	Sara Shepard	2006	0060887303	\N	\N
4002	Danse Macabre	Stephen King	1981	042518160X	\N	\N
4003	A is for Alibi	Sue Grafton	1982	0312938993	\N	\N
4004	Lie Down With Lions	Ken Follett	1985	0451210468	\N	\N
4005	Summer Island	Kristin Hannah	2001	0345483448	\N	\N
4006	The Silent Girl	Tess Gerritsen	2011	0345515501	\N	\N
4007	Memory in Death 	J.D. Robb	2006	0425210731	\N	\N
4008	Anthem	Ayn Rand	1938	0452281253	\N	\N
4009	A Virtuous Woman 	Kaye Gibbons	1989	0375703063	\N	\N
4010	A Year Down Yonder	Richard Peck	2000	0142300705	\N	\N
4011	The Middle Place	Kelly Corrigan	2005	1401303366	\N	\N
4012	The Third Twin	Ken Follett	1996	033034837X	\N	\N
4013	The Sea	John Banville	2005	1400097029	\N	\N
4014	The Thief of Always	Clive Barker	1992	0060177241	\N	\N
4015	Escape	Carolyn Jessop, Laura Palmer	2007	0767927567	\N	\N
4016	The Summoning	Kelley Armstrong	2008	0061662690	\N	\N
4017	Sisters	Danielle Steel	2007	0385340222	\N	\N
4018	Caleb's Crossing	Geraldine Brooks	2011	0670021040	\N	\N
4019	The Leftovers	Tom Perrotta	2011	0312358342	\N	\N
4020	Violin	Anne Rice	1997	8466302204	\N	\N
4021	The Magic (The Secret #3)	Rhonda Byrne	2012	1451673442	\N	\N
4022	The Glass Menagerie	Tennessee Williams	1945	0811214044	\N	\N
4023	Paris	Edward Rutherfurd	2013	0385535309	\N	\N
4024	Inside Out & Back Again	Thanhha Lai	2011	0061962783	\N	\N
4025	The Winter People	Jennifer McMahon	2014	0385538499	\N	\N
4026	Breakfast with Buddha	Roland Merullo	2007	1565125525	\N	\N
4027	Gold	Chris Cleave	2012	1451672721	\N	\N
4028	Sons of Fortune	Jeffrey Archer	2002	033041335X	\N	\N
4029	Dead Ever After	Charlaine Harris	2013	193700788X	\N	\N
4030	A Light in the Attic	Shel Silverstein	1981	0060513063	\N	\N
4031	Plainsong	Kent Haruf	1999	0375705856	\N	\N
4032	Home Again	Kristin Hannah	1996	0449226352	\N	\N
4033	The Enchantress	Michael Scott	2012	0385735359	\N	\N
4034	The Night Sister	Jennifer McMahon	2015	0385538510	\N	\N
4035	Invisible Prey	John Sandford	2007	0399154213	\N	\N
4036	The Little House	Virginia Lee Burton	1942	0395181569	\N	\N
4037	Dark Matter	Blake Crouch	2016	1101904224	\N	\N
4038	Virals	Kathy Reichs, Brendan Reichs	2010	1595143424	\N	\N
4039	Bridge of Sighs	Richard Russo	2007	0375414959	\N	\N
4040	The Scarpetta Factor 	Patricia Cornwell	2009	0399156399	\N	\N
4041	Baby Proof	Emily Giffin	2006	0312348649	\N	\N
4042	Fever Pitch	Nick Hornby	1992	1573226882	\N	\N
4043	Mossflower	Brian Jacques	1988	0441005764	\N	\N
4044	Angela's Ashes: A Memoir	Frank McCourt	1996	0007205236	\N	\N
4045	The Folk of Faraway Tree	Enid Blyton	1946	0749732105	\N	\N
4046	Congo	Michael Crichton	1980	0060541830	\N	\N
4047	Eleven on Top	Janet Evanovich	2005	0312985347	\N	\N
4048	Honor's Splendour	Julie Garwood	1987	0671737821	\N	\N
4049	The Neighbor	Lisa Gardner	2009	0553807234	\N	\N
4050	Rainbow Valley	L.M. Montgomery	1917	0553213180	\N	\N
4051	The Moon Is Down	John Steinbeck	1942	0141185538	\N	\N
4052	Girl in Hyacinth Blue	Susan Vreeland	1999	014029628X	\N	\N
4053	The Outlaw Demon Wails 	Kim Harrison	2008	0060788704	\N	\N
4054	Iron Kissed	Patricia Briggs	2008	0441015662	\N	\N
4055	The Orchardist	Amanda Coplin	2012	006218850X	\N	\N
4056	Affliction	Laurell K. Hamilton	2013	0425255700	\N	\N
4057	The Chase	Clive Cussler	2007	0399154388	\N	\N
4058	Sweet Filthy Boy 	Christina Lauren	2014	1476751803	\N	\N
4059	The Killer Angels	Michael Shaara	1974	0345348109	\N	\N
4060	Angels Flight	Michael Connelly	1999	0446607274	\N	\N
4061	Someone	Alice McDermott	2013	0374281092	\N	\N
4062	Love Story	Erich Segal	1970	0380017601	\N	\N
4063	Shadow of the Giant	Orson Scott Card	2005	1841492051	\N	\N
4064	A Dirty Job	Christopher Moore	2006	0060590270	\N	\N
4065	Captains and the Kings	Taylor Caldwell	1972	0449205622	\N	\N
4066	The Wishsong of Shannara 	Terry Brooks	1985	1857231325	\N	\N
4067	First Frost	Sarah Addison Allen	2015	1250019834	\N	\N
4068	Runaway Ralph	Beverly Cleary	1970	0590664875	\N	\N
4069	Woken Furies	Richard K. Morgan	2005	0345479718	\N	\N
4070	The Hard Way	Lee Child	2006	0385336691	\N	\N
4071	Unwind	Neal Shusterman	2007	1416912045	\N	\N
4072	Eats, Shoots and Leaves	Lynne Truss	2003	1592402038	\N	\N
4073	Lord Jim	Joseph Conrad	1900	1551111721	\N	\N
4074	Dexter in the Dark	Jeff Lindsay	2006	0385518331	\N	\N
4075	Anansi Boys	Neil Gaiman	2005	0060515198	\N	\N
4076	Clockwork Angel	Cassandra Clare	2010	1416975861	\N	\N
4077	Motor Mouth	Janet Evanovich	2006	0060584033	\N	\N
4078	Good Wives	Louisa May Alcott	1868	1419122126	\N	\N
4079	Forever Peace 	Joe Haldeman	1997	0441005667	\N	\N
4080	Hidden	P.C. Cast, Kristin Cast	2012	0312594429	\N	\N
4081	Boundaries	Henry Cloud, John Townsend	1992	0310247454	\N	\N
4082	The Silence of the Lambs	Thomas Harris	1988	0099446782	\N	\N
4083	First Among Sequels 	Jasper Fforde	2007	0670038717	\N	\N
4084	Black Water	D.J. MacHale	2004	0689869118	\N	\N
4085	Kar	Orhan Pamuk, Maureen Freely	2002	0375706860	\N	\N
4086	The Greatest Generation	Tom Brokaw	1998	0812975294	\N	\N
4087	Club Dead	Charlaine Harris	2003	1841493015	\N	\N
4088	The Jungle Book	Rudyard Kipling	1894	0812504690	\N	\N
4089	Rainbows End	Vernor Vinge	2006	0812536363	\N	\N
4090	Books of Blood: Volume One	Clive Barker	1984	0425083896	\N	\N
4091	Candide	Voltaire	1759	0486266893	\N	\N
4092	The Family Fang	Kevin    Wilson	2011	0061579033	\N	\N
4093	The Sweet Far Thing	Libba Bray	2007	0385730306	\N	\N
4094	A Crown of Swords	Robert Jordan	1996	0812550285	\N	\N
4095	The List	Siobhan Vivian	2012	0545169178	\N	\N
4096	The Drop	Michael Connelly	2011	0316069418	\N	\N
4097	Abhorsen	Garth Nix	2003	0060278250	\N	\N
4098	Boy, Snow, Bird	Helen Oyeyemi	2013	1594631395	\N	\N
4099	Bone Crossed	Patricia Briggs	2009	1841496863	\N	\N
4100	Survivor	Chuck Palahniuk	1999	009928264X	\N	\N
4101	The Swan Thieves	Elizabeth Kostova	2010	1847442404	\N	\N
4102	Light A Penny Candle	Maeve Binchy	1982	009949857X	\N	\N
4103	Breathing Lessons	Anne Tyler	1988	0345485599	\N	\N
4104	The Covenant	Beverly  Lewis	2002	0764223305	\N	\N
4105	Snow Crash	Neal Stephenson	1992	0553380958	\N	\N
4106	House of Sand and Fog	Andre Dubus III	1999	0375727345	\N	\N
4107	The Ghost Map	Steven Johnson	2006	1594489254	\N	\N
4108	The Fires of Heaven	Robert Jordan	1993	1857232097	\N	\N
4109	Five Children and It 	E. Nesbit	1902	0140367357	\N	\N
4110	The Other Queen	Philippa Gregory	2008	1416549129	\N	\N
4111	Fourth of July Creek	Smith Henderson	2014	0062286447	\N	\N
4112	Ever After	Karen Kingsbury	2006	031024756X	\N	\N
4113	The King's Buccaneer	Raymond E. Feist	1992	0553563734	\N	\N
4114	Cook with Jamie	Jamie Oliver	2006	0718147715	\N	\N
4115	The Third Policeman	Flann O'Brien	1967	156478214X	\N	\N
4116	The Lost Gate	Orson Scott Card	2011	0765326574	\N	\N
4117	Pollyanna	Eleanor H. Porter	1912	0689849109	\N	\N
4118	The Hidden Oracle	Rick Riordan	2016	148473274X	\N	\N
4119	Pines	Blake Crouch	2012	1469216000	\N	\N
4120	Bittersweet	Miranda Beverly-Whittemore	2014	0804138567	\N	\N
4121	The Scarlatti Inheritance	Robert Ludlum	1971	0752858653	\N	\N
4122	Fall of Giants	Ken Follett	2010	0525951652	\N	\N
4123	Hunting Ground	Patricia Briggs	2009	044101738X	\N	\N
4124	The Scar of David	Susan Abulhawa	2006	1608190463	\N	\N
4125	Holes	Louis Sachar, Louis Sachar	1998	0439244196	\N	\N
4126	The Candy Shop War	Brandon Mull	2007	159038783X	\N	\N
4127	My Best Friend's Girl	Dorothy Koomson	2006	0385341326	\N	\N
4128	Rilla of Ingleside	L.M. Montgomery	1921	0553269224	\N	\N
4129	Gorillas in the Mist	Dian Fossey	1983	061808360X	\N	\N
4130	H is for Homicide	Sue Grafton	1991	044900063X	\N	\N
4131	Everything Leads to You	Nina LaCour	2014	0525425888	\N	\N
4132	The Troop	Nick Cutter	2014	1476717710	\N	\N
4133	Styxx	Sherrilyn Kenyon	2013	1250029880	\N	\N
4134	Homeland	R.A. Salvatore	1990	0786939532	\N	\N
4135	Theodore Rex	Edmund Morris	2001	0812966007	\N	\N
4136	An Ice Cold Grave	Charlaine Harris	2007	0425217299	\N	\N
4137	Hidden Riches	Nora Roberts	1994	0425197220	\N	\N
4138	The Testing	Joelle Charbonneau	2013	0547959109	\N	\N
4139	Darkfall	Dean Koontz	1984	0425214591	\N	\N
4140	Kitty Goes to Washington	Carrie Vaughn	2006	0446616427	\N	\N
4141	Welcome to the Jungle	Jim Butcher	2008	0345507460	\N	\N
4142	By the Sword	Mercedes Lackey	1991	0886774632	\N	\N
4143	Death Comes to Pemberley	P.D. James	2012	0307959856	\N	\N
4144	Love Anthony	Lisa Genova	2012	1439164681	\N	\N
4145	Authority 	Jeff VanderMeer	2014	0374104107	\N	\N
4146	The Beatles: The Biography	Bob Spitz	2005	0316013315	\N	\N
4147	The Rum Diary	Hunter S. Thompson	1998	0684856476	\N	\N
4148	Stargazer	Claudia Gray	2009	0061284408	\N	\N
4149	Twilight	Leigh Nichols, Dean Koontz	1984	0747236380	\N	\N
4150	Where the Red Fern Grows	Wilson Rawls	1961	0375806814	\N	\N
4151	R is for Ricochet	Sue Grafton	2004	0425203867	\N	\N
4152	The Buried Giant	Kazuo Ishiguro	2015	030727103X	\N	\N
4153	Frostbite	Richelle Mead	2008	1595141758	\N	\N
4154	Finale	Becca Fitzpatrick	2012	1442426675	\N	\N
4155	Abaddon's Gate	James S.A. Corey	2013	0316129070	\N	\N
4156	The Midwich Cuckoos	John Wyndham	1957	0345299116	\N	\N
4157	The Cay	Theodore Taylor	1969	044022912X	\N	\N
4158	The City of Falling Angels	John Berendt	2005	0143036939	\N	\N
4159	The Stonekeeper's Curse	Kazu Kibuishi	2009	0439846838	\N	\N
4160	Golden Son	Pierce Brown	2015	0345539826	\N	\N
4161	Out of the Easy	Ruta Sepetys	2013	039925692X	\N	\N
4162	The Earthsea Trilogy	Ursula K. Le Guin	1975	0140050930	\N	\N
4163	Cutting for Stone	Abraham Verghese	2009	0375414495	\N	\N
4164	The Egypt Game	Zilpha Keatley Snyder	1967	0808553038	\N	\N
4165	The Book with No Pictures	B.J. Novak	2014	0803741715	\N	\N
4166	Angels & Demons 	Dan Brown	2000	1416524797	\N	\N
4167	Airman	Eoin Colfer	2007	0141383356	\N	\N
4168	Memorial Day	Vince Flynn	2004	1416548009	\N	\N
4169	Beloved	Toni Morrison	1987	1400033411	\N	\N
4170	Burial Rites	Hannah Kent	2013	0316243914	\N	\N
4171	A Good Yarn	Debbie Macomber	2005	0778322955	\N	\N
4172	In This Mountain (Mitford)	Jan Karon	2002	0143035088	\N	\N
4173	The Postman	David Brin	1985	0553278746	\N	\N
4174	The Girl with All the Gifts	M.R. Carey	2014	0356500152	\N	\N
4175	The Nightingale	Kristin Hannah	2015	0312577222	\N	\N
4176	Perfect You	Elizabeth Scott	2008	1416953558	\N	\N
4177	Salvation in Death	J.D. Robb	2008	0749908904	\N	\N
4178	Glue	Irvine Welsh	2001	0099436922	\N	\N
4179	Cuentos de Eva Luna	Isabel Allende	1988	0743217187	\N	\N
4180	A Hat Full of Sky	Terry Pratchett	2004	055255264X	\N	\N
4181	The Eagle Has Landed	Jack Higgins	1975	0140273344	\N	\N
4182	Sharpe's Rifles	Bernard Cornwell	1988	0140294295	\N	\N
4183	The Little Lady Agency	Hester Browne	2005	1416527265	\N	\N
4184	The Burning Bridge	John Flanagan	2005	0399244557	\N	\N
4185	The Mist	Stephen King	1980	0451223292	\N	\N
4186	The Prodigal Daughter	Jeffrey Archer	1982	0312997140	\N	\N
4187	Half Girlfriend	Chetan Bhagat	2014	8129135728	\N	\N
4188	Fallen	Lauren Kate	2009	0385738935	\N	\N
4189	Stardust	Neil Gaiman	1999	0061142026	\N	\N
4190	Storm	Brigid Kemmerer	2012	0758272812	\N	\N
4191	The Three	Sarah Lotz	2014	031624290X	\N	\N
4192	Animal Dreams	Barbara Kingsolver	1990	0060921145	\N	\N
4193	American Born Chinese	Gene Luen Yang	2006	1596431520	\N	\N
4194	The Black Box	Michael Connelly	2012	0316069434	\N	\N
4195	The Short Victorious War	David Weber	1994	0671875965	\N	\N
4196	The Inn At Rose Harbor	Debbie Macomber	2012	0345528921	\N	\N
4197	The Crippled God	Steven Erikson	2011	0593046358	\N	\N
4198	The Day of the Triffids	John Wyndham	1951	0812967127	\N	\N
4199	Paranormalcy	Kiersten White	2010	0061985848	\N	\N
4200	Think and Grow Rich	Napoleon Hill	1937	1585424331	\N	\N
4201	The Forge of God	Greg Bear	1987	0765301075	\N	\N
4202	Uganda Be Kidding Me	Chelsea Handler	2014	1455599735	\N	\N
4203	Words of Radiance	Brandon Sanderson	2014	0765326361	\N	\N
4204	Whispers at Moonrise 	C.C. Hunter	2012	1250011914	\N	\N
4205	The Rook	Daniel O'Malley	2012	0316098795	\N	\N
4206	Lirael	Garth Nix	2001	0060590165	\N	\N
4207	Horns	Joe Hill	2009	0061147958	\N	\N
4208	Heir of Fire	Sarah J. Maas	2014	1619630656	\N	\N
4209	Magic Bleeds	Ilona Andrews	2010	0441018521	\N	\N
4210	Ya-Yas in Bloom	Rebecca Wells	2005	0007201095	\N	\N
4211	Rama II	Arthur C. Clarke, Gentry Lee	1989	2290032042	\N	\N
4212	Cursor's Fury	Jim Butcher	2006	0441014348	\N	\N
4213	Daughter of the Blood	Anne Bishop	1998	0451456718	\N	\N
4214	Blood Bound	Patricia Briggs	2007	0441014739	\N	\N
4215	Five Run Away Together	Enid Blyton	1944	0340796170	\N	\N
4216	The Lord of the Rings	J.R.R. Tolkien	1955	0618640150	\N	\N
4217	The First Part Last	Angela Johnson	2003	0689849230	\N	\N
4218	The Winner	David Baldacci	1997	0446522597	\N	\N
4219	Mind Prey	John Sandford	1995	0425152898	\N	\N
4220	Taran Wanderer	Lloyd Alexander	1967	0805080511	\N	\N
4221	The Prince	Kiera Cass	2013	0062248162	\N	\N
4222	Lord Loss	Darren Shan	2005	0316012335	\N	\N
4223	A Girl Like You	Gemma Burgess	2011	184756190X	\N	\N
4224	Smile	Raina Telgemeier	2009	0545132053	\N	\N
4225	Princess in Training	Meg Cabot	2006	0060096152	\N	\N
4226	Rot & Ruin	Jonathan Maberry	2010	1442402326	\N	\N
4227	Flaskepost fra P	Jussi Adler-Olsen	2009	8756787650	\N	\N
4228	Fudge-a-Mania	Judy Blume	1990	0425193829	\N	\N
4229	Intertwined	Gena Showalter	2009	0373210027	\N	\N
4230	Cat's Cradle	Kurt Vonnegut Jr.	1963	0140285601	\N	\N
4231	The Ship Who Sang	Anne McCaffrey	1969	0345334310	\N	\N
4232	Grasshopper Jungle	Andrew  Smith	2014	0525426035	\N	\N
4233	The Uncommon Reader 	Alan Bennett	2007	0374280967	\N	\N
4234	Never Have I Ever 	Sara Shepard	2011	0061869724	\N	\N
4235	The Very Quiet Cricket	Eric Carle	1990	0399218858	\N	\N
4236	The Looking Glass Wars	Frank Beddor	2004	0803731531	\N	\N
4237	Unnatural Death	Dorothy L. Sayers	1927	0061043583	\N	\N
4238	The Duke and I	Julia Quinn	2000	0380800829	\N	\N
4239	The Haunted Mask	R.L. Stine	1993	0439568331	\N	\N
4240	Girl in a Band	Kim Gordon	2015	0062295896	\N	\N
4241	Turn Coat	Jim Butcher	2009	0451462564	\N	\N
4242	Surfacing	Margaret Atwood	1972	0385491050	\N	\N
4243	Glamorama	Bret Easton Ellis	1998	0375703845	\N	\N
4244	Influx	Daniel Suarez	2014	0525953183	\N	\N
4245	The Beet Queen	Louise Erdrich	1985	0060835273	\N	\N
4246	Dreaming of You 	Lisa Kleypas	1994	038077352X	\N	\N
4247	Lover Enshrined, part two	J.R. Ward	2009	0451225856	\N	\N
4248	The Power of Habit	Charles Duhigg	2011	1400069289	\N	\N
4249	A Morbid Taste for Bones	Ellis Peters	1977	0446400157	\N	\N
4250	The Emperor's Tomb	Steve Berry	2010	0345505492	\N	\N
4251	Blackberry Wine	Joanne Harris	1999	0380815923	\N	\N
4252	A Son of the Circus	John Irving	1994	0345915623	\N	\N
4253	Article 5	Kristen Simmons	2012	0765329581	\N	\N
4254	Natchez Burning	Greg Iles	2014	0062311077	\N	\N
4255	The Apprentice	Tess Gerritsen	2002	0345447867	\N	\N
4256	Hold Tight	Harlan Coben	2008	0525950608	\N	\N
4257	Stoner	John  Williams, John McGahern	1965	1590171993	\N	\N
4258	The Mad Ship	Robin Hobb	1999	0006498868	\N	\N
4259	Broken	Karin Slaughter	2010	0385341970	\N	\N
4260	The Broker	John Grisham	2005	0385340540	\N	\N
4261	Halo	Alexandra Adornetto	2010	0312656262	\N	\N
4262	Envy	Sandra Brown	1999	0749932945	\N	\N
4263	The Bean Trees	Barbara Kingsolver	1988	0812474945	\N	\N
4264	The Program	Suzanne Young	2013	1442445807	\N	\N
4265	A Room with a View	E.M. Forster	1908	1420925431	\N	\N
4266	The Two Towers	J.R.R. Tolkien	1954	0618346260	\N	\N
4267	Futures and Frosting	Tara Sivec	2012	1478314605	\N	\N
4268	The Inner Circle	Brad Meltzer	2011	0446577898	\N	\N
4269	The Sum of All Fears	Tom Clancy	1991	0425184226	\N	\N
4270	Austerlitz	W.G. Sebald, Anthea Bell	2001	0140297995	\N	\N
4271	Palestine	Joe Sacco, Edward Said	1996	156097432X	\N	\N
4272	The Sandcastle Girls	Chris Bohjalian	2012	0385534795	\N	\N
4273	Xenocide	Orson Scott Card	1991	0312861877	\N	\N
4274	The Pillars of Creation	Terry Goodkind	2001	0765340747	\N	\N
4275	The Inimitable Jeeves 	P.G. Wodehouse	1923	0140284125	\N	\N
4276	Sacajawea	Anna Lee Waldo	1978	0380842939	\N	\N
4277	The Obelisk Gate	N.K. Jemisin	2016	0356508366	\N	\N
4278	Circling the Sun	Paula McLain	2015	0345534182	\N	\N
4279	Shadow of Night	Deborah Harkness	2012	0670023485	\N	\N
4280	Teacher Man	Frank McCourt	2005	0743243781	\N	\N
4281	Don't Waste Your Life	John Piper	2003	1581344988	\N	\N
4282	Cosmos	Carl Sagan	1980	0375508325	\N	\N
4283	Hannibal	Thomas Harris	1999	0099297701	\N	\N
4284	Changes	Jim Butcher	2010	045146317X	\N	\N
4285	Kim	Rudyard Kipling, Edward Said	1901	0140183523	\N	\N
4286	Black Rose	Nora Roberts	2005	0739453823	\N	\N
4287	Promised	Caragh M. O'Brien	2012	1596435712	\N	\N
4288	Memnoch The Devil	Anne Rice	1995	096319254X	\N	\N
4289	Full Moon Rising	Keri Arthur	2006	0553588451	\N	\N
4290	Everything I Never Told You	Celeste Ng	2014	159420571X	\N	\N
4291	Piercing the Darkness	Frank E. Peretti	1989	1581345275	\N	\N
4292	Across the Universe	Beth Revis	2011	1595143971	\N	\N
4293	Nature Girl	Carl Hiaasen	2006	0307262995	\N	\N
4294	Scandal in Spring	Lisa Kleypas	2006	0060562536	\N	\N
4295	Cress	Marissa Meyer	2014	0312642970	\N	\N
4296	Assholes Finish First	Tucker Max	2008	1416938745	\N	\N
4297	Good in Bed	Jennifer Weiner	2001	0743418174	\N	\N
4298	Carpe Corpus	Rachel Caine	2009	0451227190	\N	\N
4299	Tears of a Tiger	Sharon M. Draper	1994	0689806981	\N	\N
4300	Eloise	Kay Thompson, Hilary Knight	1955	067122350X	\N	\N
4301	Rage	Richard Bachman, Stephen King	1977	0451076451	\N	\N
4302	Amsterdam	Ian McEwan	1998	0385494246	\N	\N
4303	The Story of Art	E.H. Gombrich	1950	071483355X	\N	\N
4304	Hell's Corner 	David Baldacci	2010	0230706150	\N	\N
4305	I Too Had A Love Story	Ravinder Singh	2007	8188575704	\N	\N
4306	Pale Fire	Vladimir Nabokov	1962	0141185260	\N	\N
4307	Orthodoxy	G.K. Chesterton	1908	160096527X	\N	\N
4308	One Day at Horrorland	R.L. Stine	1994	0439568412	\N	\N
4309	The House of Silk	Anthony Horowitz	2011	0316196991	\N	\N
4310	Staked	Kevin Hearne	2016	0345548515	\N	\N
4311	Kiss of Crimson 	Lara Adrian	2007	0553589385	\N	\N
4312	The Cold Moon	Jeffery Deaver	2006	0743296788	\N	\N
4313	The Spectacular Now	Tim Tharp	2008	0375851798	\N	\N
4314	A Beautiful Mind	Sylvia Nasar	1998	0571212921	\N	\N
4315	In the Night Kitchen	Maurice Sendak	1970	0099417472	\N	\N
4316	The Autograph Man	Zadie Smith	2002	037570387X	\N	\N
4317	The Aeronaut's Windlass 	Jim Butcher	2015	0451466802	\N	\N
4318	The Wonder	Emma Donoghue	2016	0316393878	\N	\N
4319	Grave Mercy	Robin LaFevers	2012	054762834X	\N	\N
4320	Truce	R.L. Mathewson	2013	0988573229	\N	\N
4321	Eldest	Christopher Paolini	2005	0375840400	\N	\N
4322	Tampa	Alissa Nutting	2013	0062280562	\N	\N
4323	Cry to Heaven	Anne Rice	1982	0345396936	\N	\N
4324	One Shot	Lee Child	2005	0440241022	\N	\N
4325	A Simple Plan	Scott B. Smith	1993	0307279952	\N	\N
4326	Telegraph Avenue	Michael Chabon	2012	0061493341	\N	\N
4327	Infidel	Ayaan Hirsi Ali	2006	0743289684	\N	\N
4328	Prayers for Sale	Sandra Dallas	1997	0312385188	\N	\N
4329	Bite Me If You Can	Lynsay Sands	2007	0060774126	\N	\N
4330	Forest Born	Shannon Hale	2009	1599901676	\N	\N
4331	All-American Girl	Meg Cabot	2002	0064472779	\N	\N
4332	Fantasy Lover	Sherrilyn Kenyon	2002	0312979975	\N	\N
4333	A Place Called Freedom	Ken Follett	1995	0449225151	\N	\N
4334	Spark	Brigid Kemmerer	2012	0758272820	\N	\N
4335	Rainbow Valley	L.M. Montgomery	1919	0553269216	\N	\N
4336	Flag in Exile	David Weber	1995	0671876813	\N	\N
4337	If I Stay	Gayle Forman	2009	0525421033	\N	\N
4338	Shock Wave	Clive Cussler	1996	0743449673	\N	\N
4339	High Fidelity	Nick Hornby	1995	1573225517	\N	\N
4340	Captivated by You	Sylvia Day	2014	0425273865	\N	\N
4341	Cross	James Patterson	2006	0316159794	\N	\N
4342	Mr Maybe	Jane Green	1999	0767905202	\N	\N
4343	Alif the Unseen	G. Willow Wilson	2012	0802120202	\N	\N
4344	Mortal Prey	John Sandford	2002	0425189864	\N	\N
4345	Gone	Lisa Gardner	2006	0553588079	\N	\N
4346	Elle s'appelait Sarah	Tatiana de Rosnay	2007	0312370830	\N	\N
4347	Windmills of the Gods	Sidney Sheldon	1987	0006174426	\N	\N
4348	The Partner	John Grisham	1997	0385339100	\N	\N
4349	Mystery	Jonathan Kellerman	2011	0345505697	\N	\N
4350	Deadhouse Gates	Steven Erikson	2000	0765310023	\N	\N
4351	The Vanished Man	Jeffery Deaver	2003	0743437810	\N	\N
4352	The Double Bind	Chris Bohjalian	2007	1400047463	\N	\N
4353	Unspoken	Sarah Rees Brennan	2012	0375870415	\N	\N
4354	The Last Anniversary	Liane Moriarty	2006	0060890681	\N	\N
4355	Visions of Heat	Nalini Singh	2007	042521575X	\N	\N
4356	The Name of the Star	Maureen Johnson	2011	0399256601	\N	\N
4357	I'd Know You Anywhere	Laura Lippman	2010	0061706558	\N	\N
4358	Firestarter	Stephen King	1980	0451167805	\N	\N
4359	An Echo in the Bone	Diana Gabaldon	2009	0752898477	\N	\N
4360	Twisted Palace	Erin Watt	2016	1682305066	\N	\N
4361	Miller's Valley	Anna Quindlen	2016	0812996089	\N	\N
4362	Darkness	John Saul	1991	0553297260	\N	\N
4363	The Magicians' Guild	Trudi Canavan	2001	1841493139	\N	\N
4364	Restless	William  Boyd	2006	0747589372	\N	\N
4365	The Informers	Bret Easton Ellis	1994	0330339184	\N	\N
4366	One Door Away from Heaven	Dean Koontz	2001	0553582755	\N	\N
4367	Death du Jour	Kathy Reichs	1999	0671011375	\N	\N
4368	First Test	Tamora Pierce	1999	0679889175	\N	\N
4369	The Boston Girl	Anita Diamant	2014	1439199353	\N	\N
4370	Nefertiti	Michelle Moran	2007	0307381463	\N	\N
4371	Along Came a Spider	James Patterson	1993	0446692638	\N	\N
4372	Last Sacrifice 	Richelle Mead	2010	1595143068	\N	\N
4373	Hidden	Sophie Jordan	2012	0061935123	\N	\N
4374	Tortured for Christ	Richard Wurmbrand	1940	0340863684	\N	\N
4375	Keeping the Moon	Sarah Dessen	1999	0142401765	\N	\N
4376	Sophie's Choice	William Styron	1979	0679736379	\N	\N
4377	A Head Full of Ghosts	Paul Tremblay	2015	0062363239	\N	\N
4378	The Body Finder	Kimberly Derting	2010	0061779814	\N	\N
4379	Jacob	Jacquelyn Frank	2006	0821780654	\N	\N
4380	Swallows and Amazons	Arthur Ransome	1930	087923573X	\N	\N
4381	Finders Keepers	Stephen King	2015	1501100130	\N	\N
4382	Every Last Word	Tamara Ireland Stone	2015	1484705270	\N	\N
4383	Crossroads of Twilight	Robert Jordan	2003	0312864590	\N	\N
4384	The Elfstones Of Shannara	Terry Brooks	1982	0736693416	\N	\N
4385	The Jordan Rules	Sam Smith, Doug Grud	1992	0671796666	\N	\N
4386	We'll Always Have Summer	Jenny Han	2011	1416995587	\N	\N
4387	WAR	Sebastian Junger	2010	0446556246	\N	\N
4388	A House for Mr. Biswas	V.S. Naipaul	1961	0330487191	\N	\N
4389	Necessary Lies	Diane Chamberlain	2013	1250010691	\N	\N
4390	The Pigeon Wants a Puppy!	Mo Willems	2008	1423109600	\N	\N
4391	The Eight	Katherine Neville	1988	0345366239	\N	\N
4392	The Fourth Protocol	Frederick Forsyth	1984	0099642611	\N	\N
4393	The Complete Stories	Flannery O'Connor	1971	0374515360	\N	\N
4394	A Week in Winter	Maeve Binchy	2012	140911399X	\N	\N
4395	Ecstasy Unveiled	Larissa Ione	2010	0446556823	\N	\N
4396	Message in a Bottle	Nicholas Sparks	1998	0446676071	\N	\N
4397	Black Beauty	Anna Sewell	1877	0439228905	\N	\N
4398	Protect and Defend	Vince Flynn	2007	074327041X	\N	\N
4399	Providence	Jamie McGuire	2010	0615417175	\N	\N
4400	Master of the Game	Sidney Sheldon	1982	0006472613	\N	\N
4401	City of Bones	Cassandra Clare	2007	1416914285	\N	\N
4402	Finding Cassie Crazy	Jaclyn Moriarty	2003	0439498821	\N	\N
4403	Revival	Stephen King	2014	1476770387	\N	\N
4404	Moving Pictures	Terry Pratchett	1990	0552152943	\N	\N
4405	The Crimson Campaign	Brian  McClellan	2014	0356502023	\N	\N
4406	Celebrity in Death	J.D. Robb	2012	0749955910	\N	\N
4407	Twice Bitten 	Chloe Neill	2010	0451230647	\N	\N
4408	Absalom, Absalom!	William Faulkner	1936	0679732187	\N	\N
4409	Kindred in Death 	J.D. Robb	2009	0749928999	\N	\N
4410	Ogre, Ogre (Xanth, #5)	Piers Anthony	1982	0345418530	\N	\N
4411	Under the Dome	Stephen King	2009	1439148503	\N	\N
4412	Empress Orchid	Anchee Min	2003	0618562036	\N	\N
4413	Bad Feminist 	Roxane Gay	2014	0062282719	\N	\N
4414	Inca Gold	Clive Cussler	1994	0743426800	\N	\N
4415	A Fine Balance	Rohinton Mistry	1996	140003065X	\N	\N
4416	Jude the Obscure	Thomas Hardy	1895	0486452433	\N	\N
4417	Herr der Diebe	Cornelia Funke	2000	1903434777	\N	\N
4418	The Mephisto Club	Tess Gerritsen	2006	0345476999	\N	\N
4419	Red Mist	Patricia Cornwell	2011	0399158022	\N	\N
4420	The Other Wind	Ursula K. Le Guin	2001	044101125X	\N	\N
4421	Hush, Hush	Becca Fitzpatrick	2009	1416989412	\N	\N
4422	Lock In	John Scalzi	2014	0765375869	\N	\N
4423	We the Animals	Justin Torres	2011	0547576722	\N	\N
4424	Heartbreaker	Julie Garwood	2000	1416503811	\N	\N
4425	Death of a Salesman	Arthur Miller	1949	0435233076	\N	\N
4426	Hey Nostradamus!	Douglas Coupland	2003	1582344159	\N	\N
4427	Everlasting	Alyson Noel	2011	142998192X	\N	\N
4428	How the Light Gets In	Louise Penny	2013	0312655479	\N	\N
4429	The Long Way Home	Louise Penny	2014	1250022061	\N	\N
4430	Collected Poems	Dylan Thomas	1952	0811202054	\N	\N
4431	White Noise	Don DeLillo	1985	0140283307	\N	\N
4432	Atonement	Ian McEwan	2001	038572179X	\N	\N
4433	Shelter	Harlan Coben	2011	0399256504	\N	\N
4434	Tenth Grade Bleeds	Heather Brewer	2009	0525421351	\N	\N
4435	Depraved Heart	Patricia Cornwell	2015	006232540X	\N	\N
4436	Kiss of a Demon King 	Kresley Cole	2009	1416580948	\N	\N
4437	Think Twice	Lisa Scottoline	2010	0312380755	\N	\N
4438	Eternal Kiss of Darkness	Jeaniene Frost	2010	0061783161	\N	\N
4439	One Breath Away	Heather Gudenkauf	2012	0778313654	\N	\N
4440	Elixir	Jennifer L. Armentrout	2012	1937053415	\N	\N
4441	Chains	Laurie Halse Anderson	2008	1416905855	\N	\N
4442	Heat	Bill Buford	2006	1400041201	\N	\N
4443	Bare Bones	Kathy Reichs	2003	074345300X	\N	\N
4444	Heartburn	Nora Ephron	1983	0679767959	\N	\N
4445	Fear Nothing 	Dean Koontz	1998	0553579754	\N	\N
4446	Kristy's Great Idea	Ann M. Martin	1986	0590224735	\N	\N
4447	The Fourth Hand	John Irving	2001	0345463153	\N	\N
4448	Evening Class	Maeve Binchy	1996	0752876821	\N	\N
4449	Midnight Rising	Lara Adrian	2008	0440244447	\N	\N
4450	Barely Breathing	Rebecca Donovan	2012	1452440026	\N	\N
4451	Blood Cross	Faith Hunter	2010	0451463072	\N	\N
4452	Eragon	Christopher Paolini	2002	0375826696	\N	\N
4453	Five Little Pigs	Agatha Christie	1942	0425093255	\N	\N
4454	UnWholly	Neal Shusterman	2012	1442423684	\N	\N
4455	Altar of Eden	James Rollins	2009	0061231428	\N	\N
4456	Fifty Shades Darker	E.L. James	2011	1612130585	\N	\N
4457	Love Letters to the Dead	Ava Dellaira	2014	0374346674	\N	\N
4458	The Lords of the North	Bernard Cornwell	2006	0060888628	\N	\N
4459	Dime Store Magic	Kelley Armstrong	2004	0553590154	\N	\N
4460	Claimed By Shadow	Karen Chance	2007	0451461525	\N	\N
4461	Unraveling	Elizabeth Norris	2012	0062103733	\N	\N
4462	Fifty Shades of Grey	E.L. James	2011	1612130291	\N	\N
4463	American Gods	Neil Gaiman	2001	0747263744	\N	\N
4464	Tilt	Ellen Hopkins	2012	1416983309	\N	\N
4465	Snow Flower and the Secret Fan	Lisa See	2005	0812968069	\N	\N
4466	Bones to Ashes	Kathy Reichs	2007	0743294378	\N	\N
4467	Hard Bitten	Chloe Neill	2011	0451233328	\N	\N
4468	Speaker for the Dead	Orson Scott Card	1986	0812550757	\N	\N
4469	Marvels	Kurt Busiek, Alex Ross	1993	0785100490	\N	\N
4470	Spin	Robert Charles Wilson	2005	076534825X	\N	\N
4471	On the Island	Tracey Garvis-Graves	2011	1405910216	\N	\N
4472	The Distant Hours	Kate Morton	2010	1439152780	\N	\N
4473	Jinx	Meg Cabot	2007	0060837640	\N	\N
4474	Commencement	J. Courtney Sullivan	2009	0307270742	\N	\N
4475	When the Wind Blows	James Patterson	1998	0446676438	\N	\N
4476	Perfect Shadow	Brent Weeks	2011	0316196487	\N	\N
4477	Death in the Clouds	Agatha Christie	1935	000711933X	\N	\N
4478	Fear Nothing	Lisa Gardner	2014	0525953086	\N	\N
4479	Some Luck	Jane Smiley	2014	0307700313	\N	\N
4480	Timeline	Michael Crichton	1999	0099244721	\N	\N
4481	The Dead	James Joyce	1914	097496090X	\N	\N
4482	State of Fear	Michael Crichton	2004	0061015733	\N	\N
4483	The Interestings	Meg Wolitzer	2013	1594488398	\N	\N
4484	Scent of Magic	Maria V. Snyder	2012	0778314189	\N	\N
4485	The Big Sleep	Raymond Chandler	1939	0394758285	\N	\N
4486	Savannah Blues	Mary Kay Andrews	2002	0060519134	\N	\N
4487	The Girl You Left Behind	Jojo Moyes	2012	0670026611	\N	\N
4488	Proof: A Play	David Auburn	2000	0571199976	\N	\N
4489	Red Harvest	Dashiell Hammett	1929	0752852612	\N	\N
4490	Braveheart	Randall Wallace	1995	0671522817	\N	\N
4491	Lullaby	Chuck Palahniuk	2002	0099437961	\N	\N
4492	The English Patient	Michael Ondaatje	1992	0771068719	\N	\N
4493	Hafalan Shalat Delisa	Tere Liye	2005	9793210605	\N	\N
4494	Beautiful Bastard	Christina Lauren	2013	1476730105	\N	\N
4495	We Need New Names	NoViolet Bulawayo	2013	0316230812	\N	\N
4496	The Racketeer	John Grisham	2012	0385535144	\N	\N
4497	The Complete Robot	Isaac Asimov	1982	0586057242	\N	\N
4498	Froi of the Exiles	Melina Marchetta	2011	0670076082	\N	\N
4499	Lilac Girls	Martha Hall Kelly	2016	1101883073	\N	\N
4500	The one I left behind	Jennifer McMahon	2013	006212255X	\N	\N
4501	Divine Madness	Robert Muchamore	2006	1416927247	\N	\N
4502	On the Edge	Ilona Andrews	2009	0441017800	\N	\N
4503	Walk Two Moons	Sharon Creech	1994	0060739495	\N	\N
4504	Mini Shopaholic	Sophie Kinsella	2010	0385342047	\N	\N
4505	The Fiery Cross	Diana Gabaldon	2001	0440221668	\N	\N
4506	Food: A Love Story	Jim Gaffigan	2014	0804140413	\N	\N
4507	Ransom	Julie Garwood	1999	074347418X	\N	\N
4508	The Third Secret	Steve Berry	2005	0345476131	\N	\N
4509	The List	Steve Martini	1997	0515121495	\N	\N
4510	The Black Lyon	Jude Deveraux	1980	0060727217	\N	\N
4511	Dear Life	Alice Munro	2012	0771064861	\N	\N
4512	Hammer of the Gods	Stephen Davis	1985	0425182134	\N	\N
4513	Power of Art	Simon Schama	2006	0061176109	\N	\N
4514	The World According to Garp	John Irving	1978	0345915593	\N	\N
4515	Fixed on You	Laurelin Paige	2013	162704017X	\N	\N
4516	Subterranean	James Rollins	1999	0380792648	\N	\N
4517	Bite Club	Rachel Caine	2011	0451233182	\N	\N
4518	Solar	Ian McEwan	2010	0385533411	\N	\N
4519	Opal	Jennifer L. Armentrout	2012	1620610094	\N	\N
4520	The Shunning	Beverly  Lewis	1997	0764224735	\N	\N
4521	The Doomsday Conspiracy	Sidney Sheldon	1991	1568650957	\N	\N
4522	Through the Ever Night	Veronica Rossi	2013	0062072064	\N	\N
4523	Netherland	Joseph O'Neill	2008	0307377040	\N	\N
4524	Debt of Honor	Tom Clancy	1994	0425147584	\N	\N
4525	The Guns of Navarone	Alistair MacLean	1957	0449214729	\N	\N
4526	The Rembrandt Affair	Daniel Silva	2010	0399156585	\N	\N
4527	Consider Phlebas	Iain M. Banks	1987	1857231384	\N	\N
4528	In Bed with a Highlander	Maya Banks	2011	0345519477	\N	\N
4529	The Lemonade War	Jacqueline Davies	2007	0618750436	\N	\N
4530	The Quantum Thief	Hannu Rajaniemi	2010	0575088877	\N	\N
4531	Gone 	Lisa McMann	2010	1416979182	\N	\N
4532	On Mystic Lake	Kristin Hannah	1999	0345471172	\N	\N
4533	Stay Out of the Basement	R.L. Stine	1992	0439568455	\N	\N
4534	Kushiel's Mercy	Jacqueline Carey	2001	0446500046	\N	\N
4535	Emma	Jane Austen, Fiona Stafford	1815	0141439580	\N	\N
4536	Hothouse Flower	Lucinda Riley	2010	1451655789	\N	\N
4537	Small Steps	Louis Sachar	2006	0385733143	\N	\N
4538	Wonder	R.J. Palacio	2012	0375869026	\N	\N
4539	Women in Love	D.H. Lawrence	1920	0486424588	\N	\N
4540	Fevre Dream	George R.R. Martin	1982	0553383051	\N	\N
4541	Arsenic and Old Lace	Joseph Kesselring	1939	0856761222	\N	\N
4542	Bruiser	Neal Shusterman	2010	0061134104	\N	\N
4543	Taltos	Anne Rice, Tim Curry	1994	0679436545	\N	\N
4544	Summer People	Elin Hilderbrand	2003	0312997191	\N	\N
4545	Mudbound	Hillary Jordan	2008	156512569X	\N	\N
4546	So You Want to Be a Wizard	Diane Duane	1983	0152047387	\N	\N
4547	The Dante Club	Matthew Pearl	2003	034549038X	\N	\N
4548	Bright Shiny Morning	James Frey	2008	0061573132	\N	\N
4549	Magic Breaks	Ilona Andrews	2014	0425256227	\N	\N
4550	Rose Madder	Stephen King	1995	0340640146	\N	\N
4551	Heart of Darkness	Joseph Conrad	1910	0451526570	\N	\N
4552	Storm Island	Ken Follett	1978	006074815X	\N	\N
4553	A Great Deliverance	Elizabeth  George	1988	0553278029	\N	\N
4554	Hunted	P.C. Cast, Kristin Cast	2009	031237982X	\N	\N
4555	The Maltese Falcon	Dashiell Hammett	1930	0752865331	\N	\N
4556	China Rich Girlfriend	Kevin Kwan	2015	0385539088	\N	\N
4557	Fireproof	Eric Wilson	2008	1595547169	\N	\N
4558	The Great Santini	Pat Conroy	1976	0553268929	\N	\N
4559	Dark Side of the Moon	Sherrilyn Kenyon	2006	0312934343	\N	\N
4560	Saint Anything	Sarah Dessen	2015	0451474708	\N	\N
4561	Big Stone Gap	Adriana Trigiani	2000	0345459202	\N	\N
4562	The Fire Within	Chris d'Lacey	2001	0439672449	\N	\N
4563	The Whistling Season	Ivan Doig	2006	0151012377	\N	\N
4564	After Ever Happy	Anna Todd	2015	1501106406	\N	\N
4565	Written on the Body	Jeanette Winterson	1992	0679744479	\N	\N
4566	Birds of a Feather	Jacqueline Winspear	2004	0143035304	\N	\N
4567	The Choice	Nicholas Sparks	2007	0446579920	\N	\N
4568	The Crown of Embers	Rae Carson	2012	0062026518	\N	\N
4569	The Burning Room	Michael Connelly	2014	0316225932	\N	\N
4570	Good as Gone	Amy Gentry	2016	0544920953	\N	\N
4571	Shades of Grey	Jasper Fforde	2009	0670019631	\N	\N
4572	The Visitation	Frank E. Peretti	1999	1595541209	\N	\N
4573	The Pearl of the World	John Steinbeck	1947	0142000698	\N	\N
4574	The Black Widow	Daniel Silva	2016	006232022X	\N	\N
4575	The Dragon's Path	Daniel Abraham	2011	1841498874	\N	\N
4576	Make Me	Lee Child	2015	0593073894	\N	\N
4577	Stand on Zanzibar	John Brunner	1968	1857988361	\N	\N
4578	Ways of Seeing	John Berger	1972	0140135154	\N	\N
4579	The Wicked Girls	Alex Marwood	2008	1847445209	\N	\N
4580	Seven Ancient Wonders	Matthew Reilly	2005	1416505067	\N	\N
4581	House of Suns	Alastair Reynolds	2008	0575099127	\N	\N
4582	Silent Prey	John Sandford	1992	0425137562	\N	\N
4583	The Pelican Brief	John Grisham	1992	0385339704	\N	\N
4584	Relentless	Dean Koontz	2009	0553807145	\N	\N
4585	The Pillars of the Earth	Ken Follett	1989	0451207149	\N	\N
4586	Cibola Burn	James S.A. Corey	2014	031621762X	\N	\N
4587	The Widow	Fiona Barton	2016	1101990260	\N	\N
4588	Abandon	Meg Cabot	2011	0545284104	\N	\N
4589	Next	Michael Crichton	2006	0060872985	\N	\N
4590	The Devil Colony	James Rollins	2010	0061784788	\N	\N
4591	Passion	Lauren Kate	2011	0385739168	\N	\N
4592	The Courts of Chaos	Roger Zelazny	1978	9993911550	\N	\N
4593	Scat	Carl Hiaasen	2009	0375834869	\N	\N
4594	The Killing Game	Iris Johansen	1999	0553581554	\N	\N
4595	The Body Snatchers	Jack Finney	1955	0684852586	\N	\N
4596	Mastery	Robert Greene	2012	0670024961	\N	\N
4597	The Icarus Agenda	Robert Ludlum	1988	0553278002	\N	\N
4598	Gorky Park	Martin Cruz Smith	1981	0345298349	\N	\N
4599	Libra 	Don DeLillo	1988	0140156046	\N	\N
4600	A Kingdom of Dreams 	Judith McNaught	1989	0743474155	\N	\N
4601	Fade Away	Harlan Coben	1996	0440222680	\N	\N
4602	Lasher	Anne Rice	1993	0099471434	\N	\N
4603	Mad About Madeline	Ludwig Bemelmans	1939	0590133373	\N	\N
4604	Purity	Jonathan Franzen	2015	0374239215	\N	\N
4605	Lioness Rampant	Tamora Pierce	1988	0689878575	\N	\N
4606	Midnight	Erin Hunter	2005	0060744510	\N	\N
4607	By the Light of the Moon	Dean Koontz	2002	0553582763	\N	\N
4608	The Crossover	Kwame Alexander	2014	0544289595	\N	\N
4609	The Snow Child	Eowyn Ivey	2012	0316175676	\N	\N
4610	Jesus Land : A Memoir	Julia Scheeres	2005	1582433542	\N	\N
4611	Coma	Robin Cook	1977	0451159535	\N	\N
4612	Appointment in Samarra	John O'Hara	1933	0375719202	\N	\N
4613	Lab Girl	Hope Jahren	2016	1101874937	\N	\N
4614	The Bourne Supremacy	Robert Ludlum	1986	0752863886	\N	\N
4615	Lick	Kylie Scott	2013	1743342373	\N	\N
4616	Term Limits	Vince Flynn	1997	0671023187	\N	\N
4617	Song of Solomon	Toni Morrison	1977	140003342X	\N	\N
4618	No Talking	Andrew Clements	2007	1416909834	\N	\N
4619	Grandfather's Journey	Allen Say	1993	0395570352	\N	\N
4620	Bring Up the Bodies	Hilary Mantel	2012	0805090037	\N	\N
4621	Old School	Jeff Kinney	2015	1419717014	\N	\N
4622	The Last Precinct	Patricia Cornwell	2000	0751525359	\N	\N
4623	The Guardian	Nicholas Sparks	2003	0446696110	\N	\N
4624	Inescapable	Amy A. Bartol	2013	1461072514	\N	\N
4625	The Hollow	Jessica Verday	2009	1416978933	\N	\N
4626	She's Come Undone	Wally Lamb	1992	0671021001	\N	\N
4627	Life & Times of Michael K.	J.M. Coetzee	1983	009947915X	\N	\N
4628	After	Amy Efaw	2009	0670011835	\N	\N
4629	The Dolphins of Pern	Anne McCaffrey	1994	0345419383	\N	\N
4630	Divergent	Veronica Roth	2011	0062024035	\N	\N
4631	Dance of the Gods	Nora Roberts	2006	0515141666	\N	\N
4632	The Realm of Possibility	David Levithan	2004	0375836578	\N	\N
4633	You Will Know Me	Megan Abbott	2016	031623107X	\N	\N
4634	The Couple Next Door	Shari Lapena	2016	0735221081	\N	\N
4635	Opposition	Jennifer L. Armentrout	2014	1622662644	\N	\N
4636	Small Island	Andrea Levy	2004	0312424671	\N	\N
4637	The Tiger Rising	Kate DiCamillo	2001	0763618985	\N	\N
4638	Blood Work	Michael Connelly	1998	0446690449	\N	\N
4639	The Subtle Knife	Philip Pullman	1997	0679879250	\N	\N
4640	Jamberry	Bruce Degen	1982	0694006513	\N	\N
4641	Digital Fortress	Dan Brown	1998	0552151696	\N	\N
4642	Ivanhoe	Walter Scott	1819	0140436588	\N	\N
4643	Chain Reaction	Simone Elkeles	2011	0802720870	\N	\N
4644	Storm Prey	John Sandford	2010	1847376177	\N	\N
4645	False Memory	Dean Koontz	1999	0553580221	\N	\N
4646	The Plum Tree	Ellen Marie Wiseman	2012	0758278438	\N	\N
4647	Labor Day	Joyce Maynard	2009	0061843407	\N	\N
4648	Rising storm	Erin Hunter	2005	0060525630	\N	\N
4649	Forever	Maggie Stiefvater	2011	0545259088	\N	\N
4650	The Christmas Shoes	Donna VanLiere	2001	0312289510	\N	\N
4651	Shiloh	Phyllis Reynolds Naylor	1991	0689862229	\N	\N
4652	Dark Fire	C.J. Sansom	2004	0143036432	\N	\N
4653	Looking for Alaska	John Green	2005	0142402516	\N	\N
4654	An Itchy Day	Norman Bridwell	1963	059044297X	\N	\N
4655	Grave Peril	Jim Butcher	2001	0451458443	\N	\N
4656	Lead	Kylie Scott	2014	1250052386	\N	\N
4657	Sugar Daddy	Lisa Kleypas	2007	0312351623	\N	\N
4658	Gift from the Sea	Anne Morrow Lindbergh	1955	0394724550	\N	\N
4659	Notes from a Small Island	Bill Bryson	1995	0380727501	\N	\N
4660	Artemis Fowl	Eoin Colfer	2001	0786817879	\N	\N
4661	Passion Unleashed	Larissa Ione	2009	0446401056	\N	\N
4662	A Corner of the Universe	Ann M. Martin	2002	0439771242	\N	\N
4663	Shadow and Bone	Leigh Bardugo	2012	0805094598	\N	\N
4664	Claim Me	J. Kenner	2013	0345545834	\N	\N
4665	The White Queen	Philippa Gregory	2009	1416563687	\N	\N
4666	The Wedding	Nicholas Sparks	2003	0446615862	\N	\N
4667	Cause of Death	Patricia Cornwell	1996	0425213382	\N	\N
4668	Doomsday Book	Connie Willis	1992	0553562738	\N	\N
4669	Lost Horizon	James Hilton	1933	0060594527	\N	\N
4670	Starcrossed	Josephine Angelini	2011	0062011995	\N	\N
4671	The Cruelest Month	Louise Penny	2007	0755328949	\N	\N
4672	Cleopatra: A Life	Stacy Schiff	2006	0316001929	\N	\N
4673	Ancillary Mercy	Ann Leckie	2015	0356502422	\N	\N
4674	Something Like Fate	Susane Colasanti	2010	0670011460	\N	\N
4675	The Snow Leopard	Peter Matthiessen	1978	0140255087	\N	\N
4676	Flirt	Laurell K. Hamilton	2009	042523567X	\N	\N
4677	Salem's Lot	Stephen King	1975	0450031063	\N	\N
4678	Heat	Mike Lupica	2006	0142407577	\N	\N
4679	Zodiac	Robert Graysmith	1986	0425098087	\N	\N
4680	Crush	Richard Siken	2005	0300107897	\N	\N
4681	The Soldiers of Halla	D.J. MacHale	2009	141691420X	\N	\N
4682	Tell-All	Chuck Palahniuk	2010	0385526350	\N	\N
4683	The Enemy	Lee Child	2004	0440241014	\N	\N
4684	The Crossing	Michael Connelly	2015	0316225886	\N	\N
4685	The Bear and the Dragon	Tom Clancy	2000	0425180964	\N	\N
4686	Sleeping Giants	Sylvain Neuvel	2016	1101886692	\N	\N
4687	Family Matters	Rohinton Mistry	2001	037570342X	\N	\N
4688	The Samurai's Garden	Gail Tsukiyama	1994	0312144075	\N	\N
4689	Het diner	Herman Koch, Sam Garrett	2009	0770437850	\N	\N
4690	A Fatal Grace	Louise Penny	2007	0312352565	\N	\N
4691	Midnight Alley	Rachel Caine	2007	0451222385	\N	\N
4692	Ross Poldark	Winston Graham	1945	0330344951	\N	\N
4693	Centennial	James A. Michener	1974	0449214192	\N	\N
4694	Follow the River	James Alexander Thom	1981	0345338545	\N	\N
4695	Empire of Storms	Sarah J. Maas	2016	1619636077	\N	\N
4696	Three Fates	Nora Roberts	2002	0515135062	\N	\N
4697	The Crystal Shard	R.A. Salvatore	1988	0786942460	\N	\N
4698	Sister Carrie	Theodore Dreiser	1900	0393960420	\N	\N
4699	Girl Online	Zoe Sugg, Siobhan Curham	2014	0141357274	\N	\N
4700	Morning Star	Pierce Brown	2016	0345539842	\N	\N
4701	River, Cross My Heart	Breena Clarke	1999	0316899984	\N	\N
4702	How to Love	Katie Cotugno	2013	006221635X	\N	\N
4703	Idoru	William Gibson	1996	0425190455	\N	\N
4704	Red Seas Under Red Skies	Scott Lynch	2007	0553804685	\N	\N
4705	King Leopold's Ghost	Adam Hochschild	1998	0618001905	\N	\N
4706	Tiger's Curse	Colleen Houck	2011	1402784031	\N	\N
4707	Any Human Heart	William  Boyd	2002	1400031001	\N	\N
4708	O Pioneers!	Willa Cather	1913	0679743626	\N	\N
4709	The Ship of Brides	Jojo Moyes	2005	0340830107	\N	\N
4710	Joker	Brian Azzarello, Lee Bermejo	2008	1401215815	\N	\N
4711	The Return: Nightfall	L.J. Smith	2009	0061720771	\N	\N
4712	Origin	Jennifer L. Armentrout	2013	1622660757	\N	\N
4713	Red Sparrow	Jason  Matthews	2013	1476706123	\N	\N
4714	Lisey's Story	Stephen King	2006	0743289412	\N	\N
4715	A Separate Reality	Carlos Castaneda	1968	0671732498	\N	\N
4716	Knowing God	J.I. Packer	1973	083081650X	\N	\N
4717	Dust	Patricia Cornwell	2013	0399157573	\N	\N
4718	Homegoing	Yaa Gyasi	2016	1101947136	\N	\N
4719	Desires of the Dead	Kimberly Derting	2011	0061779849	\N	\N
4720	Unhinged	A.G. Howard	2014	1613125348	\N	\N
4721	Kiss an Angel 	Susan Elizabeth Phillips	1996	0380782332	\N	\N
4722	Only Time Will Tell	Jeffrey Archer	2011	031253955X	\N	\N
4723	Water for Elephants	Sara Gruen	2006	1565125606	\N	\N
4724	Noises Off	Michael Frayn	1982	1400031605	\N	\N
4725	A Clash of Kings	George R.R. Martin	1998	0553381695	\N	\N
4726	A Moveable Feast	Ernest Hemingway	1964	0099285045	\N	\N
4727	The First Commandment	Brad Thor	2007	1416543791	\N	\N
4728	On Photography	Susan Sontag	1973	0141187166	\N	\N
4729	Silver Borne	Patricia Briggs	2010	044101819X	\N	\N
4730	Supernova: Akar	Dee Lestari	2002	9799625726	\N	\N
4731	What We Keep 	Elizabeth Berg	1998	0345423291	\N	\N
4732	Twenty Wishes	Debbie Macomber	2008	0778325504	\N	\N
4733	Ramona the Pest	Beverly Cleary	1968	0192750976	\N	\N
4734	The Devil's Arithmetic	Jane Yolen	1988	0142401099	\N	\N
4735	Cross My Heart	James Patterson	2013	0316210900	\N	\N
4736	Horde	Ann Aguirre	2013	1250024633	\N	\N
4737	Flowers in the Attic	V.C. Andrews	1979	0743496310	\N	\N
4738	Dies the Fire 	S.M. Stirling	2004	0451460413	\N	\N
4739	Forever Amber	Kathleen Winsor	1944	0141009829	\N	\N
4740	Carrie	Stephen King	1974	1416524304	\N	\N
4741	Saint Maybe	Anne Tyler	1991	0449911608	\N	\N
4742	The Villa	Nora Roberts	2001	0515132187	\N	\N
4743	The Skin I'm In	Sharon G. Flake	1998	0786813075	\N	\N
4744	Mother of Pearl	Melinda Haynes	1999	0671774670	\N	\N
4745	The Golem and the Jinni	Helene Wecker	2013	0062110837	\N	\N
4746	Home 	Harlan Coben	2016	0525955100	\N	\N
4747	The Best Nest	P.D. Eastman	1968	0394800516	\N	\N
4748	The Witness	Nora Roberts	2012	0399159371	\N	\N
4749	Plain Truth	Jodi Picoult	2000	0743275012	\N	\N
4750	I'm OK-You're OK	Thomas A. Harris	1967	0060724277	\N	\N
4751	Something Like Normal	Trish Doller	2012	1599908441	\N	\N
4752	A Great Reckoning	Louise Penny	2016	1250022134	\N	\N
4753	Sushi for Beginners	Marian Keyes	2000	0060555955	\N	\N
4754	Tell Me Your Dreams	Sidney Sheldon	1998	0446607207	\N	\N
4755	Day 21	Kass Morgan	2014	0316234559	\N	\N
4756	Die Again	Tess Gerritsen	2014	0345543858	\N	\N
4757	Einstein's Dreams	Alan Lightman	1992	140007780X	\N	\N
4758	The Affair	Lee Child	2011	0593065700	\N	\N
4759	Paradise	Judith McNaught	1991	0743474163	\N	\N
4760	The Kitchen House	Kathleen Grissom	2010	1439153663	\N	\N
4761	Azincourt 	Bernard Cornwell	2008	0007271212	\N	\N
4762	Night Prey	John Sandford	1994	0006478964	\N	\N
4763	Angel Fire	L.A. Weatherly	2011	1409522016	\N	\N
4764	The Mask	Owen  West, Dean Koontz	1981	0425127583	\N	\N
4765	Benediction	Kent Haruf	2013	0307959880	\N	\N
4766	The Halfling's Gem	R.A. Salvatore	1990	0786938250	\N	\N
4767	The Second Ship	Richard   Phillips	2006	0981546269	\N	\N
4768	Liar & Spy	Rebecca Stead	2012	0385737432	\N	\N
4769	Make Way for Ducklings	Robert McCloskey	1941	0670035386	\N	\N
4770	The Son	Philipp Meyer	2012	0062120395	\N	\N
4771	American Pastoral	Philip Roth	1997	0099771810	\N	\N
4772	Wall and Piece	Banksy	1988	1844137872	\N	\N
4773	Sult	Knut Hamsun, George Egerton	1890	0486431681	\N	\N
4774	Arcadia	Tom Stoppard	1993	0571169341	\N	\N
4775	Wayward	Blake Crouch	2013	1477808701	\N	\N
4776	The Republic of Thieves	Scott Lynch	2013	0553804693	\N	\N
4777	Frog and Toad All Year	Arnold Lobel	1976	0064440591	\N	\N
4778	Mornings on Horseback	David McCullough	1981	0671447548	\N	\N
4779	Arc de Triomphe	Erich Maria Remarque	1945	0449912450	\N	\N
4780	Hammered	Kevin Hearne	2011	0345522486	\N	\N
4781	The Iron Knight	Julie Kagawa	2011	0373210361	\N	\N
4782	The Gnostic Gospels	Elaine Pagels	1979	0679724532	\N	\N
4783	Different Seasons	Stephen King	1982	0751514624	\N	\N
4784	I is for Innocent	Sue Grafton	1992	0449221512	\N	\N
4785	Half the World	Joe Abercrombie	2015	0804178429	\N	\N
4786	The Reef	Nora Roberts	1998	051512608X	\N	\N
4787	The Monsters of Templeton	Lauren Groff	2008	0434017841	\N	\N
4788	No, David!	David Shannon	1998	0590930028	\N	\N
4789	Essays in Love	Alain de Botton	1993	0802142400	\N	\N
4790	The Blood of Flowers	Anita Amirrezvani	2007	0316065765	\N	\N
4791	Drachenreiter	Cornelia Funke	1997	190444248X	\N	\N
4792	The Lucky One	Nicholas Sparks	2008	0446579939	\N	\N
4793	The Icebound Land	John Flanagan	2005	0399244565	\N	\N
4794	Queste	Angie Sage, Mark Zug	2008	0060882077	\N	\N
4795	I Do (But I Don't)	Cara Lockwood	2003	0743496973	\N	\N
4796	Cold Mountain	Charles Frazier	1997	0802142842	\N	\N
4797	The Sleeping Doll	Jeffery Deaver	2007	034083384X	\N	\N
4798	Welcome to Dead House	R.L. Stine	1992	0439568471	\N	\N
4799	Memories of Midnight	Sidney Sheldon	1990	0446354678	\N	\N
4800	Nantucket Nights	Elin Hilderbrand	2002	0312989768	\N	\N
4801	Crossed	Ally Condie	2011	0142421715	\N	\N
4802	Billy Budd, Sailor	Herman Melville	1924	1416523723	\N	\N
4803	The Rising	Kelley Armstrong	2013	0061797081	\N	\N
4804	Dragonsong 	Anne McCaffrey	1976	141692499X	\N	\N
4805	Concealed in Death	J.D. Robb	2014	039916443X	\N	\N
4806	Harlequin	Bernard Cornwell	2000	0060935766	\N	\N
4807	Hero	Perry Moore	2007	1423101952	\N	\N
4808	Halfway to the Grave	Jeaniene Frost	2007	0061245089	\N	\N
4809	Sixth Grave on the Edge	Darynda Jones	2014	1250045630	\N	\N
4810	The Lion's Lady	Julie Garwood	1988	067173783X	\N	\N
4811	Twilight and History	Nancy Reagin	2010	0470581786	\N	\N
4812	One Tiny Lie	K.A. Tucker	2013	1476740488	\N	\N
4813	Hide and Seek	James Patterson	1995	0006498523	\N	\N
4814	Kings Rising	C.S. Pacat	2016	174348495X	\N	\N
4815	The Burning Wire	Jeffery Deaver	2010	1439156336	\N	\N
4816	No Place to Run	Maya Banks	2010	0425238199	\N	\N
4817	Heat Lightning	John Sandford	2008	0399155279	\N	\N
4818	Bird Box	Josh Malerman	2014	0062259652	\N	\N
4819	Love and War 	John Jakes	1984	0451200829	\N	\N
4820	The Arrival	Shaun Tan	2006	0734406940	\N	\N
4821	Turning Angel	Greg Iles	2005	0743454162	\N	\N
4822	Redeemed	P.C. Cast, Kristin Cast	2014	0312594445	\N	\N
4823	Sacred	Dennis Lehane	1997	0380726297	\N	\N
4824	One Silent Night	Sherrilyn Kenyon	2008	0312947062	\N	\N
4825	Martin the Warrior	Brian Jacques	1993	0441001866	\N	\N
4826	The Awakening	Kate Chopin	1899	0543898083	\N	\N
4827	Retribution	Sherrilyn Kenyon	2011	0312546602	\N	\N
4828	The Burgess Boys	Elizabeth Strout	2013	1400067685	\N	\N
4829	Fates and Furies	Lauren Groff	2015	1594634475	\N	\N
4830	Chanakya's Chant	Ashwin Sanghi	2010	9380658674	\N	\N
4831	A Walk in the Woods	Bill Bryson	1997	0307279464	\N	\N
4832	Cinder	Marissa Meyer	2012	0312641893	\N	\N
4833	The Beginner's Goodbye	Anne Tyler	2012	0307957276	\N	\N
4834	The Burden of Proof	Scott Turow	1990	0446677124	\N	\N
4835	Burning For Revenge	John Marsden	1997	0439858038	\N	\N
4836	The Pigeon Finds a Hot Dog!	Mo Willems	2004	0786818697	\N	\N
4837	Broken for You	Stephanie Kallos	2004	0802142109	\N	\N
4838	Ruthless	Sara Shepard	2011	0062081861	\N	\N
4839	Eventide	Kent Haruf	2004	0375725768	\N	\N
4840	The Gift	Cecelia Ahern	2008	0007284977	\N	\N
4841	The Sins of the Father	Jeffrey Archer	2012	1250000971	\N	\N
4842	The Woman Upstairs	Claire Messud	2013	0307596907	\N	\N
4843	The Sympathizer	Viet Thanh Nguyen	2015	0802123457	\N	\N
4844	Hellboy: Wake the Devil	Mike Mignola	1994	1593070950	\N	\N
4845	False Impression	Jeffrey Archer	2005	0312939779	\N	\N
4846	The Best of Me	Nicholas Sparks	2010	0446547654	\N	\N
4847	Body Surfing	Anita Shreve	2007	0316059854	\N	\N
4848	The Surgeon	Tess Gerritsen	2001	055381706X	\N	\N
4849	Pure	Jennifer L. Armentrout	2012	0983157227	\N	\N
4850	The Robe	Lloyd C. Douglas	1942	0395957753	\N	\N
4851	The Naturals	Jennifer Lynn Barnes	2013	1423168232	\N	\N
4852	River of Blue Fire	Tad Williams	1998	0886778441	\N	\N
4853	The Left Hand of God 	Paul  Hoffman	2010	0718155181	\N	\N
4854	Low Country	Anne Rivers Siddons	1998	0061093327	\N	\N
4855	Winter Solstice	Rosamunde Pilcher	2000	0340752483	\N	\N
4856	The Wicked Will Rise	Danielle  Paige	2015	0062280708	\N	\N
4857	Olivia	Ian Falconer	2000	0689829531	\N	\N
4858	The Golem's Eye	Jonathan Stroud	2004	0786836547	\N	\N
4859	The Shawshank Redemption	Stephen King	1982	0896214400	\N	\N
4860	Best Served Cold	Joe Abercrombie	2009	0575082453	\N	\N
4861	Perfect	Rachel Joyce	2013	0857520660	\N	\N
4862	A Sand County Almanac	Aldo Leopold	1949	0195007778	\N	\N
4863	The Heart of a Woman	Maya Angelou	1981	0375500723	\N	\N
4864	To Have and Have Not 	Ernest Hemingway	1937	0684859238	\N	\N
4865	Vampire, Interrupted	Lynsay Sands	2008	0061229776	\N	\N
4866	In Her Shoes	Jennifer Weiner	2002	0743495667	\N	\N
4867	Use of Weapons	Iain M. Banks	1990	185723135X	\N	\N
4868	Insurgent	Veronica Roth	2012	0007442912	\N	\N
4869	Timbuktu	Paul Auster	1999	0312263996	\N	\N
4870	Who Do You Love	Jennifer Weiner	2015	145161781X	\N	\N
4871	Way Station	Clifford D. Simak	1963	0020248717	\N	\N
4872	The Mauritius Command	Patrick O'Brian	1977	039330762X	\N	\N
4873	Through Black Spruce	Joseph Boyden	2008	0670020575	\N	\N
4874	Fame	Karen Kingsbury	2005	0842387439	\N	\N
4875	Something Rotten	Jasper Fforde	2004	014303541X	\N	\N
4876	Size 14 Is Not Fat Either	Meg Cabot	2006	0060525126	\N	\N
4877	Truman	David McCullough	1992	0671869205	\N	\N
4878	Judas Unchained	Peter F. Hamilton	2005	0345461665	\N	\N
4879	The Bone Clocks	David Mitchell	2014	1400065674	\N	\N
4880	Chosen Prey	John Sandford	2001	0425182878	\N	\N
4881	Invisible	Paul Auster	2009	0805090800	\N	\N
4882	Olive Kitteridge	Elizabeth Strout	2008	140006208X	\N	\N
4883	The Painted Girls	Cathy Marie Buchanan	2012	1594486247	\N	\N
4884	Fantastic Voyage	Isaac Asimov	1966	0553275720	\N	\N
4885	Big Sur	Jack Kerouac, Aram Saroyan	1962	0140168125	\N	\N
4886	Foundation	Isaac Asimov	1951	0553803719	\N	\N
4887	In a Dark, Dark Wood 	Ruth Ware	2015	1846558913	\N	\N
4888	The Door into Summer	Robert A. Heinlein	1957	0345413997	\N	\N
4889	The Wednesday Letters	Jason F. Wright	2007	1590388127	\N	\N
4890	Trading Up	Candace Bushnell	2003	0316726192	\N	\N
4891	The Hammer of Thor	Rick Riordan	2016	1423160924	\N	\N
4892	The Wolf Gift	Anne Rice	2012	0307595110	\N	\N
4893	Lush Life	Richard Price	2008	0374299250	\N	\N
4894	Vision in Silver 	Anne Bishop	2015	045146527X	\N	\N
4895	Pygmy	Chuck Palahniuk	2009	0385526342	\N	\N
4896	Vanishing Girls	Lauren Oliver	2015	0062224107	\N	\N
4897	Specials	Scott Westerfeld	2006	0689865406	\N	\N
4898	Pure	Julianna Baggott	2012	1455503061	\N	\N
4899	The Four Loves	C.S. Lewis	1960	0006280897	\N	\N
4900	Vagabond	Bernard Cornwell	2002	0060935782	\N	\N
4901	Clouds of Witness	Dorothy L. Sayers	1926	0061043532	\N	\N
4902	I, Alex Cross	James Patterson	2009	0316018783	\N	\N
4903	You Against Me	Jenny Downham	2010	0385613504	\N	\N
4904	Bones of the Hills	Conn Iggulden	2008	0007201788	\N	\N
4905	The Fever	Megan Abbott	2014	0316231053	\N	\N
4906	Fifth Business	Robertson Davies	1970	0141181362	\N	\N
4907	A Theory of Justice	John Rawls	1971	0674017722	\N	\N
4908	Beaches	Iris Rainer Dart	1985	0060594772	\N	\N
4909	World Without End	Ken Follett	2007	0525950079	\N	\N
4910	Creation in Death 	J.D. Robb	2007	142333745X	\N	\N
4911	Void Moon	Michael Connelly	1999	0446694258	\N	\N
4912	Tripwire	Lee Child	1999	0515128635	\N	\N
4913	Found	Margaret Peterson Haddix	2008	1416954171	\N	\N
4914	Fairest	Gail Carson Levine	2006	0060734086	\N	\N
4915	Angelfire	Courtney Allison Moulton	2011	0062002325	\N	\N
4916	Syren	Angie Sage	2009	0747594155	\N	\N
4917	The Covenant	James A. Michener	1980	0749311614	\N	\N
4918	Blowback	Brad Thor	2005	1416505415	\N	\N
4919	The Key to Rebecca	Ken Follett	1980	0451207793	\N	\N
4920	The Children's Book	A.S. Byatt	2009	0307272095	\N	\N
4921	Hunted	Kevin Hearne	2013	0345533631	\N	\N
4922	The High Window	Raymond Chandler	1942	0394758269	\N	\N
4923	Never Go Back 	Lee Child	2013	0385344341	\N	\N
4924	A Lesson Before Dying	Ernest J. Gaines	1993	0375702709	\N	\N
4925	Everlost	Neal Shusterman	2006	0689872372	\N	\N
4926	Death of Kings	Bernard Cornwell	2011	0007331789	\N	\N
4927	Winter in Madrid	C.J. Sansom	2006	0330411985	\N	\N
4928	The Ruins of Gorlan	John Flanagan	2004	0142406635	\N	\N
4929	The Luminaries	Eleanor Catton	2013	0316074314	\N	\N
4930	The Amber Room	Steve Berry	2003	034548343X	\N	\N
4931	Marked	P.C. Cast, Kristin Cast	2007	0312360266	\N	\N
4932	Picture Perfect	Jodi Picoult	1995	0425185508	\N	\N
4933	The Vision	Dean Koontz	1977	0425098605	\N	\N
4934	Novecento	Alessandro Baricco	1994	8807813025	\N	\N
4935	Lost in Shangri-la	Mitchell Zuckoff	2011	0061988340	\N	\N
4936	Tarzan of the Apes	Edgar Rice Burroughs	1912	0809599813	\N	\N
4937	Babbitt	Sinclair Lewis	1922	142640607X	\N	\N
4938	Milkweed	Jerry Spinelli	2003	0440420059	\N	\N
4939	Clapton: The Autobiography	Eric Clapton	2007	038551851X	\N	\N
4940	Crow Lake	Mary Lawson	2002	0385337639	\N	\N
4941	The High Lord	Trudi Canavan	2002	1841493155	\N	\N
4942	Middlesex	Jeffrey Eugenides	2002	0312422156	\N	\N
4943	Ghostgirl	Tonya Hurley	2008	0316113573	\N	\N
4944	An Ideal Husband	Oscar Wilde	1893	048641423X	\N	\N
4945	The Last Unicorn	Peter S. Beagle	1968	0451450523	\N	\N
4946	Juliet	Anne Fortier	2010	0345516109	\N	\N
4947	Virgin River	Robyn Carr	2007	0778324907	\N	\N
4948	Of Poseidon	Anna Banks	2012	1250003326	\N	\N
4949	The Good Earth	Pearl S. Buck	1931	1416500189	\N	\N
4950	Destined	Aprilynne Pike	2012	0061668125	\N	\N
4951	Secondhand Souls	Christopher Moore	2015	0061779784	\N	\N
4952	G is for Gumshoe	Sue Grafton	1990	0449000621	\N	\N
4953	When Crickets Cry	Charles Martin	2006	1595540547	\N	\N
4954	The Ghost Bride	Yangsze Choo	2013	0062227327	\N	\N
4955	Shadows in Flight	Orson Scott Card	2011	0765332000	\N	\N
4956	How to Eat Fried Worms	Thomas Rockwell	1973	0440421853	\N	\N
4957	Excavation	James Rollins	2000	038081093X	\N	\N
4958	The Painted Man	Peter V. Brett	2008	0345503805	\N	\N
4959	When We Were Orphans	Kazuo Ishiguro	2000	0571225403	\N	\N
4960	Scars	Cheryl Rainfield	2010	193481332X	\N	\N
4961	Moloka'i	Alan Brennert	2003	0312304358	\N	\N
4962	The Men Who Stare at Goats	Jon Ronson	2004	0743270606	\N	\N
4963	Final Jeopardy	Linda Fairstein	1996	0671010123	\N	\N
4964	Wake	Lisa McMann	2008	1416953574	\N	\N
4965	Swapping Lives	Jane Green	2006	0670034800	\N	\N
4966	Hard Choices	Hillary Rodham Clinton	2013	1476751447	\N	\N
4967	Simple Genius	David Baldacci	2007	0446580341	\N	\N
4968	Dog Days	Jeff Kinney	2009	0810983915	\N	\N
4969	Farewell, My Lovely	Raymond Chandler	1940	0394758277	\N	\N
4970	Crash	J.G. Ballard	1973	0312420331	\N	\N
4971	The Camel Club	David Baldacci	2005	0446615625	\N	\N
4972	Our Man in Havana	Graham Greene	1958	0140184937	\N	\N
4973	The Very Busy Spider 	Eric Carle	1984	0399229191	\N	\N
4974	The Casual Vacancy	J.K. Rowling	2012	0316228532	\N	\N
4975	Everneath	Brodi Ashton	2012	0062071130	\N	\N
4976	Strega Nona	Tomie dePaola	1975	8424133498	\N	\N
4977	Night Mare (Xanth, #6)	Piers Anthony	1982	0345418549	\N	\N
4978	Jaws	Peter Benchley	1974	1400064562	\N	\N
4979	Don't Die, My Love	Lurlene McDaniel	1995	0553567152	\N	\N
4980	The Talismans of Shannara	Terry Brooks	1993	1857239016	\N	\N
4981	Stones from the River	Ursula Hegi	1994	068484477X	\N	\N
4982	Ball Four	Jim Bouton	1970	0020306652	\N	\N
4983	The Dead of the Night	John Marsden	1994	0439829119	\N	\N
4984	Infamous	Sherrilyn Kenyon	2012	1250002826	\N	\N
4985	The Exorcist	William Peter Blatty	1971	0061007226	\N	\N
4986	Afterwards	Rosamund Lupton	2011	0307716546	\N	\N
4987	Dom Casmurro	Machado de Assis	1899	0850515033	\N	\N
4988	The Center Cannot Hold	Elyn R. Saks	2007	140130138X	\N	\N
4989	The Life of Elizabeth I	Alison Weir	1996	0345425502	\N	\N
4990	Wicked	Sara Shepard	2008	006156608X	\N	\N
4991	Whitethorn Woods	Maeve Binchy	2006	0307265781	\N	\N
4992	Vernon God Little	D.B.C. Pierre	2003	0571215165	\N	\N
4993	Shopaholic and Baby	Sophie Kinsella	2007	0385338708	\N	\N
4994	Black Sun Rising	C.S. Friedman	1991	0756403146	\N	\N
4995	Secret Prey	John Sandford	1998	0743484207	\N	\N
4996	Vittorio the Vampire	Anne Rice	1999	5559609129	\N	\N
4997	Leaving	Karen Kingsbury	2011	0310266289	\N	\N
4998	China Dolls	Lisa See	2014	081299289X	\N	\N
4999	Starter for Ten	David Nicholls	2003	0345498127	\N	\N
5000	Imajica	Clive Barker	1991	0061053716	\N	\N
5001	Emily Climbs	L.M. Montgomery	1925	0553262149	\N	\N
2	Krondor: The Betrayal	Raymond E. Feist	1998	0380795272	13	4
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, book_id, "desc") FROM stdin;
2	2	test review
3	2	First comment from web app
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 5001, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 3, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: reviews book foreign key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "book foreign key" FOREIGN KEY (book_id) REFERENCES public.books(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

