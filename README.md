# JavaProject
Phone Book
created war fiel from eclipse ide by usigin export option,
in windows powershell, copied war file to webapps directory of tomcat folder, where its installed,
Now in powershell cd tomcat bin path, here run .\startup.bat command, which will run project in localhost:8080/warfilenamewihtoug.warextension

IN mysql workbench , exported databse in . sql file from server tab.

creted dockerfile for build  by maven & deploy war in webappp dir of tomcat,
created dockercompose file for connection between java & mysql, in src-code of java , replaced localhost url with 
docker compose mysql service name, 
automatically mysql service will resolve ip addr of mysql container.
