<!DOCTYPE html>
<html>
  <head>
    <title>Add Employee</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>

  <body class="container mt-4">
    <h2>Add Employee</h2>

    <form action="insert.asp" method="post">
      <div class="mb-3">
        <label>First Name</label>

        <input type="text" name="FirstName" class="form-control" required />
      </div>

      <div class="mb-3">
        <label>Last Name</label>

        <input type="text" name="LastName" class="form-control" required />
      </div>

      <div class="mb-3">
        <label>Email</label>

        <input type="email" name="Email" class="form-control" />
      </div>

      <button class="btn btn-success">Save</button>

      <a href="index.asp" class="btn btn-secondary"> Cancel </a>
    </form>
  </body>
</html>
