FROM mhart/alpine-node:latest
RUN mkdir -p /opt/usermanager
WORKDIR /opt/usermanager
COPY package.json /opt/usermanager
RUN npm install
COPY . /opt/usermanager
EXPOSE 3000
CMD ["npm", "start"]
