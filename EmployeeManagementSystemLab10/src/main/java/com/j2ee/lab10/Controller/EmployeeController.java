package com.j2ee.lab10.Controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.j2ee.lab10.Model.Employee;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/employees")
public class EmployeeController {

    private final List<Employee> employeeList = new ArrayList<>();

    // Serve the home page
    @GetMapping
    public ModelAndView listEmployees() {
        ModelAndView modelAndView = new ModelAndView("home"); 
        modelAndView.addObject("employees", employeeList); // Add the list of employees to the model
        return modelAndView;
    }


    @GetMapping("/add")
    public ModelAndView showAddForm() {
        ModelAndView modelAndView = new ModelAndView("add-employee"); 
        modelAndView.addObject("employee", new Employee()); 
        return modelAndView;
    }

   
    @PostMapping("/add")
    public ModelAndView addEmployee(@ModelAttribute Employee employee) {
        // Auto-generate an ID for simplicity
        employee.setId(employeeList.size() + 1);
        employeeList.add(employee); 
        return new ModelAndView("redirect:/employees");
    }

 
    @GetMapping("/update/{id}")
    public ModelAndView showUpdateForm(@PathVariable int id) {
        Optional<Employee> employee = employeeList.stream().filter(e -> e.getId() == id).findFirst();
        if (employee.isPresent()) {
            ModelAndView modelAndView = new ModelAndView("update-employee"); 
            modelAndView.addObject("employee", employee.get());
            return modelAndView;
        }
        return new ModelAndView("redirect:/employees"); 
    }

    
    @PostMapping("/update/{id}")
    public ModelAndView updateEmployee(@PathVariable int id, @ModelAttribute Employee employee) {
        for (int i = 0; i < employeeList.size(); i++) {
            if (employeeList.get(i).getId() == id) {
                employeeList.set(i, employee);
                break;
            }
        }
        return new ModelAndView("redirect:/employees");
    }

    @GetMapping("/delete/{id}")
    public ModelAndView deleteEmployee(@PathVariable int id) {
        employeeList.removeIf(e -> e.getId() == id);
        return new ModelAndView("redirect:/employees");
    }
}
