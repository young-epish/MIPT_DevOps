-- Проверка существования пользователя перед его созданием
DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_user WHERE usename = 'test') THEN
    CREATE USER test WITH PASSWORD 'test';
  END IF;
END $$;
