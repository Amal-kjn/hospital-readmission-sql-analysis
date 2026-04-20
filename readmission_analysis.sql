select * from readmission



--Overall Readmission Rate

SELECT 
    COUNT(*) AS total_patients,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS readmission_rate
FROM readmission;


--Strongest Predictor (Prev Readmissions)

SELECT 
    prev_readmissions,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY prev_readmissions
ORDER BY prev_readmissions;

-- conclusion "Readmission risk increases sharply with prior readmissions, indicating strong predictive value."



--comorbidities impact

SELECT 
    comorbidities_count,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY comorbidities_count
ORDER BY comorbidities_count;

--conclusion " Higher comorbidity burden correlates with increased readmission risk."



--Length of Stay Analysis

SELECT 
    length_of_stay,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY length_of_stay
ORDER BY length_of_stay desc;

--conclusion " As length of stay at hospital increases readmission risk also increases.



--age impact

SELECT 
    age,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY age 
ORDER BY age desc;

--conclusion " As age increases readmission risk also increases."


--Demographics (Age + Gender)

SELECT 
    age,
    gender,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY age, gender
ORDER BY rate DESC;

--conclusion "Certain demographic groups show variation in readmission, though less significant than clinical factors."


--Treatment variations

SELECT 
    treatment_type,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY treatment_type

-- conclusion"Treatment type shows limited variation in readmission risk compared to clinical history"



--Combine Factors

SELECT 
    prev_readmissions,
    comorbidities_count,
    COUNT(*) AS total,
    SUM(CAST(label AS INT)) AS readmitted,
    (SUM(CAST(label AS FLOAT)) / COUNT(*)) AS rate
FROM readmission
GROUP BY prev_readmissions, comorbidities_count
ORDER BY rate DESC;



-- conclusion "Patients with both high prior readmissions and multiple comorbidities represent the highest-risk population."
