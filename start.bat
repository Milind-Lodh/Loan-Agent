@echo off
echo Loan AgentiX Startup Script
echo ==========================
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    echo.
    pause
    exit /b 1
)

REM Check if Docker is installed
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Warning: Docker is not installed or not in PATH
    echo The application will start without containerization
    echo.
)

echo Installing dependencies...
npm install
if %errorlevel% neq 0 (
    echo Error: Failed to install dependencies
    echo.
    pause
    exit /b 1
)

echo.
echo Starting Loan AgentiX in development mode...
echo Open your browser at http://localhost:3000
echo.
echo Press Ctrl+C to stop the application
echo.

npm run dev