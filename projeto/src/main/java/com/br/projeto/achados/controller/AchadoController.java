package com.br.projeto.achados.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/achado")
public class AchadoController {
    @GetMapping
    public String achados(){
        return "cadastroAchado";
    }
}
