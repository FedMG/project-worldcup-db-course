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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (240, 2018, 'Final', 504, 503, 4, 2);
INSERT INTO public.games VALUES (241, 2018, 'Third Place', 506, 505, 2, 0);
INSERT INTO public.games VALUES (242, 2018, 'Semi-Final', 506, 504, 2, 1);
INSERT INTO public.games VALUES (243, 2018, 'Semi-Final', 505, 503, 1, 0);
INSERT INTO public.games VALUES (244, 2018, 'Quarter-Final', 507, 504, 3, 2);
INSERT INTO public.games VALUES (245, 2018, 'Quarter-Final', 508, 506, 2, 0);
INSERT INTO public.games VALUES (246, 2018, 'Quarter-Final', 509, 505, 2, 1);
INSERT INTO public.games VALUES (247, 2018, 'Quarter-Final', 510, 503, 2, 0);
INSERT INTO public.games VALUES (248, 2018, 'Eighth-Final', 511, 506, 2, 1);
INSERT INTO public.games VALUES (249, 2018, 'Eighth-Final', 512, 508, 1, 0);
INSERT INTO public.games VALUES (250, 2018, 'Eighth-Final', 513, 505, 3, 2);
INSERT INTO public.games VALUES (251, 2018, 'Eighth-Final', 514, 509, 2, 0);
INSERT INTO public.games VALUES (252, 2018, 'Eighth-Final', 515, 504, 2, 1);
INSERT INTO public.games VALUES (253, 2018, 'Eighth-Final', 516, 507, 2, 1);
INSERT INTO public.games VALUES (254, 2018, 'Eighth-Final', 517, 510, 2, 1);
INSERT INTO public.games VALUES (255, 2018, 'Eighth-Final', 518, 503, 4, 3);
INSERT INTO public.games VALUES (256, 2014, 'Final', 518, 519, 1, 0);
INSERT INTO public.games VALUES (257, 2014, 'Third Place', 509, 520, 3, 0);
INSERT INTO public.games VALUES (258, 2014, 'Semi-Final', 520, 518, 1, 0);
INSERT INTO public.games VALUES (259, 2014, 'Semi-Final', 509, 519, 7, 1);
INSERT INTO public.games VALUES (260, 2014, 'Quarter-Final', 521, 520, 1, 0);
INSERT INTO public.games VALUES (261, 2014, 'Quarter-Final', 505, 518, 1, 0);
INSERT INTO public.games VALUES (262, 2014, 'Quarter-Final', 511, 509, 2, 1);
INSERT INTO public.games VALUES (263, 2014, 'Quarter-Final', 503, 519, 1, 0);
INSERT INTO public.games VALUES (264, 2014, 'Eighth-Final', 522, 509, 2, 1);
INSERT INTO public.games VALUES (265, 2014, 'Eighth-Final', 510, 511, 2, 0);
INSERT INTO public.games VALUES (266, 2014, 'Eighth-Final', 523, 503, 2, 0);
INSERT INTO public.games VALUES (267, 2014, 'Eighth-Final', 524, 519, 2, 1);
INSERT INTO public.games VALUES (268, 2014, 'Eighth-Final', 514, 520, 2, 1);
INSERT INTO public.games VALUES (269, 2014, 'Eighth-Final', 525, 521, 2, 1);
INSERT INTO public.games VALUES (270, 2014, 'Eighth-Final', 512, 518, 1, 0);
INSERT INTO public.games VALUES (271, 2014, 'Eighth-Final', 526, 505, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (503, 'France');
INSERT INTO public.teams VALUES (504, 'Croatia');
INSERT INTO public.teams VALUES (505, 'Belgium');
INSERT INTO public.teams VALUES (506, 'England');
INSERT INTO public.teams VALUES (507, 'Russia');
INSERT INTO public.teams VALUES (508, 'Sweden');
INSERT INTO public.teams VALUES (509, 'Brazil');
INSERT INTO public.teams VALUES (510, 'Uruguay');
INSERT INTO public.teams VALUES (511, 'Colombia');
INSERT INTO public.teams VALUES (512, 'Switzerland');
INSERT INTO public.teams VALUES (513, 'Japan');
INSERT INTO public.teams VALUES (514, 'Mexico');
INSERT INTO public.teams VALUES (515, 'Denmark');
INSERT INTO public.teams VALUES (516, 'Spain');
INSERT INTO public.teams VALUES (517, 'Portugal');
INSERT INTO public.teams VALUES (518, 'Argentina');
INSERT INTO public.teams VALUES (519, 'Germany');
INSERT INTO public.teams VALUES (520, 'Netherlands');
INSERT INTO public.teams VALUES (521, 'Costa Rica');
INSERT INTO public.teams VALUES (522, 'Chile');
INSERT INTO public.teams VALUES (523, 'Nigeria');
INSERT INTO public.teams VALUES (524, 'Algeria');
INSERT INTO public.teams VALUES (525, 'Greece');
INSERT INTO public.teams VALUES (526, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 271, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 526, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

