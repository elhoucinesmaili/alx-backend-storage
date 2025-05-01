-- Script that selects band_name and lifespan (calculated as the difference between split year or 2022 and formed year) for bands with style containing 'Glam rock', ordered by lifespan descending
SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
    FROM metal_bands
    WHERE style LIKE '%Glam rock%'
    ORDER BY lifespan DESC;
