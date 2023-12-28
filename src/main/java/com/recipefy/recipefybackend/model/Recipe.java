package com.recipefy.recipefybackend.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "Recipe")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    @Column(name = "how_to_do")
    private String howToDo;

    private String ingredients;

    @Column(name = "author_id")
    private Long authorId;

    @Column(name = "category_id")
    private Long categoryId;

    private Integer amount;
    private String timeToDo;
    private String resume;
}
