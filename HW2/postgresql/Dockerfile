# Используем официальный образ PostgreSQL
FROM postgres:latest

# Копируем скрипт для создания пользователя и базы данных
COPY init.sql /docker-entrypoint-initdb.d/

# Определяем переменные окружения для создания пользователя и БД
ENV POSTGRES_USER test
ENV POSTGRES_PASSWORD test
ENV POSTGRES_DB test

EXPOSE 45007
