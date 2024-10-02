package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.dao.EmployeeDao;
import com.nit.model.Employee;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDao employeeDao;
	
	
	public List<Employee> getAllEmployee()
	{
		return employeeDao.getAllEmployee();
	}
	public void delete(int id)
	{
		employeeDao.delete(id);
	}
	public void save(Employee e)
	{
		employeeDao.save(e);
	}
}
