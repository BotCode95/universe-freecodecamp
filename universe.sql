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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    name character varying(50) NOT NULL,
    comets_id integer NOT NULL,
    age integer NOT NULL,
    nueva integer
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comets_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comets_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    distance_from_earth integer NOT NULL,
    age integer,
    mass numeric(2,1),
    description text,
    has_life boolean,
    nueva integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    distance_from_earth integer NOT NULL,
    age integer NOT NULL,
    mass numeric(2,1),
    description text,
    has_life boolean,
    planet_id integer,
    nueva integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    distance_from_earth integer NOT NULL,
    age integer NOT NULL,
    mass numeric(2,1),
    description text,
    has_life boolean,
    star_id integer,
    nueva integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    distance_from_earth integer NOT NULL,
    age integer,
    mass numeric(2,1),
    description text,
    has_life boolean,
    galaxy_id integer,
    nueva integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comets_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES ('uno', 1, 2, 3);
INSERT INTO public.comets VALUES ('uno', 2, 2, 4);
INSERT INTO public.comets VALUES ('uno', 3, 2, 5);
INSERT INTO public.comets VALUES ('uno', 4, 2, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 2, 2, 2.2, 'dssss', false, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2, 2, 2.2, 'dssss', false, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 2, 2, 2.2, 'dssss', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 3, 3, 3.3, 'prueba', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 3, 3, 3.3, 'prueba', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 3, 3, 3.3, 'prueba', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 3, 4, 4.4, 'prueba', false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'moon4', 4, 4, 4.4, 'prueba', false, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'moon5', 4, 4, 4.4, 'prueba', false, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'galaxy1', 2, 2, 2.2, 'dssss', false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'planet4', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'planet5', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet6', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet7', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet8', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet9', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'planet10', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'planet11', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet12', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet13', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet14', 3, 3, 3.3, 'prueba', false, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'galaxy1', 2, 2, 2.2, 'dssss', false, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', 2, 2, 2.2, 'dssss', false, 2, NULL);
INSERT INTO public.star VALUES (3, 'st3', 2, 2, 2.2, 'dssss', false, 3, NULL);
INSERT INTO public.star VALUES (4, 'star4', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 3, 3, 3.3, 'prueba', false, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 3, 3, 3.3, 'prueba', false, NULL, NULL);


--
-- Name: comets_comets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comets_id_seq', 33, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comets comets_nueva_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_nueva_key UNIQUE (nueva);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_nueva_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nueva_key UNIQUE (nueva);


--
-- Name: moon moon_nueva_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nueva_key UNIQUE (nueva);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nueva_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nueva_key UNIQUE (nueva);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_nueva_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nueva_key UNIQUE (nueva);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

