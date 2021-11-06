package com.br.projeto.usuario.service;

import com.br.projeto.usuario.models.UsuarioEntity;
import com.br.projeto.usuario.models.UsuarioEntrada;
import com.br.projeto.usuario.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;


@Service
public class UsuarioAutenticacaoServiceImpl implements UsuarioAutenticacaoService {
    @Autowired
    private UsuarioRepository usuarioRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public UsuarioEntity findByLogin(String id) {
        return usuarioRepository.findByCpf(id);
    }

    @Override
    public UsuarioEntity save(UsuarioEntrada usuarioEntrada) {
        UsuarioEntity usuarioEntity = new UsuarioEntity();

        usuarioEntity.setNome(usuarioEntrada.getNome());
        usuarioEntity.setEmail(usuarioEntrada.getEmail());
        usuarioEntity.setUsuario(usuarioEntrada.getUsuario());
        usuarioEntity.setSenha(passwordEncoder.encode(usuarioEntrada.getSenha()));
        usuarioEntity.setTelefone(usuarioEntrada.getTelefone());
        usuarioEntity.setCelular(usuarioEntrada.getCelular());
        usuarioEntity.setCpf(usuarioEntrada.getCpf());
        usuarioEntity.setRua(usuarioEntrada.getRua());
        usuarioEntity.setBairro(usuarioEntrada.getBairro());
        usuarioEntity.setCidade(usuarioEntrada.getCidade());
        usuarioEntity.setEstado(usuarioEntrada.getEstado());
        usuarioEntity.setCep(usuarioEntrada.getCep());
        usuarioEntity.setRoles(new HashSet<>(usuarioEntrada.getRoles()));

        UsuarioEntity save = usuarioRepository.save(usuarioEntity);

        return save;
    }
}
