package org.example.com.webapi.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.Map;

@Controller
@RequestMapping("/analysis")
public class AnalysisController {
    static final String neuralNetworkUrl = "http://roboderm-neural-network:5000/analyze";
    @PostMapping("/checked") // назвал, надо будет поменять
    public ModelAndView givePhotoAfterCheck(@RequestParam("myfile1") MultipartFile file){
        ModelAndView modelAndView = new ModelAndView("work"); // Имя JSP файла
        if (!file.isEmpty()) {
            try {
                String base64Encoded = Base64.getEncoder().encodeToString(file.getBytes());
                String imgData = "data:image/jpeg;base64," + base64Encoded;
                modelAndView.addObject("imageSrc", imgData);

                // Создаем объект RestTemplate для выполнения POST-запроса
                RestTemplate restTemplate = new RestTemplate();
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.MULTIPART_FORM_DATA);

                MultiValueMap<String, Object> body = new LinkedMultiValueMap<>();
                Resource fileResource = new ByteArrayResource(file.getBytes()) {
                    @Override
                    public String getFilename() {
                        return file.getOriginalFilename();
                    }
                };
                body.add("image", fileResource);

                HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(body, headers);

                ResponseEntity<String> response = restTemplate.postForEntity(neuralNetworkUrl, requestEntity, String.class);

                // Обработка JSON-ответа
                ObjectMapper objectMapper = new ObjectMapper();
                Map<String, Object> responseMap = objectMapper.readValue(response.getBody(), Map.class);

                // Добавление данных в модель
                modelAndView.addObject("res1", responseMap.get("res1"));
                modelAndView.addObject("res2", responseMap.get("res2"));
                modelAndView.addObject("res3", responseMap.get("res3"));

            } catch (IOException e) {
                e.printStackTrace();
                return new ModelAndView("error500"); // Возврат страницы ошибки, надо сделать эту страниицу
            }
        } else {
            modelAndView.addObject("message", "Файл пустой");
        }
        return modelAndView;
    }

    @RequestMapping("/tocheck") // назвал, надо будет поменять
    public String askPhotoToChek(){
        return "work2";
    }
}
