FROM mcr.microsoft.com/dotnet/sdk:6.0
ENV ASPNETCORE_URLS=https://+:5555
EXPOSE 5555/tcp
COPY ./ /app
WORKDIR /app
RUN dotnet restore
RUN dotnet build
RUN dotnet publish aspdotnetcore-sample-api.csproj -o /app/
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ./entrypoint.sh
