#!/bin/bash

# Генерация случайного JWT ключа
JWT_SECRET=$(openssl rand -hex 32)

# Установка переменных окружения
export JWT_SECRET=$JWT_SECRET
export ADMIN_USERNAME=admin
export ADMIN_PASSWORD=secure_admin_password

# Сборка и запуск docker-compose
docker-compose down
docker-compose up -d

echo "Приложение успешно запущено!"
echo "Фронтенд доступен на http://localhost"
echo "Бэкенд API доступен на http://localhost:5000/api"
echo ""
echo "Сгенерированные учетные данные администратора:"
echo "Логин: $ADMIN_USERNAME"
echo "Пароль: $ADMIN_PASSWORD"
echo ""
echo "JWT ключ: $JWT_SECRET"
echo "Рекомендуется сохранить эти данные в надежном месте." 