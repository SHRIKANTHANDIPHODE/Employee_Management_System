package com.nit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import static com.nit.constant.Constant.*;

import com.nit.model.Employee;

@Component
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private EmployeeRowMapper employeeRowMapper;

	@Override
	public List<Employee> getAllEmployee() {
		return jdbcTemplate.query(GET_ALL, employeeRowMapper);
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETE,id);

	}

	@Override
	public void save(Employee e) {
		jdbcTemplate.update(SAVE,e.getId(),e.getName(),e.getAddress(),e.getSalary());
		
	}

	
}
