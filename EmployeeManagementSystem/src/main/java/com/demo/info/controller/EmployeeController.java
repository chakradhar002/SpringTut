package com.demo.info.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.demo.info.entity.Employee;
import com.demo.info.service.EmployeeService;




@Controller
@Transactional
@RequestMapping("/")
public class EmployeeController {

	 private static final Logger LOGGER = LogManager.getLogger(EmployeeController.class);
	
	@Autowired
	EmployeeService employeeService;

	/**
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String goHome() {
		
		
	//	LOGGER.info("Info level log goHome");
        LOGGER.debug("Debug level log goHome");
        LOGGER.error("Error level log goHome");
		
		return "home";
	}

	/**
	 * @param employee
	 * @param modal
	 * @return
	 */

	@RequestMapping(value = "/addemployee", method = RequestMethod.GET)
	public String addEmployee(@ModelAttribute("employee") Employee employee, Model modal) {

   	return "/employees/add";  // Give name according names of jsp pages

	}
	

	/**
	 * @param employee
	 * @param modal
	 * @return
	 */
	@RequestMapping(value = "/saveemployee", method = RequestMethod.GET)
	public ModelAndView saveEmployee(@ModelAttribute("employee") Employee employee, Model modal) {
		
			employeeService.AddEmployee(employee);
			
			List<Employee> results = employeeService.getEmployeeList(employee);
			
			
			ModelAndView model = new ModelAndView("/employees/list");
			
			model.addObject("list", results);
			
			return model;
   
			

	}

	
	/**
	 * @param employee
	 * @param modal
	 * @return
	 */
	@RequestMapping(value = "/getemployeelist", method = RequestMethod.GET)
	public ModelAndView getEmployeeList(@ModelAttribute("employee") Employee employee, Model modal) {
	
		List<Employee> results = employeeService.getEmployeeList(employee);
		// return back to index.jsp
	
		ModelAndView model = new ModelAndView("/employees/list");
		
		model.addObject("list", results);
		
		return model;

	}
	
	
	
	/**
	 * @param id
	 * @param modal
	 * @return
	 */
	@RequestMapping(value = "/editemployee/{id}", method = RequestMethod.GET)
	public ModelAndView editEmployee(@PathVariable("id") long id, Model modal) {


		Employee employee = employeeService.getEmployeeById(id);
		
		 ModelAndView model = new ModelAndView();
		
		       model.addObject("employee", employee);
		       	       
		       model.addObject("employee" , new Employee()); 
				
				model.setViewName("/employees/edit");

		  				
				return model;

	
	}
	 
	
	/**
	 * @param employee
	 * @return
	 */
	@RequestMapping(value = "/empupdate", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("employee") Employee employee) {
	
		employeeService.saveOrUpdate(employee);
		
		List<Employee> results = employeeService.getEmployeeList(employee);
		// return back to index.jsp
	
		ModelAndView model = new ModelAndView("/employees/list");
		
		model.addObject("list", results);
		
		return model;
	}

	

	/**
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/deleteemployee/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") long id) {
	
		employeeService.deleteEmployee(id);
		
		Employee employee=new Employee();

		List<Employee> results = employeeService.getEmployeeList(employee);
		// return back to index.jsp
	
		ModelAndView model = new ModelAndView("/employees/list");
		
		model.addObject("list", results);
		
		return model;
	}
	

}
