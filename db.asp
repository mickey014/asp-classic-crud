<%
On Error Resume Next

Dim Conn
Set Conn = Server.CreateObject("ADODB.Connection")

Conn.Open "Provider=SQLOLEDB;" & _
          "Server=KIRK-PC\SQLEXPRESS;" & _
          "Database=SimpleCRUD;" & _
          "Integrated Security=SSPI;"

If Err.Number <> 0 Then
    Response.Write "Connection failed: " & Err.Number & "<br>"
    Response.Write Err.Description
    Response.End
End If
%>