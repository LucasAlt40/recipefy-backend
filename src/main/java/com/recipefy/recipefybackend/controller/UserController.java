package com.recipefy.recipefybackend.controller;

import com.recipefy.recipefybackend.model.User;
import com.recipefy.recipefybackend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;


@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository repository;

    @GetMapping
    public List<User> getUsers() {
        return repository.findAll();
    }

    @GetMapping(value = "/{id}")
    public Optional<User> getUserById(@PathVariable Long id) {
        return repository.findById(id);
    }

    @PostMapping
    public void addUser(@RequestBody User user) {
        repository.save(user);
    }
}
