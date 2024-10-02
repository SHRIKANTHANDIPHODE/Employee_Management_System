package com.nit.dao;

import java.util.List;

import com.nit.model.Employee;

public interface EmployeeDao {
	List<Employee> getAllEmployee();
	void delete(int id);
	void save(Employee e);

}
