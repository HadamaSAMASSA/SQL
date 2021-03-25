--        ---------------AGENCY----------------

-- 1 
CREATE TABLE candidates (id INT PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(30), last_name VARCHAR(30), birthday DATE, salary INT, portfolio VARCHAR(50), github VARCHAR(50);
CREATE TABLE languages (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), candidate_id INT, FOREIGN KEY (candidate_id) REFERENCES candidates (id));
CREATE TABLE programming (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), candidate_id INT, FOREIGN KEY (candidate_id) REFERENCES candidates (id));
