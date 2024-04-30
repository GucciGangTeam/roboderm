package org.example.com.webapi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/diagnoses")
public class DiagnosesController {
    @RequestMapping("/downloaded") // назвал, надо будет поменять
    public String givePhotoAfterCheck(@ModelAttribute("fileName") String fileName){
        return "help";
    }

    @RequestMapping("/todownload") // назвал, надо будет поменять
    public String askPhotoToChek(){
        return "help2";
    }
}

