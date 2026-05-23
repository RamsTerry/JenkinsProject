<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            background:#f4f6f9;
            color:#333;
        }

        .navbar{
            background:#1e293b;
            color:white;
            padding:20px 40px;
            display:flex;
            justify-content:space-between;
            align-items:center;
        }

        .navbar h1{
            font-size:24px;
        }

        .navbar ul{
            display:flex;
            list-style:none;
            gap:20px;
        }

        .navbar a{
            color:white;
            text-decoration:none;
            transition:0.3s;
        }

        .navbar a:hover{
            color:#38bdf8;
        }

        .container{
            padding:40px;
        }

        .cards{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
            gap:20px;
            margin-top:30px;
        }

        .card{
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0 4px 12px rgba(0,0,0,0.1);
            transition:0.3s;
        }

        .card:hover{
            transform:translateY(-5px);
        }

        .card h2{
            margin-bottom:10px;
            color:#0f172a;
        }

        .card p{
            color:#64748b;
        }

        .btn{
            display:inline-block;
            margin-top:15px;
            padding:10px 18px;
            background:#0ea5e9;
            color:white;
            text-decoration:none;
            border-radius:8px;
            transition:0.3s;
        }

        .btn:hover{
            background:#0284c7;
        }

        footer{
            text-align:center;
            padding:20px;
            margin-top:40px;
            background:#1e293b;
            color:white;
        }
    </style>
</head>

<body>

<div class="navbar">
    <h1>My Dashboard</h1>

    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Reports</a></li>
        <li><a href="#">Users</a></li>
        <li><a href="#">Settings</a></li>
    </ul>
</div>

<div class="container">

    <h2>Welcome to Your Dashboard</h2>
    <p>Manage your application easily with this modern JSP UI.</p>

    <div class="cards">

        <div class="card">
            <h2>Total Users</h2>
            <p>1,245 Active Users</p>
            <a href="#" class="btn">View</a>
        </div>

        <div class="card">
            <h2>Sales</h2>
            <p>R45,000 Revenue This Month</p>
            <a href="#" class="btn">View</a>
        </div>

        <div class="card">
            <h2>Projects</h2>
            <p>12 Running Projects</p>
            <a href="#" class="btn">View</a>
        </div>

    </div>

</div>

<footer>
    © 2026 Dashboard Application
</footer>

</body>
</html>