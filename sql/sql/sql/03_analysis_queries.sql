-- Total monthly premium per customer
SELECT 
    k.klant_id,
    k.voornaam,
    k.achternaam,
    k.provincie,
    SUM(p.maandpremie) AS totale_maandpremie
FROM klanten k
JOIN polissen p ON k.klant_id = p.klant_id
WHERE p.actief = TRUE
GROUP BY k.klant_id, k.voornaam, k.achternaam, k.provincie
ORDER BY totale_maandpremie DESC;

-- Monthly new customers
SELECT 
    DATE_TRUNC('month', ingangsdatum_zorgverzekering) AS maand,
    COUNT(*) AS nieuwe_klanten
FROM klanten
GROUP BY DATE_TRUNC('month', ingangsdatum_zorgverzekering)
ORDER BY maand;

-- New policies per year
SELECT 
    DATE_PART('year', startdatum) AS jaar,
    COUNT(*) AS nieuwe_polissen
FROM polissen
GROUP BY DATE_PART('year', startdatum)
ORDER BY jaar;

-- Active vs inactive policies
SELECT 
    actief,
    COUNT(*) AS aantal_polissen
FROM polissen
GROUP BY actief;
