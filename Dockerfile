FROM node:18

RUN mkdir -p /usr/src/app/back

WORKDIR /usr/src/app/back

COPY package*.json ./

ENV NODE_ENV=development
ENV PORT=5000
ENV MONGO_URI=mongodb://192.168.169.133:27017/mern-stack
ENV JWT_SECRET=abc123

RUN npm ci

COPY . .

EXPOSE 5000

CMD ["npm","start"]
