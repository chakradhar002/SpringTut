package com.demo.info.serviceImpl;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.info.dao.EmployeeDao;
import com.demo.info.entity.Employee;
import com.demo.info.service.EmployeeService;


/**
 * @author yphyd
 *
 */

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDao employeeDao;

	/**
	 *
	 */
	@Override
	public void AddEmployee(Employee employee) {

		employeeDao.save(employee);

	}
	
	/**
	 *@ Get Employee List
	 */
	@Override
	public List<Employee> getEmployeeList(Employee employee) {

		List<Employee> emplistresult = (List<Employee>) employeeDao.findAll();

		return emplistresult;

	}
	
	/**
	 *@ Save employe object
	 */
	@Override
	public void saveOrUpdate(Employee employee) {
		employeeDao.save(employee);
	}
	
	/**
	 *  Get the employee info by Id
	 */
	public Employee getEmployeeById(long id) {
	
		return employeeDao.findById(id);
	}


	/**
	 *  delete the employee by Id
	 */
	@Override
	public void deleteEmployee(long id) {
		employeeDao.deleteById(id);
		
	}
	
}
