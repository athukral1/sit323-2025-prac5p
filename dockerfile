FROM node:alpine

# Create app directory
WORKDIR /Users/abhishekbajaj/Desktop/Ayushi_SIT323/sit323-2025-prac5p

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY server.js .

EXPOSE 8080

CMD [ "node", "server.js" ]