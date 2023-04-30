package com.recipefy.recipefybackend.controller;

import com.recipefy.recipefybackend.model.Recipe;
import com.recipefy.recipefybackend.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/recipe")
public class RecipeController {
    @Autowired
    RecipeRepository repository;

    @GetMapping
    public List<Recipe> getRecipe() {
        return repository.findAll();
    }

    @GetMapping(value = "/{id}")
    public Optional<Recipe> getRecipeById(@PathVariable Long id) {
        return repository.findById(id);
    }

    @PostMapping
    public void addRecipe(@RequestBody Recipe recipe) {
        repository.save(recipe);
    }

}
