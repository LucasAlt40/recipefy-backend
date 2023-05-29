CREATE DATABASE RecipefyTest;

use RecipefyTest;

CREATE TABLE user(
                     id int primary key auto_increment,
                     name varchar(255) not null,
                     email varchar(255) not null unique,
                     password varchar(40) not null
);

CREATE TABLE recipe(
                       id int primary key auto_increment,
                       title varchar(90) not null,
                       resume varchar(120),
                       ingredients varchar(5000) not null,
                       time_to_do varchar(25) not null,
                       amount int not null,
                       author_name varchar(255) not null,
                       how_to_do varchar(5000)
);

INSERT INTO recipe (title, resume, ingredients, time_to_do, amount, author_name, how_to_do) values ("Marcarrao Pestp", "Macarrao refinado", '<li><input type="checkbox" name="ingredient" id="ingredient" /><label htmlFor="ingredient">100g de macarrão</label></li><li><input type="checkbox" name="ingredient" id="ingredient" /><label htmlFor="ingredient">100g de macarrão</label></li><li><input type="checkbox" name="ingredient" id="ingredient" /><label htmlFor="ingredient">100g de macarrão</label></li><li><input type="checkbox" name="ingredient" id="ingredient" /><label htmlFor="ingredient">100g de macarrão</label></li><li><input type="checkbox" name="ingredient" id="ingredient" /><label htmlFor="ingredient">100g de macarrão</label></li>', "1 Hora", 1, "Fibonnacci", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit incidunt velit atque magni? Magnam temporibus quam quisquam doloribus voluptatum? Est beatae obcaecati rem omnis excepturi laborum minus dolor unde id.")