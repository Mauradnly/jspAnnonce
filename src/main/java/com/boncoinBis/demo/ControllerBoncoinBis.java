package com.boncoinBis.demo;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ControllerBoncoinBis {

	@Autowired
	ServiceBoncoinBis boncoinBisService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("formAnnonce", "annonce", new Annonce());
    }

 
	@RequestMapping("/viewAnnonce")
	public String homePage (Model m) {
		List<Annonce> annonces =  boncoinBisService.findAllAnnonce();
		m.addAttribute("annonces",annonces);
		//System.out.println(annonces.get(0).getTitle());
		return "affichageAnnonce";
	}
	
    @RequestMapping(value = "/addAnnonce", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("annonce")Annonce annonce, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "formAnnonce";
        }
        model.addAttribute("title", annonce.getTitle());
        model.addAttribute("id", annonce.getId());
        model.addAttribute("localisation", annonce.getLocalisation());
        model.addAttribute("prix", annonce.getPrix());
        model.addAttribute("desciption", annonce.getDesciption());
        boncoinBisService.save(annonce);
        return "affichageAnnonce";
    }
    
}