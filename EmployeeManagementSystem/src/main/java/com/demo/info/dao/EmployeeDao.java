package com.demo.info.dao;

import org.springframework.data.repository.CrudRepository;

import com.demo.info.entity.Employee;


public interface EmployeeDao  extends  CrudRepository<Employee, Integer>{

	Employee findById(long id);

	void deleteById(long id);

}
