-- Average Cholesterol by Gender
CREATE TABLE heart_data (
    age INT,
    sex VARCHAR(10),
    chest_pain_type VARCHAR(50),
    resting_blood_pressure INT,
    serum_cholestoral_mg_dl INT,
    fasting_blood_sugar_gt_120 BOOLEAN,
    resting_ecg_results VARCHAR(50),
    max_heart_rate_achieved INT,
    exercise_induced_angina VARCHAR(5),
    induced_depression FLOAT,
    slope_peak_exercise VARCHAR(20),
    colored_vessels INT,
    thalassemia VARCHAR(20),
    disease_condition VARCHAR(20)
)
Select * From cleaned_data_heart;

SELECT
    sex,
    AVG(`serum cholestoral(mg/dl)`) AS avg_cholesterol
FROM
    cleaned_data_heart
GROUP BY
    sex;

-- Average Cholesterol by Age Group
SELECT
    FLOOR(age / 10) * 10 AS age_group,
    AVG(`serum cholestoral(mg/dl)`) AS avg_cholesterol
FROM
    cleaned_data_heart
GROUP BY
    age_group
ORDER BY
    age_group;
    
-- Count and Average Cholesterol by Disease Condition and Sex
SELECT
    `disease condition`,
    sex,
    COUNT(*) AS count_patients,
    AVG(`serum cholestoral(mg/dl)`) AS avg_cholesterol
FROM
    cleaned_data_heart
GROUP BY
    `disease condition`, sex;



