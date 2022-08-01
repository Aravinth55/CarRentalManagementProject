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
	private CarRegistrationRepository carrepo;

	public List<CarRegistration> getCars() {
		List<CarRegistration> listCar = carrepo.findAll();
		return listCar;
	}

	public CarRegistration save(CarRegistration cr) {

		return carrepo.save(cr);
	}

	public Optional<CarRegistration>  findById(String id) {
		return carrepo.findById(id);
	}

//	@Transactional
	public void deleteById(String id) {
		carrepo.deleteById(id);
	}
}
