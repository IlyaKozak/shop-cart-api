FROM node:14-alpine

WORKDIR /app

# Dependencies installation
COPY package*.json ./
RUN npm install --loglevel=error

# Build
COPY . .
RUN npm run build

# Application
ENV PORT 8080
EXPOSE 8080

CMD ["node", "dist/main"]