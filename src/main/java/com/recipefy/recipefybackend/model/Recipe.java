package com.recipefy.recipefybackend.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity(name = "Recipe")
@Table(name = "recipe")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String resume;
    private String ingredients;
    private String timeToDo;
    private Integer amount;
    private String authorName;
    private String howToDo;
}
