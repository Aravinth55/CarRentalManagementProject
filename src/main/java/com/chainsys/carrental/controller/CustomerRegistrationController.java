package com.chainsys.carrental.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.carrental.model.CarRegistration;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.model.CustomerRentalsDTO;
import com.chainsys.carrental.service.CustomerRegistrationService;

@Controller
@RequestMapping("/customer")
public class CustomerRegistrationController {
@Autowired
CustomerRegistrationService customerRegistrationService;

@GetMapping("/customerlist")
public String getCustomerRegistrations(Model model) {
	List<CustomerRegistration> allCustomers = customerRegistrationService.getCustomers();
	model.addAttribute("allcustomers",allCustomers);
	return "list-customers";
}
@GetMapping("/addcustomerform")
public String showAddCustomerForm(Model model) {
	CustomerRegistration theCus = new CustomerRegistration();
	model.addAttribute("addcustomer", theCus);
	return "add-customer-form";
}

@PostMapping("/add")
// We need give from where to read data from the HTTP request and also the
// content type ("application/json")
public String addNewCustomer(@ModelAttribute("addcustomer") CustomerRegistration theCus) {
	customerRegistrationService.save(theCus);
	return "redirect:/customer/customerlist";
}
@GetMapping("/updatecustomerform")
public String showUpdateCustomerForm(@RequestParam("cusid") int id, Model model) {
	CustomerRegistration theCus = customerRegistrationService.findById(id);
	model.addAttribute("updatecustomer", theCus);
	return "update-customer-form";
}
@PostMapping("/updatecus")
public String Updatecustomers(@ModelAttribute("updatecustomer") CustomerRegistration theCus) {
	customerRegistrationService.save(theCus);
	return "redirect:/customer/customerlist";
}
@GetMapping("/deletecustomer")
public String deleteCustomer(@RequestParam("cusid") int id) {
	CustomerRegistration theCus = customerRegistrationService.findById(id);
	customerRegistrationService.deleteById(id);
	return "redirect:/customer/customerlist";
}
@GetMapping("/findcustomerbyid")
public String findCustomerById(@RequestParam("cusid") int id, Model model) {
	CustomerRegistration theCus = customerRegistrationService.findById(id);
	model.addAttribute("findcustomerbyid", theCus);
	return "find-customer-by-id-form";
}
@GetMapping("/getcustomerrentals")
public String getCustomerCarRentals(@RequestParam("cusid") int id,Model model) {
	CustomerRentalsDTO crdto =customerRegistrationService.getCustomerAndRentals(id);
	model.addAttribute("getcus",crdto.getCustomerregistration());
	model.addAttribute("rentallist",crdto.getRentallist());
return "list-customer-carrental";
}
}
