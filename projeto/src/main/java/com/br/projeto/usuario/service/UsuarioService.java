package com.br.projeto.usuario.service;

import com.br.projeto.usuario.models.UsuarioEntity;
import com.br.projeto.usuario.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {
    @Autowired
    private UsuarioRepository userRepository;

    public UsuarioEntity buscarPorCpf(String cpf){
        return userRepository.findByCpf(cpf);
    }
}
