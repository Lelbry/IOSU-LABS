--Ограничения в таблицах

ALTER TABLE "Teams"
ALTER COLUMN "Name"
SET NOT NULL;

ALTER TABLE "Players" 
ALTER COLUMN "FIO"
SET NOT NULL,
ALTER COLUMN "Position"
SET NOT NULL,
ADD CONSTRAINT CheckAge CHECK ("Age" > 15);

ALTER TABLE "Matches" 
ALTER COLUMN "MatchDate"
SET NOT NULL,
ADD CONSTRAINT CheckYellowCards CHECK ("YellowCards" <= 2),
ADD CONSTRAINT CheckNonNegativeYellowCards CHECK ("YellowCards" >= 0),
ADD CONSTRAINT CheckRedCards CHECK ("RedCards" < 2),
ADD CONSTRAINT CheckNonNegativeRedCards CHECK ("RedCards" >= 0);