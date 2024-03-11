--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    year_discovered integer,
    type character varying(30)
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
-- Name: meteor_fields; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor_fields (
    name character varying(30) NOT NULL,
    distance integer,
    meteor_fields_id integer NOT NULL
);


ALTER TABLE public.meteor_fields OWNER TO freecodecamp;

--
-- Name: meteor_fields_meteor_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_fields_meteor_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_fields_meteor_fields_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_fields_meteor_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_fields_meteor_fields_id_seq OWNED BY public.meteor_fields.meteor_fields_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    year_discovered integer,
    planet_id integer NOT NULL,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    year_discovered integer,
    star_id integer NOT NULL,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    year_discovered integer,
    galaxy_id integer NOT NULL
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
-- Name: meteor_fields meteor_fields_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_fields ALTER COLUMN meteor_fields_id SET DEFAULT nextval('public.meteor_fields_meteor_fields_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Earth Galaxy', NULL, 1610, NULL);
INSERT INTO public.galaxy VALUES (2, 'UGC 12158', 'Barred spiral galaxy', NULL, 2003, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'NGC 1300', 'Barred spiral', NULL, 1835, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'Barred spiral', NULL, 964, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Dwarf', NULL, 1503, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'NGC 5264', 'Dwarf', NULL, 1835, 'Irregular');
INSERT INTO public.galaxy VALUES (7, 'ESO 162-17', 'Unusual', NULL, NULL, 'Peculiar');


--
-- Data for Name: meteor_fields; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor_fields VALUES ('Brutus', NULL, 1);
INSERT INTO public.meteor_fields VALUES ('Terminator', NULL, 2);
INSERT INTO public.meteor_fields VALUES ('Danger Zone', NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'Our Moon', NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars First Moon', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars Second Moon', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Jupiter', NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Jupiter', NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 'Jupiter', NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 'Jupiter', NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (10, 'Hyperion', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (11, 'Prometheus', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (12, 'Pandora', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (13, 'Janus', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (14, 'Epimetheus', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (19, 'Despina', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (20, 'Galatea', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (21, 'Hippocamp', NULL, NULL, NULL, 12, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our Home', 4.6, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Nebulus', 'The Green Planet', 2.4, NULL, 3, NULL);
INSERT INTO public.planet VALUES (3, 'Tyranus', 'The Strong Planet', 3.2, NULL, 4, NULL);
INSERT INTO public.planet VALUES (4, 'Hyrus', 'The Smoky Planet', 2.9, NULL, 5, NULL);
INSERT INTO public.planet VALUES (5, 'Mirrirus', 'The Reflective Planet', 3.6, NULL, 6, NULL);
INSERT INTO public.planet VALUES (6, 'Urys', 'The Dark Planet', 4.7, NULL, 7, NULL);
INSERT INTO public.planet VALUES (7, 'Mars', 'Closest to Home', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Mercury', 'Inner Planet', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Saturn', 'Gas Giant', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Jupiter', 'The Largest One', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Uranus', 'Ice Giant', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Neptune', 'Far From Home', NULL, NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Star of the Milky Way', 4.6, NULL, 1);
INSERT INTO public.star VALUES (3, 'UHF-122', 'Super star', NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'UHC-190', 'Special Star', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'UYT-2082', 'Shining Star', NULL, NULL, 4);
INSERT INTO public.star VALUES (6, 'PUY-201', 'Sparkly Star', NULL, NULL, 5);
INSERT INTO public.star VALUES (7, 'UYE-222', 'Shooting Star', NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: meteor_fields_meteor_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_fields_meteor_fields_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor_fields meteor_fields_meteor_fields_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_fields
    ADD CONSTRAINT meteor_fields_meteor_fields_id_key UNIQUE (meteor_fields_id);


--
-- Name: meteor_fields meteor_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor_fields
    ADD CONSTRAINT meteor_fields_pkey PRIMARY KEY (meteor_fields_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

