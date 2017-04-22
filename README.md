# PracticeWithJavaEE
<pre>
To launch the application local needs:
Need to create table into mysql database schema with name: 
shopcakes, from main sql file and load data from other sql files.
The next directory /**META-INF** contains file **context.xml** with property to mysql database
need to change **username** and **password** to yours.
Build the application by maven.
At the end after success build, you will have a file with name **WebShop.war**.
Put the file into /webapp in **Apache Tomcat**.
and launch tomcat.

P.S. If There will be some trouble with connect to DB:
Into file in **Apache Tomcat** /conf/server.xml needs to insert inner data from **context.xml**

Here is present my practice with Java EE(Servlet, JSP, ExpressLanguage, MySQL, CSS, HTML, JavaScript, JQuery).

The application can:
1) Change language using two approaches via session or coockies.
2) Main page contain menu panel, filter params and pagination. There are you can add a goods to your cart.
3) Registration page contains generated catcha and some necessary fields
catcha is saved for 5 minutes and the destroy if it was used or time is out.
4) Menu has some special things:
Some of them :
- cart where user can see how much is his order;
- if the user is logged in at the right top shows his name and avatar;
- switch language;
The application has two languages ru and eng 
for **menu** and **registration** page

5) Order page user can go there only if it is logged in.
There is user can edit his order.

Also here is implemented pagination and a bit security for some pages
</pre>
