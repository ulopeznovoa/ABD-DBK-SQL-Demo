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
  (1,'Guggenheim Bilbao Museum',    ST_SRID(POINT(43.2686,-2.9339),4326)),
  (2,'Bilboko Arte Ederren Museoa', ST_SRID(POINT(43.2658,-2.9378),4326)),
  (3,'Abando Train Station',        ST_SRID(POINT(43.2602,-2.9280),4326)),
  (4,'Basurtuko Hospitalea',        ST_SRID(POINT(43.2613,-2.9532),4326)),
  (5,'Azkuna Zentroa',              ST_SRID(POINT(43.2598,-2.9368),4326));

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

SET @moyua = ST_SRID(POINT(43.263004, -2.934958),4326);
