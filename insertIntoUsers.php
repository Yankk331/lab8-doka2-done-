<html>
    <body>

<?php

$mysqli = new mysqli('localhost', 'root', '', 'doka2'); // Створюємо нове підключення з назвою $mysqli за допомогою створення об'єта класу mysqli. Параметри підключення по порядку: сервер, логін, пароль, БД
$mysqli->set_charset("utf8"); // Встановлюємо кодування utf8

if (mysqli_connect_errno()) {
    printf("Підключення до сервера не вдалось. Код помилки: %s\n", mysqli_connect_error());
    exit;
}

$Nickname = $_POST['Nickname'];
$ID = $_POST['ID'];
$Rating = $_POST['Rating'];

$sql = "INSERT INTO user (`Nickname`, `ID`, `Rating`) VALUES ('$Nickname', '$ID', '$Rating')";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }



/*Закриваємо з'єднання*/
$mysqli->close();

include("showUsers.php")
?>
<br><br><br>
<ul>
    <li><a href="insertIntoUsersForm.php">Вставити рядок</a><br></li>
</ul>
    </body>
</html>
