package com.java.jsf.dao;

import java.util.List;

import com.java.jsf.model.Patient;

public interface PatientDao {

    Patient showPatientById(String patientId);

    List<Patient> showPatientsByDoctorId(String doctorId);
}
