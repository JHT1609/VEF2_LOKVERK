<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>New User</title>
</head>
<body>
    <form action="/new_user" method="POST">
        <label>Email: </label>
        <input type="email" name="email" pattern="\w+@\w+\.\w+">
        <br><br>
        <label>User name: </label>
        <input type="text" name="user" pattern="(?=.*[A-Z])(?=.*[a-z])[A-Za-z]{4,}">
        <br><br>
        <label>Password: </label>
        <input type="password" name="password" pattern="(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{4,}">
        <br><br>
        <input type="submit">
    </form>
</body>
</html>
