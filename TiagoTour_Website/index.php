<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tiago Tour Guide</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Sage green background with a subtle texture */
        body {
            background-color: #bac095;
            background-image: url('https://www.transparenttextures.com/patterns/linen-pattern.png');
            height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
        }

        .header {
            text-align: center;
            padding-top: 30px;
            color: white;
        }

        .header h1 {
            font-size: 3.5rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 1.5rem;
            margin-bottom: 40px;
        }

        .button-section {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-custom {
            padding: 15px 40px;
            font-size: 1.2rem;
            border-radius: 30px;
            transition: all 0.3s ease;
        }

        /* Hover effect for buttons */
        .btn-custom:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }

        .footer {
            text-align: center;
            padding: 20px;
            color: white;
            background-color: #6B705C;
            position: relative;
        }
    </style>
</head>

<body>

    <!-- Header Content at the Top -->
    <div class="header">
        <h1>Tiago Tour Guide</h1>
        <p class="lead">Explore the VX LAB with the Tiago Tour Guide</p>
    </div>

    <!-- Buttons in the Middle -->
    <div class="button-section">
        <div class="text-center">
            <form action="test.php" method="post"><button class="btn btn-success mx-2 btn-custom" name="letter" value="true">Start Tiago</button></form>
            <button class="btn btn-primary mx-2 btn-custom">Localise</button>
            <!-- Red Button -->
            <button class="btn btn-danger mx-2 btn-custom">Emergency Stop</button>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <?php 
        print gethostbyaddr("127.0.0.1");
        ?>
    </footer>

    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>