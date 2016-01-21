<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Register in our website</title>

        
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

       
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body background="assets/images/body1.jpg">

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %> 

<%@page import="javax.mail.*" %> 
<%@page import="javax.activation.*" %> 
<%@page import="java.security.Security" %> 
<%@page import="java.util.Properties" %> 
<%@page import="javax.mail.Message" %> 
<%@page import="javax.mail.Session" %> 
<%@page import="javax.mail.Transport" %> 
<%@page import="javax.mail.internet.InternetAddress"%> 
<%@page import="javax.mail.internet.MimeMessage"%> 
<%@page import="java.util.Random" %> 
<%@page import="javax.mail.internet.*"%> 
<%@page import="java.io.*"%> 
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.PasswordAuthentication"%>

<%@ page import="java.sql.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="javax.sql.*" %>
<%
  
    try
    {%>
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srp","root",""); 
PreparedStatement ps=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?)");
%>
<%
String name=request.getParameter("uname");
String id=request.getParameter("reg");
String sex=request.getParameter("gender");
String addr=request.getParameter("email");
String deg=request.getParameter("degree");
String dept=request.getParameter("dept");
String pwd=request.getParameter("pass");
%>
<%
ps.setString(1,name);
ps.setString(2,id);
ps.setString(3,sex);
ps.setString(4,addr);
ps.setString(7,deg);
ps.setString(5,dept);
ps.setString(6,pwd);
int s=ps.executeUpdate();
%>
<% 
//Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider()); 
//out.println("\nHai");
try 
{ 
//String email=request.getParameter("mailaddress"); 
String email=addr;
//Random r = new Random(); 
//int no=r.nextInt(); 
//if(no<0) 
//{ 
//no=no*-1; 
//} 
//String username="give u r use"; 
String username="wasted1508"; 
//String password="password of u r mailid"; 
String password="sangee_95mani"; 
String recipients=email; 
//String block= new Integer(no).toString(); 
//out.println("\nusername:"+username);
//out.println("\nRecipient:"+email);
// seekerRegbean ob=new seekerRegbean();	

//out.println("Usrename is**************"+recipients); 
//out.println("mail iddddddddddddddd"+email); 
String mailhost ="smtp.gmail.com"; 
String subject="www.crowdsourcing.com"; 
//out.println("SUBJECT:"+subject); 
//String sender=username;
String sender="wasted1508@gmail.com"; 
//String body=block; 

//out.println("\nSender:"+sender);
//out.println("\nSubject:"+subject);


//out.println("*try block"); 
Properties props = new Properties(); 
props.setProperty("mail.transport.protocol", "smtp"); 
props.setProperty("mail.host", mailhost); 
props.put("mail.smtp.auth", "true"); 
props.put("mail.smtp.port", "465"); 
props.put("mail.smtp.socketFactory.port", "465"); 
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory"); 
props.put("mail.smtp.socketFactory.fallback", "false"); 
props.setProperty("mail.smtp.quitwait", "false"); 

javax.mail.Authenticator pa; 

//out.println("**try block"); 

pa = new javax.mail.Authenticator() 
{ 
public javax.mail.PasswordAuthentication getPasswordAuthentication() 
{	
//return new javax.mail.PasswordAuthentication("uername@xx.com","your password"); 
return new javax.mail.PasswordAuthentication("wasted1508@gmail.com","sangee_95mani"); 

} 
}; 
Session session1 = Session.getInstance(props,pa); 
MimeMessage message = new MimeMessage(session1); 
message.setSender(new InternetAddress(sender)); 

int len=recipients.length();
//out.println("\nRecipients length:"+len);
InternetAddress[] addressTo = new InternetAddress[len];
        //for (int i = 0; i < len; i++)
        //{
          //  addressTo[i] = new InternetAddress(recipients[i]);
        //}
        message.setRecipients(Message.RecipientType.TO, recipients);
		
		
		
BodyPart messageBodyPart = new MimeBodyPart(); 
//out.println("**try block"); 
message.setSubject(subject); 		
	message.setContent("Welcome to Crowd Sourcing,you have successfully registered", "text/html"); 


//Multipart multipart = new MimeMultipart(); 
//multipart.addBodyPart(messageBodyPart); 

// Part two is attachment 
//messageBodyPart = new MimeBodyPart(); 
//String filename = "file.txt"; 
//DataSource source = new FileDataSource(filename); 
//messageBodyPart.setDataHandler(new DataHandler(source)); 
//messageBodyPart.setFileName(filename); 
//multipart.addBodyPart(messageBodyPart); 

// Put parts in message 
//message.setContent(multipart); 

// Send the message 
//out.println("**try block"); 
Transport.send(message); 
//out.println("**try block"); 


//Transport.send(message); 
//response.sendRedirect("success.jsp"); 
%>
<%
} 

catch(Exception e) 
{ 
	//out.println(e);
	out.println("\nException:"+e.getMessage()); 
} 
 //finally {
   //     transport.close();
    //}

//out.println("*****End1*****"); 

%> 


<br> <br> <br> <br>
<center><h1>registered successfully</h1>
<h2> you are now registered here <h2><br>
Go back to <a href="login.html"> LOGIN page </a>
</center>
<%
}
catch(Exception e)
{
 out.println("Exception : " + e.getMessage() + "");
}
%>
</body>
</html>
