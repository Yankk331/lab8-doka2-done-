<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Вставка даних</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        include("showUsers.php")
    ?>

<form action="updateUsers.php" method="post">
        <label>ІД рядка який змінюємо</label><input name="ID" type="text"><br>
        <label>Нове значення Nickname</label><input name="Nickname" type="text"><br>
        <label>Нове значення Rating</label><input name="Rating" type="text"><br>
        <input type="submit" value="Змінюємо рядок">
</form>

</body>
</html>