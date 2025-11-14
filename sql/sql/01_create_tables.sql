-- Create klanten table
CREATE TABLE klanten (
    klant_id      SERIAL PRIMARY KEY,
    voornaam      VARCHAR(50),
    achternaam    VARCHAR(50),
    geboortedatum DATE,
    geslacht      VARCHAR(10),
    straat        VARCHAR(100),
    huisnummer    VARCHAR(10),
    postcode      VARCHAR(10),
    woonplaats    VARCHAR(100),
    provincie     VARCHAR(100),
    email         VARCHAR(100),
    telefoon      VARCHAR(20),
    ingangsdatum_zorgverzekering DATE
);

-- Create polissen table
CREATE TABLE polissen (
    polis_id       SERIAL PRIMARY KEY,
    klant_id       INT REFERENCES klanten(klant_id),
    polis_nummer   VARCHAR(50) UNIQUE,
    type_polis     VARCHAR(50),
    dekking_niveau VARCHAR(50),
    startdatum     DATE,
    einddatum      DATE,
    maandpremie    NUMERIC(10,2),
    actief         BOOLEAN
);
