--Создание таблицы Игрок (Player) где планируется хранить информацию об ФИО игроке и его статистике.
-- Внешним ключом является параметр teamid, то есть индетификационный номер команды где игрок состоит.
CREATE TABLE "Players" (
    id INT,
    "Lastname" VARCHAR(255),
    "Firstname" VARCHAR(255),
    "Patronymic" VARCHAR(255),  -- Отчество
    "Position" VARCHAR(50),
    "Age" INT,
    "Selections" INT,  -- Отборы
    "Assists" INT,
    "Goals" INT,
    "Intercepts" INT,  -- Перехваты
    "teamid" INT,  -- Id команды
    "MatchDate" DATE, 
    "skipid" INT
);