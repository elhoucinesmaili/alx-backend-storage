-- Script that selects the origin and total number of fans (as nb_fans) from the metal_bands table, grouped by origin and ordered by number of fans descending
SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
