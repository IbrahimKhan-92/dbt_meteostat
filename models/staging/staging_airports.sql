-- Active: 1790165417836@@data-analytics-course-2.c8g8r1deus2v.eu-central-1.rds.amazonaws.com@5432@nf_da_onl_en_200726@s_muhammadibrahim

WITH airports_regions_join AS (
        SELECT
                a.faa,
                a.name,
                a.city,
                a.country,
                r.region,
                a.lat,
                a.lon,
                a.alt,
                a.tz,
                a.dst
        FROM {{source('flights_data', 'airports')}} AS a
        LEFT JOIN {{source('flights_data', 'regions')}} AS r
        USING (country)
    )
    SELECT * FROM airports_regions_join