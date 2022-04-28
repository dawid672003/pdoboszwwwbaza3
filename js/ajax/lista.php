
    <?php 
    session_start();
    $host = "localhost";
    $db_user = "root";
    $db_password = "";
   $db_name ="warzywniak";
    
    $connect = @new mysqli($host, $db_user, $db_password, $db_name);
    if($connect->connect_errno!=0){
        echo "Coś nie bangla".$connect->connect_errno."opis:".$connect->connect_error;
    }
    else{
        $sql = "SELECT * FROM produkty";
        $result=mysqli_query($connect,$sql);
        while($row=mysqli_fetch_assoc($result)){
            echo  "<div class='produkt'>
            <img src='".$row['zdjecie']."' alt='Brak zdjecia'>
            <h1>".$row['nazwa']."</h1>
            <p class='cena'>".$row['cena']."Zł</p>
            <p>Cena za kilogram</p>
            <p><button>Dodaj do koszyka</button></p>
            </div>";
        
        }
       
        $connect->close();
    }
?>