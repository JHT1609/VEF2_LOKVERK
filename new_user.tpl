<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/static/styles.css">
    <meta charset="utf-8">
    <meta name="viewpoint">
    <title></title>
</head>
<body>
<div class="login">
    <h3>E-mail: {{email}}</h3>
    <h3>User: {{user}}</h3>
    <h3>Password: {{password}}</h3>


    % newuser = {'email': email, 'username': user, 'pwd': password}

    <%
        import json
        with open('users.json', 'r', encoding='utf-8') as f:
            userdata = json.load(f)
    %>

       % if not any(x ['username'] == newuser['username'] for x in userdata['users']):
       %     userdata['users'].append(newuser)
             <h3>Takk fyrir skráninguna</h3>
       % else:
            <h3>Notendanafn er nú þegar skráð</h3>
       %end

    <%
        with open('users.json', 'w', encoding="utf-8") as f:
            json.dump(userdata, f)
    %>
    <br>
    <div2>
        <a href="/concerts">Skoða Tónleika</a>
        </div2>
    </div>

</body>
</html>
