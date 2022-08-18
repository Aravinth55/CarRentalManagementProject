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

import com.chainsys.carrental.compositekey.CarRentalCompositekey;
import com.chainsys.carrental.model.Car;
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

	
	public static final String ADDCARRENTAL =  "add-carrental-form";
	public static final String LISTOFCARRENTAL = "redirect:/carrental/carrentallist";
	public static final String UPDATECARRENTAL = "update-carrental-form";

	
	@GetMapping("/carrentallist")
	public String getCarRentals(Model model) {
		
		List<CarRental> allCren = carRentalService.getCarRentals();
		model.addAttribute("allcarrentals", allCren);
		return "list-carrentals";
	}
	@GetMapping("/addcarrentalform")
	public String showAddCarRentalForm(Model model) {
		List<Car> allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allCars", allCarRegistration);
		CarRental theCren = new CarRental();
		model.addAttribute("addcarrental", theCren);
		return ADDCARRENTAL;
	}

	@PostMapping("/add")
	public String addNewCarRental(@Valid@ModelAttribute("addcarrental") CarRental theCren,Errors errors) {
		if(errors.hasErrors()) {
			return ADDCARRENTAL;
		}
		carRentalService.save(theCren);
		
		return LISTOFCARRENTAL;
		
	}
	@GetMapping("/updatecarrentalidform")
	public String showUpdateForm()
	{
	    return "update-carrentalid-form";
	}
	@GetMapping("/updatecarrentalform")
	public String showUpdateCarRentalForm( String carregno,int cusid, Model model) {
		CarRentalCompositekey carRentalCompositekey= new CarRentalCompositekey(carregno,cusid);
		Optional<CarRental> theCren = carRentalService.findById(carRentalCompositekey);
		model.addAttribute("updatecarrental", theCren);
		return UPDATECARRENTAL;
	}
	@PostMapping("/updatecarrental")
	public String updateCarRentals(@Valid@ModelAttribute("updatecarrental") CarRental theCren,Errors errors)  {
		if(errors.hasErrors()) {
			return UPDATECARRENTAL;
		}
		carRentalService.save(theCren);
		return LISTOFCARRENTAL;
	}
	@GetMapping("/deletecarrentalidform")
	public String showDeleteForm()
	{
	    return "delete-carrentalid-form";
	}
	@GetMapping("/deletecarrental")
	public String deleteCarRental(String carregno, int cusid) {
		CarRentalCompositekey carRentalCompositekey= new CarRentalCompositekey(carregno,cusid);
		carRentalService.deleteById(carRentalCompositekey);
		return LISTOFCARRENTAL;
	}
	@GetMapping("/findcarrentalidform")
	public String showFindForm()
	{
	    return "find-carrentalid-form";
	}
	@GetMapping("/findcarrentalbyid")
	public String findCarRentalById(String carregno,int cusid, Model model) {
		CarRentalCompositekey carRentalCompositekey= new CarRentalCompositekey(carregno,cusid);
		Optional<CarRental> theCren = carRentalService.findById(carRentalCompositekey);
		model.addAttribute("findcarrentalbyid", theCren);
		return "find-carrental-by-id-form";
	}

}