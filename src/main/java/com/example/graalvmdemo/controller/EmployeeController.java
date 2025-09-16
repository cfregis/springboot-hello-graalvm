package com.example.graalvmdemo.controller;

import com.example.graalvmdemo.model.Employee;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.graalvmdemo.repository.EmployeeRepository;

import java.util.List;
import java.util.UUID;

@RestController
public class EmployeeController {

    EmployeeController(EmployeeRepository repository) {
        this.repository = repository;
    }

    private final EmployeeRepository repository;

    @GetMapping("/")
    public List<Employee> hello() {
        repository.save(new Employee(UUID.randomUUID().toString(), "ROLE A"));
        return repository.findAll();
    }
}