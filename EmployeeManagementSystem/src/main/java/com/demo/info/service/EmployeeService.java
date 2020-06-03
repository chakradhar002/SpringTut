package com.demo.info.service;

import java.util.List;

import javax.transaction.Transactional;

import com.demo.info.entity.Employee;



/**
 * @author Mantha Chakradhar
 *
 */
@Transactional
public interface EmployeeService {

	/**
	 * @param employee
	 */
	public void AddEmployee(Employee employee);

	/**
	 * @param employee
	 * @return
	 */
	public List<Employee> getEmployeeList(Employee employee);

	/**
	 * @param empno
	 * @return
	 */
	public Employee getEmployeeById(long empno);

	/**
	 * @param employee
	 */
	public void saveOrUpdate(Employee employee);

	/**
	 * @param id
	 */
	public void deleteEmployee(long id);
}
