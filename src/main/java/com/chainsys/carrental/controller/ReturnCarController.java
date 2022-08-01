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
import com.chainsys.carrental.service.ReturnCarService;

@Controller
@RequestMapping("/returncar")
public class ReturnCarController {

	@Autowired
	ReturnCarService returncarservice;

	@GetMapping("/list")
	public String getReturnCar(Model model) {
		List<ReturnCar> allCret = returncarservice.getReturnCars();
		model.addAttribute("allreturncars", allCret);
		return "list-returncars";
	}
	@GetMapping("/addreturncarform")
	public String showAddReturnCarForm(Model model) {
		ReturnCar theCret = new ReturnCar();
		model.addAttribute("addreturncar", theCret);
		return "add-returncar-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewReturnCar(@ModelAttribute("addreturncar") ReturnCar theCret) {
		returncarservice.save(theCret);
		return "redirect:/returncar/list";
	}
	@GetMapping("/updatereturncarform")
	public String showUpdateReturnCarForm(@RequestParam("carregno") String id, Model model) {
		Optional<ReturnCar> theCren = returncarservice.findById(id);
		model.addAttribute("updatecarrental", theCren);
		return "update-returncar-form";
	}
	@PostMapping("/updatecarren")
	public String Updatereturncars(@ModelAttribute("updatecarrental") ReturnCar theCret) {
		returncarservice.save(theCret);
		return "redirect:/returncar/list";
	}
	@GetMapping("/deletecarren")
	public String deleteReturnCar(@RequestParam("carregno") String id) {
		Optional<ReturnCar> theCret= returncarservice.findById(id);
		returncarservice.deleteById(id);
		return "redirect:/returncar/list";
	}
	@GetMapping("/findreturncarbyid")
	public String findReturnCarById(@RequestParam("carregno") String id, Model model) {
		Optional<ReturnCar> theCret = returncarservice.findById(id);
		model.addAttribute("findreturncarbyid", theCret);
		return "find-returncar-by-id-form";
	}
}
