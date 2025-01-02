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


faced error like 
curred at line: [14] in the generated java file: [&#47;usr&#47;local&#47;tomcat&#47;work&#47;Catalina&#47;localhost&#47;ROOT&#47;org&#47;apache&#47;jsp&#47;index_jsp.java]
Only a type can be imported. entity.User resolves to a package

An error occurred at line: [15] in the generated java file: [&#47;usr&#47;local&#47;tomcat&#47;work&#47;Catalina&#47;localhost&#47;ROOT&#47;org&#47;apache&#47;jsp&#47;index_jsp.java]
Only a type can be imported. dao.ContactDao resolves to a package

An error occurred at line: [16] in the generated java file: [&#47;usr&#47;local&#47;tomcat&#47;work&#47;Catalina&#47;localhost&#47;ROOT&#47;org&#47;apache&#47;jsp&#47;index_jsp.java]
Only a type can be imported. dao.UserDao resolves to a package

An error occurred at line: [17] in the generated java file: [&#47;usr&#47;local&#47;tomcat&#47;work&#47;Catalina&#47;localhost&#47;ROOT&#47;org&#47;apache&#47;jsp&#47;index_jsp.java]
Only a type can be imported. entity.Contact resolves to a package

An error occurred at line: [18] in the generated java file: [&#47;usr&#47;local&#47;tomcat&#47;work&#47;Catalina&#47;localhost&#47;ROOT&#47;org&#47;apache&#47;jsp&#47;index_jsp.java]
Only a type can be imported. connection.DbConnect resolves to a package

An error occurred at line: [36] in the jsp file: [&#47;Component&#47;navbar.jsp]
User cannot be resolved to a type
33:
34:
35:    &lt;%
36:     User u=(User)session.getAttribute(&quot;user&quot;);
37:     if(u ==null){
38:     %&gt;
39:              &lt;form class=&quot;form-inline my-2 my-lg-0&quot;&gt;


An error occurred at line: [36] in the jsp file: [&#47;Component&#47;navbar.jsp]
User cannot be resolved to a type
33:
34:
35:    &lt;%
36:     User u=(User)session.getAttribute(&quot;user&quot;);
37:     if(u ==null){
38:     %&gt;
39:              &lt;form class=&quot;form-inline my-2 my-lg-0&quot;&gt;


Stacktrace:
        org.apache.jasper.compiler.DefaultErrorHandler.javacError(DefaultErrorHandler.java:72)
        org.apache.jasper.compiler.ErrorDispatcher.javacError(ErrorDispatcher.java:192)
        org.apache.jasper.compiler.JDTCompiler.generateClass(JDTCompiler.java:542)
        org.apache.jasper.compiler.Compiler.compile(Compiler.java:371)
