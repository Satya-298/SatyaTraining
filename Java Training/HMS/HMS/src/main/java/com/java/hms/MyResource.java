package com.java.hms;

import java.sql.Timestamp;
import java.util.HashSet;

import com.java.hms.dao.ProviderDao;
import com.java.hms.dao.ProviderDaoImpl;
import com.java.hms.model.Gender;
import com.java.hms.model.Provider;

public class MyResource {
    public static void main(String[] args) {
        // Create a sample provider
        Provider provider = new Provider();
        provider.setUsername("drjohn");
        provider.setName("Dr. John Doe");
        provider.setEmail("john.doe@example.com");
        provider.setPhone("9876543210");
        provider.setPassword("securePassword123");
        provider.setSpeciality("Cardiology");
        provider.setAddress("123, Health Street, Wellness City");
        provider.setGender(Gender.MALE);
        provider.setApproved(false); // Assuming admin will approve later
        provider.setCreatedAt(new Timestamp(System.currentTimeMillis()));
        provider.setAvailabilities(new HashSet<>());
        provider.setAppointments(new HashSet<>());
        provider.setMedicalHistories(new HashSet<>());

        // DAO object
        ProviderDao dao = new ProviderDaoImpl();
        String result = dao.addProvider(provider);
        System.out.println(result);
    }
}
