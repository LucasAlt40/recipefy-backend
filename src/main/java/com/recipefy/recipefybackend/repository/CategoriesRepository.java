package com.recipefy.recipefybackend.repository;


import com.recipefy.recipefybackend.model.Categories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriesRepository extends JpaRepository<Categories, Long> {
}
