FROM node

# Create appdirectory
RUN mkdir -p /home/Service
WORKDIR /home/Service

# Bundle appsource
COPY . /home/Service
RUN npm install

EXPOSE 8099
CMD ["npm", "start" ]
