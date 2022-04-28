<?php 
session_start();
require_once "connect.php";

$connect = @new mysqli($host, $db_user, $db_password, $db_name);
if($connect->connect_errno!=0){
    echo "Coś nie bangla".$connect->connect_errno."opis:".$connect->connect_error;
}
else{
    $login = isset($_POST['user']) ? $_POST['user'] : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';

    $sql = "SELECT * FROM konto WHERE login='$login' AND haslo='$password'";

    if($result = @$connect->query($sql)){
        if($result->num_rows>0){
            $row = $result->fetch_assoc();
            $_SESSION['user'] = $row['login'];
            unset( $_SESSION['wrong']);
            header('Location: index.php');
            $_SESSION['zalogowany'] = '<span>Zalogowany jako: '.$row['login'].'</span>';
            $result->free_result();
            
           

        }else{
            unset( $_SESSION['zalogowany']);
            $_SESSION['wrong'] = '<span style = "color:red">Nieprawidłowy login lub hasło!</span>';
            header('Location: index.php');
        }
    }
   

    $connect->close();
}
?>