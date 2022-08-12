package com.chainsys.carrental.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.carrental.compositekey.ReturnCarCompositekey;
import com.chainsys.carrental.model.ReturnCar;
import com.chainsys.carrental.repository.ReturnCarRepository;

@Service
public class ReturnCarService {
	@Autowired
	private ReturnCarRepository returnCarRepository;

	public List<ReturnCar> getReturnCars() {
		return returnCarRepository.findAll();
	}

	public ReturnCar save(ReturnCar cr) {

		return returnCarRepository.save(cr);
	}

	public Optional<ReturnCar> findById(ReturnCarCompositekey id) {
		return returnCarRepository.findById(id);
	}

//	@Transactional
	public void deleteById(ReturnCarCompositekey id) {
		returnCarRepository.deleteById(id);
	}
}
