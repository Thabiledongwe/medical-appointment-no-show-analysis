# Medical Appointment No-Show Analysis

## Background
I've spent over a year working as a Medical Virtual Assistant for a GLP-1 telehealth provider, where I personally reschedule 30+ missed patient appointments a day. I always saw the *symptom* — a missed visit — but never had the data to understand the *pattern* behind it. This project uses a public dataset of 110,527 real medical appointments from Brazil to explore what actually predicts whether a patient shows up.

## Dataset
[Medical Appointment No Shows](https://www.kaggle.com/datasets/joniarroba/noshowappointments) — Kaggle, 110,527 appointment records with patient demographics, medical conditions, SMS reminder status, and appointment outcome.

## Tools Used
Google Sheets (data cleaning, COUNTIFS analysis), SQLite (SQL queries), Tableau Public (visualization)

## Method
For each variable, I calculated the **no-show rate** (missed appointments ÷ total appointments in that group) rather than raw counts, since group sizes varied significantly.

## Headline Finding: Longer Wait Times Predict No-Shows

Patients who **showed up** waited an average of **8.3 days** between booking and their appointment.
Patients who **missed** their appointment waited an average of **15.3 days** — almost double.

📊 [View interactive chart on Tableau Public](https://public.tableau.com/app/profile/thabile.dongwe/viz/PatientAttendancevsNo-shows/Sheet2)

## Other Findings

| Factor | Group | No-Show Rate |
|---|---|---|
| Gender | Female | 20.3% |
| Gender | Male | 20.0% |
| SMS Reminder | Received | 27.6% |
| SMS Reminder | Not received | 16.7% |
| Scholarship | Has scholarship | 23.7% |
| Scholarship | No scholarship | 19.8%
