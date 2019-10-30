package com.boncoinBis.demo;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ControllerBoncoinBis {

	@Resource 
	ServiceBoncoinBis boncoinBisService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("viewBoncoinBis", "annonce", new Annonce());
    }
 
    @RequestMapping(value = "/addAnnonce", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("annonce")Annonce annonce, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        model.addAttribute("title", annonce.getTitle());
        model.addAttribute("prix", annonce.getPrix());
        model.addAttribute("id", annonce.getId());
        return "annonce";
    }
}
