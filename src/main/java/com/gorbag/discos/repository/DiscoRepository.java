package com.gorbag.discos.repository;

import com.gorbag.discos.domain.Disco;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface DiscoRepository  extends JpaRepository<Disco, Integer> {
    
    @Query ("from Disco v order by v.nombre")
    List<Disco> BuscarTodos();
    
    @Query ("from Disco v where v.distribuidor.id = ?1 order by v.nombre")
    List<Disco> buscarPorDistribuidor(int distribuidorId);
    
    List<Disco> findByNombreContaining (String consulta);
}
