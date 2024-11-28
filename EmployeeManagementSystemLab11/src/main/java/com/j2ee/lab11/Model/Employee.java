package com.j2ee.lab11.Model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;

public class Employee {
    

	private int id;

    @NotEmpty(message = "Name is required")
    private String name;

    @Email(message = "Email must be valid")
    private String email;
    
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

    
}
