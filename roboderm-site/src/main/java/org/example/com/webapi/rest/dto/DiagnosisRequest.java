package org.example.com.webapi.rest.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.util.Set;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class DiagnosisRequest {
    @NotBlank
    private String disease;

    @NotBlank
    private String skinType;

    @NotBlank
    @Min(value = 0)
    @Max(value = 200)
    private Integer age;

    @NotBlank
    @Min(value = 0)
    private Integer diameter;

    @NotBlank
    @Min(value = 0)
    private Integer diseaseDurationDay;

    @NotBlank
    private String location;

    private Set<String> subjectiveFeelings;

    @NotBlank
    private Boolean gender;

    @NotBlank
    private Boolean familyHistory;

    @NotBlank
    private Boolean ulceration;

    @NotBlank
    private Boolean increase;

    @NotBlank
    private Boolean sunburn;

    @NotBlank
    private Boolean prolongedSunExposure;
}
