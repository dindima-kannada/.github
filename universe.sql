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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_millions_of_years integer NOT NULL,
    galaxy_types character varying(60)
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
    name character varying(30),
    planet_id integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30),
    star_id integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_types text,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL
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
-- Name: planets_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_moon (
    planets_id integer NOT NULL,
    name character varying(30),
    planets_moon_id integer NOT NULL
);


ALTER TABLE public.planets_moon OWNER TO freecodecamp;

--
-- Name: planets_moon_planets_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_moon_planets_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_moon_planets_moon_id_seq OWNER TO freecodecamp;

--
-- Name: planets_moon_planets_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_moon_planets_moon_id_seq OWNED BY public.planets_moon.planets_moon_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    galaxy_id integer,
    age_in_millions_of_years integer NOT NULL
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
-- Name: planets_moon planets_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_moon ALTER COLUMN planets_moon_id SET DEFAULT nextval('public.planets_moon_planets_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Own Galaxy with Sun and its solar system', 13600, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'The absolute closest galaxy to Our galaxy', 240, 'Irregular');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'The first ever discovered galaxy other than milky way', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Also known as Caldwell 77', 13270, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Bode', 'large size and bright', 13310, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Needle', 'It gets its name due to its narrow profile', 13240, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon ', 3, 'Earth Natural Satellite ', false, true, 0.00000004063, 5);
INSERT INTO public.moon VALUES (2, 'Deimos ', 4, 'Deimos is a dark body ', false, true, 0.0000822, 5);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, 'Phobos is the larger of Mars', false, true, 0.0000822, 5);
INSERT INTO public.moon VALUES (4, 'Metis', 5, 'Inner ', false, true, 0.000014063, 4530);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, 'Smallest of Inner four moons of Jupiter', false, true, 0.00002618, 4530);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 'Fifth Largest Moon of Jupiter', false, true, 0.00006581, 4530);
INSERT INTO public.moon VALUES (7, ' Thebe', 5, 'fourth closest moon of jupiter', false, true, 0.00001536, 4530);
INSERT INTO public.moon VALUES (8, 'Pan', 6, 'Inner Most Moon of Saturn', false, true, 0.000478, 4530);
INSERT INTO public.moon VALUES (9, 'Daphnis', 6, 'Orbits in Keeler Gap of Saturn', false, true, 0.000412, 4530);
INSERT INTO public.moon VALUES (10, 'Atlas', 6, 'Looks like holding ring on its shoulder', false, true, 0.000398, 4530);
INSERT INTO public.moon VALUES (11, 'Janus', 6, 'Known as Saturn X', false, true, 0.000452, 4530);
INSERT INTO public.moon VALUES (12, 'Hyperion', 6, 'Sponge Like Appearence', false, true, 0.00075, 4530);
INSERT INTO public.moon VALUES (13, 'Cordelia', 7, 'Inner Most satellite of Uranus', false, true, 0.00148, 4530);
INSERT INTO public.moon VALUES (14, 'Ophelia', 7, 'Satellite of Uranus', false, true, 0.00157, 4530);
INSERT INTO public.moon VALUES (15, 'Bianca', 7, 'Inner Satellite of Uranus', false, true, 0.00147, 4530);
INSERT INTO public.moon VALUES (16, 'Cressida', 7, 'Inner Satellite of Uranus', false, true, 0.00226, 4530);
INSERT INTO public.moon VALUES (17, 'Juliet', 7, 'Named after Shakespeare Play', false, true, 0.00357, 4530);
INSERT INTO public.moon VALUES (18, 'Naiad', 8, 'Inner Satellite of Neptune', false, true, 0.00872, 4530);
INSERT INTO public.moon VALUES (19, 'Thalassa', 7, 'Named after Daughter of Sea God', false, true, 0.00764, 4530);
INSERT INTO public.moon VALUES (20, 'Larissa', 7, 'Named after lover of Poseidon', false, true, 0.00647, 4530);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 3, 'The closest planet to Sun', false, true, 'Terrestial Planet', 0.0000061, 4503);
INSERT INTO public.planet VALUES (2, 'Venus', 3, 'Second nearest planet to Sun', false, true, 'Terrestial Planet', 0.000026378, 4503);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 'Our Planet', true, true, 'Terrestial Planet', 0, 4543);
INSERT INTO public.planet VALUES (4, ' Mars', 3, 'Nearest Planet to Earth and called Red planet', false, true, 'Terrestial Planel', 0.0000263, 4603);
INSERT INTO public.planet VALUES (5, 'Jupiter', 3, 'Largest Planet with Rings and Moons', false, true, 'Gas Giant', 0.0000635, 4603);
INSERT INTO public.planet VALUES (6, 'Saturn', 3, 'Ring Planet', false, true, 'Gas Giant', 0.000151, 4503);
INSERT INTO public.planet VALUES (7, 'Uranus', 3, 'Ring planet with 27 moons', false, true, 'Ice Giant', 0.00030435, 4503);
INSERT INTO public.planet VALUES (8, 'Neptune', 3, 'Rings with 14 moons', false, true, 'Ice Giant', 0.000457, 4503);
INSERT INTO public.planet VALUES (9, 'ars', 3, 'Nearest Planet to Earth and called Red planet', false, true, 'Terrestial Planel', 0.0000263, 4603);
INSERT INTO public.planet VALUES (10, 'pit', 3, 'Largest Planet with Rings and Moons', false, true, 'Gas Giant', 0.0000635, 4603);
INSERT INTO public.planet VALUES (11, 'turn', 3, 'Ring Planet', false, true, 'Gas Giant', 0.000151, 4503);
INSERT INTO public.planet VALUES (12, 'anus', 3, 'Ring planet with 27 moons', false, true, 'Ice Giant', 0.00030435, 4503);
INSERT INTO public.planet VALUES (13, 'Nene', 3, 'Rings with 14 moons', false, true, 'Ice Giant', 0.000457, 4503);


--
-- Data for Name: planets_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_moon VALUES (3, 'Moon ', 1);
INSERT INTO public.planets_moon VALUES (4, 'Deimos ', 2);
INSERT INTO public.planets_moon VALUES (4, 'Phobos', 3);
INSERT INTO public.planets_moon VALUES (5, 'Metis', 4);
INSERT INTO public.planets_moon VALUES (5, 'Adrastea', 5);
INSERT INTO public.planets_moon VALUES (5, 'Amalthea', 6);
INSERT INTO public.planets_moon VALUES (5, ' Thebe', 7);
INSERT INTO public.planets_moon VALUES (6, 'Pan', 8);
INSERT INTO public.planets_moon VALUES (6, 'Daphnis', 9);
INSERT INTO public.planets_moon VALUES (6, 'Atlas', 10);
INSERT INTO public.planets_moon VALUES (6, 'Janus', 11);
INSERT INTO public.planets_moon VALUES (6, 'Hyperion', 12);
INSERT INTO public.planets_moon VALUES (7, 'Cordelia', 13);
INSERT INTO public.planets_moon VALUES (7, 'Ophelia', 14);
INSERT INTO public.planets_moon VALUES (7, 'Bianca', 15);
INSERT INTO public.planets_moon VALUES (7, 'Cressida', 16);
INSERT INTO public.planets_moon VALUES (7, 'Juliet', 17);
INSERT INTO public.planets_moon VALUES (8, 'Naiad', 18);
INSERT INTO public.planets_moon VALUES (7, 'Thalassa', 19);
INSERT INTO public.planets_moon VALUES (7, 'Larissa', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sun', 'Sun is the star of our solar system', false, true, 0, 1, 4603);
INSERT INTO public.star VALUES (4, 'Antares', 'Its sixteenth brightest star in the night light', false, true, 550, 1, 11);
INSERT INTO public.star VALUES (5, 'KW Sagittarii', 'One of the largest known Stars', false, true, 7800, 1, 1122);
INSERT INTO public.star VALUES (36, ' Ross 248', '8th Closest Star System', false, false, 10.32, 3, 11548);
INSERT INTO public.star VALUES (37, 'Upsilon', ' A binary star with 4 planets', false, true, 44, 3, 310000);
INSERT INTO public.star VALUES (38, 'Alpha Centauri', 'A multiple star system', false, true, 4.365, 4, 4853);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planets_moon_planets_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_moon_planets_moon_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 38, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_un UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_un UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_un UNIQUE (name);


--
-- Name: planets_moon planets_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_moon
    ADD CONSTRAINT planets_moon_pkey PRIMARY KEY (planets_moon_id);


--
-- Name: planets_moon pm_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_moon
    ADD CONSTRAINT pm_un UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_un UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
