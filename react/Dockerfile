###
### BUILD STAGE
###

FROM node:17 as build

# Copy project
WORKDIR /app
# Unused files are ignored using .dockerignore
COPY . .
#RUN ls -la

# Install dependencies
RUN make install

# Build react app
RUN make build

###
### DEPLOY STAGE
###

FROM nginx:alpine as deploy

# Nginx default directory
WORKDIR /usr/share/nginx/html

# Remove default nginx demo files
RUN rm -rf ./*

# Copy deployment from build stage
COPY --from=build /app/build/ .

# Expose web ports (http, https)
EXPOSE 80 443

# Define host process
ENTRYPOINT [ "nginx" ]

# Disable daemonization for container
CMD [ "-g", "daemon off;" ]
