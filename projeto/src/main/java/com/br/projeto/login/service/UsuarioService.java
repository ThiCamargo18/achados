package com.br.projeto.login.service;

import com.br.projeto.login.models.UsuarioEntity;
import com.br.projeto.login.repository.UsuarioRepository;
import com.br.projeto.security.model.RoleEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
public class UsuarioService implements UserDetailsService {
    @Autowired
    private UsuarioRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) {

        UsuarioEntity user = userRepository.findByCpf(username);
        if (user == null) throw new UsernameNotFoundException(username);

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        for (RoleEntity role : user.getRoles()) {
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
        }

        return new org.springframework.security.core.userdetails.User(user.getCpf(), user.getSenha(), grantedAuthorities);

    }

    public UsuarioEntity buscarPorCpf(String cpf){
        return userRepository.findByCpf(cpf);
    }
}
