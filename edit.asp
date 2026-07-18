<!--#include file="db.asp"-->

<%
Dim id
id = Request.QueryString("id")

Dim rs
Set rs = Server.CreateObject("ADODB.Recordset")

rs.Open "SELECT * FROM Employees WHERE EmployeeID=" & CLng(id), Conn
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">

<h2>Edit Employee</h2>

<form action="update.asp" method="post">

<input type="hidden" name="EmployeeID" value="<%=rs("EmployeeID")%>">

<div class="mb-3">
    <label>First Name</label>
    <input
        type="text"
        name="FirstName"
        class="form-control"
        value="<%=Server.HTMLEncode(rs("FirstName"))%>"
        required>
</div>

<div class="mb-3">
    <label>Last Name</label>
    <input
        type="text"
        name="LastName"
        class="form-control"
        value="<%=Server.HTMLEncode(rs("LastName"))%>"
        required>
</div>

<div class="mb-3">
    <label>Email</label>
    <input
        type="email"
        name="Email"
        class="form-control"
        value="<%=Server.HTMLEncode(rs("Email"))%>">
</div>

<button class="btn btn-primary">Update</button>
<a href="index.asp" class="btn btn-secondary">Cancel</a>

</form>

</body>
</html>

<%
rs.Close
Set rs = Nothing
Conn.Close
Set Conn = Nothing
%>