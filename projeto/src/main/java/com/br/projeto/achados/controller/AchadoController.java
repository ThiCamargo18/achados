package com.br.projeto.achados.controller;

import com.br.projeto.achados.models.AchadoEntity;
import com.br.projeto.achados.models.AchadoEntrada;
import com.br.projeto.achados.service.AchadoService;
import com.br.projeto.login.models.UsuarioEntrada;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping
public class AchadoController {
    @Autowired
    private AchadoService achadoService;

    @GetMapping("/cadastroAchado")
    public String cadastroAchado(){
        return "cadastroAchado";
    }

    @PostMapping("/cadastroAchado")
    public String cadastrar(@ModelAttribute("usuarioEntrada") AchadoEntity achadoEntity, HttpServletRequest request){
        achadoService.salvar(achadoEntity);

        return "redirect:/";
    }
}
