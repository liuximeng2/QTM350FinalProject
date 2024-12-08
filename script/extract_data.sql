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
    MAX(CASE WHEN indicator = 'NY.GDP.MKTP.KD.ZG' THEN value END) AS gdp_growth_rate,
    MAX(CASE WHEN indicator = 'SL.UEM.TOTL.ZS' THEN value END) AS unemployment_rate,
    MAX(CASE WHEN indicator = 'FP.CPI.TOTL.ZG' THEN value END) AS inflation_rate,
    MAX(CASE WHEN indicator = 'SP.DYN.LE00.IN' THEN value END) AS life_expectancy_at_birth,
    MAX(CASE WHEN indicator = 'SH.DYN.MORT' THEN value END) AS infant_mortality_rate,
    MAX(CASE WHEN indicator = 'SP.POP.GROW' THEN value END) AS population_growth_rate,
    MAX(CASE WHEN indicator = 'SE.ADT.LITR.ZS' THEN value END) AS literacy_rate,
    MAX(CASE WHEN indicator = 'SE.XPD.TOTL.GD.ZS' THEN value END) AS govt_expenditure_on_education,
    MAX(CASE WHEN indicator = 'SE.PRM.ENRL.TC.ZS' THEN value END) AS pupil_teacher_ratio
FROM combined_data
WHERE
    economy IN ('CHN', 'IND', 'BRA', 'RUS', 'ZAF', 'ETH','USA', 'DEU', 'AUS', 'NZL', 'GBR') -- Add more countries of interest here, e.g. ('USA', 'CHN', 'IND')
    AND year BETWEEN 2000 AND 2022 -- Replace with desired year range
GROUP BY
    economy, year
ORDER BY
    economy, year;





    
    


