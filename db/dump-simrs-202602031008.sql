--
-- PostgreSQL database dump
--

\restrict ybsHMJktxsAKfrcSPPPaUEWnrzPW7eD4qW6gzcLIngWGVTuXpW5xoGgO1ocnoDF

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-02-03 10:08:04

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

DROP DATABASE simrs;
--
-- TOC entry 5245 (class 1262 OID 58180)
-- Name: simrs; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE simrs WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


\unrestrict ybsHMJktxsAKfrcSPPPaUEWnrzPW7eD4qW6gzcLIngWGVTuXpW5xoGgO1ocnoDF
\connect simrs
\restrict ybsHMJktxsAKfrcSPPPaUEWnrzPW7eD4qW6gzcLIngWGVTuXpW5xoGgO1ocnoDF

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
-- TOC entry 219 (class 1259 OID 58181)
-- Name: cppt; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cppt (
    no integer CONSTRAINT " CPPT_no_not_null" NOT NULL,
    norm character varying CONSTRAINT " CPPT_norm_not_null" NOT NULL,
    kd_layanan character varying CONSTRAINT " CPPT_kd_layanan_not_null" NOT NULL,
    petugas character varying CONSTRAINT " CPPT_petugas_not_null" NOT NULL,
    dpjp character varying CONSTRAINT " CPPT_dpjp_not_null" NOT NULL,
    soap character varying CONSTRAINT " CPPT_soap_not_null" NOT NULL,
    tindakan character varying CONSTRAINT " CPPT_tindakan_not_null" NOT NULL,
    created_at timestamp without time zone CONSTRAINT " CPPT_created_at_not_null" NOT NULL,
    updated_at timestamp without time zone CONSTRAINT " CPPT_updated_at_not_null" NOT NULL,
    no_kunjungan character varying,
    tgl_cppt timestamp without time zone
);


--
-- TOC entry 220 (class 1259 OID 58195)
-- Name:  CPPT_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public." CPPT_no_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5246 (class 0 OID 0)
-- Dependencies: 220
-- Name:  CPPT_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public." CPPT_no_seq" OWNED BY public.cppt.no;


--
-- TOC entry 221 (class 1259 OID 58196)
-- Name: logistik_medis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.logistik_medis (
    no integer CONSTRAINT "Logistik_medis_no_not_null" NOT NULL,
    nama_barang character varying,
    kd_supplier character varying,
    tgl_masuk timestamp without time zone,
    jml_masuk integer,
    tgl_keluar timestamp without time zone,
    jml_keluar integer,
    stok_opname integer DEFAULT 0,
    sisa_stok integer DEFAULT 0,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    tgl_stok_opname timestamp without time zone
);


--
-- TOC entry 222 (class 1259 OID 58204)
-- Name: Logistik_medis_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Logistik_medis_no_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5247 (class 0 OID 0)
-- Dependencies: 222
-- Name: Logistik_medis_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Logistik_medis_no_seq" OWNED BY public.logistik_medis.no;


--
-- TOC entry 223 (class 1259 OID 58205)
-- Name: User; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."User" (
    username character varying,
    realname character varying,
    email character varying,
    kd_unit character varying,
    level character varying,
    kd_fungsi character varying,
    kd_jabatan character varying,
    aktif character varying,
    password character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    id integer NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 58211)
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5248 (class 0 OID 0)
-- Dependencies: 224
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- TOC entry 225 (class 1259 OID 58212)
-- Name: alkes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alkes (
    no integer NOT NULL,
    nama_alkes character varying,
    indikasi character varying,
    dosis character varying,
    di_produksi_oleh character varying,
    tgl_alkes_diterima timestamp without time zone,
    tgl_alkes_expired timestamp without time zone,
    kd_supplier character varying,
    stok_alkes_in integer,
    stok_opname integer,
    stok_alkes_out integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    hpp character varying,
    ppn character varying,
    harga_jual_alkes character varying
);


--
-- TOC entry 226 (class 1259 OID 58218)
-- Name: alkes_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.alkes_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5249 (class 0 OID 0)
-- Dependencies: 226
-- Name: alkes_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.alkes_no_seq OWNED BY public.alkes.no;


--
-- TOC entry 227 (class 1259 OID 58219)
-- Name: antrian; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.antrian (
    id integer NOT NULL,
    no_antrian character varying,
    tgl_antrian character varying,
    dpjp character varying,
    layanan character varying,
    checkin character varying,
    checkout character varying,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    norm character varying,
    no_register character varying
);


--
-- TOC entry 228 (class 1259 OID 58227)
-- Name: antrian_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.antrian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5250 (class 0 OID 0)
-- Dependencies: 228
-- Name: antrian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.antrian_id_seq OWNED BY public.antrian.id;


--
-- TOC entry 229 (class 1259 OID 58228)
-- Name: cache; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 58236)
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 58244)
-- Name: diagnosa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.diagnosa (
    no integer NOT NULL,
    kd_diagnosa character varying,
    diagnosa character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 232 (class 1259 OID 58250)
-- Name: diagnosa_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.diagnosa_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5251 (class 0 OID 0)
-- Dependencies: 232
-- Name: diagnosa_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.diagnosa_no_seq OWNED BY public.diagnosa.no;


--
-- TOC entry 233 (class 1259 OID 58251)
-- Name: dpjp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dpjp (
    no integer NOT NULL,
    nama_dokter character varying,
    no_sip character varying,
    tgl_sip character varying,
    expired_sip character varying,
    jenis_praktek character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    status character varying
);


--
-- TOC entry 234 (class 1259 OID 58257)
-- Name: dpjp_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dpjp_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5252 (class 0 OID 0)
-- Dependencies: 234
-- Name: dpjp_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dpjp_no_seq OWNED BY public.dpjp.no;


--
-- TOC entry 235 (class 1259 OID 58258)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 58271)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5253 (class 0 OID 0)
-- Dependencies: 236
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 237 (class 1259 OID 58272)
-- Name: id; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.id (
    no integer NOT NULL,
    "Jenis_id" character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 238 (class 1259 OID 58278)
-- Name: id_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.id_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5254 (class 0 OID 0)
-- Dependencies: 238
-- Name: id_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.id_no_seq OWNED BY public.id.no;


--
-- TOC entry 239 (class 1259 OID 58279)
-- Name: jadwal_praktek; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jadwal_praktek (
    id integer NOT NULL,
    dpjp character varying,
    kode_layanan character varying,
    jam_praktek character varying,
    hari_praktek character varying,
    shift character varying,
    status character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 240 (class 1259 OID 58285)
-- Name: jadwal_praktek_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jadwal_praktek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5255 (class 0 OID 0)
-- Dependencies: 240
-- Name: jadwal_praktek_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jadwal_praktek_id_seq OWNED BY public.jadwal_praktek.id;


--
-- TOC entry 241 (class 1259 OID 58286)
-- Name: jadwal_visite; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jadwal_visite (
    id integer NOT NULL,
    dpjp character varying,
    kode_ruangan character varying,
    jam_visite character varying,
    hari_visite character varying,
    shift character varying,
    status character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 242 (class 1259 OID 58292)
-- Name: jadwal_visite_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jadwal_visite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5256 (class 0 OID 0)
-- Dependencies: 242
-- Name: jadwal_visite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jadwal_visite_id_seq OWNED BY public.jadwal_visite.id;


--
-- TOC entry 289 (class 1259 OID 66383)
-- Name: jasa_medis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jasa_medis (
    id integer NOT NULL,
    tgl_transaksi timestamp without time zone,
    kode_tindakan_medis character varying,
    dpjp character varying,
    no_sip character varying,
    no_registrasi character varying,
    share_tin_perawat integer,
    ppn_share_perawat integer,
    total_jasa_medis integer,
    share_tin_dokter integer,
    ppn_share_dokter integer,
    share_tin_hospital integer,
    ppn_share_hospital integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 288 (class 1259 OID 66382)
-- Name: jasa_medis_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jasa_medis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5257 (class 0 OID 0)
-- Dependencies: 288
-- Name: jasa_medis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jasa_medis_id_seq OWNED BY public.jasa_medis.id;


--
-- TOC entry 243 (class 1259 OID 58300)
-- Name: job_batches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


--
-- TOC entry 244 (class 1259 OID 58312)
-- Name: jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


--
-- TOC entry 245 (class 1259 OID 58323)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5258 (class 0 OID 0)
-- Dependencies: 245
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 246 (class 1259 OID 58324)
-- Name: kamar; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.kamar (
    no integer NOT NULL,
    nama_kamar character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    kd_kamar character varying,
    status character varying,
    no_kamar character varying,
    kelas character varying,
    harga_sewa character varying,
    ppn character varying,
    harga_sewa_final character varying
);


--
-- TOC entry 247 (class 1259 OID 58330)
-- Name: kamar_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.kamar_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5259 (class 0 OID 0)
-- Dependencies: 247
-- Name: kamar_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.kamar_no_seq OWNED BY public.kamar.no;


--
-- TOC entry 248 (class 1259 OID 58331)
-- Name: kunjungan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.kunjungan (
    id integer NOT NULL,
    noregister character varying NOT NULL,
    norm character varying NOT NULL,
    updated_at timestamp without time zone,
    created_at timestamp without time zone,
    status character varying
);


--
-- TOC entry 249 (class 1259 OID 58339)
-- Name: kunjungan_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.kunjungan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5260 (class 0 OID 0)
-- Dependencies: 249
-- Name: kunjungan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.kunjungan_id_seq OWNED BY public.kunjungan.id;


--
-- TOC entry 250 (class 1259 OID 58340)
-- Name: layanan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.layanan (
    no bigint NOT NULL,
    nama_layanan character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    kd_layanan character varying,
    status character varying,
    kode_layanan character varying
);


--
-- TOC entry 251 (class 1259 OID 58346)
-- Name: layanan_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.layanan_no_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5261 (class 0 OID 0)
-- Dependencies: 251
-- Name: layanan_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.layanan_no_seq OWNED BY public.layanan.no;


--
-- TOC entry 252 (class 1259 OID 58347)
-- Name: lims; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lims (
    no integer NOT NULL,
    tgl_pemeriksaan timestamp without time zone NOT NULL,
    no_kunjungan character varying NOT NULL,
    norm character varying NOT NULL,
    kd_pemeriksaan character varying NOT NULL,
    hasil_pemeriksaan character varying NOT NULL,
    kd_dpjp character varying NOT NULL,
    kd_petugas character varying NOT NULL,
    jam_mulai time without time zone NOT NULL,
    jam_selesai time without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 253 (class 1259 OID 58364)
-- Name: lims_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.lims_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5262 (class 0 OID 0)
-- Dependencies: 253
-- Name: lims_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.lims_no_seq OWNED BY public.lims.no;


--
-- TOC entry 254 (class 1259 OID 58365)
-- Name: log_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.log_history (
    no integer NOT NULL,
    aktifitas character varying NOT NULL,
    "user" character varying NOT NULL,
    ip character varying NOT NULL,
    trx_date timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 255 (class 1259 OID 58377)
-- Name: log_history_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.log_history_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5263 (class 0 OID 0)
-- Dependencies: 255
-- Name: log_history_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.log_history_no_seq OWNED BY public.log_history.no;


--
-- TOC entry 256 (class 1259 OID 58378)
-- Name: logistik_non_medis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.logistik_non_medis (
    no integer NOT NULL,
    nama_barang character varying,
    kd_supplier character varying,
    tgl_masuk timestamp without time zone,
    jml_masuk integer,
    tgl_keluar timestamp without time zone,
    jml_keluar integer,
    stok_opname integer DEFAULT 0,
    sisa_stok integer DEFAULT 0,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    tgl_stock_opname timestamp without time zone
);


--
-- TOC entry 257 (class 1259 OID 58386)
-- Name: logistik_non_medis_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.logistik_non_medis_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5264 (class 0 OID 0)
-- Dependencies: 257
-- Name: logistik_non_medis_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.logistik_non_medis_no_seq OWNED BY public.logistik_non_medis.no;


--
-- TOC entry 258 (class 1259 OID 58387)
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


--
-- TOC entry 259 (class 1259 OID 58393)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5265 (class 0 OID 0)
-- Dependencies: 259
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 260 (class 1259 OID 58394)
-- Name: obat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.obat (
    no integer NOT NULL,
    nama_obat character varying,
    indikasi character varying,
    dosis character varying,
    di_produksi_oleh character varying,
    tgl_obat_diterima timestamp without time zone,
    tgl_obat_expired timestamp without time zone,
    kd_supplier character varying,
    stok_obat_in integer,
    stok_opname integer,
    stok_obat_out integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    hpp character varying,
    ppn character varying,
    harga_jual_obat character varying,
    margin character varying,
    kd_obat character varying,
    saldo_rp integer,
    target_jual_rp integer,
    ppn_rp integer
);


--
-- TOC entry 285 (class 1259 OID 58654)
-- Name: obat_fornas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.obat_fornas (
    no integer CONSTRAINT obat_master_no_not_null NOT NULL,
    nama_obat_inter character varying,
    kd_obat character varying,
    status character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    tgl_update_fornas timestamp without time zone,
    nama_obat_fornas character varying
);


--
-- TOC entry 5266 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE obat_fornas; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.obat_fornas IS 'Formularium Nasional (Fornas) adalah daftar obat terpilih yang dibutuhkan dan digunakan sebagai acuan penulisan resep pada pelaksanaan pelayanan kesehatan dalam penyelenggaraan program Jaminan Kesehatan Nasional.
obat.';


--
-- TOC entry 284 (class 1259 OID 58653)
-- Name: obat_master_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.obat_master_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5267 (class 0 OID 0)
-- Dependencies: 284
-- Name: obat_master_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.obat_master_no_seq OWNED BY public.obat_fornas.no;


--
-- TOC entry 261 (class 1259 OID 58400)
-- Name: obat_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.obat_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5268 (class 0 OID 0)
-- Dependencies: 261
-- Name: obat_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.obat_no_seq OWNED BY public.obat.no;


--
-- TOC entry 262 (class 1259 OID 58401)
-- Name: pasien; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pasien (
    id integer NOT NULL,
    norm character varying,
    nama character varying,
    no_id character varying,
    kd_id character varying,
    marga character varying,
    kd_sex character varying,
    tempat_lahir character varying,
    tgl_lahir character varying,
    alamat_asal character varying,
    alamat_domisili character varying,
    kd_gol_darah character varying,
    alergi character varying,
    kd_pekerjaan character varying,
    kd_sts_kawin character varying,
    kd_pendidikan character varying,
    kd_agama character varying,
    kd_warga_negara character varying,
    no_passport character varying,
    email character varying,
    aktif character varying,
    kd_blokir character varying,
    kd_keluarga character varying,
    "noka_BPJS" character varying,
    "noPolis_Asuransi" character varying,
    no_induk_pegawai character varying,
    kd_instansi character varying,
    t_badan character varying,
    b_badan character varying,
    kd_diagnosa_awal character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 263 (class 1259 OID 58407)
-- Name: pasien_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pasien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5269 (class 0 OID 0)
-- Dependencies: 263
-- Name: pasien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pasien_id_seq OWNED BY public.pasien.id;


--
-- TOC entry 264 (class 1259 OID 58408)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


--
-- TOC entry 265 (class 1259 OID 58415)
-- Name: pekerjaan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pekerjaan (
    no integer NOT NULL,
    nama_pekerjaan character varying,
    created_at timestamp without time zone,
    update_at timestamp without time zone
);


--
-- TOC entry 266 (class 1259 OID 58421)
-- Name: pekerjaan_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pekerjaan_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5270 (class 0 OID 0)
-- Dependencies: 266
-- Name: pekerjaan_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pekerjaan_no_seq OWNED BY public.pekerjaan.no;


--
-- TOC entry 267 (class 1259 OID 58422)
-- Name: pembelian; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pembelian (
    id integer NOT NULL,
    kd_barang character varying,
    kd_jasa character varying,
    tgl_transaksi character varying,
    jumlah_item character varying,
    harga_satuan character varying,
    ppn character varying,
    hpp character varying,
    harga_beli character varying,
    diskon character varying,
    harga_pembelian character varying,
    status character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 268 (class 1259 OID 58428)
-- Name: pembelian_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pembelian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5271 (class 0 OID 0)
-- Dependencies: 268
-- Name: pembelian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pembelian_id_seq OWNED BY public.pembelian.id;


--
-- TOC entry 269 (class 1259 OID 58429)
-- Name: pendidikan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pendidikan (
    no integer NOT NULL,
    pendidikan character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 270 (class 1259 OID 58435)
-- Name: pendidikan_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pendidikan_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5272 (class 0 OID 0)
-- Dependencies: 270
-- Name: pendidikan_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pendidikan_no_seq OWNED BY public.pendidikan.no;


--
-- TOC entry 271 (class 1259 OID 58436)
-- Name: penjualan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.penjualan (
    id integer NOT NULL,
    kd_barang character varying,
    kd_jasa character varying,
    tgl_transaksi character varying,
    jumlah_item character varying,
    harga_satuan character varying,
    ppn character varying,
    hpp character varying,
    harga_jual character varying,
    diskon character varying,
    harga_dibayar character varying,
    status character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- TOC entry 272 (class 1259 OID 58442)
-- Name: penjualan_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.penjualan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5273 (class 0 OID 0)
-- Dependencies: 272
-- Name: penjualan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.penjualan_id_seq OWNED BY public.penjualan.id;


--
-- TOC entry 273 (class 1259 OID 58443)
-- Name: religi; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.religi (
    no integer NOT NULL,
    nama_agama character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 274 (class 1259 OID 58452)
-- Name: religi_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.religi_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5274 (class 0 OID 0)
-- Dependencies: 274
-- Name: religi_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.religi_no_seq OWNED BY public.religi.no;


--
-- TOC entry 275 (class 1259 OID 58453)
-- Name: resep; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.resep (
    no integer NOT NULL,
    kd_dpjp character varying NOT NULL,
    tgl_resep character varying NOT NULL,
    kd_obat character varying NOT NULL,
    norm character varying NOT NULL,
    aturan_pakai character varying NOT NULL,
    catatan_dokter character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    jumlah integer NOT NULL,
    no_resep character varying
);


--
-- TOC entry 276 (class 1259 OID 58468)
-- Name: resep_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.resep_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5275 (class 0 OID 0)
-- Dependencies: 276
-- Name: resep_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.resep_no_seq OWNED BY public.resep.no;


--
-- TOC entry 277 (class 1259 OID 58469)
-- Name: rim; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rim (
    no integer NOT NULL,
    tgl_pemeriksaan timestamp without time zone NOT NULL,
    no_kunjungan character varying NOT NULL,
    norm character varying NOT NULL,
    kd_pemeriksaan character varying NOT NULL,
    hasil_pemeriksaan character varying NOT NULL,
    kd_dpjp character varying NOT NULL,
    kd_petugas character varying NOT NULL,
    jam_mulai time without time zone NOT NULL,
    jam_selesai time without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 278 (class 1259 OID 58486)
-- Name: rim_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rim_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5276 (class 0 OID 0)
-- Dependencies: 278
-- Name: rim_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rim_no_seq OWNED BY public.rim.no;


--
-- TOC entry 279 (class 1259 OID 58487)
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


--
-- TOC entry 287 (class 1259 OID 66373)
-- Name: tindakan_medis; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tindakan_medis (
    no integer NOT NULL,
    nama_tindakan character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    kd_jasa character varying,
    status character varying,
    no_tindakan character varying,
    kelas character varying,
    harga_tindakan integer,
    ppn integer,
    harga_tindakan_final integer
);


--
-- TOC entry 286 (class 1259 OID 66372)
-- Name: tindakan_medis_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tindakan_medis_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5277 (class 0 OID 0)
-- Dependencies: 286
-- Name: tindakan_medis_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tindakan_medis_no_seq OWNED BY public.tindakan_medis.no;


--
-- TOC entry 280 (class 1259 OID 58502)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- TOC entry 281 (class 1259 OID 58511)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5278 (class 0 OID 0)
-- Dependencies: 281
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 282 (class 1259 OID 58512)
-- Name: warga_negara; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.warga_negara (
    no integer NOT NULL,
    warga_negara character varying NOT NULL,
    status integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 283 (class 1259 OID 58522)
-- Name: warga_negara_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.warga_negara_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 5279 (class 0 OID 0)
-- Dependencies: 283
-- Name: warga_negara_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.warga_negara_no_seq OWNED BY public.warga_negara.no;


--
-- TOC entry 4909 (class 2604 OID 58523)
-- Name: User id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- TOC entry 4910 (class 2604 OID 58524)
-- Name: alkes no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alkes ALTER COLUMN no SET DEFAULT nextval('public.alkes_no_seq'::regclass);


--
-- TOC entry 4911 (class 2604 OID 58525)
-- Name: antrian id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.antrian ALTER COLUMN id SET DEFAULT nextval('public.antrian_id_seq'::regclass);


--
-- TOC entry 4905 (class 2604 OID 58526)
-- Name: cppt no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cppt ALTER COLUMN no SET DEFAULT nextval('public." CPPT_no_seq"'::regclass);


--
-- TOC entry 4912 (class 2604 OID 58527)
-- Name: diagnosa no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnosa ALTER COLUMN no SET DEFAULT nextval('public.diagnosa_no_seq'::regclass);


--
-- TOC entry 4913 (class 2604 OID 58528)
-- Name: dpjp no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dpjp ALTER COLUMN no SET DEFAULT nextval('public.dpjp_no_seq'::regclass);


--
-- TOC entry 4914 (class 2604 OID 58529)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 4916 (class 2604 OID 58530)
-- Name: id no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.id ALTER COLUMN no SET DEFAULT nextval('public.id_no_seq'::regclass);


--
-- TOC entry 4917 (class 2604 OID 58531)
-- Name: jadwal_praktek id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jadwal_praktek ALTER COLUMN id SET DEFAULT nextval('public.jadwal_praktek_id_seq'::regclass);


--
-- TOC entry 4918 (class 2604 OID 58532)
-- Name: jadwal_visite id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jadwal_visite ALTER COLUMN id SET DEFAULT nextval('public.jadwal_visite_id_seq'::regclass);


--
-- TOC entry 4942 (class 2604 OID 66386)
-- Name: jasa_medis id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jasa_medis ALTER COLUMN id SET DEFAULT nextval('public.jasa_medis_id_seq'::regclass);


--
-- TOC entry 4919 (class 2604 OID 58534)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 4920 (class 2604 OID 58535)
-- Name: kamar no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kamar ALTER COLUMN no SET DEFAULT nextval('public.kamar_no_seq'::regclass);


--
-- TOC entry 4921 (class 2604 OID 58536)
-- Name: kunjungan id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kunjungan ALTER COLUMN id SET DEFAULT nextval('public.kunjungan_id_seq'::regclass);


--
-- TOC entry 4922 (class 2604 OID 58537)
-- Name: layanan no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layanan ALTER COLUMN no SET DEFAULT nextval('public.layanan_no_seq'::regclass);


--
-- TOC entry 4923 (class 2604 OID 58538)
-- Name: lims no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lims ALTER COLUMN no SET DEFAULT nextval('public.lims_no_seq'::regclass);


--
-- TOC entry 4924 (class 2604 OID 58539)
-- Name: log_history no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_history ALTER COLUMN no SET DEFAULT nextval('public.log_history_no_seq'::regclass);


--
-- TOC entry 4906 (class 2604 OID 58540)
-- Name: logistik_medis no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logistik_medis ALTER COLUMN no SET DEFAULT nextval('public."Logistik_medis_no_seq"'::regclass);


--
-- TOC entry 4925 (class 2604 OID 58541)
-- Name: logistik_non_medis no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logistik_non_medis ALTER COLUMN no SET DEFAULT nextval('public.logistik_non_medis_no_seq'::regclass);


--
-- TOC entry 4928 (class 2604 OID 58542)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 4929 (class 2604 OID 58543)
-- Name: obat no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obat ALTER COLUMN no SET DEFAULT nextval('public.obat_no_seq'::regclass);


--
-- TOC entry 4940 (class 2604 OID 58657)
-- Name: obat_fornas no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obat_fornas ALTER COLUMN no SET DEFAULT nextval('public.obat_master_no_seq'::regclass);


--
-- TOC entry 4930 (class 2604 OID 58544)
-- Name: pasien id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasien ALTER COLUMN id SET DEFAULT nextval('public.pasien_id_seq'::regclass);


--
-- TOC entry 4931 (class 2604 OID 58545)
-- Name: pekerjaan no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pekerjaan ALTER COLUMN no SET DEFAULT nextval('public.pekerjaan_no_seq'::regclass);


--
-- TOC entry 4932 (class 2604 OID 58546)
-- Name: pembelian id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pembelian ALTER COLUMN id SET DEFAULT nextval('public.pembelian_id_seq'::regclass);


--
-- TOC entry 4933 (class 2604 OID 58547)
-- Name: pendidikan no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pendidikan ALTER COLUMN no SET DEFAULT nextval('public.pendidikan_no_seq'::regclass);


--
-- TOC entry 4934 (class 2604 OID 58548)
-- Name: penjualan id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.penjualan ALTER COLUMN id SET DEFAULT nextval('public.penjualan_id_seq'::regclass);


--
-- TOC entry 4935 (class 2604 OID 58549)
-- Name: religi no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.religi ALTER COLUMN no SET DEFAULT nextval('public.religi_no_seq'::regclass);


--
-- TOC entry 4936 (class 2604 OID 58550)
-- Name: resep no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resep ALTER COLUMN no SET DEFAULT nextval('public.resep_no_seq'::regclass);


--
-- TOC entry 4937 (class 2604 OID 58551)
-- Name: rim no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rim ALTER COLUMN no SET DEFAULT nextval('public.rim_no_seq'::regclass);


--
-- TOC entry 4941 (class 2604 OID 66376)
-- Name: tindakan_medis no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tindakan_medis ALTER COLUMN no SET DEFAULT nextval('public.tindakan_medis_no_seq'::regclass);


--
-- TOC entry 4938 (class 2604 OID 58553)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4939 (class 2604 OID 58554)
-- Name: warga_negara no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.warga_negara ALTER COLUMN no SET DEFAULT nextval('public.warga_negara_no_seq'::regclass);


--
-- TOC entry 5173 (class 0 OID 58205)
-- Dependencies: 223
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" VALUES ('Yusuf Tri Wahyono', 'Yusuf Tri Wahyono S,KOM', 'test@gmail.com', '8', '1', 'STF', '3', '1', 'ec4e862906cc5517f45f11085a7d977d', '2025-11-20 04:43:22', '2025-11-20 04:43:22', 1);


--
-- TOC entry 5175 (class 0 OID 58212)
-- Dependencies: 225
-- Data for Name: alkes; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5177 (class 0 OID 58219)
-- Dependencies: 227
-- Data for Name: antrian; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.antrian VALUES (1, 'IGD-1', '2026-01-27', NULL, NULL, NULL, NULL, NULL, '2026-01-27 10:47:27', '2026-01-27 10:47:27', '00-00-00-12', 'IGD-27012026-1047273');
INSERT INTO public.antrian VALUES (2, 'IGD-1', '2026-01-28', NULL, NULL, NULL, NULL, NULL, '2026-01-28 09:10:43', '2026-01-28 09:10:43', '00-00-00-05', 'IGD-28012026-0910434');
INSERT INTO public.antrian VALUES (3, '-2', '2026-01-28', NULL, NULL, NULL, NULL, NULL, '2026-01-28 09:13:14', '2026-01-28 09:13:14', '00-00-00-06', '-28012026-0913145');
INSERT INTO public.antrian VALUES (4, 'IGD-1', '2026-01-29', NULL, NULL, NULL, NULL, NULL, '2026-01-29 10:00:40', '2026-01-29 10:00:40', '00-00-00-05', 'IGD-29012026-1000406');
INSERT INTO public.antrian VALUES (5, 'IGD-2', '2026-01-29', NULL, NULL, NULL, NULL, NULL, '2026-01-29 10:01:02', '2026-01-29 10:01:02', '00-00-00-06', 'IGD-29012026-1001027');
INSERT INTO public.antrian VALUES (6, 'IGD-3', '2026-01-29', NULL, NULL, NULL, NULL, NULL, '2026-01-29 10:01:23', '2026-01-29 10:01:23', '00-00-00-07', 'IGD-29012026-1001238');
INSERT INTO public.antrian VALUES (7, 'IGD-4', '2026-01-29', NULL, NULL, NULL, NULL, NULL, '2026-01-29 10:06:07', '2026-01-29 10:06:07', '00-00-00-08', 'IGD-29012026-1006079');
INSERT INTO public.antrian VALUES (8, 'IGD-5', '2026-01-29', NULL, NULL, NULL, NULL, NULL, '2026-01-29 10:22:31', '2026-01-29 10:22:31', '00-00-00-09', 'IGD-29012026-10223110');
INSERT INTO public.antrian VALUES (9, '-6', '2026-01-29', NULL, NULL, NULL, NULL, NULL, '2026-01-29 10:32:38', '2026-01-29 10:32:38', '00-00-00-10', '-29012026-10323811');


--
-- TOC entry 5179 (class 0 OID 58228)
-- Dependencies: 229
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5180 (class 0 OID 58236)
-- Dependencies: 230
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5169 (class 0 OID 58181)
-- Dependencies: 219
-- Data for Name: cppt; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5181 (class 0 OID 58244)
-- Dependencies: 231
-- Data for Name: diagnosa; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5183 (class 0 OID 58251)
-- Dependencies: 233
-- Data for Name: dpjp; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.dpjp VALUES (2, 'dr.J.SpM', '23', '202712354', '2028-01-07', '28', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (3, 'dr.J.SpA', '23', '202712354', '2028-01-07', '1', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (4, 'dr.J.SpJP', '23', '202712354', '2028-01-07', '24', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (1, 'dr.J.SpPD', '123', '202712354', '2028-01-07', '22', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (5, 'dr.J.SpBS', '23', '202712354', '2028-01-07', '6', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (6, 'dr.J.SpB', '23', '202712354', '2028-01-07', '7', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (9, 'dr.J.SpOT', '23', '202712354', '2028-01-07', '33', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (8, 'dr.J.SpOG', '23', '202712354', '2028-01-07', '29', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (7, 'dr.J.SpKG', '23', '202712354', '2028-01-07', '15', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (10, 'dr.J.SpP', '23', '202712354', '2028-01-07', '34', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (11, 'dr.J.SpFKR', '23', '202712354', '2028-01-07', '35', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');
INSERT INTO public.dpjp VALUES (12, 'dr.J.SpN', '23', '202712354', '2028-01-07', '36', '2026-01-07 09:55:48', '2026-01-07 09:55:50', '1');


--
-- TOC entry 5185 (class 0 OID 58258)
-- Dependencies: 235
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5187 (class 0 OID 58272)
-- Dependencies: 237
-- Data for Name: id; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.id VALUES (1, 'KTP', '2025-11-05 10:06:34', '2025-10-05 10:06:39');
INSERT INTO public.id VALUES (2, 'PASSPORT', '2025-11-05 10:07:10', '2025-10-05 10:07:15');
INSERT INTO public.id VALUES (3, 'KITAS', '2025-11-05 10:16:52', '2025-11-05 10:16:53');


--
-- TOC entry 5189 (class 0 OID 58279)
-- Dependencies: 239
-- Data for Name: jadwal_praktek; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.jadwal_praktek VALUES (7, '7', '28', '07:00-12:00', 'SENIN', '1', '1', '2025-12-29 11:01:56', '2025-12-29 11:01:57');
INSERT INTO public.jadwal_praktek VALUES (1, '1', '1', '07:00-12:00', 'SENIN', '1', '1', '2025-12-29 11:01:56', '2025-12-29 11:01:57');
INSERT INTO public.jadwal_praktek VALUES (2, '2', '6', '07:00-12:00', 'SELASA', '1', '1', '2025-12-29 11:03:45', '2025-12-29 11:03:46');
INSERT INTO public.jadwal_praktek VALUES (3, '3', '7', '07:00-12:00', 'SENIN', '1', '1', '2025-12-29 11:01:56', '2025-12-29 11:01:57');
INSERT INTO public.jadwal_praktek VALUES (4, '4', '15', '07:00-12:00', 'KAMIS', '1', '1', '2025-12-29 11:03:45', '2025-12-29 11:03:46');
INSERT INTO public.jadwal_praktek VALUES (5, '5', '22', '09:00-11:00', 'JUMAT', '1', '1', '2025-12-29 11:01:56', '2025-12-29 11:01:57');
INSERT INTO public.jadwal_praktek VALUES (6, '6', '24', '07:00-11:00', 'SABTU', '1', '1', '2025-12-29 11:03:45', '2025-12-29 11:03:46');
INSERT INTO public.jadwal_praktek VALUES (8, '8', '29', '07:00-12:00', 'SELASA', '1', '1', '2025-12-29 11:03:45', '2025-12-29 11:03:46');
INSERT INTO public.jadwal_praktek VALUES (9, '9', '33', '07:00-12:00', 'SENIN', '1', '1', '2025-12-29 11:01:56', '2025-12-29 11:01:57');
INSERT INTO public.jadwal_praktek VALUES (10, '10', '34', '07:00-12:00', 'SELASA', '1', '1', '2025-12-29 11:03:45', '2025-12-29 11:03:46');


--
-- TOC entry 5191 (class 0 OID 58286)
-- Dependencies: 241
-- Data for Name: jadwal_visite; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5239 (class 0 OID 66383)
-- Dependencies: 289
-- Data for Name: jasa_medis; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5193 (class 0 OID 58300)
-- Dependencies: 243
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5194 (class 0 OID 58312)
-- Dependencies: 244
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5196 (class 0 OID 58324)
-- Dependencies: 246
-- Data for Name: kamar; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.kamar VALUES (1, 'CROWN 6-1', '2026-01-10 13:37:32', '2026-01-10 13:37:33', 'CR61', '1', '6-1', 'VVIP', '1500000', '150000', '1650000');
INSERT INTO public.kamar VALUES (2, 'CROWN 6-2', '2026-01-10 13:40:16', '2026-01-10 13:40:18', 'CR62', '1', '6-2', 'VVIP', '1500000', '150000', '1650000');


--
-- TOC entry 5198 (class 0 OID 58331)
-- Dependencies: 248
-- Data for Name: kunjungan; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.kunjungan VALUES (1, 'IGD-27012026-1026241', '00-00-00-12', '2026-01-27 10:26:24', '2026-01-27 10:26:24', '0');
INSERT INTO public.kunjungan VALUES (2, 'IGD-27012026-1028022', '00-00-00-12', '2026-01-27 10:28:02', '2026-01-27 10:28:02', '0');
INSERT INTO public.kunjungan VALUES (3, 'IGD-27012026-1047273', '00-00-00-12', '2026-01-27 10:47:27', '2026-01-27 10:47:27', '0');
INSERT INTO public.kunjungan VALUES (4, 'IGD-28012026-0910434', '00-00-00-05', '2026-01-28 09:10:43', '2026-01-28 09:10:43', '0');
INSERT INTO public.kunjungan VALUES (5, '-28012026-0913145', '00-00-00-06', '2026-01-28 09:13:14', '2026-01-28 09:13:14', '0');
INSERT INTO public.kunjungan VALUES (6, 'IGD-29012026-1000406', '00-00-00-05', '2026-01-29 10:00:40', '2026-01-29 10:00:40', '0');
INSERT INTO public.kunjungan VALUES (7, 'IGD-29012026-1001027', '00-00-00-06', '2026-01-29 10:01:02', '2026-01-29 10:01:02', '0');
INSERT INTO public.kunjungan VALUES (8, 'IGD-29012026-1001238', '00-00-00-07', '2026-01-29 10:01:23', '2026-01-29 10:01:23', '0');
INSERT INTO public.kunjungan VALUES (9, 'IGD-29012026-1006079', '00-00-00-08', '2026-01-29 10:06:07', '2026-01-29 10:06:07', '0');
INSERT INTO public.kunjungan VALUES (10, 'IGD-29012026-10223110', '00-00-00-09', '2026-01-29 10:22:31', '2026-01-29 10:22:31', '0');
INSERT INTO public.kunjungan VALUES (11, '-29012026-10323811', '00-00-00-10', '2026-01-29 10:32:38', '2026-01-29 10:32:38', '0');


--
-- TOC entry 5200 (class 0 OID 58340)
-- Dependencies: 250
-- Data for Name: layanan; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.layanan VALUES (1, 'KLINIK SPESIALIS ANAK', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SAN', '1', '1');
INSERT INTO public.layanan VALUES (10, 'KLINIK FISIOTERAPI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'FIS', '1', '10');
INSERT INTO public.layanan VALUES (2, 'KLINIK BEDAH ANAK', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BAN', '1', '2');
INSERT INTO public.layanan VALUES (3, 'KLINIK BEDAH DIGESTIF', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BDF', '1', '3');
INSERT INTO public.layanan VALUES (4, 'KLINIK BEDAH ONKOLOGI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BOK', '1', '4');
INSERT INTO public.layanan VALUES (5, 'KLINIK BEDAH PLASTIK', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BPL', '1', '5');
INSERT INTO public.layanan VALUES (6, 'KLINIK BEDAH SARAF', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BSR', '1', '6');
INSERT INTO public.layanan VALUES (7, 'KLINIK SPESIALIS BEDAH UMUM', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SBU', '1', '7');
INSERT INTO public.layanan VALUES (8, 'KLINIK BEDAH VASKULER', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BVA', '1', '8');
INSERT INTO public.layanan VALUES (9, 'KLINIK BKIA', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'BKI', '1', '9');
INSERT INTO public.layanan VALUES (11, 'KLINIK FORENSIK MEDLEG', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'FMD', '1', '11');
INSERT INTO public.layanan VALUES (12, 'KLINIK SPESIALIS GIGI - BEDAH MULUT', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'GBM', '1', '12');
INSERT INTO public.layanan VALUES (13, 'KLINIK GERIATRI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'GER', '1', '13');
INSERT INTO public.layanan VALUES (14, 'KLINIK SPESIALIS GIGI ANAK ', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SGA', '1', '14');
INSERT INTO public.layanan VALUES (15, 'KLINIK GIGI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'GIG', '1', '15');
INSERT INTO public.layanan VALUES (16, 'KLINIK SPESIALIS GIGI - PERIODONSIA', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'GPR', '1', '16');
INSERT INTO public.layanan VALUES (17, 'KLINIK GIZI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'GIZ', '1', '17');
INSERT INTO public.layanan VALUES (18, 'KLINIK GASTROENTEROLOGI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'GAZ', '1', '18');
INSERT INTO public.layanan VALUES (20, 'KLINIK HEMATOLOGI - ONKOLOGI MEDIK', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'HOM', '1', '20');
INSERT INTO public.layanan VALUES (21, 'INSTALASI GAWAT DARURAT', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'IGD', '1', '21');
INSERT INTO public.layanan VALUES (22, 'KLINIK SPESIALIS PENYAKIT DALAM', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SPD', '1', '22');
INSERT INTO public.layanan VALUES (23, 'KLINIK SPESIALIS ANAK SUB KARDIOLOGI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'ASK', '1', '23');
INSERT INTO public.layanan VALUES (25, 'KLINIK SPESIALIS JIWA', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'JIW', '1', '25');
INSERT INTO public.layanan VALUES (19, 'KLINIK HOME CARE', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'KHC', '1', '19');
INSERT INTO public.layanan VALUES (24, 'KLINIK SPESIALIS JANTUNG DAN PEMBULUH DARAH', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'JPD', '1', '24');
INSERT INTO public.layanan VALUES (26, 'KLINIK SPESIALIS KULIT DAN KELAMIN', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SKK', '1', '26');
INSERT INTO public.layanan VALUES (27, 'KLINIK KEMOTERAPI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'KEM', '1', '27');
INSERT INTO public.layanan VALUES (28, 'KLINIK SPESIALIS MATA', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SPM', '1', '28');
INSERT INTO public.layanan VALUES (29, 'KLINIK SPESIALIS KANDUNGAN DAN KEBIDANAN', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SEB', '1', '29');
INSERT INTO public.layanan VALUES (30, 'KLINIK OBESITAS', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'OBS', '1', '30');
INSERT INTO public.layanan VALUES (33, 'KLINIK SPESIALIS ORTHOPEDI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SOR', '1', '33');
INSERT INTO public.layanan VALUES (34, 'KLINIK SPESIALIS PARU', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SPR', '1', '34');
INSERT INTO public.layanan VALUES (35, 'KLINIK SPESIALIS REHABILITASI MEDIS', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SRM', '1', '35');
INSERT INTO public.layanan VALUES (36, 'KLINIK SPESIALIS SARAF', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SSS', '1', '36');
INSERT INTO public.layanan VALUES (37, 'KLINIK SPESIALIS THT ', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'STH', '1', '37');
INSERT INTO public.layanan VALUES (38, 'KLINIK TUMBUH KEMBANG ANAK', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'TKM', '1', '38');
INSERT INTO public.layanan VALUES (39, 'KLINIK UMUM', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'UMU', '1', '39');
INSERT INTO public.layanan VALUES (40, 'KLINIK SPESIALIS UROLOGI', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'SUR', '1', '40');
INSERT INTO public.layanan VALUES (31, 'ONE DAY CARE', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'ODC', '1', '31');
INSERT INTO public.layanan VALUES (32, 'KLINIK SPESIALIS ONGKOLOGIi', '2025-11-04 16:51:25.949278', '2025-11-04 16:51:25.949278', 'ONG', '1', '32');


--
-- TOC entry 5202 (class 0 OID 58347)
-- Dependencies: 252
-- Data for Name: lims; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5204 (class 0 OID 58365)
-- Dependencies: 254
-- Data for Name: log_history; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5171 (class 0 OID 58196)
-- Dependencies: 221
-- Data for Name: logistik_medis; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5206 (class 0 OID 58378)
-- Dependencies: 256
-- Data for Name: logistik_non_medis; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5208 (class 0 OID 58387)
-- Dependencies: 258
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.migrations VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO public.migrations VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO public.migrations VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO public.migrations VALUES (4, '2025_10_16_070402_create_hrmsmodels_table', 1);


--
-- TOC entry 5210 (class 0 OID 58394)
-- Dependencies: 260
-- Data for Name: obat; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.obat VALUES (1, 'alopurinol - TABLET 300 MILIGRAM', '', '1x1', 'Generic Manufacturer', '2026-01-28 07:49:00', '2026-01-28 07:49:00', '', 10000, 10000, 0, '2026-01-28 07:49:00', '2026-01-28 07:49:00', '900', '108', '1341', '333', NULL, 9000000, 13410000, 1080000);
INSERT INTO public.obat VALUES (2, 'alopurinol - TABLET 100 MILIGRAM', '', '1x1', 'Generic Manufacturer', '2026-01-28 07:49:00', '2026-01-28 07:49:00', '', 10000, 10000, 0, '2026-01-28 07:49:00', '2026-01-28 07:49:00', '300', '36', '447', '111', NULL, 3000000, 4470000, 360000);
INSERT INTO public.obat VALUES (3, 'alprazolam - TABLET 0.25 MILIGRAM', '', '3x1', 'Generic Manufacturer', '2026-01-28 07:49:00', '2026-01-28 07:49:00', '', 10000, 10000, 0, '2026-01-28 07:49:00', '2026-01-28 07:49:00', '500', '60', '745', '185', NULL, 5000000, 7450000, 600000);
INSERT INTO public.obat VALUES (4, 'alprazolam - TABLET 0.75 MILIGRAM', '', '3x1', 'Generic Manufacturer', '2026-01-28 07:49:00', '2026-01-28 07:49:00', '', 10000, 10000, 0, '2026-01-28 07:49:00', '2026-01-28 07:49:00', '600', '72', '894', '222', NULL, 6000000, 8940000, 720000);
INSERT INTO public.obat VALUES (5, 'alprazolam - TABLET 1 MILIGRAM', '', '3x1', 'Generic Manufacturer', '2026-01-28 07:49:00', '2026-01-28 07:49:00', '', 10000, 10000, 0, '2026-01-28 07:49:00', '2026-01-28 07:49:00', '700', '84', '1043', '259', NULL, 7000000, 10430000, 840000);


--
-- TOC entry 5235 (class 0 OID 58654)
-- Dependencies: 285
-- Data for Name: obat_fornas; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5212 (class 0 OID 58401)
-- Dependencies: 262
-- Data for Name: pasien; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pasien VALUES (1, '00-00-00-01', 'Yusuf.Tn', '234123', '1', NULL, 'P', 'MALANG', '2000-04-17', 'qwreqwrewr', 'werqwerw', NULL, NULL, NULL, 'BK', NULL, NULL, NULL, NULL, 'test@gmail.com', '1', '0', NULL, '2342134', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-19 09:52:56', '2025-11-19 09:52:56');
INSERT INTO public.pasien VALUES (2, '00-00-00-02', 'x.Ny', '2354153251', '1', NULL, 'P', 'Surabaya', '1980-04-01', 'qerqwerqw', 'werqwe', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'test@gmail.com', '1', '0', NULL, '1232312', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 08:46:07', '2025-11-20 08:46:07');
INSERT INTO public.pasien VALUES (3, '00-00-00-03', 'luna syiera.Ny', '345634563', '1', NULL, 'W', 'SURABAYA', '1986-01-01', 'qrwerqwerwqr', 'dfasdfsadff', NULL, NULL, NULL, 'BK', NULL, NULL, NULL, NULL, 'test@gmail.com', '1', '0', NULL, '4563456435', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-20 09:09:08', '2025-11-20 09:09:08');
INSERT INTO public.pasien VALUES (4, '00-00-00-04', 'RENNY LUCIANA KOLANUS.Ny', '23412412341', '1', NULL, 'P', 'SURABAYA', '1950-01-01', 'sdfafw', 'dfasfdasd', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'x@gmail.com', '1', '0', NULL, '341234123', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-21 06:07:15', '2025-11-21 06:07:15');
INSERT INTO public.pasien VALUES (5, '00-00-00-05', 'ELOITARE ARGABE SINAGA.An', '000000', '1', NULL, 'P', 'SURABAYA', '2025-11-24', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'BK', NULL, NULL, NULL, NULL, 'test@gmail.com', '1', '0', NULL, '0000000', NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-28 04:11:56', '2025-11-28 04:11:56');
INSERT INTO public.pasien VALUES (6, '00-00-00-06', 'DESSY IRMALIANTI.Ny', '34123412', '1', NULL, 'W', 'Surabaya', '1990-12-23', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'desy@gmail.com', '1', '0', NULL, '34123', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-01 07:14:36', '2025-12-01 07:14:36');
INSERT INTO public.pasien VALUES (7, '00-00-00-07', 'DARMINTO,.Tn', '123421342', '1', NULL, 'P', 'SURABAYA', '1982-01-19', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'darminto@gmail.com', '1', '0', NULL, '2341324', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-03 10:00:39', '2025-12-03 10:00:39');
INSERT INTO public.pasien VALUES (8, '00-00-00-08', 'YOHANA WINDA SARI.Ny', '234123', '1', NULL, 'W', 'SURABAYA', '1986-01-19', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'yohana@gmail.com', '1', '0', NULL, '123234', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-03 10:06:07', '2025-12-03 10:06:07');
INSERT INTO public.pasien VALUES (10, '00-00-00-10', 'RESTU W.NN', '123413456345', '1', NULL, 'W', 'SURABAYA', '1979-01-15', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'BK', NULL, NULL, NULL, NULL, 'putry@gmail.com', '1', '0', NULL, '43534563445', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 08:05:02', '2025-12-15 08:05:02');
INSERT INTO public.pasien VALUES (9, '00-00-00-09', 'PUTRI AFRILIYANI RESTU W.NN', '123413456345', '1', NULL, 'W', 'SURABAYA', '1979-01-15', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'BK', NULL, NULL, NULL, NULL, 'putry@gmail.com', '1', '0', NULL, '43534563445', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 08:04:48', '2025-12-15 08:04:48');
INSERT INTO public.pasien VALUES (11, '00-00-00-11', 'AFRILIYANI.NN', '123413456345', '1', NULL, 'W', 'SURABAYA', '1979-01-15', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'BK', NULL, NULL, NULL, NULL, 'putry@gmail.com', '1', '0', NULL, '43534563445', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-15 08:05:33', '2025-12-15 08:05:33');
INSERT INTO public.pasien VALUES (12, '00-00-00-12', 'GRYSDA REVINGGA PRIYONO.NY', '45324534', '1', NULL, 'W', 'SIDOARJO', '1992-02-20', 'SIDOARJO', 'SIDOARJO', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'grysda@gmail.com', '1', '0', NULL, '453245234', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-19 07:15:13', '2025-12-19 07:15:13');
INSERT INTO public.pasien VALUES (13, '00-00-00-13', 'RINI WIJIASTUTI.NY', '12351235', '1', NULL, 'W', 'surabaya', '1972-08-05', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'rini@gmail.com', '1', '0', NULL, '3451234', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-20 02:51:41', '2025-12-20 02:51:41');
INSERT INTO public.pasien VALUES (14, '00-00-00-14', 'SUGIATI.NY', '2345345', '1', NULL, 'W', 'MALANG', '1964-02-05', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'sugiati@gmail.com', '1', '0', NULL, '345234', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-20 02:58:29', '2025-12-20 02:58:29');
INSERT INTO public.pasien VALUES (15, '00-00-00-15', 'SUGIATI.NY', '2345345', '1', NULL, 'W', 'MALANG', '1964-02-05', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'sugiati@gmail.com', '1', '0', NULL, '345234', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-20 02:58:32', '2025-12-20 02:58:32');
INSERT INTO public.pasien VALUES (16, '00-00-00-16', 'RINI TYASTUTI S.SOS.NY', '456345634', '1', NULL, 'W', 'MADIUN', '1969-01-11', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'rini@gmail.com', '1', '0', NULL, '5634564', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-20 04:45:47', '2025-12-20 04:45:47');
INSERT INTO public.pasien VALUES (17, '00-00-00-17', 'ANGELY AYU PUTRI U.NY', '123421342', '1', NULL, 'W', 'SURABAYA', '2000-06-25', 'SURABAYA', 'SURABAYA', NULL, NULL, NULL, 'K', NULL, NULL, NULL, NULL, 'angely@gmail.com', '1', '0', NULL, '12143123', NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-23 01:41:11', '2025-12-23 01:41:11');


--
-- TOC entry 5214 (class 0 OID 58408)
-- Dependencies: 264
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5215 (class 0 OID 58415)
-- Dependencies: 265
-- Data for Name: pekerjaan; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pekerjaan VALUES (1, 'PNS', '2025-11-08 09:59:38', '2025-11-08 09:59:39');
INSERT INTO public.pekerjaan VALUES (2, 'ASN', '2025-11-08 10:00:07', '2025-11-08 10:00:08');
INSERT INTO public.pekerjaan VALUES (3, 'Karyawan Swasta', '2025-11-08 10:00:33', '2025-11-08 10:00:34');
INSERT INTO public.pekerjaan VALUES (4, 'Karyawan BUMN', '2025-11-08 10:01:20', '2025-11-08 10:01:21');
INSERT INTO public.pekerjaan VALUES (5, 'Karyawan BUMD', '2025-11-08 10:01:36', '2025-11-08 10:01:36');
INSERT INTO public.pekerjaan VALUES (6, 'Mahasiswa', '2025-11-08 10:03:08', '2025-11-08 10:03:10');
INSERT INTO public.pekerjaan VALUES (7, 'Pelajar', '2025-11-08 10:03:22', '2025-11-08 10:03:23');
INSERT INTO public.pekerjaan VALUES (8, 'IRT (Ibu Rumah Tangga)', '2025-11-08 10:03:49', '2025-11-08 10:03:50');
INSERT INTO public.pekerjaan VALUES (9, 'Wiraswasta', '2025-11-08 10:04:45', '2025-11-08 10:04:45');


--
-- TOC entry 5217 (class 0 OID 58422)
-- Dependencies: 267
-- Data for Name: pembelian; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5219 (class 0 OID 58429)
-- Dependencies: 269
-- Data for Name: pendidikan; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pendidikan VALUES (2, 'SMP', '2025-11-10 07:55:04', '2025-11-10 07:55:05');
INSERT INTO public.pendidikan VALUES (3, 'SMA', '2025-11-10 07:55:13', '2025-11-10 07:55:14');
INSERT INTO public.pendidikan VALUES (4, 'D1', '2025-11-10 07:55:32', '2025-11-10 07:55:33');
INSERT INTO public.pendidikan VALUES (5, 'D2', '2025-11-10 07:55:42', '2025-11-10 07:55:43');
INSERT INTO public.pendidikan VALUES (6, 'D3', '2025-11-10 07:55:51', '2025-11-10 07:55:52');
INSERT INTO public.pendidikan VALUES (7, 'S1', '2025-11-10 07:56:01', '2025-11-10 07:56:02');
INSERT INTO public.pendidikan VALUES (8, 'D4', '2025-11-10 07:56:14', '2025-11-10 07:56:15');
INSERT INTO public.pendidikan VALUES (9, 'S2', '2025-11-10 07:56:24', '2025-11-10 07:56:25');
INSERT INTO public.pendidikan VALUES (10, 'S3', '2025-11-10 07:56:34', '2025-11-10 07:56:35');
INSERT INTO public.pendidikan VALUES (1, 'SD', '2025-11-10 07:54:50', '2025-11-10 07:54:52');


--
-- TOC entry 5221 (class 0 OID 58436)
-- Dependencies: 271
-- Data for Name: penjualan; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5223 (class 0 OID 58443)
-- Dependencies: 273
-- Data for Name: religi; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.religi VALUES (1, 'Katolik', '2025-11-10 07:57:22', '2025-11-10 07:57:23');
INSERT INTO public.religi VALUES (2, 'Protestan', '2025-11-10 07:57:32', '2025-11-10 07:57:32');
INSERT INTO public.religi VALUES (3, 'Islam', '2025-11-10 07:57:44', '2025-11-10 07:57:44');
INSERT INTO public.religi VALUES (4, 'Budha', '2025-11-10 07:58:09', '2025-11-10 07:58:10');
INSERT INTO public.religi VALUES (6, 'Hindu', '2025-11-10 07:58:24', '2025-11-10 07:58:25');


--
-- TOC entry 5225 (class 0 OID 58453)
-- Dependencies: 275
-- Data for Name: resep; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5227 (class 0 OID 58469)
-- Dependencies: 277
-- Data for Name: rim; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5229 (class 0 OID 58487)
-- Dependencies: 279
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES ('D0jt7xejInIXBG2C9j8QVEeQ58bvBGnastSnXN7g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaUROTVVONDhNcXNuNjNJRGJmMm0yRGxvRkwyb2ppazNxdzE1c05SdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJ1c2VybmFtZSI7czoxNzoiWXVzdWYgVHJpIFdhaHlvbm8iO3M6ODoicGFzc3dvcmQiO3M6NToicm95YWwiO30=', 1769683426);


--
-- TOC entry 5237 (class 0 OID 66373)
-- Dependencies: 287
-- Data for Name: tindakan_medis; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tindakan_medis VALUES (1, 'injeksi', '2026-02-02 14:52:08', '2026-02-02 14:52:11', 'INJ1', '1', '1', '2', 5000, 600, 5600);
INSERT INTO public.tindakan_medis VALUES (2, 'rawat luka kecil', '2026-02-02 15:11:05', '2026-02-02 15:11:11', 'RLK', '1', '2', '2', 7500, 900, 8400);


--
-- TOC entry 5230 (class 0 OID 58502)
-- Dependencies: 280
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5232 (class 0 OID 58512)
-- Dependencies: 282
-- Data for Name: warga_negara; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5280 (class 0 OID 0)
-- Dependencies: 220
-- Name:  CPPT_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public." CPPT_no_seq"', 1, false);


--
-- TOC entry 5281 (class 0 OID 0)
-- Dependencies: 222
-- Name: Logistik_medis_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Logistik_medis_no_seq"', 1, false);


--
-- TOC entry 5282 (class 0 OID 0)
-- Dependencies: 224
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."User_id_seq"', 1, true);


--
-- TOC entry 5283 (class 0 OID 0)
-- Dependencies: 226
-- Name: alkes_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.alkes_no_seq', 1, false);


--
-- TOC entry 5284 (class 0 OID 0)
-- Dependencies: 228
-- Name: antrian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.antrian_id_seq', 9, true);


--
-- TOC entry 5285 (class 0 OID 0)
-- Dependencies: 232
-- Name: diagnosa_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.diagnosa_no_seq', 1, false);


--
-- TOC entry 5286 (class 0 OID 0)
-- Dependencies: 234
-- Name: dpjp_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.dpjp_no_seq', 12, true);


--
-- TOC entry 5287 (class 0 OID 0)
-- Dependencies: 236
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 5288 (class 0 OID 0)
-- Dependencies: 238
-- Name: id_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.id_no_seq', 3, true);


--
-- TOC entry 5289 (class 0 OID 0)
-- Dependencies: 240
-- Name: jadwal_praktek_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jadwal_praktek_id_seq', 10, true);


--
-- TOC entry 5290 (class 0 OID 0)
-- Dependencies: 242
-- Name: jadwal_visite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jadwal_visite_id_seq', 1, false);


--
-- TOC entry 5291 (class 0 OID 0)
-- Dependencies: 288
-- Name: jasa_medis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jasa_medis_id_seq', 1, false);


--
-- TOC entry 5292 (class 0 OID 0)
-- Dependencies: 245
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- TOC entry 5293 (class 0 OID 0)
-- Dependencies: 247
-- Name: kamar_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.kamar_no_seq', 2, true);


--
-- TOC entry 5294 (class 0 OID 0)
-- Dependencies: 249
-- Name: kunjungan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.kunjungan_id_seq', 11, true);


--
-- TOC entry 5295 (class 0 OID 0)
-- Dependencies: 251
-- Name: layanan_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.layanan_no_seq', 40, true);


--
-- TOC entry 5296 (class 0 OID 0)
-- Dependencies: 253
-- Name: lims_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.lims_no_seq', 1, false);


--
-- TOC entry 5297 (class 0 OID 0)
-- Dependencies: 255
-- Name: log_history_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.log_history_no_seq', 1, false);


--
-- TOC entry 5298 (class 0 OID 0)
-- Dependencies: 257
-- Name: logistik_non_medis_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.logistik_non_medis_no_seq', 1, false);


--
-- TOC entry 5299 (class 0 OID 0)
-- Dependencies: 259
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);


--
-- TOC entry 5300 (class 0 OID 0)
-- Dependencies: 284
-- Name: obat_master_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.obat_master_no_seq', 1, false);


--
-- TOC entry 5301 (class 0 OID 0)
-- Dependencies: 261
-- Name: obat_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.obat_no_seq', 5, true);


--
-- TOC entry 5302 (class 0 OID 0)
-- Dependencies: 263
-- Name: pasien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pasien_id_seq', 17, true);


--
-- TOC entry 5303 (class 0 OID 0)
-- Dependencies: 266
-- Name: pekerjaan_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pekerjaan_no_seq', 9, true);


--
-- TOC entry 5304 (class 0 OID 0)
-- Dependencies: 268
-- Name: pembelian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pembelian_id_seq', 1, false);


--
-- TOC entry 5305 (class 0 OID 0)
-- Dependencies: 270
-- Name: pendidikan_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pendidikan_no_seq', 10, true);


--
-- TOC entry 5306 (class 0 OID 0)
-- Dependencies: 272
-- Name: penjualan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.penjualan_id_seq', 1, false);


--
-- TOC entry 5307 (class 0 OID 0)
-- Dependencies: 274
-- Name: religi_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.religi_no_seq', 6, true);


--
-- TOC entry 5308 (class 0 OID 0)
-- Dependencies: 276
-- Name: resep_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.resep_no_seq', 1, false);


--
-- TOC entry 5309 (class 0 OID 0)
-- Dependencies: 278
-- Name: rim_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.rim_no_seq', 1, false);


--
-- TOC entry 5310 (class 0 OID 0)
-- Dependencies: 286
-- Name: tindakan_medis_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tindakan_medis_no_seq', 2, true);


--
-- TOC entry 5311 (class 0 OID 0)
-- Dependencies: 281
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 5312 (class 0 OID 0)
-- Dependencies: 283
-- Name: warga_negara_no_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.warga_negara_no_seq', 1, false);


--
-- TOC entry 4944 (class 2606 OID 58556)
-- Name: cppt  CPPT_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cppt
    ADD CONSTRAINT " CPPT_pkey" PRIMARY KEY (no);


--
-- TOC entry 4946 (class 2606 OID 58558)
-- Name: logistik_medis Logistik_medis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logistik_medis
    ADD CONSTRAINT "Logistik_medis_pkey" PRIMARY KEY (no);


--
-- TOC entry 4948 (class 2606 OID 58560)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 4950 (class 2606 OID 58562)
-- Name: alkes alkes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alkes
    ADD CONSTRAINT alkes_pkey PRIMARY KEY (no);


--
-- TOC entry 4952 (class 2606 OID 58564)
-- Name: antrian antrian_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.antrian
    ADD CONSTRAINT antrian_pkey PRIMARY KEY (id);


--
-- TOC entry 4956 (class 2606 OID 58566)
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- TOC entry 4954 (class 2606 OID 58568)
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- TOC entry 4958 (class 2606 OID 58570)
-- Name: diagnosa diagnosa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnosa
    ADD CONSTRAINT diagnosa_pkey PRIMARY KEY (no);


--
-- TOC entry 4960 (class 2606 OID 58572)
-- Name: dpjp dpjp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dpjp
    ADD CONSTRAINT dpjp_pkey PRIMARY KEY (no);


--
-- TOC entry 4962 (class 2606 OID 58574)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4964 (class 2606 OID 58576)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 4966 (class 2606 OID 58578)
-- Name: id id_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.id
    ADD CONSTRAINT id_pkey PRIMARY KEY (no);


--
-- TOC entry 4968 (class 2606 OID 58580)
-- Name: jadwal_praktek jadwal_praktek_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jadwal_praktek
    ADD CONSTRAINT jadwal_praktek_pkey PRIMARY KEY (id);


--
-- TOC entry 4970 (class 2606 OID 58582)
-- Name: jadwal_visite jadwal_visite_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jadwal_visite
    ADD CONSTRAINT jadwal_visite_pkey PRIMARY KEY (id);


--
-- TOC entry 5021 (class 2606 OID 66391)
-- Name: jasa_medis jasa_medis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jasa_medis
    ADD CONSTRAINT jasa_medis_pkey PRIMARY KEY (id);


--
-- TOC entry 4972 (class 2606 OID 58586)
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- TOC entry 4974 (class 2606 OID 58588)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4977 (class 2606 OID 58590)
-- Name: kamar kamar_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kamar
    ADD CONSTRAINT kamar_pkey PRIMARY KEY (no);


--
-- TOC entry 4979 (class 2606 OID 58592)
-- Name: kunjungan kunjungan_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kunjungan
    ADD CONSTRAINT kunjungan_pkey PRIMARY KEY (id);


--
-- TOC entry 4981 (class 2606 OID 58594)
-- Name: layanan layanan_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.layanan
    ADD CONSTRAINT layanan_pkey PRIMARY KEY (no);


--
-- TOC entry 4983 (class 2606 OID 58596)
-- Name: lims lims_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lims
    ADD CONSTRAINT lims_pkey PRIMARY KEY (no);


--
-- TOC entry 4985 (class 2606 OID 58598)
-- Name: logistik_non_medis logistik_non_medis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logistik_non_medis
    ADD CONSTRAINT logistik_non_medis_pkey PRIMARY KEY (no);


--
-- TOC entry 4987 (class 2606 OID 58600)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 5017 (class 2606 OID 58662)
-- Name: obat_fornas obat_master_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obat_fornas
    ADD CONSTRAINT obat_master_pkey PRIMARY KEY (no);


--
-- TOC entry 4989 (class 2606 OID 58602)
-- Name: obat obat_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obat
    ADD CONSTRAINT obat_pkey PRIMARY KEY (no);


--
-- TOC entry 4991 (class 2606 OID 58604)
-- Name: pasien pasien_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pasien
    ADD CONSTRAINT pasien_pkey PRIMARY KEY (id);


--
-- TOC entry 4993 (class 2606 OID 58606)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 4995 (class 2606 OID 58608)
-- Name: pekerjaan pekerjaan_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pekerjaan
    ADD CONSTRAINT pekerjaan_pkey PRIMARY KEY (no);


--
-- TOC entry 4997 (class 2606 OID 58610)
-- Name: pembelian pembelian_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pembelian
    ADD CONSTRAINT pembelian_pkey PRIMARY KEY (id);


--
-- TOC entry 4999 (class 2606 OID 58612)
-- Name: pendidikan pendidikan_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pendidikan
    ADD CONSTRAINT pendidikan_pkey PRIMARY KEY (no);


--
-- TOC entry 5001 (class 2606 OID 58614)
-- Name: penjualan penjualan_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.penjualan
    ADD CONSTRAINT penjualan_pkey PRIMARY KEY (id);


--
-- TOC entry 5003 (class 2606 OID 58616)
-- Name: religi religi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.religi
    ADD CONSTRAINT religi_pkey PRIMARY KEY (no);


--
-- TOC entry 5005 (class 2606 OID 58618)
-- Name: rim rim_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rim
    ADD CONSTRAINT rim_pkey PRIMARY KEY (no);


--
-- TOC entry 5008 (class 2606 OID 58620)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 5019 (class 2606 OID 66381)
-- Name: tindakan_medis tindakan_medis_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tindakan_medis
    ADD CONSTRAINT tindakan_medis_pkey PRIMARY KEY (no);


--
-- TOC entry 5011 (class 2606 OID 58624)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 5013 (class 2606 OID 58626)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 5015 (class 2606 OID 58628)
-- Name: warga_negara warga_negara_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.warga_negara
    ADD CONSTRAINT warga_negara_pkey PRIMARY KEY (no);


--
-- TOC entry 4975 (class 1259 OID 58629)
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- TOC entry 5006 (class 1259 OID 58630)
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- TOC entry 5009 (class 1259 OID 58631)
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


-- Completed on 2026-02-03 10:08:04

--
-- PostgreSQL database dump complete
--

\unrestrict ybsHMJktxsAKfrcSPPPaUEWnrzPW7eD4qW6gzcLIngWGVTuXpW5xoGgO1ocnoDF

