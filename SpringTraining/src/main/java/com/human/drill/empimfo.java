package com.human.drill;

public class empimfo {
	private int employee_id;
	private String emp_name;
	private String phone_number;
	private int salary;
	public empimfo() {
	}
	public empimfo(int employee_id, String emp_name, String phone_number, int salary) {
		this.employee_id = employee_id;
		this.emp_name = emp_name;
		this.phone_number = phone_number;
		this.salary = salary;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
}
