DROP TABLE houses
DROP TABLE people

CREATE TABLE houses
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  banner VARCHAR(255),
  motto VARCHAR(255)
);

CREATE TABLE people
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  weapon VARCHAR(255),
  age INT,
  living BOOLEAN DEFAULT TRUE,
  image TEXT,
  house_id INT REFERENCES houses(id)

);

INSERT INTO houses (name, sigil, motto) VALUES
('Stark','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQo7mjAGzmS_xQiWwpmMlysm2l0nHWOcCvGsJ75sS48h3dl337H',
  'Winter is comming');
INSERT INTO houses (name, sigil, motto) VALUES
('Lannister','http://t3.gstatic.com/images?q=tbn:ANd9GcRQALS4eZeoh_9wij47jIS2EXbZo32qe4UcZ8Q1zCeFfNvRuSd9Vw',
 'always pays his debts');
INSERT INTO houses (name, sigil, motto) VALUES
('Targarian', 'http://lide.uhk.cz/fim/student/linhaji1/Song_of_ice_and_fire/img/targaryan_sigil.jpg', 'Fire blood' )