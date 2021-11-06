package com.br.projeto.usuario.service;


import com.br.projeto.usuario.models.UsuarioEntity;
import com.br.projeto.usuario.models.UsuarioEntrada;

public interface UsuarioAutenticacaoService {
    UsuarioEntity findByLogin(String login);

    UsuarioEntity save(UsuarioEntrada usuarioEntrada);
}
