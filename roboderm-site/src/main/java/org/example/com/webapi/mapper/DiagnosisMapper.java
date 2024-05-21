package org.example.com.webapi.mapper;


import org.example.com.webapi.model.Diagnosis;
import org.example.com.webapi.rest.dto.DiagnosisRequest;

public class DiagnosisMapper {
    public static Diagnosis toDiagnosis(DiagnosisRequest diagnosisRequest){
        return Diagnosis.builder()
                .disease(diagnosisRequest.getDisease())
                .skinType(diagnosisRequest.getSkinType())
                .age(diagnosisRequest.getAge())
                .diameter(diagnosisRequest.getDiameter())
                .diseaseDurationDay(diagnosisRequest.getDiseaseDurationDay())
                .location(diagnosisRequest.getLocation())
                .subjectiveFeelings(diagnosisRequest.getSubjectiveFeelings())
                .gender(diagnosisRequest.getGender())
                .familyHistory(diagnosisRequest.getFamilyHistory())
                .ulceration(diagnosisRequest.getUlceration())
                .sunburn(diagnosisRequest.getSunburn())
                .prolongedSunExposure(diagnosisRequest.getProlongedSunExposure())
                .build();
    }

    public static DiagnosisRequest toDiagnosisRequest(Diagnosis diagnosis){
        return DiagnosisRequest.builder()
                .disease(diagnosis.getDisease())
                .skinType(diagnosis.getSkinType())
                .age(diagnosis.getAge())
                .diameter(diagnosis.getDiameter())
                .diseaseDurationDay(diagnosis.getDiseaseDurationDay())
                .location(diagnosis.getLocation())
                .subjectiveFeelings(diagnosis.getSubjectiveFeelings())
                .gender(diagnosis.getGender())
                .familyHistory(diagnosis.getFamilyHistory())
                .ulceration(diagnosis.getUlceration())
                .sunburn(diagnosis.getSunburn())
                .prolongedSunExposure(diagnosis.getProlongedSunExposure())
                .build();
    }
}
