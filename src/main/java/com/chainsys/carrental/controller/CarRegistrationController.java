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
import com.chainsys.carrental.model.CompanyAdmin;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.service.CarRegistrationService;
@Controller
@RequestMapping("/car")
public class CarRegistrationController {

	@Autowired
private	CarRegistrationService carRegistrationService;

	@GetMapping("/carlist")
	public String getCarRegistrations(Model model) {
		List<CarRegistration> allCars = carRegistrationService.getCars();
		model.addAttribute("allcars", allCars);
		return "list-cars";
	}

	@GetMapping("/addcarform")
	public String showAddCarForm(Model model) {
		List<CarRegistration>allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allcars", allCarRegistration);
		CarRegistration theCar = new CarRegistration();
		model.addAttribute("addcar", theCar);
		return "add-car-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewCar(@ModelAttribute("addcar") CarRegistration theCar) {
		carRegistrationService.save(theCar);
		return "redirect:/car/carlist";
	}

	@GetMapping("/updatecarform")
	public String showUpdateCarForm(@RequestParam("carregno") String id, Model model) {
		Optional<CarRegistration> theCar = carRegistrationService.findById(id);
		model.addAttribute("updatecar", theCar);
		return "update-car-form";
	}

	@PostMapping("/updatecar")
	public String Updatecars(@ModelAttribute("updatecar") CarRegistration theCar) {
		carRegistrationService.save(theCar);
		return "redirect:/car/carlist";
	}

	@GetMapping("/deletecar")
	public String deleteCustomer(@RequestParam("carregno") String id) {
		Optional<CarRegistration> theCar = carRegistrationService.findById(id);
		carRegistrationService.deleteById(id);
		return "redirect:/car/carlist";
	}

	@GetMapping("/findcarbyid")
	public String findCarById(@RequestParam("carregno") String id, Model model) {
		Optional<CarRegistration> theCar = carRegistrationService.findById(id);
		model.addAttribute("findcarbyid", theCar);
		return "find-car-by-id-form";
	}

}