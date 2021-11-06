package com.br.projeto.achados.service;

import com.br.projeto.achados.models.AchadoEntity;
import com.br.projeto.achados.repository.AchadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AchadoService {
    @Autowired
    private AchadoRepository achadoRepository;

    public void salvar(AchadoEntity achadoEntity) {
        achadoRepository.save(achadoEntity);
    }

    public AchadoEntity buscar(Long id) throws Exception {
        Optional<AchadoEntity> optionalAchadoEntity = achadoRepository.findById(id);

        if (optionalAchadoEntity.isPresent())
            return optionalAchadoEntity.get();

        else
            throw new Exception("Usuario Nao encotrado");
    }
}
