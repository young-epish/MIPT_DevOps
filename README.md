# MIPT DevOps
---
## Homework 1

### Point 1

Напишите настройку ***Dockerfile*** для NGINX. В конфигурацию ***nginx*** добавьте возможность запрета всех запросов, кроме POST, при помощи конфигурации: *limit_except POST { deny all; }*.

Проверьте конфигурацию при помощи команды ***curl***: в браузере при настройке команды необходимо получить ошибку: Forbidden. Браузер отправляет GET запрос, поэтому вы его и должны получить.

---
    Порядок запуска:
    # Сборка образа Nginx
    docker build -t hw1-nginx ./nginx
    
    # Запуск контейнера
    docker run -d -p 8080:80 hw1-nginx

    # Пример GET-запроса
    curl http://localhost:8080

    # Пример POST-запроса
    curl -X POST http://localhost:8080

### Point 2

Напишите настройку образа ***postgres*** из Dockerhub. Необходимо сделать так, чтобы при создании контейнера автоматически создавался пользователь *test*. Дополнительно, необходимо реализовать, чтобы база данных при старте была *test*.

---
    Порядок запуска:
    # Сборка образа PostgreSQL
    docker build -t hw1-postgres ./postgresql
    
    # Запуск контейнера
    docker run -d -p 5432:5432 --name postgresql hw1-postgres

    # Подключение к PostgreSQL
    docker exec -it postgresql psql -U test

    # Проверка статуса PostgreSQL внутри контейнера
    SELECT version();

    # Проверка списка пользователей
    \du