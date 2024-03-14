--DROP TABLE "Teams";
CREATE TABLE "Teams" (
    "ID" INT,
    "Name" VARCHAR
);

--DROP TABLE "Players";
CREATE TABLE "Players" (
    "ID" INT,
    "FIO" VARCHAR,
    "Position" VARCHAR,
    "Age" INT,
    "TeamID" INT
);

--DROP TABLE "Matches"
CREATE TABLE "Matches" (
    "ID" INT,
    "MatchDate" DATE,
    "PlayerID" INT,
    "Goals" INT,
    "Assist" INT,
    "YellowCards" INT,
    "RedCards" INT,
    "Fouls" INT
);
