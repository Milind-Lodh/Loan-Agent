# Starting Loan AgentiX

## Prerequisites

Before you can run Loan AgentiX, you need to install the following software:

1. **Node.js** (v14 or higher) - https://nodejs.org/
2. **Docker Desktop** - https://www.docker.com/products/docker-desktop/

## Installation Steps

1. **Install Dependencies**:
   ```bash
   npm install
   ```

2. **Start with Docker (Recommended)**:
   ```bash
   cd docker
   docker-compose up --build
   ```

3. **Alternative: Start in Development Mode**:
   ```bash
   npm run dev
   ```

## Accessing the Application

Once the application is running, open your browser and navigate to:
- http://localhost:3000

## Debugging with VS Code

1. Set breakpoints in your code
2. Press F5 or go to Run > Start Debugging
3. Select "Launch Chrome against localhost" configuration
4. The application should open in Chrome with debugging enabled

## Common Issues

1. **Port already in use**: Change the PORT in .env file
2. **MongoDB connection failed**: Ensure Docker is running
3. **Permission denied**: Run as administrator on Windows

## Stopping the Application

- If using Docker: `Ctrl+C` in the terminal or `docker-compose down`
- If using npm: `Ctrl+C` in the terminal