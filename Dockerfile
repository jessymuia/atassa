FROM node:20-slim
WORKDIR /app
COPY package*.json ./
RUN npm install && npm install -g pm2
COPY . .
EXPOSE 5000
CMD ["npm", "start"]
