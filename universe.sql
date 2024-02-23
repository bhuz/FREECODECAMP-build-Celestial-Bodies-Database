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
    name character varying NOT NULL,
    types character varying,
    description character varying,
    age_in_millions_of_years integer
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
-- Name: life_forms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_forms (
    life_forms_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.life_forms OWNER TO freecodecamp;

--
-- Name: life_forms_life_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_forms_life_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_forms_life_forms_id_seq OWNER TO freecodecamp;

--
-- Name: life_forms_life_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_forms_life_forms_id_seq OWNED BY public.life_forms.life_forms_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    description text,
    planet_id integer
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
    name character varying NOT NULL,
    planet_types character varying,
    has_life boolean,
    is_spherical character varying,
    description text,
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
    name character varying NOT NULL,
    distance_from_earth numeric,
    burst boolean,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life_forms life_forms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms ALTER COLUMN life_forms_id SET DEFAULT nextval('public.life_forms_life_forms_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'Home to the Solar System', 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 'Nearest spiral galaxy to the Milky Way', 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 'Third-largest galaxy in the Local Group', 6000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 'Interacting galaxy with a distinct spiral structure', 9000);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'Elliptical', 'Giant elliptical galaxy in the Virgo Cluster', 12000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Lenticular', 'Lenticular galaxy with a prominent dust lane resembling a sombrero', 11000);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel', 'Ring', 'Ring galaxy with a distinct blue ring of young stars', 8000);
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', 'Spiral', 'Spiral galaxy known for its prominent pinwheel-like structure', 7000);


--
-- Data for Name: life_forms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_forms VALUES (3, 'fungi', 'diverse group of organisms including yeasts, molds, and mushrooms');
INSERT INTO public.life_forms VALUES (4, 'bacteria', 'single-celled microorganisms found in diverse environments');
INSERT INTO public.life_forms VALUES (5, 'human', 'complex multicellular organism characterized by self-awareness and intelligence');
INSERT INTO public.life_forms VALUES (6, 'dog', 'loyal companion');
INSERT INTO public.life_forms VALUES (7, 'cat', 'independent hunter');
INSERT INTO public.life_forms VALUES (8, 'bird', 'fluent in flight');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'Luna', 4500, 'Earth''s natural satellite', 23);
INSERT INTO public.moon VALUES (21, 'Phobos', 4300, 'Mars''s innermost and larger moon', 24);
INSERT INTO public.moon VALUES (22, 'Deimos', 4300, 'Mars''s outermost and smaller moon', 24);
INSERT INTO public.moon VALUES (23, 'Ganymede', 4500, 'Largest moon of Jupiter and in the Solar System', 25);
INSERT INTO public.moon VALUES (24, 'Callisto', 4500, 'Second-largest moon of Jupiter', 25);
INSERT INTO public.moon VALUES (25, 'Io', 4500, 'Innermost of the four Galilean moons of Jupiter', 25);
INSERT INTO public.moon VALUES (26, 'Europa', 4500, 'Smoothest surface of any known solid object in the Solar System', 25);
INSERT INTO public.moon VALUES (27, 'Titan', 4500, 'Largest moon of Saturn and second-largest moon in the Solar System', 26);
INSERT INTO public.moon VALUES (28, 'Rhea', 4500, 'Second-largest moon of Saturn and ninth-largest moon in the Solar System', 26);
INSERT INTO public.moon VALUES (29, 'Iapetus', 4500, 'Third-largest moon of Saturn and has a noticeable two-toned coloration', 26);
INSERT INTO public.moon VALUES (30, 'Miranda', 4500, 'Smallest and innermost of Uranus''s five round satellites', 27);
INSERT INTO public.moon VALUES (31, 'Ariel', 4500, 'Fourth-largest of Uranus''s moons', 27);
INSERT INTO public.moon VALUES (32, 'Umbriel', 4500, 'Darker and somewhat smaller than Ariel', 27);
INSERT INTO public.moon VALUES (33, 'Titania', 4500, 'Largest of Uranus''s moons and eighth-largest moon in the Solar System', 27);
INSERT INTO public.moon VALUES (34, 'Triton', 4500, 'Largest moon of Neptune and the only large moon in the Solar System with a retrograde orbit', 28);
INSERT INTO public.moon VALUES (35, 'Nereid', 4500, 'Third-largest moon of Neptune and the second-largest irregular satellite in the Solar System', 28);
INSERT INTO public.moon VALUES (36, 'Charon', 4500, 'Largest moon of Pluto and the largest known satellite relative to its primary body', 29);
INSERT INTO public.moon VALUES (37, 'Hydra', 4500, 'One of the two known natural satellites of Pluto', 29);
INSERT INTO public.moon VALUES (38, 'Nix', 4500, 'One of the two known natural satellites of Pluto', 29);
INSERT INTO public.moon VALUES (39, 'X', 4500, 'a planet from the imagination', 23);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (21, 'Mercury', 'Terrestrial', false, 'True', 'Innermost planet in the Solar System', 1);
INSERT INTO public.planet VALUES (22, 'Venus', 'Terrestrial', false, 'True', 'Second planet from the Sun, known for its thick atmosphere', 1);
INSERT INTO public.planet VALUES (23, 'Earth', 'Terrestrial', true, 'True', 'Home to a wide variety of life forms, including humans', 1);
INSERT INTO public.planet VALUES (24, 'Mars', 'Terrestrial', false, 'True', 'Known as the Red Planet, with evidence of past water flows', 1);
INSERT INTO public.planet VALUES (25, 'Jupiter', 'Gas Giant', false, 'False', 'Largest planet in the Solar System, with a prominent Great Red Spot', 2);
INSERT INTO public.planet VALUES (26, 'Saturn', 'Gas Giant', false, 'False', 'Known for its extensive ring system made of ice and dust', 2);
INSERT INTO public.planet VALUES (27, 'Uranus', 'Ice Giant', false, 'False', 'Seventh planet from the Sun, with a unique sideways rotation', 3);
INSERT INTO public.planet VALUES (28, 'Neptune', 'Ice Giant', false, 'False', 'Eighth and farthest known planet from the Sun', 4);
INSERT INTO public.planet VALUES (29, 'Pluto', 'Dwarf Planet', false, 'True', 'Once considered the ninth planet, now classified as a dwarf planet', 5);
INSERT INTO public.planet VALUES (30, 'Kepler-22b', 'Exoplanet', true, 'True', 'Exoplanet orbiting within the habitable zone of its star', 6);
INSERT INTO public.planet VALUES (31, 'Gliese 581c', 'Exoplanet', true, 'True', 'Super-Earth exoplanet within the habitable zone of its star', 7);
INSERT INTO public.planet VALUES (32, 'HD 209458 b', 'Exoplanet', false, 'False', 'Hot Jupiter exoplanet with an evaporating atmosphere', 8);
INSERT INTO public.planet VALUES (33, 'TrES-2b', 'Exoplanet', false, 'False', 'Hot Jupiter exoplanet known as the darkest planet discovered', 4);
INSERT INTO public.planet VALUES (34, 'GJ 1214 b', 'Exoplanet', false, 'False', 'Super-Earth exoplanet with a thick atmosphere of water vapor', 4);
INSERT INTO public.planet VALUES (35, 'HD 189733 b', 'Exoplanet', false, 'False', 'Hot Jupiter exoplanet with blue color due to its atmosphere', 4);
INSERT INTO public.planet VALUES (36, 'WASP-12b', 'Exoplanet', false, 'False', 'Hot Jupiter exoplanet orbiting very close to its star', 4);
INSERT INTO public.planet VALUES (37, 'Kepler-186f', 'Exoplanet', true, 'True', 'First Earth-sized exoplanet discovered within the habitable zone', 4);
INSERT INTO public.planet VALUES (38, 'Proxima Centauri b', 'Exoplanet', true, 'True', 'Exoplanet orbiting Proxima Centauri, the nearest known star to the Sun', 8);
INSERT INTO public.planet VALUES (39, 'TRAPPIST-1d', 'Exoplanet', true, 'True', 'One of the seven Earth-sized exoplanets orbiting TRAPPIST-1', 8);
INSERT INTO public.planet VALUES (40, 'Ross 128 b', 'Exoplanet', true, 'True', 'Exoplanet orbiting Ross 128, a red dwarf star', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.000016, false, 'The star at the center of the Solar System', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 4.37, false, 'Closest star system to the Solar System', 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4.24, false, 'Nearest known star to the Sun', 1);
INSERT INTO public.star VALUES (4, 'Sirius', 8.6, false, 'Brightest star in the night sky', 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 643, true, 'Red supergiant nearing the end of its life', 2);
INSERT INTO public.star VALUES (6, 'Vega', 25.04, false, 'Bright star in the constellation of Lyra', 3);
INSERT INTO public.star VALUES (7, 'Polaris', 434.6, false, 'North Star and part of the Little Dipper', 3);
INSERT INTO public.star VALUES (8, 'Canopus', 310, false, 'Brightest star in the southern constellation of Carina', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: life_forms_life_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_forms_life_forms_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: life_forms life_forms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_name_key UNIQUE (name);


--
-- Name: life_forms life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_pkey PRIMARY KEY (life_forms_id);


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

