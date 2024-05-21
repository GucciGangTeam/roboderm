package org.example.com.webapi.rest.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.example.com.webapi.mapper.DiagnosisMapper;
import org.example.com.webapi.model.Diagnosis;
import org.example.com.webapi.rest.dto.DiagnosisRequest;
import org.example.com.webapi.rest.service.DiagnosisService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RestController
@RequestMapping("/rest/v1/diagnosis")
@RequiredArgsConstructor
public class DiagnosisController {
    private final DiagnosisService diagnosisService;

    private final String uploadDir = "uploadDir";

    @PostMapping
    public ResponseEntity<Long> createDiagnosis(@RequestBody @Valid DiagnosisRequest diagnosisRequest, @RequestParam("file") MultipartFile file){
        try {
            Diagnosis diagnosis = diagnosisService.saveDiagnosis(diagnosisRequest);

            File photoFile = new File(uploadDir + "/" + diagnosis.getId() + ".jpg");
            file.transferTo(photoFile);
            return new ResponseEntity<>(diagnosis.getId(), HttpStatus.OK);
        } catch (IOException e) {
            return new ResponseEntity<>(-1L, HttpStatus.BAD_REQUEST);
        }
    }

}
