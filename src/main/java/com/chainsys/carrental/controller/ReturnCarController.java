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


	public static final String ADDRETURNCAR = "add-returncar-form";
	public static final String LISTOFRETURNCAR = "redirect:/returncar/returncarlist";
	public static final String UPDATERETURNCAR = "update-returncar-form";
	
	
	@GetMapping("/returncarlist")
	public String getReturnCar(Model model) {
		List<ReturnCar> allCret = returnCarService.getReturnCars();
		model.addAttribute("allreturncars", allCret);
		return "list-returncars";
	}

	@GetMapping("/addreturncarform")
	public String showAddReturnCarForm(Model model) {
		List<Car> allCarRegistration=carRegistrationService.allCarRegistration();
		model.addAttribute("allCars", allCarRegistration);
		ReturnCar theCret = new ReturnCar();
		model.addAttribute("addreturncar", theCret);
		return ADDRETURNCAR;
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewReturnCar(@Valid@ModelAttribute("addreturncar") ReturnCar theCret,Errors errors)  {
		if(errors.hasErrors()) {
			return ADDRETURNCAR;
		}
		returnCarService.save(theCret);
		return LISTOFRETURNCAR;
	}
	@GetMapping("/updatereturncaridform")
	public String showUpdateForm()
	{
	    return "update-returncarid-form";
	}
	@GetMapping("/updatereturncarform")
	public String showUpdateReturnCarForm(String carregno, int cusid,
			Model model) {
		CarRentalCompositekey carRentalCompositekey = new CarRentalCompositekey(carregno, cusid);
		Optional<ReturnCar> theCren = returnCarService.findById(carRentalCompositekey);
		model.addAttribute("updatereturncar", theCren);
		return UPDATERETURNCAR;
	}

	@PostMapping("/updatereturncar")
	public String updateReturncars(@Valid@ModelAttribute("updatereturncar") ReturnCar theCret,Errors errors)  {
		if(errors.hasErrors()) {
			return UPDATERETURNCAR;
		}
		returnCarService.save(theCret);
		return LISTOFRETURNCAR;
	}
	@GetMapping("/deletereturncaridform")
	public String showDeleteForm()
	{
	    return "delete-returncarid-form";
	}
	@GetMapping("/deletereturncar")
	public String deleteReturnCar(String carregno,int cusid) {
		CarRentalCompositekey carRentalCompositekey = new CarRentalCompositekey(carregno, cusid);
		returnCarService.deleteById(carRentalCompositekey);
		return LISTOFRETURNCAR;
	}
	@GetMapping("/findreturncaridform")
	public String showFindForm()
	{
	    return "find-returncarid-form";
	}
	@GetMapping("/findreturncarbyid")
	public String findReturnCarById(String carregno,int cusid,Model model) {
		CarRentalCompositekey carRentalCompositekey = new CarRentalCompositekey(carregno, cusid);
		Optional<ReturnCar> theCret = returnCarService.findById(carRentalCompositekey);
		model.addAttribute("findreturncarbyid", theCret);
		return "find-returncar-by-id-form";
	}
}
