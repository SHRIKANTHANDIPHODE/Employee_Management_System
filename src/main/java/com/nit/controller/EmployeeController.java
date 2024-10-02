package com.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.model.Employee;
import com.nit.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/")
	public String home()
	{
		return "home";
	}
	@RequestMapping("/getAllEmployee")
	public String getAllEmployee(Model model)
	{
		List<Employee> emps = employeeService.getAllEmployee();
		model.addAttribute("emps", emps);
		return "show_Employee";
	}
	@RequestMapping("/deleteEmp")
	public String deleteEmp(HttpServletRequest req)
	{
		String eid=req.getParameter("id");
		employeeService.delete(Integer.valueOf(eid));
		return "redirect:/getAllEmployee";
	}
	@RequestMapping("/save")
	public String save()
	{
		return "add_employee";
	}
	@RequestMapping("/saveEmployee")
	public String saveEmployee(HttpServletRequest req)
	{
		int eid=Integer.parseInt(req.getParameter("empid"));
		String eName=req.getParameter("first_name");
		String eAddress=req.getParameter("address");
		double eSal= Double.parseDouble(req.getParameter("sal"));
		Employee emp=new Employee(eid, eName, eAddress, eSal);
		employeeService.save(emp);
		return "redirect:/getAllEmployee";
	}

}
