<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Analytics</title>

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            background:#f4f7fb;
            color:#333;
        }

        .sidebar{
            width:240px;
            height:100vh;
            background:#111827;
            position:fixed;
            left:0;
            top:0;
            padding:20px;
        }

        .sidebar h2{
            color:white;
            margin-bottom:40px;
            text-align:center;
        }

        .sidebar a{
            display:block;
            color:#cbd5e1;
            text-decoration:none;
            padding:12px;
            margin-bottom:10px;
            border-radius:8px;
            transition:0.3s;
        }

        .sidebar a:hover{
            background:#1e293b;
            color:#38bdf8;
        }

        .main{
            margin-left:240px;
            padding:30px;
        }

        .topbar{
            display:flex;
            justify-content:space-between;
            align-items:center;
            margin-bottom:30px;
        }

        .topbar h1{
            font-size:28px;
        }

        .cards{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
            gap:20px;
            margin-bottom:30px;
        }

        .card{
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0 4px 10px rgba(0,0,0,0.08);
        }

        .card h3{
            color:#64748b;
            margin-bottom:10px;
        }

        .card p{
            font-size:28px;
            font-weight:bold;
            color:#0f172a;
        }

        .chart-container{
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0 4px 10px rgba(0,0,0,0.08);
            margin-bottom:30px;
        }

        .table-container{
            background:white;
            padding:25px;
            border-radius:15px;
            box-shadow:0 4px 10px rgba(0,0,0,0.08);
        }

        table{
            width:100%;
            border-collapse:collapse;
            margin-top:20px;
        }

        table th{
            background:#0f172a;
            color:white;
            padding:14px;
            text-align:left;
        }

        table td{
            padding:14px;
            border-bottom:1px solid #e2e8f0;
        }

        table tr:hover{
            background:#f8fafc;
        }

        .status{
            padding:6px 12px;
            border-radius:20px;
            color:white;
            font-size:12px;
        }

        .active{
            background:#22c55e;
        }

        .pending{
            background:#f59e0b;
        }

        .inactive{
            background:#ef4444;
        }

    </style>
</head>

<body>

<div class="sidebar">
    <h2>My Dashboard</h2>

    <a href="#">Dashboard</a>
    <a href="#">Analytics</a>
    <a href="#">Reports</a>
    <a href="#">Users</a>
    <a href="#">Settings</a>
</div>

<div class="main">

    <div class="topbar">
        <h1>Dashboard Overview</h1>
        <h3>Welcome Admin</h3>
    </div>

    <!-- Cards -->
    <div class="cards">

        <div class="card">
            <h3>Total Users</h3>
            <p>1,245</p>
        </div>

        <div class="card">
            <h3>Total Revenue</h3>
            <p>R85,000</p>
        </div>

        <div class="card">
            <h3>Projects</h3>
            <p>18</p>
        </div>

        <div class="card">
            <h3>Pending Tasks</h3>
            <p>32</p>
        </div>

    </div>

    <!-- Chart -->
    <div class="chart-container">
        <h2>Monthly Sales Analytics</h2>

        <canvas id="salesChart"></canvas>
    </div>

    <!-- Table -->
    <div class="table-container">

        <h2>Recent Users</h2>

        <table>

            <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Status</th>
            </tr>
            </thead>

            <tbody>

            <tr>
                <td>John Smith</td>
                <td>john@example.com</td>
                <td>Admin</td>
                <td><span class="status active">Active</span></td>
            </tr>

            <tr>
                <td>Sarah Johnson</td>
                <td>sarah@example.com</td>
                <td>User</td>
                <td><span class="status pending">Pending</span></td>
            </tr>

            <tr>
                <td>Michael Brown</td>
                <td>michael@example.com</td>
                <td>Manager</td>
                <td><span class="status inactive">Inactive</span></td>
            </tr>

            </tbody>

        </table>

    </div>

</div>

<script>

    const ctx = document.getElementById('salesChart');

    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [{
                label: 'Revenue',
                data: [12000, 19000, 15000, 22000, 18000, 25000],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

</script>

</body>
</html>