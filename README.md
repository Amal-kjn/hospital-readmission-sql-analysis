# 🏥 Hospital Readmission Analysis (SQL Project)

## 📌 Overview
Hospital readmissions are a critical healthcare quality metric, often reflecting patient health status, quality of care, and system efficiency.  
This project analyzes factors influencing **30-day hospital readmission** using SQL on a structured patient dataset.

---

## 🎯 Objective
To identify key predictors of hospital readmission and understand how demographic and clinical factors contribute to readmission risk.

---

## 📊 Dataset
- Source: Kaggle – Hospital Patient Readmission Dataset  
- Records: ~8,000 patients  
- Type: Simulated healthcare dataset  
- Features include:
  - Patient demographics (age, gender, region)
  - Clinical variables (comorbidities, primary diagnosis)
  - Hospital metrics (length of stay, treatment type)
  - Prior utilization (previous readmissions)
  - Outcome variable (`label`: 0 = no readmission, 1 = readmitted within 30 days)

> ⚠️ Note: This is a synthetic dataset designed for analytical practice and may not fully represent real-world clinical variability.

---

## 🛠️ Tools & Skills Used
- SQL (aggregation, grouping, data transformation)
- Data analysis & interpretation
- Healthcare domain understanding

---

## 🔍 Analysis Performed

### 1. Overall Readmission Rate
- Calculated total readmissions across the dataset

### 2. Prior Readmissions Analysis
- Examined relationship between previous hospitalizations and future readmission risk

### 3. Comorbidity Impact
- Analyzed how multiple co-existing conditions affect readmission likelihood

### 4. Length of Stay
- Evaluated whether longer hospital stays correlate with higher readmission rates

### 5. Demographic Analysis
- Compared readmission trends across age and gender groups

### 6. Treatment Type Comparison
- Assessed variation in readmission across treatment categories

### 7.- **Compounded risk effect observed**  
- Patients with both high prior readmissions and multiple comorbidities showed the highest likelihood of readmission, indicating a cumulative risk pattern.

---

## 📈 Key Insights

- **Previous Readmissions are the strongest predictor**  
  Patients with prior hospitalizations show significantly higher risk of future readmission.

- **Comorbidity burden increases risk**  
  Patients with multiple conditions are more likely to be readmitted.

- **Length of stay correlates with readmission**  
  Longer hospital stays indicate higher severity, leading to increased readmission probability.

- **Demographic factors have weaker influence**  
  Age and gender show variation but are less predictive compared to clinical factors.

---

## 🧠 Conclusion
This analysis demonstrates that **historical healthcare utilization and disease burden are the primary drivers of hospital readmission**.  
Clinical factors play a significantly larger role than demographic characteristics.

---

## ⚠️ Limitations
- Dataset is simulated and may not reflect real-world patient complexity
- No longitudinal tracking beyond available features
- External factors (hospital quality, socioeconomic status) not included

---

## 🚀 Future Improvements
- Build predictive models (logistic regression, ML)
- Incorporate visualization dashboards (Power BI / Tableau)
- Analyze interaction effects between multiple variables

---

## 📂 Repository Structure
