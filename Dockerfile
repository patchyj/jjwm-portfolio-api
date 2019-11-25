FROM node:10
WORKDIR /api
ENV PORT=${PORT}
ENV MONGODB_URI=${MONGODB_URI}
ENV SECRET=${SECRET}
ENV SESSION_SECRET=${SESSION_SECRET}
COPY package.json /app/package.json
RUN npm install
RUN npm install nodemon -g
COPY . /api
EXPOSE 4000
CMD ["npm", "start"]