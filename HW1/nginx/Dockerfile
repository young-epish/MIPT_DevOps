# В качестве базового образа для nginx берем alpine
FROM nginx:alpine

# Копируем конфигурационный файл с настройками
COPY nginx.conf /etc/nginx/nginx.conf

# Определяем рабочую директорию
WORKDIR /usr/share/nginx/html

# Экспонируем порт
EXPOSE 80

# Запускаем Nginx от пользователя nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]
