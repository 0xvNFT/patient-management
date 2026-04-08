package com.jsengcrpt.patientservice.controller;

import com.jsengcrpt.patientservice.dto.PatientResponseDTO;
import com.jsengcrpt.patientservice.service.PatientService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/patients") // Base URL
public class PatientController {
    private final PatientService patientService;

    // Constructor Injection
    public PatientController(PatientService patientService) {
        this.patientService = patientService;
    }

    @GetMapping
    public ResponseEntity<List<PatientResponseDTO>> getAllPatients() {
        //(Old way)
//        List<PatientResponseDTO> patients = patientService.getPatients();
//        return ResponseEntity.ok(patients);
        return ResponseEntity.ok().body(patientService.getPatients());
    }
}
