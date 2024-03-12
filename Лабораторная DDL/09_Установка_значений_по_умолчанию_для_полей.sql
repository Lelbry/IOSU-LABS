-- Установка значений по умолчанию для полей
ALTER TABLE "Teams"
ALTER COLUMN "PlayersCount"
SET DEFAULT 0,

ALTER TABLE "Players" 
ALTER COLUMN "Selections"
SET DEFAULT 0,
ALTER TABLE "Players"
ALTER COLUMN "Assists"
SET DEFAULT 0,
ALTER TABLE "Players"
ALTER COLUMN "Goals"
SET DEFAULT 0,
ALTER TABLE "Players"
ALTER COLUMN "Intercepts"
SET DEFAULT 0;