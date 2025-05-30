# Используем официальный образ Python
FROM python:3.9

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт для сервера Django
EXPOSE 8000

# Запускаем Django
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "lesta.wsgi:application"]

