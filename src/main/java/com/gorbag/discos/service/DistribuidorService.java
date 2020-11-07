package com.gorbag.discos.service;

import com.gorbag.discos.domain.Distribuidor;
import com.gorbag.discos.repository.DistribuidorRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class DistribuidorService {
    
    private final DistribuidorRepository distribuidorRepository;

    public DistribuidorService(DistribuidorRepository distribuidorRepository) {
        this.distribuidorRepository = distribuidorRepository;
    }
    
    public List<Distribuidor> buscarTodos() {
        return distribuidorRepository.findAll();
    }
}
