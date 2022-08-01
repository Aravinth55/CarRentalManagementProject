package com.chainsys.carrental.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.model.CarRegistration;

@Repository
public interface CarRegistrationRepository extends CrudRepository<CarRegistration, String> {
	Optional<CarRegistration> findById(String id);

	CarRegistration save(CarRegistration car);

	void deleteById(String Car_Id);

	List<CarRegistration> findAll();

//	List<CarRegistration> getCarRegistrations();
}
