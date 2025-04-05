-- schema.sql
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Tournament;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Tournament_teams;

CREATE TABLE Team (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    represented_entity VARCHAR(100),
    head_coach VARCHAR(100) NOT NULL
    );

CREATE TABLE Player (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    position VARCHAR(20) NOT NULL,
    team_id BIGINT,
    FOREIGN KEY (team_id) REFERENCES Team(id)
    );

CREATE TABLE Tournament (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE Tournament_teams (
    tournament_id BIGINT NOT NULL,
    team_id BIGINT NOT NULL,
    PRIMARY KEY (tournament_id, team_id),
    FOREIGN KEY (tournament_id) REFERENCES Tournament(id),
    FOREIGN KEY (team_id) REFERENCES Team(id)
    );