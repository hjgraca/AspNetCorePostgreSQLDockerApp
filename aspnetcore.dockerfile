FROM microsoft/aspnet:1.0.0-rc1-update1-coreclr

COPY ./project.json /app/WebApp/
COPY ./nuget.config /app/
COPY ./global.json /app/
WORKDIR /app/WebApp
RUN ["dnu", "restore"]
ADD . /app/WebApp/

EXPOSE 5000
ENTRYPOINT ["dnx", "web"]