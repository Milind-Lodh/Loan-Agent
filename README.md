# Loan AgentiX

An AI-driven, conversational, and PWA-based loan platform that addresses the gaps in traditional NBFC and banking systems.

## Features

- **Conversational AI**: Automated customer interaction and verification
- **Microservices Architecture**: Secure backend orchestration via Dockerized services
- **Real-time Processing**: Instant loan sanctioning and data insights
- **Cross-device Compatibility**: Progressive Web App accessible on any device
- **Unified Platform**: Single application for lending, payments, and analytics

## Architecture

```
Loan AgentiX
├── Frontend (PWA)
├── Backend (Node.js + Socket.IO)
│   ├── Controllers
│   ├── Models
│   ├── Routes
│   ├── Middleware
│   ├── AI Processing
│   ├── Utilities
│   ├── Config
│   └── Tests
├── Database (MongoDB)
├── Cache (Redis)
└── Orchestration (Docker Compose)
```

## Tech Stack

- **Frontend**: HTML5, CSS3, JavaScript (PWA)
- **Backend**: Node.js, Express, Socket.IO
- **Database**: MongoDB
- **Cache**: Redis
- **Containerization**: Docker, Docker Compose
- **Deployment**: Platform agnostic

## Getting Started

### Prerequisites

- Node.js (v14 or higher)
- Docker and Docker Compose
- npm or yarn

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd loan-agentix
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the application using Docker Compose:
   ```bash
   cd docker
   docker-compose up --build
   ```

4. Access the application at `http://localhost:3000`

### Development

To run the application in development mode:

1. Start the backend server:
   ```bash
   npm run dev
   ```

2. The frontend will be served automatically by the backend server.

## API Endpoints

- `GET /` - Serve the PWA frontend
- `GET /api/health` - Health check endpoint
- `POST /api/users` - Create a new user
- `GET /api/users/:userId` - Get user by ID
- `POST /api/loans/apply` - Apply for a new loan
- `GET /api/loans/:loanId` - Get loan by ID
- `GET /api/loans/user/:userId` - Get all loans for a user
- `PUT /api/loans/status` - Update loan status
- WebSocket connections for real-time communication

## Docker Services

- **loan-agentix**: Main application service (port 3000)
- **mongodb**: Database service (port 27017)
- **redis**: Cache service (port 6379)

## Project Structure

```
loan-agentix/
├── frontend/          # PWA frontend files
│   ├── index.html
│   ├── styles.css
│   ├── app.js
│   └── manifest.json
├── backend/           # Backend services
│   ├── controllers/
│   ├── models/
│   ├── routes/
│   ├── middleware/
│   ├── ai/
│   ├── utils/
│   ├── config/
│   ├── tests/
│   ├── server.js
│   └── ...
├── docker/            # Docker configuration
│   ├── Dockerfile
│   ├── docker-compose.yml
│   └── docker-compose.override.yml
├── docs/              # Documentation
│   ├── architecture.md
│   └── features.md
├── index.js           # Main application file
├── package.json       # Project dependencies
├── .env               # Environment variables
├── .gitignore         # Git ignore file
├── SOLUTION.md        # Solution overview
└── README.md          # This file
```

## Key Components

### 1. Conversational AI
- Real-time chat interface using Socket.IO
- Natural language processing for customer queries
- Context-aware responses for loan-related questions
- Intent recognition for various loan services

### 2. Loan Processing
- Instant loan application submission
- Automated verification and approval workflows
- Real-time status updates
- Integration with document verification services

### 3. Microservices
- Containerized architecture for scalability
- Independent services for different functionalities
- Redis caching for improved performance
- MongoDB for persistent data storage

### 4. PWA Features
- Offline capability
- Device integration
- Installable on mobile and desktop
- Responsive design for all screen sizes

## How It Addresses Key Challenges

### Low Personalization and Long Approval Cycles
- AI-driven personalization engine tailors loan offers
- Automated document verification reduces processing time
- Real-time credit assessment for instant approvals
- Conversational interface guides customers efficiently

### High Operational Costs
- Process automation reduces manual intervention
- Self-service platform decreases support volume
- Microservices enable efficient resource utilization
- AI handles routine queries, freeing human agents

### Weak Customer Engagement Post-Loan Disbursal
- Proactive notifications about payment due dates
- Financial education delivered through chat interface
- Lifecycle management maintains contact throughout loan period
- Community features encourage ongoing platform engagement

### Multiple Siloed Apps for Lending, Payments, and Analytics
- Unified dashboard consolidates all loan functions
- Single sign-on access to all features
- Integrated workflow connects application to repayment
- Real-time data synchronization across components

## Future Enhancements

- Integration with credit bureaus for real-time verification
- Advanced AI/ML models for risk assessment
- Multi-language support
- Enhanced security features
- Analytics dashboard for business insights
- Voice-enabled interface
- Mobile app development
- Partnership integrations

## License

This project is licensed under the MIT License.