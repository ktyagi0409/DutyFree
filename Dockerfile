# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
# Copy everything
COPY ./application/ADL.AIRPORT.Application.DutyFreeService/bin/Release/net6.0/ ./
RUN find . -name appsettings.json -delete -print
CMD ["dotnet", "ADL.AIRPORT.Application.DutyFreeService.dll"]
