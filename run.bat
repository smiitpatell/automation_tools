@echo off

echo Server is running at http://127.0.0.1:8000/

start http://127.0.0.1:8000

echo Running migrations...
python manage.py makemigrations
python manage.py migrate

python manage.py runserver
