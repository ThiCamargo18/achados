package com.br.projeto.login.service;


import com.br.projeto.login.models.UsuarioEntity;
import com.br.projeto.login.models.UsuarioEntrada;

public interface UsuarioAutenticacaoService {
    UsuarioEntity findByLogin(String login);

    UsuarioEntity save(UsuarioEntrada usuarioEntrada);
}
