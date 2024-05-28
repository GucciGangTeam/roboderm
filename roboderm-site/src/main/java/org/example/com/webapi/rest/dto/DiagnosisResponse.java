package org.example.com.webapi.rest.dto;

import lombok.*;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class DiagnosisResponse {
    private Long id;

    private String disease;
}
