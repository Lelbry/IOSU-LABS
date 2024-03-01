-- Добавление внешних ключей
ALTER TABLE "Players"
ADD CONSTRAINT "fk_teamid"
FOREIGN KEY (teamid)
REFERENCES "Teams"(id);