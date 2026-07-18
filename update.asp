<!--#include file="db.asp"-->

<%
Dim cmd

Set cmd = Server.CreateObject("ADODB.Command")

cmd.ActiveConnection = Conn

cmd.CommandText = "UPDATE Employees SET FirstName=?, LastName=?, Email=? WHERE EmployeeID=?"

cmd.Parameters.Append cmd.CreateParameter("@FirstName", 200, 1, 100, Request.Form("FirstName"))
cmd.Parameters.Append cmd.CreateParameter("@LastName", 200, 1, 100, Request.Form("LastName"))
cmd.Parameters.Append cmd.CreateParameter("@Email", 200, 1, 150, Request.Form("Email"))
cmd.Parameters.Append cmd.CreateParameter("@EmployeeID", 3, 1, , CLng(Request.Form("EmployeeID")))

cmd.Execute

Conn.Close
Set Conn = Nothing

Response.Redirect "index.asp"
%>