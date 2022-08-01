package com.chainsys.carrental.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.carrental.model.CarRegistration;
import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.repository.CarRegistrationRepository;
import com.chainsys.carrental.repository.CarRentalRepository;
import com.chainsys.carrental.repository.CustomerRegistrationRepository;

@Service
public class CarRentalService {
	@Autowired
	private CarRentalRepository crerepo;

	public List<CarRental> getCarRentals() {
		List<CarRental> listCre = crerepo.findAll();
		return listCre;
	}

	public CarRental save(CarRental cr) {

		return crerepo.save(cr);
	}

	public Optional<CarRental> findById(String id) {
		return crerepo.findById(id);
	}

//	@Transactional
	public void deleteById(String id) {
		crerepo.deleteById(id);
	}
}
