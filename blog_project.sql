-- Active: 1736306177896@@127.0.0.1@3306@practice_sql

create  Table authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT  CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);

CREATE TABLE categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR (255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE  CURRENT_TIMESTAMP
);

CREATE Table blogs(
    blog_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (255) NOT NULL,
    body TEXT NOT NULL,
    author_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY(author_id) REFERENCES authors(author_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(category_id) REFERENCES categories(category_id) ON DELETE CASCADE ON UPDATE CASCADE,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE  CURRENT_TIMESTAMP
);


#authors CRUD operation successful
INSERT INTO authors(author_name) VALUES
('Sakil');

SELECT * FROM authors;

SELECT * FROM authors WHERE author_id = 1;

UPDATE authors SET author_name='sajib' WHERE author_id=1;

DELETE FROM authors WHERE author_id = 1;

# CRUD operation successful on categories table 


INSERT INTO categories(category_name) VALUES('Hasnat');

SELECT * FROM categories;

SELECT * FROM categories WHERE category_id=1;

UPDATE categories SET category_name= 'Abdullah' WHERE category_id=1;


DELETE FROM categories WHERE category_id = 1;


#CRUD operation for blogs table

INSERT INTO blogs(author_id,category_id,title,body) VALUES(
4,2,'blog_heading','blog_content_name'
);

SELECT * FROM blogs;

SELECT * FROM blogs WHERE blog_id = 32;

SELECT blogs.title,blogs.body,blogs.author_id,blogs.category_id FROM blogs
JOIN authors ON blogs.author_id = authors.author_id
JOIN categories ON blogs.category_id = categories.category_id;


UPDATE blogs SET title = 'new_title' WHERE blog_id=32;

UPDATE blogs SET author_id =6,category_id= 7 WHERE blog_id =35;


DELETE FROM blogs WHERE blog_id= 33;



#specific query

SELECT * FROM authors WHERE author_id =2;

SELECT * FROM categories WHERE category_id = 3;