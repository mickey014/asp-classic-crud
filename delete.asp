<!--#include file="db.asp"-->

<%
Dim cmd

Set cmd = Server.CreateObject("ADODB.Command")

cmd.ActiveConnection = Conn

cmd.CommandText = "DELETE FROM Employees WHERE EmployeeID=?"

cmd.Parameters.Append cmd.CreateParameter("@EmployeeID", 3, 1, , CLng(Request.QueryString("id")))

cmd.Execute

Conn.Close
Set Conn = Nothing

Response.Redirect "index.asp"
%>