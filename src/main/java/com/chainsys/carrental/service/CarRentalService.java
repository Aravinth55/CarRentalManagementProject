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
	private CarRentalRepository carRentalRepository;

	public List<CarRental> getCarRentals() {
		List<CarRental> listCarRental = carRentalRepository.findAll();
		return listCarRental;
	}

	public CarRental save(CarRental cr) {

		return carRentalRepository.save(cr);
	}

	public Optional<CarRental> findById(String id) {
		return carRentalRepository.findById(id);
	}

//	@Transactional
	public void deleteById(String id) {
		carRentalRepository.deleteById(id);
	}
}
