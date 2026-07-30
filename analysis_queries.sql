-- Medical Appointment No-Show Analysis
-- SQL queries used to calculate no-show rates and the headline "waiting time" finding

-- Total rows check
SELECT COUNT(*) FROM MedicalAppointmentsnoshowKaggleV2May2016;

-- Gender breakdown
SELECT COUNT(*) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE gender = 'F';
SELECT COUNT(*) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE gender = 'M';

-- SMS reminder vs no-show
SELECT COUNT(*) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE sms_received = 1 AND no_show = 'Yes';
SELECT COUNT(*) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE sms_received = 1;
SELECT COUNT(*) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE sms_received = 0;

-- Average age: missed vs attended
SELECT AVG(age) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE no_show = 'Yes';
SELECT AVG(age) FROM MedicalAppointmentsnoshowKaggleV2May2016 WHERE no_show = 'No';

-- Headline finding: average days between scheduling and appointment, by no-show status
SELECT no_show, AVG(julianday(appointment_day) - julianday(scheduled_day)) AS avg_days_waiting
FROM MedicalAppointmentsnoshowKaggleV2May2016
GROUP BY no_show;
