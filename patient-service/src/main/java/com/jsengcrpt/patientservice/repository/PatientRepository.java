package com.jsengcrpt.patientservice.repository;

import com.jsengcrpt.patientservice.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

// Patient Repository (Patient key/id is UUID)
@Repository
public interface PatientRepository extends JpaRepository<Patient, UUID> {


}
