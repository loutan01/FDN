/*
sudo su postgres
psql -f generate_tables.sql
*/

DROP DATABASE IF EXISTS archive_ninjas;
CREATE DATABASE archive_ninjas;
\c archive_ninjas;

begin;
CREATE TABLE users(
	id INT NOT NULL PRIMARY KEY,
	username VARCHAR(20) NOT NULL,
	email TEXT NOT NULL UNIQUE,
	is_admin BOOLEAN NOT NULL,
	is_contributor BOOLEAN NOT NULL,
	media JSON
);
CREATE TABLE wisewords(
	id INT NOT NULL PRIMARY KEY,
	user_id INT NOT NULL REFERENCES users (id),
	text  VARCHAR(512) NOT NULL
);
CREATE TABLE gatherings(
	id INT NOT NULL PRIMARY KEY,
	name varchar(64) NOT NULL,
	year SMALLINT NOT NULL,
	venue varchar(64) NOT NULL,
	media json
);
CREATE TABLE choons(
	id INT NOT NULL PRIMARY KEY,
	user_id INT NOT NULL,
	gathering_id INT REFERENCES gatherings(id),
	meta json
);
CREATE TABLE user_gatherings(
	user_id INT REFERENCES users(id),
	gathering_id INT REFERENCES gatherings(id)
);
CREATE TABLE thread(
	id INT NOT NULL PRIMARY KEY,
	user_id INT NOT NULL REFERENCES users(id),
	meta json,
	timestamp TIMESTAMP NOT NULL,
	text varchar NOT NULL,
	parent INT REFERENCES thread(id)
);
commit;
