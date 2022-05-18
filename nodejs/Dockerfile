FROM node:18

# Expose api port
EXPOSE 8080

# Move source
WORKDIR /app
COPY . .

# Install package manager
RUN npm install -g yarn
#RUN npm install -g pnpm

# Install dependencies
RUN yarn install --frozen-lockfile
#RUN pnpm install --frozen-lockfile

# Start app
ENTRYPOINT [ "yarn" ]
#ENTRYPOINT [ "pnpm run" ]
#ENTRYPOINT [ "npx pm2-runtime start" ]

# Command
CMD [ "start" ]
