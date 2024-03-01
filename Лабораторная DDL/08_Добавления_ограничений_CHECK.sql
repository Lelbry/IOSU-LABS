-- Добавления ограничений CHECK
ALTER TABLE "Players"
ADD CONSTRAINT chk_age CHECK ("Age" >= 18),
ALTER TABLE "Teams"
ADD CONSTRAINT chk_number_of_players CHECK ("PlayersCount" >= 14),