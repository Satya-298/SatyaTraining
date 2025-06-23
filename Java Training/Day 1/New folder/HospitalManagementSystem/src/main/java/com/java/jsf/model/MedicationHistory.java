package com.java.jsf.model;

public class MedicationHistory {

    private String medId;
    private Patient patient; // Many-to-One: one patient per medication entry
    private String medicines;
    private String tests;

    // Default constructor
    public MedicationHistory() {
    	
    }

    // Constructor with fields
    public MedicationHistory(String medId, Patient patient, String medicines, String tests) {
        this.medId = medId;
        this.patient = patient;
        this.medicines = medicines;
        this.tests = tests;
    }

    // Getters and Setters
    public String getMedId() {
        return medId;
    }

    public void setMedId(String medId) {
        this.medId = medId;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public String getMedicines() {
        return medicines;
    }

    public void setMedicines(String medicines) {
        this.medicines = medicines;
    }

    public String getTests() {
        return tests;
    }

    public void setTests(String tests) {
        this.tests = tests;
    }

    @Override
    public String toString() {
        return "MedicationHistory{" +
                "medId='" + medId + '\'' +
                ", medicines='" + medicines + '\'' +
                ", tests='" + tests + '\'' +
                '}';
    }


}


//MedId varchar(30),
//PatientId varchar(30) references Patient(patientId), 
//Medicines varchar(30),
//Tests varchar(30)