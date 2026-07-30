Medical Appointment No-Show Analysis
Background

I've spent over a year working as a Medical Virtual Assistant for a GLP-1 telehealth provider, where I personally reschedule 30+ missed patient appointments a day. I always saw the symptom — a missed visit — but never had the data to understand the pattern behind it. This project uses a public dataset of 110,527 real medical appointments from Brazil to explore what actually predicts whether a patient shows up.

Dataset

Medical Appointment No Shows — Kaggle, 110,527 appointment records with patient demographics, medical conditions, SMS reminder status, and appointment outcome.

Tools Used

Google Sheets (data cleaning, COUNTIFS analysis), SQLite (SQL queries), Tableau Public (visualization)

Method

For each variable, I calculated the no-show rate (missed appointments ÷ total appointments in that group) rather than raw counts, since group sizes varied significantly.

Headline Finding: Longer Wait Times Predict No-Shows

Patients who showed up waited an average of 8.3 days between booking and their appointment.
Patients who missed their appointment waited an average of 15.3 days — almost double.

📊 View interactive chart on Tableau Public

Other Findings
Factor	Group	No-Show Rate
Gender	Female	20.3%
Gender	Male	20.0%
SMS Reminder	Received	27.6%
SMS Reminder	Not received	16.7%
Scholarship	Has scholarship	23.7%
Scholarship	No scholarship	19.8%
Age	65+	15.5%
Age	Under 65	20.9%
Diabetes	Diabetic	14.7%
Diabetes	Non-diabetic	20.4%
Hypertension	Hypertensive	17.3%
Hypertension	Non-hypertensive	20.9%
Alcoholism	Alcoholic	20.1%
Alcoholism	Non-alcoholic	20.2%
Handicap	Handicapped	17.9%
Handicap	Non-handicapped	20.2%
What the data shows

Gender and alcoholism have no meaningful effect. Men and women miss at almost the same rate (~20%), and alcoholic patients show no meaningful difference (20.1% vs 20.2%).

Patients managing a chronic condition are more reliable, not less. Diabetic, hypertensive, older (65+), and handicapped patients all show up more consistently than younger, healthier patients.

Lower-income patients (scholarship recipients) miss more often — a ~4 percentage point gap suggesting income-related access barriers.

Patients who received an SMS reminder missed more, not less — the opposite of what a reminder system is meant to do.

Why this matters

In my current role, I see the operational cost of no-shows daily. These findings suggest a real intervention strategy should focus on scheduling patients sooner, direct more support toward younger/lower-income patients, and re-evaluate whether the SMS reminder system is actually working.
