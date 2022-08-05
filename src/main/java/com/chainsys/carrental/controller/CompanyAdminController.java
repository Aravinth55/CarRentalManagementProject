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

import com.chainsys.carrental.model.CompanyAdmin;
import com.chainsys.carrental.service.CompanyAdminService;

@Controller
@RequestMapping("/companyadmin")
public class CompanyAdminController {

	@Autowired
	private CompanyAdminService companyAdminService;

	@GetMapping("/companyadminlist")
	public String getCompanyAdmins(Model model) {
		List<CompanyAdmin> allCmd = companyAdminService.getCompanyAdmins();
		model.addAttribute("allcompanyadmins", allCmd);
		return "list-companyadmins";
	}

	@GetMapping("/addadminform")
	public String showAddAdminForm(Model model) {
		CompanyAdmin theCmd = new CompanyAdmin();
		model.addAttribute("addcompanyadmin", theCmd);
		return "add-companyadmin-form";
	}

	@PostMapping("/add")
	// We need give from where to read data from the HTTP request and also the
	// content type ("application/json")
	public String addNewCompanyAdmin(@ModelAttribute("addcompanyadmin") CompanyAdmin theCmd) {
		companyAdminService.save(theCmd);
		return "redirect:/companyadmin/companyadminlist";
	}

	@GetMapping("/updateadminform")
	public String showUpdateAdminForm(@RequestParam("userid") int id, Model model) {
		CompanyAdmin theCren = companyAdminService.findById(id);
		model.addAttribute("updatecompanyadmin", theCren);
		return "update-companyadmin-form";
	}

	@PostMapping("/updatecomadmin")
	public String updateCompanyAdmin(@ModelAttribute("updatecompanyadmin") CompanyAdmin theCmd) {
		companyAdminService.save(theCmd);
		return "redirect:/companyadmin/companyadminlist";
	}

	@GetMapping("/deletecomadmin")
	public String deleteCompanyAdmin(@RequestParam("userid") int id) {
		CompanyAdmin theCmd = companyAdminService.findById(id);
		companyAdminService.deleteById(id);
		return "redirect:/companyadmin/companyadminlist";
	}

	@GetMapping("/findcomadminbyid")
	public String findCompanyAdminById(@RequestParam("userid") int id, Model model) {
		CompanyAdmin theCmd = companyAdminService.findById(id);
		model.addAttribute("findcomadminbyid", theCmd);
		return "find-companyadmin-by-id-form";
	}
	@GetMapping("/adminlogin")
	public String AdminLogin(Model model) {
CompanyAdmin  companyAdmin=new CompanyAdmin();
		model.addAttribute("login", companyAdmin);
		return "admin-login-form";
	}
	@PostMapping("/companyuserlogin")
	public String checkingAccess(@ModelAttribute("login") CompanyAdmin theCmd) {
		CompanyAdmin  companyAdmin=companyAdminService.getUserIdAndUserPassword(theCmd.getUserId(),theCmd.getUserPassword());
		if(companyAdmin!=null) {
			return "redirect:/home/admin";   
		}else
			return "Invalid-user-error";  
	}

}
