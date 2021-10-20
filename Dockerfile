FROM node:14-alpine

WORKDIR /app

# Dependencies installation
COPY package*.json ./
RUN npm install --loglevel=error

# Build
COPY . .
RUN npm run build

CMD ["node", "dist/main"]