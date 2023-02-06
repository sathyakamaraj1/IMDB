--IMDB Design a DB for IMDB 
--1. Movie should have multiple media(Video or Image) 
CREATE TABLE movie(
	movie_id INT, 
	movie_name VARCHAR(100) NOT NULL,
	release_date DATE,
	trailer VARCHAR(100),
    director VARCHAR(100),
	PRIMARY KEY(movie_id)
);

INSERT INTO 
	movie(movie_id,movie_name,release_date,trailer,director)
VALUES
	('101','The Dark Knight','2008-08-01','https://youtu.be/EXeTwQWrcwY','Christopher Nolan'),
	('102','Slumdog Millionaire','2009-04-01','https://youtu.be/AIzbwV7on6Q',' Danny Boyle'),
    ('103','Harry Potter and the Philosophers Stone','2002-04-01','https://youtu.be/mNgwNXKBEW0','Chris Columbus'),
    ('104','Pirates of the Caribbean: Dead Men Tell No Tales','2008-04-01','https://youtu.be/Hgeu5rhoxxY','Christopher Nolan'),
    ('105','The Matrix','1999-04-02','https://youtu.be/9ix7TUGVYIo','Lana Wachowski, Lilly Wachowski'),
    ('106','M.S Dhoni- The untold story','2016-04-01','https://youtu.be/6L6XqWoS8tw','Neeraj Pandey'),
    ('107','The Conjuring','2013-04-01','https://youtu.be/k10ETZ41q5o','Michael Chaves, James Wan');

--2. Movie can belongs to multiple Genre 
CREATE TABLE genre(
    movie_id INT, 
	category VARCHAR(100) NOT NULL
);
INSERT INTO genre(movie_id,category)VALUES
('102','Romance'),
('101','Action'),
('107','Thriller'),
('101','Crime'),
('104','Comedy'),
('107','Horror'),
('104','Fantasy'),
('104','Adventure'),
('105','SCI-FI'),
('106','Sport'),
('106','Biopic');
--3. Movie can have multiple reviews and Review can belongs to a user 
CREATE TABLE user(
    movie_id INT,
    user_name VARCHAR(100) NOT NULL, 
    rating INT
);
INSERT INTO user(movie_id,user_name,rating)VALUES
('102','Jack','8'),
('101','Emily','9'),
('107','Gabriel','7'),
('104','Ian','5'),
('105','Paul','9'),
('106','Nina','6'),
('107','Johnny','9');
--4. Artist can have multiple skills 
CREATE TABLE artist(
    artist_id INT AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL, 
    skills VARCHAR(100) NOT NULL
);
INSERT INTO artist(artist_id,artist_name,skills)VALUES
('201','Johnny Depp','Singing,Guitar,Acting'),
('202','Sushant','Dance,Acting'),
('203','Dev Patel','Guitar,Singing'),
('204','Freida Pinto','Dance,Acting'),
('205','Keanu Reeves','Drama and Theatre Arts'),
('206','Christian Charles Philip','Actor-Musician'),
('207','Vera Farmiga','Actor-Musician'),
('208','Christian Bale','Dance,Acting');
--5. Artist can perform multiple role in a single film
CREATE TABLE cast(
    movie_id INT,
    artist_name VARCHAR(100) NOT NULL, 
    role_name VARCHAR(100) NOT NULL
);
INSERT INTO cast(movie_id,artist_name,role_name) VALUES
('101','Johnny Depp','Hero,Villan'),
('102','Sushant','Hero'),
('103','Dev Patel','Hero'),
('104','Freida Pinto','Heroine,Supporting Artist'),
('105','Keanu Reeves','Villan'),
('106','Christian Charles Philip','Hero'),
('107','Vera Farmiga','Heroine,Mother'),
('101','Christian Bale','Heroine,Friend');