--
-- PostgreSQL database dump
--

\restrict tLPRbsI9HiZtHVlffglK3kVhBHyW4w5e1R7KSORm8J2GwxxgefCGxOMRqN95eYZ

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    departamento character varying(100) NOT NULL,
    divisao character varying(100)
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- Name: filme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filme (
    idfilme integer NOT NULL,
    nome character varying(50),
    ano integer,
    id_genero integer
);


ALTER TABLE public.filme OWNER TO postgres;

--
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    idfuncionario integer NOT NULL,
    nome character varying(100),
    email character varying(200),
    sexo character varying(10),
    departamento character varying(100),
    admissao date,
    salario integer,
    cargo character varying(100),
    idregiao integer
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- Name: genero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genero (
    idgenero integer NOT NULL,
    nome character varying(30)
);


ALTER TABLE public.genero OWNER TO postgres;

--
-- Name: locacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locacao (
    idlocacao integer NOT NULL,
    data timestamp without time zone,
    midia integer,
    dias integer,
    id_filme integer
);


ALTER TABLE public.locacao OWNER TO postgres;

--
-- Name: localizacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localizacao (
    idregiao integer NOT NULL,
    localizacao character varying(20),
    pais character varying(20)
);


ALTER TABLE public.localizacao OWNER TO postgres;

--
-- Name: maquinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maquinas (
    maquina character varying(20),
    dia integer,
    qtd numeric(10,2)
);


ALTER TABLE public.maquinas OWNER TO postgres;

--
-- Name: rel_locadora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rel_locadora (
    filme character varying(50),
    genero character varying(30),
    data date,
    dias integer,
    midia integer
);


ALTER TABLE public.rel_locadora OWNER TO postgres;

--
-- Name: seq_locacao; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seq_locacao
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.seq_locacao OWNER TO postgres;

--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (departamento);


--
-- Name: filme filme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (idfilme);


--
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (idfuncionario);


--
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (idgenero);


--
-- Name: locacao locacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locacao
    ADD CONSTRAINT locacao_pkey PRIMARY KEY (idlocacao);


--
-- Name: localizacao localizacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localizacao
    ADD CONSTRAINT localizacao_pkey PRIMARY KEY (idregiao);


--
-- Name: filme filme_id_genero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_id_genero_fkey FOREIGN KEY (id_genero) REFERENCES public.genero(idgenero);


--
-- Name: locacao locacao_id_filme_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locacao
    ADD CONSTRAINT locacao_id_filme_fkey FOREIGN KEY (id_filme) REFERENCES public.filme(idfilme);


--
-- PostgreSQL database dump complete
--

\unrestrict tLPRbsI9HiZtHVlffglK3kVhBHyW4w5e1R7KSORm8J2GwxxgefCGxOMRqN95eYZ

