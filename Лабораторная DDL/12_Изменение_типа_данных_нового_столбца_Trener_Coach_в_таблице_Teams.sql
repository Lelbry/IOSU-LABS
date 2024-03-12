-- Изменение типа данных нового столбца Trener/Coach в таблице Teams 
ALTER TABLE "Teams" 
ALTER COLUMN "Trener"
TYPE VARCHAR(50);