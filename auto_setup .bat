@echo off

if not exist "your-repo-name" (
    echo Cloning repository...
    git clone [your-repo-url]

    if %errorlevel% neq 0 (
        echo Failed to clone repository.
        pause
        exit /b
    )
)

cd [your-repo-name]

echo Installing dependencies...
pip install -r requirements.txt

echo Running migrations...
python manage.py makemigrations
python manage.py migrate

echo Setup completed!

start http://127.0.0.1:8000

pause