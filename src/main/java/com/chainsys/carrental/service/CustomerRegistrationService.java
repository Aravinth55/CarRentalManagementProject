package com.chainsys.carrental.service;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.model.CustomerRentalsDTO;
import com.chainsys.carrental.model.CustomerReturnCarsDTO;
import com.chainsys.carrental.model.ReturnCar;
import com.chainsys.carrental.repository.CarRentalRepository;
import com.chainsys.carrental.repository.CustomerRegistrationRepository;
import com.chainsys.carrental.repository.ReturnCarRepository;

@Service
public class CustomerRegistrationService {
	@Autowired
	private CustomerRegistrationRepository  customerRegistrationRepository;

	@Autowired
	private CarRentalRepository carRentalRepository;
	
	@Autowired
	private ReturnCarRepository returnCarRepository;

	public List<CustomerRegistration> getCustomers() {
		List<CustomerRegistration> listCustomer = customerRegistrationRepository.findAll();
		return listCustomer;
	}

	// @Transactional
	public CustomerRegistration save(CustomerRegistration cr) {

		return customerRegistrationRepository.save(cr);
	}

	public CustomerRegistration findById(int id) {
		return customerRegistrationRepository.findById(id);
	}

	// @Transactional
	public void deleteById(int id) {
		customerRegistrationRepository.deleteById(id);
	}

//	public CustomerRentalsDTO getCustomerAndRentals(int id)
//    {
//        CustomerRegistration cus=findById(id);
//        CustomerRentalsDTO crdto=new CustomerRentalsDTO();
//        crdto.setCustomerregistration(cus);
//         List<CarRental> carrentals= crerepo.findById(id);
////        for(int i=0;i<=5;i++) 
////        {
////            Appointment app=new Appointment();
////            app.setApp_id(i);
////            Date dt=new Date(22,7,25);
////            app.setApp_date(dt); 
////            app.setId(id);
////            app.setPatient_name("Anbuselvan");
////            app.setFees_collected(i*500);
////            app.setFees_nature("Low");
////            dto.addAppointment(app);
////            
////        }
//        Iterator<CarRental> itr=carrentals.iterator();
//        while(itr.hasNext()) {
//        	crdto.addCarRental(null);
//        }
//        return crdto;
//    }
//	@Transactional
//public void addCustomerAndCarRentals(CustomerRentalsDTO crdto) {
//	CustomerRegistration cr=crdto.getCustomerregistration();
//	save(cr);
//	List<CarRental> carrentalList=crdto.getRentallist();
//	int count=carrentalList.size();
//	for(int i=0; i<count; i++) {
//		crrepo.save(carrentalList.get(i));
//	}
//}
	@Transactional
	public CustomerRentalsDTO getCustomerAndRentals(int id) {

		CustomerRegistration cus = findById(id);
		CustomerRentalsDTO crdto = new CustomerRentalsDTO();
		crdto.setCustomerregistration(cus);
	List<CarRental> carRentals = carRentalRepository.findByCustomerId(id);
		  Iterator<CarRental> itr=carRentals.iterator();
        while(itr.hasNext()) {
        	crdto.addCarRental((CarRental) itr.next());
        }
		return crdto;
	}
	@Transactional
	public CustomerReturnCarsDTO getCustomerAndReturnCars(int id) {

		CustomerRegistration cus = findById(id);
		CustomerReturnCarsDTO carReturndto = new CustomerReturnCarsDTO();
		carReturndto.setCustomerRegistration(cus);
	List<ReturnCar> returnCar = returnCarRepository.findByCustomerId(id);
		  Iterator<ReturnCar> itr=returnCar.iterator();
        while(itr.hasNext()) {
        	carReturndto.addReturnCar((ReturnCar) itr.next());
        }
		return carReturndto;
	}
}
