CREATE TABLE students ( id INT AUTO_INCREMENT, name VARCHAR(30), city VARCHAR(30), PRIMARY KEY (id) );

-- ALTER TABLE students
-- ALTER COLUMN id TYPE INT PRIMARY KEY AUTO_INCREMENT

INSERT INTO students VALUES (1, "Véronique", "Paris");

INSERT INTO students (name, city) VALUES 
("Steeven", "Lyon"),
("Marc", "Marseille"),
("Nour", "Lyon"), ("Romain", "Paris"),
("Sophie", "Paris");

CREATE TABLE languages ( id INT AUTO_INCREMENT, name VARCHAR(30), PRIMARY KEY (id) )
INSERT INTO languages (name) VALUES 
('French'), 
('English'), 
( 'German'), 
('Spanish'), 
('Mandarin');

CREATE TABLE favorites ( id INT PRIMARY KEY AUTO_INCREMENT, class VARCHAR(30), sport VARCHAR(30), student_id INT );

INSERT INTO favorites ( class, sport, student_id ) VALUES 
("Maths", "Cricket", 2),
("Music", "Hip-hop",	6),
("Arts", "Boxing", 1),
("Literature", "Tennis", 3),
("Computer science", "Tennis", 5),
("Arts", "Baseball", 4);

CREATE TABLE students_languages (id INT PRIMARY KEY AUTO_INCREMENT, student_id INT, language_id INT);
INSERT INTO students_languages (student_id, language_id) VALUES 
	(1, 1),
	(1, 2),
	(2,1),
	(2,3),
	(3,1),
	(4,1),
	(4,2),
	(4,4),
	(4,5),
	(5,1),
	(5,5),
	(6,1),
	(6,2),
	(6,3);

--     Rapport lvl 1

-- 1. Récupérer toutes les colonnes de l’étudiant.e avec l’ID 3
SELECT * FROM students WHERE id = 3;

-- 2. Récupérer toutes les colonnes l’étudiant.e avec l’ID 6
SELECT * FROM students WHERE id = 6;

-- 3. Récupérer le nom et la ville de l’étudiant.e avec l’ID 1
SELECT name, city FROM students WHERE id = 1;

-- 4. Récupérer le nom de l’étudiant.e avec l’ID 2
SELECT name FROM students WHERE id = 2;

-- 5. Récupérer toutes les colonnes des étudiant.e.s de la ville de Paris
SELECT * FROM students WHERE city = "Paris";

-- 6. Récupérer les noms des étudiant.es de la ville de Lyon
SELECT name FROM students WHERE city = "Lyon";

--     Rapport lvl 2

-- 1. Pour l’étudiant.e d’ID 5, récupérer toutes les colonnes sur l’étudiant.e et ses activités favorites
-- 2. Pour l’étudiant.e d’ID 4, récupérer son nom et son sport préféré
-- 3. Pour l’étudiant.e d’ID 1, récupérer son nom et sa matière préférée
-- 4. Récupérer toutes les colonnes de l’étudiant.e qui aime la musique
-- 5. Récupérer le nom des étudiant.e.s qui aime le tennis
-- 6. Récupérer le nom des étudiant.e.s qui aime les matières artistiques
-- 7. Récupérer le nombre d’étudiant.e.s de la ville de Paris

-- Rapport lvl 3

-- 1. Récupérer les langues et toutes les colonnes de l’étudiant.e d’ID 1
-- 2. Récupérer les langues et toutes les colonnes de l’étudiant.e d’ID 4
-- 3. Récupérer la colonne langue et le nom de l’étudiant.e d’ID 5
-- 4. Pour chaque étudiant.e.s (6), faîtes une requêtes pour récupérer le nombre de langues parlées par cet étudiant.e.s avec leurs noms et le nombres de langues
