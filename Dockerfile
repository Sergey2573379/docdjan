# Используем официальный образ Python
FROM python:3.9

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта в контейнер
COPY  . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт для сервера Django
EXPOSE 8000

# Запускаем сервер Django
CMD ["python", "lesta/manage.py", "runserver", "0.0.0.0:8000"]
