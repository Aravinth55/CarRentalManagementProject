package com.chainsys.carrental.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.carrental.model.CarRegistration;
import com.chainsys.carrental.model.CustomerRegistration;
import com.chainsys.carrental.repository.CarRegistrationRepository;
import com.chainsys.carrental.repository.CustomerRegistrationRepository;

@Service
public class CarRegistrationService {
	@Autowired
	private CarRegistrationRepository carRegistrationRepository;

	public List<CarRegistration> getCars() {
		List<CarRegistration> listCarRegistration = carRegistrationRepository.findAll();
		return listCarRegistration;
	}

	public CarRegistration save(CarRegistration cr) {

		return carRegistrationRepository.save(cr);
	}

	public Optional<CarRegistration>  findById(String id) {
		return carRegistrationRepository.findById(id);
	}

//	@Transactional
	public void deleteById(String id) {
		carRegistrationRepository.deleteById(id);
	}
}
