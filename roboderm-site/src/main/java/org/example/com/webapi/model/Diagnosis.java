package org.example.com.webapi.model;


import jakarta.persistence.*;
import lombok.*;

import java.util.Set;

@Entity
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Diagnosis {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String disease;

    private String skinType;

    private Integer age;

    private Integer diameter;

    private Integer diseaseDurationDay;

    private String location;

    @ElementCollection
    @CollectionTable(name="subjective_feeling", joinColumns = @JoinColumn(name = "diagnosis_id"))
    private Set<String> subjectiveFeelings;

    private Boolean gender;

    private Boolean familyHistory;

    private Boolean ulceration;

    private Boolean increase;

    private Boolean sunburn;

    private Boolean prolongedSunExposure;
}
