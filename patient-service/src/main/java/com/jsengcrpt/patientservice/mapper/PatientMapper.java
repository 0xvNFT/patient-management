package com.jsengcrpt.patientservice.mapper;

import com.jsengcrpt.patientservice.dto.PatientResponseDTO;
import com.jsengcrpt.patientservice.model.Patient;

// Patient Mapper
public class PatientMapper {
    public static PatientResponseDTO toPatientResponseDTO(Patient patient) {
        PatientResponseDTO patientResponseDTO = new PatientResponseDTO();
        patientResponseDTO.setId(patient.getId().toString());
        patientResponseDTO.setName(patient.getName());
        patientResponseDTO.setEmail(patient.getEmail());
        patientResponseDTO.setAddress(patient.getAddress());
        patientResponseDTO.setDate_of_birth(patient.getDateOfBirth().toString());
        patientResponseDTO.setRegistered_date(patient.getRegisteredDate().toString());
        return patientResponseDTO;
    }
}
