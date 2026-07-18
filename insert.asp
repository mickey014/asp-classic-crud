<!--#include file="db.asp"-->

<%
Dim cmd

Set cmd = Server.CreateObject("ADODB.Command")

cmd.ActiveConnection = Conn

cmd.CommandText = "INSERT INTO Employees(FirstName, LastName, Email) VALUES (?, ?, ?)"

cmd.Parameters.Append cmd.CreateParameter("@FirstName", 200, 1, 100, Request.Form("FirstName"))
cmd.Parameters.Append cmd.CreateParameter("@LastName", 200, 1, 100, Request.Form("LastName"))
cmd.Parameters.Append cmd.CreateParameter("@Email", 200, 1, 150, Request.Form("Email"))

cmd.Execute

Response.Redirect "index.asp"
%>