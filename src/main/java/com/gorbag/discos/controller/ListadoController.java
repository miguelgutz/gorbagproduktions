package com.gorbag.discos.controller;

import com.gorbag.discos.domain.Disco;
import com.gorbag.discos.service.DiscoService;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ListadoController {
    
    private final DiscoService discoService;

    public ListadoController(DiscoService discoService) {
        this.discoService = discoService;
    }
    
    @RequestMapping("/")
    public String listarVidejuegos(Model model){
        List<Disco> destacados = discoService.buscarDestacados();
        model.addAttribute("discos", destacados);
        return "listado";
    }
    
    @RequestMapping("/discosPorDistribuidor")
    public String listarDiscosPorDistribuidor(int distribuidorId, Model model){
        List<Disco> discosfil = discoService.buscarPorDistribuidor(distribuidorId);
        model.addAttribute("discos", discosfil);
        return "listado";
    }
    
    @RequestMapping("/buscar")
    public String buscar(@RequestParam("q") String consulta, Model model){
        List<Disco> discos = discoService.buscar(consulta);
        model.addAttribute("discos", discos);
        return "listado";
    }
}
