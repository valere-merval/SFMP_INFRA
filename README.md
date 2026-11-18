# Smart Fan Mobility Platform Infra

Local infrastructure and orchestration for the SFMP stack.

## What is included
- PostgreSQL
- MongoDB
- Redis
- Kafka
- Zookeeper
- MinIO / S3
- Kafka UI
- pgAdmin
- mongo-express
- backend
- web

## Repository layout
This infra repo expects the application repos to live next to it:
- `../SFMP_BE`
- `../SFMP_WEB`
- `../SFMP_APP`

## Quick start
1. Copy the environment file:
   ```bash
   cp .env.example .env
   ```
2. Start the local stack:
   ```bash
   docker compose up --build
   ```
3. Open:
   - Web app: http://localhost:5173
   - Backend: http://localhost:8080
   - Kafka UI: http://localhost:8082
   - pgAdmin: http://localhost:5050
   - mongo-express: http://localhost:8081
   - MinIO console: http://localhost:9001

## Notes
- The backend defaults to H2 when no datasource env vars are provided.
- The compose file overrides the local datasource so the backend can use PostgreSQL.
- OpenAI is optional and only needed for live AI predictions and analyses.
- The mobile app remains React Native CLI and is run separately from this stack.
