#official pm2 image with node
FROM keymetrics/pm2:latest-alpine

COPY src src/
COPY package.json .
COPY pm2.json .

# Make port 80 available to the world outside this container
#EXPOSE 80

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

# Show current folder structure in logs
#RUN ls -al -R

CMD [ "pm2-runtime", "start", "pm2.json" ]

