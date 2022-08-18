package com.chainsys.carrental.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.compositekey.CarRentalCompositekey;
import com.chainsys.carrental.model.ReturnCar;

@Repository
public interface ReturnCarRepository extends CrudRepository<ReturnCar, CarRentalCompositekey> {
	Optional<ReturnCar> findById(CarRentalCompositekey id);

	ReturnCar save(ReturnCar car);

	void deleteById(CarRentalCompositekey carId);

	List<ReturnCar> findAll();

	 List<ReturnCar> findByCustomerId(int id);
}
