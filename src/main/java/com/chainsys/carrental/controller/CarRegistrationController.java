package com.chainsys.carrental.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.carrental.model.Car;
import com.chainsys.carrental.service.CarRegistrationService;
@Controller
@RequestMapping("/car")
public class CarRegistrationController {

	@Autowired
private	CarRegistrationService carRegistrationService;

	    public static final String ADDCAR = "add-car-form";
	    public static final String LISTOFCAR = "redirect:/car/carlist";
	    public static final String UPDATECAR = "update-car-form";

	@GetMapping("/carlist")
	public String getCarRegistrations(Model model) {
		List<Car> allCars = carRegistrationService.getCars();
		model.addAttribute("allcars", allCars);
		return "list-cars";
	}

	@GetMapping("/addcarform")
	public String showAddCarForm(Model model) {
		List<Car>allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allcars", allCarRegistration);
		Car theCar = new Car();
		model.addAttribute("addcar", theCar);
		return ADDCAR;
	}

	@PostMapping("/add")
	public String addNewCar(@Valid@ModelAttribute("addcar") Car theCar,Errors errors) {
		if(errors.hasErrors()) {
			return ADDCAR;
		}
		carRegistrationService.save(theCar);
		return LISTOFCAR;
	}
	@GetMapping("/updatecaridform")
	public String showUpdateForm()
	{
	    return "update-carid-form";
	}
	@GetMapping("/updatecarform")
	public String showUpdateCarForm(String carregno, Model model) {
		Optional<Car> theCar = carRegistrationService.findById(carregno);
		model.addAttribute("updatecar", theCar);
		return UPDATECAR;
	}

	@PostMapping("/updatecars")
	public String updatecars(@Valid@ModelAttribute("updatecar") Car theCar,Errors errors) {
		if(errors.hasErrors()) {
			return UPDATECAR;
		}
		carRegistrationService.save(theCar);
		return LISTOFCAR;
	}
	@GetMapping("/deletecaridform")
	public String showDeleteForm()
	{
	    return "delete-carid-form";
	}

	@GetMapping("/deletecar")
	public String deleteCustomer( String carregno) {
		carRegistrationService.deleteById(carregno);
		return LISTOFCAR;
	}
	@GetMapping("/findcaridform")
	public String showFindCarForm()
	{
	    return "findby-carid-form";
	}

	@GetMapping("/findcarbyid")
	public String findCarById( String carregno, Model model) {
		Optional<Car> theCar = carRegistrationService.findById(carregno);
		model.addAttribute("findcarbyid", theCar);
		return "find-car-by-id-form";
	}

}