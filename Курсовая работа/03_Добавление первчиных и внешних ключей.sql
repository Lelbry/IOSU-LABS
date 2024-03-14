-- Добавление первчиных и внешних ключей
ALTER TABLE "Teams"
ADD PRIMARY KEY ("ID");

ALTER TABLE "Players"
ADD PRIMARY KEY ("ID"),
ADD CONSTRAINT "FK_TeamID"
FOREIGN KEY ("TeamID")
REFERENCES "Teams"("ID");

ALTER TABLE "Matches"
ADD PRIMARY KEY ("ID"),
ADD CONSTRAINT "FK_PlayerID"
FOREIGN KEY ("PlayerID")
REFERENCES "Players"("ID");
