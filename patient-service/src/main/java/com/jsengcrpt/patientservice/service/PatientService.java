package com.jsengcrpt.patientservice.service;

import com.jsengcrpt.patientservice.dto.PatientResponseDTO;
import com.jsengcrpt.patientservice.mapper.PatientMapper;
import com.jsengcrpt.patientservice.model.Patient;
import com.jsengcrpt.patientservice.repository.PatientRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    private final PatientRepository patientRepository;

    // Constructor Injection
    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    // Get All Patients
    public List<PatientResponseDTO> getPatients () {
        List<Patient> patients = patientRepository.findAll();

        // Convert Patient to PatientResponseDTO (old vs new)
//        List<PatientResponseDTO> patientResponseDTOs = patients.stream()
//                .map(PatientMapper::toPatientResponseDTO)
//                .toList();
        return patients.stream()
            .map(PatientMapper::toPatientResponseDTO)
            .toList();
    }
}
