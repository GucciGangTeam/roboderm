package org.example.com.webapi.rest.service;

import lombok.RequiredArgsConstructor;
import org.example.com.webapi.mapper.DiagnosisMapper;
import org.example.com.webapi.model.Diagnosis;
import org.example.com.webapi.rest.dao.DiagnosisRepository;
import org.example.com.webapi.rest.dto.DiagnosisRequest;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DiagnosisService {
    private final DiagnosisRepository diagnosisRepository;

    public Diagnosis saveDiagnosis(DiagnosisRequest diagnosisRequest){
        return diagnosisRepository.save(DiagnosisMapper.toDiagnosis(diagnosisRequest));
    }
}
