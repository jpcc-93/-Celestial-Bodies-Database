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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteoird_id_asteroid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteoird_id_asteroid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteoird_id_asteroid_seq OWNER TO freecodecamp;

--
-- Name: asteoird_id_asteroid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteoird_id_asteroid_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_light_years integer NOT NULL,
    descrption text,
    size_light_years numeric(25,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    primary_color text,
    planet_id integer NOT NULL,
    descripcion text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_sun numeric(10,2),
    rocky_planet boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_light_years integer,
    white_dwarf boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteoird_id_asteroid_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Apophis', 10);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 10);
INSERT INTO public.asteroid VALUES (3, 'Eros', 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vialactea', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'sagitario', 70000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'bootes', 28000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'cloud magallanes', 165000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'SGP 2015', 170000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 'white', 1, NULL);
INSERT INTO public.moon VALUES (2, 'europa', 'brown', 4, NULL);
INSERT INTO public.moon VALUES (3, 'fobos', 'red', 5, NULL);
INSERT INTO public.moon VALUES (4, 'deimos', 'black', 6, NULL);
INSERT INTO public.moon VALUES (5, 'io', 'blue', 4, NULL);
INSERT INTO public.moon VALUES (6, 'calisto', 'black', 7, NULL);
INSERT INTO public.moon VALUES (7, 'tetis', 'white', 7, NULL);
INSERT INTO public.moon VALUES (8, 'dione', 'white', 5, NULL);
INSERT INTO public.moon VALUES (9, 'rea', 'red', 8, NULL);
INSERT INTO public.moon VALUES (10, 'titan', 'green', 8, NULL);
INSERT INTO public.moon VALUES (11, 'japeto', 'white', 8, NULL);
INSERT INTO public.moon VALUES (12, 'miranda', 'brown', 2, NULL);
INSERT INTO public.moon VALUES (13, 'ariel', 'white', 3, NULL);
INSERT INTO public.moon VALUES (14, 'umbriel', 'brown', 9, NULL);
INSERT INTO public.moon VALUES (15, 'oberon', 'red', 10, NULL);
INSERT INTO public.moon VALUES (16, 'triton', 'black', 11, NULL);
INSERT INTO public.moon VALUES (17, 'proteo', 'blue', 12, NULL);
INSERT INTO public.moon VALUES (18, 'carpo', 'black', 13, NULL);
INSERT INTO public.moon VALUES (19, 'hiperrion', 'white', 14, NULL);
INSERT INTO public.moon VALUES (20, 'febe', 'white', 15, NULL);
INSERT INTO public.moon VALUES (21, 'pan', 'red', 16, NULL);
INSERT INTO public.moon VALUES (22, 'cresida', 'green', 17, NULL);
INSERT INTO public.moon VALUES (23, 'larisa', 'white', 18, NULL);
INSERT INTO public.moon VALUES (24, 'surtur', 'brown', 19, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 3.00, true, 10);
INSERT INTO public.planet VALUES (2, 'mercurio', 1.00, true, 10);
INSERT INTO public.planet VALUES (3, 'venus', 2.00, true, 10);
INSERT INTO public.planet VALUES (4, 'jupiter', 5.00, false, 10);
INSERT INTO public.planet VALUES (5, 'tord', 8.00, true, 1);
INSERT INTO public.planet VALUES (6, 'mab15', 1.00, true, 1);
INSERT INTO public.planet VALUES (7, 'pernor', 2.00, true, 1);
INSERT INTO public.planet VALUES (8, 'carnet', 5.00, false, 1);
INSERT INTO public.planet VALUES (9, 'locky', 9.00, true, 4);
INSERT INTO public.planet VALUES (10, 'cartle', 1.00, true, 4);
INSERT INTO public.planet VALUES (11, 'morty', 2.00, true, 3);
INSERT INTO public.planet VALUES (12, 'pyt', 3.00, false, 3);
INSERT INTO public.planet VALUES (13, 'carler', 3.00, true, 6);
INSERT INTO public.planet VALUES (14, 'mertroba', 1.00, true, 8);
INSERT INTO public.planet VALUES (15, 'tom15', 7.00, true, 8);
INSERT INTO public.planet VALUES (16, 'bore26', 5.00, false, 7);
INSERT INTO public.planet VALUES (17, 'versillo', 7.00, true, 2);
INSERT INTO public.planet VALUES (18, 'hort2', 1.00, true, 2);
INSERT INTO public.planet VALUES (19, 'ADC16', 1.00, true, 5);
INSERT INTO public.planet VALUES (20, 'ADC15', 5.00, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alfa centauri', 4, false, 1);
INSERT INTO public.star VALUES (2, 'sirio', 8, false, 1);
INSERT INTO public.star VALUES (3, 'dune', 16, true, 1);
INSERT INTO public.star VALUES (4, 'almach', 9000000, false, 2);
INSERT INTO public.star VALUES (5, 'stalmer', 1000000, true, 2);
INSERT INTO public.star VALUES (6, 'meldron', 80000, true, 2);
INSERT INTO public.star VALUES (7, 'jolder', 91000000, false, 4);
INSERT INTO public.star VALUES (8, 'garner', 980000, false, 4);
INSERT INTO public.star VALUES (9, 'castle', 180000, true, 3);
INSERT INTO public.star VALUES (10, 'sol', 0, false, 1);


--
-- Name: asteoird_id_asteroid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteoird_id_asteroid_seq', 3, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 24, true);


--
-- Name: planet_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_seq', 20, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 11, true);


--
-- Name: asteroid asteoird_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteoird_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_light_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_light_years_key UNIQUE (size_light_years);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: asteroid asteoird_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteoird_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

