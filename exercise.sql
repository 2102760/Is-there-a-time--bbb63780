alter table planeten modify diameter int not null;

alter table planeten modify `Afstand tot de zon` int not null;

alter table planeten modify `massa t.o.v. de aarde` int not null;

alter table planeten
	add bezoek_datum date null;

UPDATE sterrenstelsel.planeten t SET t.bezoek_datum = '2020-01-01' WHERE t.naam LIKE 'Aarde' ESCAPE '#' AND t.diameter = 12756 AND t.`Afstand tot de zon` = 149597870 AND t.`massa t.o.v. de aarde` = 1 AND t.bezoek_datum IS NULL