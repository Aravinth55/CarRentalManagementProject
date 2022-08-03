package com.chainsys.carrental.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.ReturnCar;

@Repository
public interface ReturnCarRepository extends CrudRepository<ReturnCar, String> {
	Optional<ReturnCar> findById(String id);

	ReturnCar save(ReturnCar car);

	void deleteById(String Car_Id);

	List<ReturnCar> findAll();

//	List<ReturnCar> getReturnCars();
	 List<ReturnCar> findByCustomerId(int id);
}
