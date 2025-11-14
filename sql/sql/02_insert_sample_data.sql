-- Insert klanten
INSERT INTO klanten (
    voornaam, achternaam, geboortedatum, geslacht, straat, huisnummer,
    postcode, woonplaats, provincie, email, telefoon,
    ingangsdatum_zorgverzekering
) VALUES
('Sven', 'De Jong', '1995-03-12', 'man', 'Kerkstraat', '12A', '1011AB', 'Amsterdam', 'Noord-Holland', 'sven.dejong@example.com', '+31 6 12345678', '2023-01-01'),
('Fatima', 'El Amrani', '1998-07-25', 'vrouw', 'Stationsweg', '45', '2515BX', 'Den Haag', 'Zuid-Holland', 'fatima.elamrani@example.com', '+31 6 23456789', '2023-02-15'),
('Jeroen', 'Visser', '1988-11-03', 'man', 'Langestraat', '8', '8011CD', 'Zwolle', 'Overijssel', 'jeroen.visser@example.com', '+31 6 34567890', '2022-11-20'),
('Aylin', 'Yildiz', '2000-05-18', 'vrouw', 'Marktplein', '3', '5611EE', 'Eindhoven', 'Noord-Brabant', 'aylin.yildiz@example.com', '+31 6 45678901', '2024-01-10'),
('Noah', 'Bakker', '1992-09-30', 'man', 'Hoofdstraat', '110', '9721GH', 'Groningen', 'Groningen', 'noah.bakker@example.com', '+31 6 56789012', '2023-06-01');

-- Insert polissen
INSERT INTO polissen (
    klant_id, polis_nummer, type_polis, dekking_niveau,
    startdatum, einddatum, maandpremie, actief
) VALUES
(1, 'P-2023-0001', 'basis', 'natura', '2023-01-01', NULL, 135.00, TRUE),
(2, 'P-2023-0002', 'basis', 'restitutie', '2023-02-15', NULL, 145.50, TRUE),
(2, 'P-2023-0003', 'tand', 'aanvullend', '2023-02-15', NULL, 18.75, TRUE),
(3, 'P-2022-0004', 'basis', 'budget', '2022-01-01', '2022-12-31', 120.00, FALSE),
(4, 'P-2024-0005', 'basis', 'natura', '2024-01-10', NULL, 139.00, TRUE),
(5, 'P-2023-0006', 'basis', 'natura', '2023-06-01', NULL, 132.00, TRUE),
(5, 'P-2023-0007', 'aanvullend', 'fysiotherapie', '2023-06-01', NULL, 12.50, TRUE);
