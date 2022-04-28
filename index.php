<?php 
session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <link rel="icon" href="icon.jpg">
    <link rel="stylesheet" href="css/index.css">
    <meta charset="utf-8">
    <title>Owocowy Warzywniak</title>
    <script src="js/script.js"></script>
</head>

<body>
    <header>
        <div class="pasek">
        <?php 
        if (isset($_SESSION['zalogowany'])) echo $_SESSION['zalogowany'];
        ?>
        <?php 
        if (isset($_SESSION['wrong'])) echo $_SESSION['wrong'];
        ?>
        
            <img src="img/logo2.png" alt="logo" class="logo">
            <nav>
                <ul>
                    <li><a  onclick="glowna()">Strona głowna</a></li>
                    <li><a  onclick="lista()">Lista produktow</a></li>
                    <li><a  onclick="koszyk()">Koszyk</a></li>
                    <li><a  onclick="kontakt()">Kontakt</a></li>
                    <li><a  onclick="faq()">Konto</a></li>
                </ul>
            </nav>

        </div>
    </header>
    <div class="box">
        <div class="box__content">
            <div class="box__title">Koszyk</div>
            <div class="box__description">
                Tu znajdują się wybrane przez Ciebie produkty
            </div>
        </div>
    </div>
<div id="main">
    
   
</div>






</body>


</html>