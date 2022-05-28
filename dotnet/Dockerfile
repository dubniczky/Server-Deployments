###
### BUILD STAGE
###

FROM mcr.microsoft.com/dotnet/sdk:6.0 as build

# Create app workdir
WORKDIR /app

# Copy project
COPY . .

# Install dependencies
RUN dotnet restore

# Build project
RUN dotnet publish -c Release -o app

###
### DEPLOY STAGE
###

FROM mcr.microsoft.com/dotnet/aspnet:6.0 as deploy

# Create app workdir
WORKDIR /app

# Copy deployment from build stage
COPY --from=build /app/app .

# Define host process
ENTRYPOINT [ "dotnet" ]

# Define command
CMD [ "aspnetapp.dll" ]