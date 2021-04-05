DROP DATABASE IF EXISTS meal_planner;
CREATE DATABASE meal_planner;
USE meal_planner;

DROP TABLE IF EXISTS account;
CREATE TABLE account(
    account_id INT NOT NULL unique AUTO_INCREMENT ,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR (6) NOT NULL,
    height INT NOT NULL,
    weight INT NOT NULL,
    allergies VARCHAR (50),
    dietarylifestyle VARCHAR(50), 
    dietaryrestrictions VARCHAR(50),
    goal VARCHAR(50),
    dailycalories INT,
    photo VARCHAR(200),
    PRIMARY KEY(account_id)
);

DROP TABLE IF EXISTS recipe;
CREATE TABLE recipe(
    recipe_id INT NOT NULL unique AUTO_INCREMENT,
    recipe_name VARCHAR(200),
    instructions VARCHAR(5000),
    preparation_time VARCHAR(150),
    cooking_time VARCHAR(150),
    meal_type VARCHAR(50),
    servings INT,
    photo VARCHAR(200),
    PRIMARY KEY(recipe_id)
);

DROP TABLE IF EXISTS ingredients;
CREATE TABLE ingredients(
    ingredient_id INT NOT NULL unique AUTO_INCREMENT,
    ingredient_name VARCHAR(200),
    calories_count INT,
    measurement VARCHAR(5000),
    recipe_id INT NOT NULL,
    PRIMARY KEY(ingredient_id),
    foreign key(recipe_id) references recipe(recipe_id) 
);

DROP TABLE IF EXISTS instructions;
CREATE TABLE instructions(
    instruction_id INT NOT NULL unique AUTO_INCREMENT,
    step_no INT,
    instruction VARCHAR(5000),
    recipe_id INT NOT NULL,
    PRIMARY KEY(instruction_id),
    foreign key(recipe_id) references recipe(recipe_id) 
);
