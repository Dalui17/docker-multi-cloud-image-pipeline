# -------- Stage 1 --------
FROM node:18 AS builder

WORKDIR /app
RUN echo "console.log('Hello from Multi-Stage Docker 🚀')" > index.js

# -------- Stage 2 --------
FROM node:18-alpine

WORKDIR /app
COPY --from=builder /app/index.js .

CMD ["node", "index.js"]
