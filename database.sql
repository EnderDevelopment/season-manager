CREATE TABLE IF NOT EXISTS seasons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    season VARCHAR(255) NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL
);

INSERT INTO seasons (season, start_time, end_time) VALUES ('spring', '2023-03-20 00:00:00', '2023-06-20 23:59:59');
INSERT INTO seasons (season, start_time, end_time) VALUES ('summer', '2023-06-21 00:00:00', '2023-09-21 23:59:59');
INSERT INTO seasons (season, start_time, end_time) VALUES ('autumn', '2023-09-22 00:00:00', '2023-12-20 23:59:59');
INSERT INTO seasons (season, start_time, end_time) VALUES ('winter', '2023-12-21 00:00:00', '2024-03-19 23:59:59');