DROP DATABASE IF EXISTS tallervolcadodata;

CREATE DATABASE tallervolcadodata;

\c tallervolcadodata;

CREATE TABLE departamento (
	id integer,
	nombre VARCHAR
);

CREATE TABLE municipio (
	id integer,
	nombre VARCHAR
);

CREATE TABLE localidades(
    id_departamento integer,
    nombre_departamento VARCHAR,
    id_municipio integer,
    nombre_municipio VARCHAR
);
