CREATE DATABASE Recipefy;

USE Recipefy;

CREATE TABLE User (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      firstName VARCHAR(55) NOT NULL,
                      lastName VARCHAR(55) NOT NULL,
                      email VARCHAR(255) UNIQUE NOT NULL,
                      password VARCHAR(40) NOT NULL
);

CREATE TABLE Categories (
                            id INT PRIMARY KEY AUTO_INCREMENT,
                            name VARCHAR(255) NOT NULL
);

CREATE TABLE Recipe (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        title VARCHAR(255) NOT NULL,
                        author_id INT NOT NULL,
                        how_to_do TEXT NOT NULL,
                        ingredients TEXT NOT NULL,
                        category_id INT NOT NULL,
                        amount INT NOT NULL,
                        time_to_do VARCHAR(55) NOT NULL,
                        resume VARCHAR(255) NOT NULL,
                        FOREIGN KEY (author_id) REFERENCES User(id),
                        FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Reviews (
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         author_id INT NOT NULL,
                         recipe_id INT NOT NULL,
                         comment VARCHAR(8000),
                         FOREIGN KEY (author_id) REFERENCES User(id),
                         FOREIGN KEY (recipe_id) REFERENCES Recipe(id)
);

-- Inserindo usuários
INSERT INTO User (firstName, lastName, email, password)
VALUES ('João', 'Silva', 'joao@example.com', 'senha123'),
       ('Maria', 'Santos', 'maria@example.com', 'senha456');

-- Inserindo categorias
INSERT INTO Categories (name)
VALUES ('Massas'),
       ('Sobremesas');

-- Inserindo a receita de Macarrão Pesto
INSERT INTO Recipe (title, resume, ingredients, time_to_do, amount, author_id, category_id, how_to_do)
VALUES ('Macarrão Pesto',
        'Macarrão refinado com pesto',
        '100g de macarrão, 50g de manjericão, 30g de queijo parmesão ralado, 30g de nozes, 1 dente de alho, azeite, sal',
        '1 hora',
        4,
        1,
        1,
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit incidunt velit atque magni? Magnam temporibus quam quisquam doloribus voluptatum? Est beatae obcaecati rem omnis excepturi laborum minus dolor unde id.');

-- Inserindo a receita de Bolo de Chocolate
INSERT INTO Recipe (title, resume, ingredients, time_to_do, amount, author_id, category_id, how_to_do)
VALUES ('Bolo de Chocolate',
        'Um delicioso bolo de chocolate',
        '3 xícaras de farinha de trigo, 2 xícaras de açúcar, 1 xícara de cacau em pó, 1 xícara de óleo, 1 xícara de água quente, 4 ovos, 1 colher de sopa de fermento em pó, Uma pitada de sal',
        '1 hora e 30 minutos',
        1,
        1,
        2,
        'Instruções para preparar o bolo de chocolate...');
