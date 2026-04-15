# 🎓 Student Performance Analysis (SQL Project)

## 📊 Project Overview
This project analyzes how parental education influences student academic performance using SQL.

The goal is to uncover patterns between:
- Parental education level
- Study behavior
- Attendance
- Academic outcomes (GPA)

---

## 📊 Dataset

The dataset used in this project is publicly available on Kaggle:

🔗 https://www.kaggle.com/datasets/username/student-performance-data

This dataset is synthetic and created for educational purposes.  
It is used here for non-commercial data analysis and portfolio demonstration.
## 🛠 Tools Used
- SQL (MySQL)
- Excel (for dataset handling)

---

## 📂 Dataset
The dataset contains student-level data including:
- GPA
- Study time
- Absences
- Tutoring
- Parental education
- Parental support

---

## 🔍 Key Analysis

### 1. Grouping Parental Education
```sql
CASE
    WHEN ParentalEducation IN (0,1) THEN 'Low'
    WHEN ParentalEducation IN (2,3) THEN 'Medium'
    ELSE 'High'
END
