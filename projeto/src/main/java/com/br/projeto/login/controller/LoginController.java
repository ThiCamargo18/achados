package com.br.projeto.login.controller;

import com.br.projeto.login.models.RealizaLogin;
import com.br.projeto.login.models.UsuarioEntity;
import com.br.projeto.login.models.UsuarioEntrada;
import com.br.projeto.login.models.UsuarioSessao;
import com.br.projeto.login.service.UsuarioService;
import com.br.projeto.login.service.UsuarioAutenticacaoService;
import com.br.projeto.security.model.RoleEntity;
import com.br.projeto.security.service.SecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collections;

@Controller
public class LoginController {
    @Autowired
    private UsuarioAutenticacaoService usuarioAutenticacaoService;
    @Autowired
    private UsuarioService usuarioService;
    @Autowired
    private SecurityService securityService;

    @GetMapping("/login")
    public String login() {
        if (securityService.isAuthenticated()) {
            return "redirect:/";
        }

        return "login";
    }

    @GetMapping("/loginSenha")
    public ModelAndView loginSenha(@RequestParam("cpf") String cpf, Model model) {
        UsuarioEntity usuarioEntity = usuarioService.buscarPorCpf(cpf);

        if (usuarioEntity == null) {
            return new ModelAndView("login");
        }

        ModelAndView modelAndView = new ModelAndView("loginSenha");

        model.addAttribute("cpf", cpf);

        return modelAndView;
    }

    @PostMapping("/loginSenha")
    public String entrar(@ModelAttribute("realizaLogin") RealizaLogin realizaLogin, Model model){
        securityService.autoLogin(realizaLogin.getCpf(), realizaLogin.getSenha());

        if (securityService.isAuthenticated()) {
            return "redirect:/";
        }

        model.addAttribute("cpf", realizaLogin.getCpf());

        return "loginSenha";
    }

    @GetMapping("/inscrever")
    public String inscrever(Model model) {
        if (securityService.isAuthenticated()) {
            return "redirect:/";
        }

        model.addAttribute("usuarioEntrada", new UsuarioEntrada());

        return "inscrever";
    }

    @PostMapping("/inscrever")
    public ModelAndView registration(@ModelAttribute("usuarioEntrada") UsuarioEntrada usuarioEntrada, HttpServletRequest request) {
        usuarioEntrada.setRoles(Collections.singletonList(new RoleEntity("USUARIO")));

        UsuarioEntity save = usuarioAutenticacaoService.save(usuarioEntrada);

        securityService.autoLogin(usuarioEntrada.getUsuario(), usuarioEntrada.getSenha());

        UsuarioSessao usuarioSessao = new UsuarioSessao();
        usuarioSessao.setId(save.getId());
        usuarioSessao.setNome(save.getNome());

        HttpSession session = request.getSession();
        session.setAttribute("usuarioLogado", usuarioSessao);

        ModelAndView mv = new ModelAndView("index");
        mv.addObject("usuarioLogado", usuarioSessao);

        return mv;
    }
}
