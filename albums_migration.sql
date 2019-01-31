DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name unique VARCHAR(50) NOT NULL,
    release_date int,
    genre VARCHAR(50),
    sales float,
    PRIMARY KEY (id)
);