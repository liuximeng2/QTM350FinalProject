WITH combined_data AS (
    SELECT 
        economy,
        CAST(SUBSTR(time, 3, 4) AS INTEGER) AS year,
        indicator,
        value
    FROM table1
    UNION ALL
    SELECT 
        economy,
        CAST(SUBSTR(time, 3, 4) AS INTEGER) AS year,
        indicator,
        value
    FROM table2
    UNION ALL
    SELECT 
        economy,
        CAST(SUBSTR(time, 3, 4) AS INTEGER) AS year,
        indicator,
        value
    FROM table3
)
SELECT
    economy,
    year,
    MAX(CASE WHEN indicator = 'NY.GDP.PCAP.KD' THEN value END) AS gdp_per_capita,
    MAX(CASE WHEN indicator = 'SL.EMP.TOTL.SP.ZS' THEN value END) AS employ_population_ratio,
    MAX(CASE WHEN indicator = 'NY.GDP.MKTP.KD.ZG' THEN value END) AS gdp_growth_rate,
    MAX(CASE WHEN indicator = 'SP.DYN.LE00.IN' THEN value END) AS life_expectancy_at_birth,
    MAX(CASE WHEN indicator = 'SH.DYN.MORT' THEN value END) AS mortality_rate_under_5,
    MAX(CASE WHEN indicator = 'SP.ADO.TFRT' THEN value END) AS adolescent_fertility_rate,
    MAX(CASE WHEN indicator = 'SE.PRM.ENRR' THEN value END) AS school_enrollment_primary,
    MAX(CASE WHEN indicator = 'SE.SEC.ENRR' THEN value END) AS school_enrollment_secondary,
    MAX(CASE WHEN indicator = 'SE.TER.ENRR' THEN value END) AS school_enrollment_tertiary
FROM combined_data
WHERE
    economy IN ('CHN', 'IND', 'BRA', 'RUS', 'ZAF', 'IRN', 'ETH', 'ARE') -- Add more countries of interest here, e.g. ('USA', 'CHN', 'IND')
    AND year BETWEEN 1960 AND 2023 -- Replace with desired year range
GROUP BY
    economy, year
ORDER BY
    economy, year;