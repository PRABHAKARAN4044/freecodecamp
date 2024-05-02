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
-- Name: family; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.family (
    family_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    moon_count integer
);


ALTER TABLE public.family OWNER TO freecodecamp;

--
-- Name: family_family_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.family_family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.family_family_id_seq OWNER TO freecodecamp;

--
-- Name: family_family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.family_family_id_seq OWNED BY public.family.family_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_years integer,
    descp text,
    distance_from_earth integer
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
    name character varying(30) NOT NULL,
    has_water boolean,
    planet_id integer,
    desp text
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
    has_life boolean,
    no_of_species integer,
    star_id integer
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
    size numeric,
    description text,
    galaxy_id integer
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
-- Name: family family_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.family ALTER COLUMN family_id SET DEFAULT nextval('public.family_family_id_seq'::regclass);


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
-- Data for Name: family; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.family VALUES (1, 'earth_family', 21, 5);
INSERT INTO public.family VALUES (2, 'sample', 25, 6);
INSERT INTO public.family VALUES (3, 'superfamily', 28, 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 'The galaxy where the Solar System is located', 1000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 22, 'The closest spiral galaxy to the Milky Way', 250);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 13, 'Third-largest galaxy in the Local Group', 300);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13, 'A supergiant elliptical galaxy in the constellation Virgo', 5500);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 13, 'Spiral galaxy in the constellation Virgo', 2900);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 13, 'Spiral galaxy in the constellation Canes Venatici', 3100);
INSERT INTO public.galaxy VALUES (7, 'Black Eye', 13, 'Spiral galaxy in the constellation Coma Berenices', 2400);
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', 13, 'Spiral galaxy in the constellation Ursa Major', 2100);
INSERT INTO public.galaxy VALUES (9, 'Cigar', 13, 'Galaxy in the constellation Ursa Major', 1200);
INSERT INTO public.galaxy VALUES (10, 'Sunflower', 13, 'Spiral galaxy in the constellation Canes Venatici', 2100);
INSERT INTO public.galaxy VALUES (11, 'Bode', 13, 'Galaxy in the constellation Ursa Major', 1220);
INSERT INTO public.galaxy VALUES (12, 'Cone', 13, 'Galaxy in the constellation Monoceros', 2350);
INSERT INTO public.galaxy VALUES (13, 'Andromeda II', 13, 'Dwarf spheroidal galaxy in the constellation Andromeda', 220);
INSERT INTO public.galaxy VALUES (14, 'Sculptor', 13, 'Dwarf spheroidal galaxy in the constellation Sculptor', 280);
INSERT INTO public.galaxy VALUES (15, 'Fornax', 13, 'Dwarf spheroidal galaxy in the constellation Fornax', 1300);
INSERT INTO public.galaxy VALUES (16, 'Leo I', 13, 'Dwarf spheroidal galaxy in the constellation Leo', 820);
INSERT INTO public.galaxy VALUES (17, 'Sextans', 13, 'Dwarf spheroidal galaxy in the constellation Sextans', 810);
INSERT INTO public.galaxy VALUES (18, 'Sagittarius', 13, 'Dwarf spheroidal galaxy in the constellation Sagittarius', 750);
INSERT INTO public.galaxy VALUES (19, 'Boötes I', 13, 'Dwarf spheroidal galaxy in the constellation Boötes', 980);
INSERT INTO public.galaxy VALUES (20, 'Ursa Minor', 13, 'Dwarf spheroidal galaxy in the constellation Ursa Minor', 650);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', true, 21, 'The Earth''s only natural satellite');
INSERT INTO public.moon VALUES (22, 'Phobos', false, 22, 'The larger and closer of Mars'' two moons');
INSERT INTO public.moon VALUES (23, 'Deimos', false, 22, 'The smaller and further of Mars'' two moons');
INSERT INTO public.moon VALUES (24, 'Ganymede', true, 23, 'The largest moon of Jupiter and in the Solar System');
INSERT INTO public.moon VALUES (25, 'Europa', true, 23, 'An icy moon of Jupiter, considered a prime target in the search for life');
INSERT INTO public.moon VALUES (26, 'Io', false, 23, 'The innermost and third-largest of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (27, 'Titan', true, 25, 'The largest moon of Saturn, known for its thick atmosphere');
INSERT INTO public.moon VALUES (28, 'Enceladus', true, 25, 'A small, icy moon of Saturn with active water geysers');
INSERT INTO public.moon VALUES (29, 'Mimas', false, 25, 'A moon of Saturn known for its large Herschel Crater');
INSERT INTO public.moon VALUES (30, 'Triton', true, 28, 'The largest moon of Neptune');
INSERT INTO public.moon VALUES (31, 'Charon', false, 29, 'The largest moon of Pluto, also considered a dwarf planet');
INSERT INTO public.moon VALUES (32, 'Larissa', false, 33, 'A moon of Neptune, discovered in 1981');
INSERT INTO public.moon VALUES (33, 'Phoebe', false, 35, 'A moon of Saturn, notable for its irregular shape and retrograde orbit');
INSERT INTO public.moon VALUES (34, 'Hyperion', false, 35, 'A moon of Saturn, known for its irregular shape and chaotic rotation');
INSERT INTO public.moon VALUES (35, 'Miranda', false, 36, 'A moon of Uranus, known for its varied terrain');
INSERT INTO public.moon VALUES (36, 'Tethys', false, 37, 'A moon of Saturn, known for its extensive system of ridges and valleys');
INSERT INTO public.moon VALUES (37, 'Dione', false, 37, 'A moon of Saturn, known for its bright wispy streaks on its surface');
INSERT INTO public.moon VALUES (38, 'Rhea', false, 37, 'A moon of Saturn, known for its heavily cratered surface');
INSERT INTO public.moon VALUES (39, 'Iapetus', false, 37, 'A moon of Saturn, known for its two-toned appearance');
INSERT INTO public.moon VALUES (40, 'Umbriel', false, 38, 'A moon of Uranus, known for its dark surface');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (21, 'Earth', true, 9, 21);
INSERT INTO public.planet VALUES (22, 'Mars', false, 0, 21);
INSERT INTO public.planet VALUES (23, 'Jupiter', false, 0, 22);
INSERT INTO public.planet VALUES (24, 'Mercury', false, 0, 23);
INSERT INTO public.planet VALUES (25, 'Venus', false, 0, 24);
INSERT INTO public.planet VALUES (26, 'Saturn', false, 0, 25);
INSERT INTO public.planet VALUES (27, 'Uranus', false, 0, 26);
INSERT INTO public.planet VALUES (28, 'Neptune', false, 0, 27);
INSERT INTO public.planet VALUES (29, 'Pluto', false, 0, 28);
INSERT INTO public.planet VALUES (30, 'Kepler-22b', true, 1, 29);
INSERT INTO public.planet VALUES (31, 'Kepler-62e', true, 2, 30);
INSERT INTO public.planet VALUES (32, 'Kepler-186f', true, 2, 31);
INSERT INTO public.planet VALUES (33, 'Proxima Centauri b', true, 1, 32);
INSERT INTO public.planet VALUES (34, 'TRAPPIST-1e', true, 1, 33);
INSERT INTO public.planet VALUES (35, 'Gliese 581d', true, 1, 34);
INSERT INTO public.planet VALUES (36, 'HD 40307g', true, 2, 35);
INSERT INTO public.planet VALUES (37, 'Kepler-442b', true, 1, 36);
INSERT INTO public.planet VALUES (38, 'Gliese 667 Cc', true, 2, 37);
INSERT INTO public.planet VALUES (39, 'Kepler-438b', true, 2, 38);
INSERT INTO public.planet VALUES (40, 'Kepler-444b', true, 2, 39);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (21, 'Sun', 1, 'The star at the center of the Solar System', 1);
INSERT INTO public.star VALUES (22, 'Alpha Centauri A', 1.1, 'The closest star system to the Solar System', 1);
INSERT INTO public.star VALUES (23, 'Sirius', 2, 'The brightest star in the night sky', 1);
INSERT INTO public.star VALUES (24, 'Proxima Centauri', 0.15, 'The closest known star to the Sun', 1);
INSERT INTO public.star VALUES (25, 'Barnard''s Star', 0.17, 'Second closest known star to the Sun', 1);
INSERT INTO public.star VALUES (26, 'Wolf 359', 0.09, 'A red dwarf star', 1);
INSERT INTO public.star VALUES (27, 'Lalande 21185', 0.46, 'A red dwarf star', 1);
INSERT INTO public.star VALUES (28, 'Luhman 16', 0.03, 'Binary brown dwarf system', 1);
INSERT INTO public.star VALUES (29, 'Epsilon Eridani', 0.77, 'K-type main-sequence star', 1);
INSERT INTO public.star VALUES (30, 'Tau Ceti', 0.78, 'Sun-like star', 1);
INSERT INTO public.star VALUES (31, 'Gliese 581', 0.31, 'Red dwarf star', 2);
INSERT INTO public.star VALUES (32, 'Kepler-62', 0.69, 'Star in the constellation Lyra', 2);
INSERT INTO public.star VALUES (33, 'TRAPPIST-1', 0.08, 'Ultra-cool dwarf star', 2);
INSERT INTO public.star VALUES (34, 'HD 40307', 0.7, 'K-type star', 2);
INSERT INTO public.star VALUES (35, 'Gliese 667 C', 0.31, 'Red dwarf star', 2);
INSERT INTO public.star VALUES (36, 'HD 69830', 0.89, 'K-type star', 2);
INSERT INTO public.star VALUES (37, 'Kepler-186', 0.47, 'Red dwarf star', 2);
INSERT INTO public.star VALUES (38, 'Gliese 876', 0.32, 'Red dwarf star', 2);
INSERT INTO public.star VALUES (39, 'Gliese 436', 0.44, 'Red dwarf star', 2);
INSERT INTO public.star VALUES (40, 'Kepler-444', 0.5, 'Red dwarf star', 2);


--
-- Name: family_family_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.family_family_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 40, true);


--
-- Name: family family_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_name_key UNIQUE (name);


--
-- Name: family family_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_pkey PRIMARY KEY (family_id);


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
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

