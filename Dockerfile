#import debian from Microsoft mcr
FROM mcr.microsoft.com/devcontainers/dotnet:0-7.0 as Caddy
# run script to check architecture
WORKDIR /app
COPY ./install.sh ./install.sh 
RUN chmod +x ./install.sh
RUN ./install.sh

FROM mcr.microsoft.com/devcontainers/dotnet:0-7.0 
# copy caddy from previous stage
COPY --from=Caddy /app/caddy /usr/local/bin/caddy