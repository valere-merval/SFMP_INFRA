FROM node:22-alpine

WORKDIR /workspace/WEB
COPY WEB/package.json WEB/package-lock.json ./
RUN npm ci
COPY WEB/ ./

EXPOSE 5173
CMD ["sh", "-lc", "npm run dev -- --host 0.0.0.0 --port 5173"]
