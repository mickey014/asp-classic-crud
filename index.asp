<!--#include file="db.asp"-->

<%
Dim rs
Set rs = Conn.Execute("SELECT EmployeeID, FirstName, LastName FROM Employees ORDER BY EmployeeID")
%>

<!DOCTYPE html>
<html>
<head>
    <title>Employees</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="container mt-4">

<h2>Employee List</h2>

<a href="add.asp" class="btn btn-primary mb-3">Add Employee</a>

<table class="table table-bordered">

<tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Action</th>
</tr>

<%
Do Until rs.EOF
%>

<tr>

<td><%=rs("EmployeeID")%></td>

<td><%=rs("FirstName")%></td>

<td><%=rs("LastName")%></td>

<td><%=rs("Email")%></td>

<td>

<a href="edit.asp?id=<%=rs("EmployeeID")%>" class="btn btn-warning btn-sm">Edit</a>

<a href="delete.asp?id=<%=rs("EmployeeID")%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete this employee?')">

Delete

</a>

</td>

</tr>

<%

rs.MoveNext

Loop

rs.Close
Set rs = Nothing

Conn.Close
Set Conn = Nothing

%>

</table>

</body>
</html>