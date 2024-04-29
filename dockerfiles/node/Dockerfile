# We specify the base image we need for our node application
FROM node:21.7.3-alpine3.18

# We specify Dockerfile's maintener
LABEL maintainer="Rodrigo Porto <https://github.com/rdrgporto>"

# Information about app port
EXPOSE 9000

# Set the current working directory inside the container
WORKDIR /app

# Set directory permissions
RUN chown node:node /app

# Use and unprivileged user
USER node

# Copy our code to /app
COPY --chown=node:node code ./

# Build
RUN npm install

# Run our app
CMD [ "npm", "start" ]
