DROP DATABASE IF EXISTS wine-merchant-cellar;
CREATE DATABASE wine-merchant-cellar;

\c wine-merchant-cellar

CREATE TABLE wines(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  winemaker VARCHAR(255),
  style VARCHAR(255),
  year SMALLINT
);



