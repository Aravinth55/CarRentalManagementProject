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

import com.chainsys.carrental.compositekey.CarRentalCompositekey;
import com.chainsys.carrental.model.CarRegistration;
import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.service.CarRegistrationService;
import com.chainsys.carrental.service.CarRentalService;

@Controller
@RequestMapping("/carrental")
public class CarRentalController {

	@Autowired
	private CarRentalService carRentalService;
	@Autowired
	private CarRegistrationService carRegistrationService;

	@GetMapping("/carrentallist")
	public String getCarRentals(Model model) {
		List<CarRental> allCren = carRentalService.getCarRentals();
		model.addAttribute("allcarrentals", allCren);
		return "list-carrentals";
	}
	@GetMapping("/addcarrentalform")
	public String showAddCarRentalForm(Model model) {
		List<CarRegistration>allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allcars", allCarRegistration);
		CarRental theCren = new CarRental();
		model.addAttribute("addcarrental", theCren);
		return "add-carrental-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewCarRental(@ModelAttribute("addcarrental") CarRental theCren) {
		carRentalService.save(theCren);
		return "redirect:/carrental/carrentallist";
	}
	@GetMapping("/updatecarrentalform")
	public String showUpdateCarRentalForm(@RequestParam("carregno") String id,@RequestParam("cusid") int cusid, Model model) {
		CarRentalCompositekey carRentalCompositekey= new CarRentalCompositekey(id,cusid);
		Optional<CarRental> theCren = carRentalService.findById(carRentalCompositekey);
		model.addAttribute("updatecarrental", theCren);
		return "update-carrental-form";
	}
	@PostMapping("/updatecarrental")
	public String updateCarRentals(@ModelAttribute("updatecarrental") CarRental theCren) {
		carRentalService.save(theCren);
		return "redirect:/carrental/carrentallist";
	}
	@GetMapping("/deletecarrental")
	public String deleteCarRental(@RequestParam("carregno") String id,@RequestParam("cusid") int cusid) {
		CarRentalCompositekey carRentalCompositekey= new CarRentalCompositekey(id,cusid);
//		Optional<CarRental> theCren = carRentalService.findById(carRentalCompositekey);
		carRentalService.deleteById(carRentalCompositekey);
		return "redirect:/carrental/carrentallist";
	}
	@GetMapping("/findcarrentalbyid")
	public String findCarRentalById(@RequestParam("carregno") String id,@RequestParam("cusid") int cusid, Model model) {
		CarRentalCompositekey carRentalCompositekey= new CarRentalCompositekey(id,cusid);
		Optional<CarRental> theCren = carRentalService.findById(carRentalCompositekey);
		model.addAttribute("findcarrentalbyid", theCren);
		return "find-carrental-by-id-form";
	}

}