package com.gorbag.discos.service;

import com.gorbag.discos.domain.Disco;
import com.gorbag.discos.repository.DiscoRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class DiscoService {
    
    private final DiscoRepository discoRepository;

    public DiscoService(DiscoRepository discoRepository) {
        this.discoRepository = discoRepository;
    }

    
    public List<Disco> buscarDestacados() {
        return discoRepository.BuscarTodos();
    }
    
    public List<Disco> buscarPorDistribuidor(int distribuidorId){
        return discoRepository.buscarPorDistribuidor(distribuidorId);
    }
    
    public List<Disco> buscar(String consulta) {
        return discoRepository.findByNombreContaining(consulta);
    }
    
    public Disco guardar (Disco disco) {
        return discoRepository.save(disco);
    }
}
