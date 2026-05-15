CREATE TABLE Students (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    name                TEXT NOT NULL,
    email               TEXT UNIQUE,
    age                 INTEGER,
    address             TEXT NOT NULL,
    math                INTEGER,
    science             INTEGER,
    english             INTEGER,
    hindi               INTEGER,
    total               INTEGER,
    average             REAL,
    percentage          REAL,
    created_at          DATETIME DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Students (name, email, age, address, math, science, english, hindi, total, average, percentage)
VALUES ('Zoya', 'zoya@gmail.com', 20, 'Pune', 88, 92, 95, 90, 365, 91.25, 91.25);


INSERT INTO Students (name, email, age, address, math, science, english, hindi, total, average, percentage)
VALUES ('Ayesha', 'ayesha@gmail.com', 20, 'Pune', 85, 88, 92, 87, 352, 88, 88);


INSERT INTO Students (name, email, age, address, math, science, english, hindi, total, average, percentage)
VALUES ('Aroosha', 'aroosha@gmail.com', 20, 'Pune', 90, 91, 89, 93, 363, 90.75, 90.75);


SELECT * FROM Students;
