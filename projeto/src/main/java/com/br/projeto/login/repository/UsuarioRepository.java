package com.br.projeto.login.repository;

import com.br.projeto.login.models.UsuarioEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<UsuarioEntity, Long> {
    UsuarioEntity findByUsuario(String id);
}
