package com.java.jsf.model;

import java.sql.Date;
import java.util.Set;

public class Patient {

    private String patientId;
    private String patientName;
    private Doctor doctor; // Many-to-One: one doctor per patient
    private Date dateOfBirth;
    private Set<MedicationHistory> medicationHistoryList; // One-to-Many: one patient, many medication records (Now using Set)

    // Default constructor
    public Patient() {
    }

    // Constructor with all fields
    public Patient(String patientId, String patientName, Doctor doctor, Date dateOfBirth, Set<MedicationHistory> medicationHistoryList) {
        this.patientId = patientId;
        this.patientName = patientName;
        this.doctor = doctor;
        this.dateOfBirth = dateOfBirth;
        this.medicationHistoryList = medicationHistoryList;
    }

    // Getters and Setters
    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Set<MedicationHistory> getMedicationHistoryList() {
        return medicationHistoryList;
    }

    public void setMedicationHistoryList(Set<MedicationHistory> medicationHistoryList) {
        this.medicationHistoryList = medicationHistoryList;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "patientId='" + patientId + '\'' +
                ", patientName='" + patientName + '\'' +
                ", doctor=" + (doctor != null ? doctor.getDoctorName() : "None") +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                '}';
    }
}
