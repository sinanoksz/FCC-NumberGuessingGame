--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 13, 1);
INSERT INTO public.games VALUES (3, 13, 1);
INSERT INTO public.games VALUES (4, 14, 1);
INSERT INTO public.games VALUES (5, 14, 1);
INSERT INTO public.games VALUES (6, 13, 1);
INSERT INTO public.games VALUES (7, 13, 1);
INSERT INTO public.games VALUES (8, 13, 1);
INSERT INTO public.games VALUES (9, 8, 1);
INSERT INTO public.games VALUES (10, 8, 1);
INSERT INTO public.games VALUES (11, 15, 7);
INSERT INTO public.games VALUES (12, 8, 12);
INSERT INTO public.games VALUES (13, 8, 9);
INSERT INTO public.games VALUES (14, 16, 705);
INSERT INTO public.games VALUES (15, 16, 473);
INSERT INTO public.games VALUES (16, 17, 743);
INSERT INTO public.games VALUES (17, 17, 858);
INSERT INTO public.games VALUES (18, 16, 941);
INSERT INTO public.games VALUES (19, 16, 234);
INSERT INTO public.games VALUES (20, 16, 110);
INSERT INTO public.games VALUES (21, 18, 229);
INSERT INTO public.games VALUES (22, 18, 341);
INSERT INTO public.games VALUES (23, 19, 85);
INSERT INTO public.games VALUES (24, 19, 734);
INSERT INTO public.games VALUES (25, 18, 347);
INSERT INTO public.games VALUES (26, 18, 991);
INSERT INTO public.games VALUES (27, 18, 71);
INSERT INTO public.games VALUES (28, 20, 415);
INSERT INTO public.games VALUES (29, 20, 817);
INSERT INTO public.games VALUES (30, 21, 565);
INSERT INTO public.games VALUES (31, 21, 480);
INSERT INTO public.games VALUES (32, 20, 810);
INSERT INTO public.games VALUES (33, 20, 936);
INSERT INTO public.games VALUES (34, 20, 587);
INSERT INTO public.games VALUES (35, 24, 407);
INSERT INTO public.games VALUES (36, 24, 373);
INSERT INTO public.games VALUES (37, 25, 328);
INSERT INTO public.games VALUES (38, 25, 290);
INSERT INTO public.games VALUES (39, 24, 654);
INSERT INTO public.games VALUES (40, 24, 852);
INSERT INTO public.games VALUES (41, 24, 302);
INSERT INTO public.games VALUES (42, 28, 856);
INSERT INTO public.games VALUES (44, 29, 699);
INSERT INTO public.games VALUES (49, 30, 575);
INSERT INTO public.games VALUES (51, 31, 858);
INSERT INTO public.games VALUES (56, 34, 848);
INSERT INTO public.games VALUES (58, 35, 80);
INSERT INTO public.games VALUES (63, 38, 652);
INSERT INTO public.games VALUES (64, 38, 560);
INSERT INTO public.games VALUES (65, 39, 183);
INSERT INTO public.games VALUES (66, 39, 401);
INSERT INTO public.games VALUES (67, 38, 973);
INSERT INTO public.games VALUES (68, 38, 308);
INSERT INTO public.games VALUES (69, 38, 849);
INSERT INTO public.games VALUES (70, 40, 685);
INSERT INTO public.games VALUES (71, 40, 790);
INSERT INTO public.games VALUES (72, 41, 493);
INSERT INTO public.games VALUES (73, 41, 920);
INSERT INTO public.games VALUES (74, 40, 108);
INSERT INTO public.games VALUES (75, 40, 852);
INSERT INTO public.games VALUES (76, 40, 903);
INSERT INTO public.games VALUES (77, 42, 347);
INSERT INTO public.games VALUES (78, 42, 660);
INSERT INTO public.games VALUES (79, 43, 437);
INSERT INTO public.games VALUES (80, 43, 610);
INSERT INTO public.games VALUES (81, 42, 558);
INSERT INTO public.games VALUES (82, 42, 1);
INSERT INTO public.games VALUES (83, 42, 187);
INSERT INTO public.games VALUES (84, 44, 592);
INSERT INTO public.games VALUES (85, 44, 366);
INSERT INTO public.games VALUES (86, 45, 733);
INSERT INTO public.games VALUES (87, 45, 133);
INSERT INTO public.games VALUES (88, 44, 354);
INSERT INTO public.games VALUES (89, 44, 1);
INSERT INTO public.games VALUES (90, 44, 871);
INSERT INTO public.games VALUES (91, 46, 338);
INSERT INTO public.games VALUES (92, 46, 700);
INSERT INTO public.games VALUES (93, 47, 413);
INSERT INTO public.games VALUES (94, 47, 322);
INSERT INTO public.games VALUES (95, 46, 809);
INSERT INTO public.games VALUES (96, 46, 565);
INSERT INTO public.games VALUES (97, 46, 897);
INSERT INTO public.games VALUES (98, 48, 901);
INSERT INTO public.games VALUES (99, 48, 810);
INSERT INTO public.games VALUES (100, 49, 358);
INSERT INTO public.games VALUES (101, 49, 192);
INSERT INTO public.games VALUES (102, 48, 727);
INSERT INTO public.games VALUES (103, 48, 425);
INSERT INTO public.games VALUES (104, 48, 800);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1695504380550');
INSERT INTO public.users VALUES (3, 'user_1695504380549');
INSERT INTO public.users VALUES (8, 'si');
INSERT INTO public.users VALUES (9, 'user_1695507578131');
INSERT INTO public.users VALUES (10, 'user_1695507578130');
INSERT INTO public.users VALUES (11, 'user_1695587574004');
INSERT INTO public.users VALUES (12, 'user_1695587574003');
INSERT INTO public.users VALUES (13, 'user_1695588833658');
INSERT INTO public.users VALUES (14, 'user_1695588833657');
INSERT INTO public.users VALUES (15, 'si+');
INSERT INTO public.users VALUES (16, 'user_1695590503267');
INSERT INTO public.users VALUES (17, 'user_1695590503266');
INSERT INTO public.users VALUES (18, 'user_1695591545951');
INSERT INTO public.users VALUES (19, 'user_1695591545950');
INSERT INTO public.users VALUES (20, 'user_1695591568380');
INSERT INTO public.users VALUES (21, 'user_1695591568379');
INSERT INTO public.users VALUES (22, 'user_1695591695935');
INSERT INTO public.users VALUES (23, 'user_1695591695934');
INSERT INTO public.users VALUES (24, 'user_1695591732218');
INSERT INTO public.users VALUES (25, 'user_1695591732217');
INSERT INTO public.users VALUES (26, 'user_1695591853086');
INSERT INTO public.users VALUES (27, 'user_1695591853085');
INSERT INTO public.users VALUES (28, 'user_1695592050065');
INSERT INTO public.users VALUES (29, 'user_1695592050064');
INSERT INTO public.users VALUES (30, 'user_1695593339135');
INSERT INTO public.users VALUES (31, 'user_1695593339134');
INSERT INTO public.users VALUES (32, 'user_1695593532526');
INSERT INTO public.users VALUES (33, 'user_1695593532525');
INSERT INTO public.users VALUES (34, 'user_1695593555688');
INSERT INTO public.users VALUES (35, 'user_1695593555687');
INSERT INTO public.users VALUES (36, 'user_1695593607205');
INSERT INTO public.users VALUES (37, 'user_1695593607204');
INSERT INTO public.users VALUES (38, 'user_1695593617612');
INSERT INTO public.users VALUES (39, 'user_1695593617611');
INSERT INTO public.users VALUES (40, 'user_1695593635945');
INSERT INTO public.users VALUES (41, 'user_1695593635944');
INSERT INTO public.users VALUES (42, 'user_1695593664805');
INSERT INTO public.users VALUES (43, 'user_1695593664804');
INSERT INTO public.users VALUES (44, 'user_1695593715357');
INSERT INTO public.users VALUES (45, 'user_1695593715356');
INSERT INTO public.users VALUES (46, 'user_1695593730076');
INSERT INTO public.users VALUES (47, 'user_1695593730075');
INSERT INTO public.users VALUES (48, 'user_1695593875016');
INSERT INTO public.users VALUES (49, 'user_1695593875015');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 104, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 49, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

