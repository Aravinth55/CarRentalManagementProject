package com.chainsys.carrental.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.carrental.model.CarRegistration;
import com.chainsys.carrental.model.ReturnCar;
import com.chainsys.carrental.service.CarRegistrationService;
import com.chainsys.carrental.service.ReturnCarService;

@Controller
@RequestMapping("/returncar")
public class ReturnCarController {

	@Autowired
	ReturnCarService returnCarService;
	
	@Autowired
	private CarRegistrationService carRegistrationService;


	@GetMapping("/returncarlist")
	public String getReturnCar(Model model) {
		List<ReturnCar> allCret = returnCarService.getReturnCars();
		model.addAttribute("allreturncars", allCret);
		return "list-returncars";
	}
	@GetMapping("/addreturncarform")
	public String showAddReturnCarForm(Model model) {
		List<CarRegistration>allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allcars", allCarRegistration);
		ReturnCar theCret = new ReturnCar();
		model.addAttribute("addreturncar", theCret);
		return "add-returncar-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewReturnCar(@ModelAttribute("addreturncar") ReturnCar theCret) {
		returnCarService.save(theCret);
		return "redirect:/returncar/returncarlist";
	}
	@GetMapping("/updatereturncarform")
	public String showUpdateReturnCarForm(@RequestParam("carregno") String id, Model model) {
		Optional<ReturnCar> theCren = returnCarService.findById(id);
		model.addAttribute("updatecarrental", theCren);
		return "update-returncar-form";
	}
	@PostMapping("/updatecarrental")
	public String Updatereturncars(@ModelAttribute("updatecarrental") ReturnCar theCret) {
		returnCarService.save(theCret);
		return "redirect:/returncar/returncarlist";
	}
	@GetMapping("/deletecarrental")
	public String deleteReturnCar(@RequestParam("carregno") String id) {
		Optional<ReturnCar> theCret= returnCarService.findById(id);
		returnCarService.deleteById(id);
		return "redirect:/returncar/returncarlist";
	}
	@GetMapping("/findreturncarbyid")
	public String findReturnCarById(@RequestParam("carregno") String id, Model model) {
		Optional<ReturnCar> theCret = returnCarService.findById(id);
		model.addAttribute("findreturncarbyid", theCret);
		return "find-returncar-by-id-form";
	}
}
