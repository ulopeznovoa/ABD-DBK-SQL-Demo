DROP DATABASE IF EXISTS demo_gis;
CREATE DATABASE demo_gis;
USE demo_gis;

CREATE TABLE places (
  id BIGINT PRIMARY KEY,
  name VARCHAR(200),
  pos POINT NOT NULL SRID 4326,
  SPATIAL INDEX (pos)
);

INSERT INTO places VALUES
  (1,'Guggenheim Bilbao Museum',    ST_SRID(POINT(-2.9339,43.2686),4326)),
  (2,'Bilboko Arte Ederren Museoa', ST_SRID(POINT(-2.9378,43.2658),4326)),
  (3,'Abando Train Station',        ST_SRID(POINT(-2.9280,43.2602),4326)),
  (4,'Basurtuko Hospitalea',        ST_SRID(POINT(-2.9532,43.2613),4326)),
  (5,'Azkuna Zentroa',              ST_SRID(POINT(-2.9368,43.2598),4326));

SET @poly = ST_GeomFromText(
  'POLYGON((
    -2.9399138 43.2648946,
    -2.9287809 43.2648085,
    -2.9287942 43.2700109,
    -2.9399459 43.2700592,
    -2.9399138 43.2648946
  ))',
  4326
);
