#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

FROM mysql:5.7.22
EXPOSE 3306
COPY DBBackup/backup.sql /docker-entrypoint-initdb.d/backup.sql
