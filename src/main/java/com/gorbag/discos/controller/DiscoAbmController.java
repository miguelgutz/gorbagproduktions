package com.gorbag.discos.controller;

import com.gorbag.discos.domain.Disco;
import com.gorbag.discos.service.DiscoService;
import com.gorbag.discos.service.DistribuidorService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiscoAbmController {
    
    private final DistribuidorService distribuidorService;
    private final DiscoService discoService;

    public DiscoAbmController(DistribuidorService distribuidorService, DiscoService discoService) {
        this.distribuidorService = distribuidorService;
        this.discoService = discoService;
    }

    @RequestMapping("/discos/crear")
    public String mostrarFormAlta(Model model) {
        model.addAttribute("distribuidores", distribuidorService.buscarTodos());
        model.addAttribute("disco", new Disco());
        return "formDisco";
    }
    
    @PostMapping("/discos/guardar")
    public String guardar (Disco disco) {
        discoService.guardar(disco);
        return "redirect:/";
    }
    
}
