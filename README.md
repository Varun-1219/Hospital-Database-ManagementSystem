# Hospital Database Management System

## Overview
This project contains SQL scripts for a Hospital Database System, designed to manage and query information related to nurses, physicians, patients, appointments, rooms, and procedures within a hospital.

## Contents
- `hospital_database.table`: This file contains all the SQL queries and database schema necessary for setting up and managing the hospital database.


## Database Schema
The database schema includes the following tables:
- `block`: Information about the different blocks in the hospital.
- `nurse`: Details about nurses, including their registration status.
- `physician`: Details about physicians, including their positions.
- `department`: Information about hospital departments and their heads.
- `appointment`: Records of patient appointments with physicians.
- `room`: Details about hospital rooms and their availability.
- `procedures`: Information about various medical procedures and their costs.
- `trained_in`: Mapping of physicians to the procedures they are trained in.
- `affiliated_with`: Mapping of physicians to their affiliated departments.
- `patient`: Details about patients, including their primary care physicians.
- `prescribes`: Information about prescriptions given to patients.
- `medication`: Details about available medications.
- `stay`: Records of patient stays in the hospital.
- `on_call`: Details of nurses on call.
- `undergoes`: Records of procedures undergone by patients.

## SQL Queries
The project includes SQL queries to:
- Find details of nurses who are yet to be registered.
- Find names of head nurses.
- Obtain names of physicians who head each department.
- Count the number of patients who have taken appointments.
- Find the floor and block of a specific room.
- Count available and unavailable rooms.
- Obtain names of physicians and their affiliated departments.
- Identify physicians trained for special treatments.
- Identify unaffiliated physicians.
- Identify non-specialized physicians.
- Find names of patients and their preliminary treatment physicians.
- Count physicians a patient has taken appointments with.
- Count unique patients who got an appointment for a specific examination room.
