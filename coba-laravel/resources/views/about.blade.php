<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HL Blog | About</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>halaman about</h1>
    <!-- <h3>Moch haykal alvegio hadian</h3>
    <p>haykal@gmail.com</p>
    <img src="img/HL.jpg" alt="Moch Haykal" width="200"> -->


    <h3><?= $name ; ?></h3>
    <p><?= $email; ?></p>
    <img src="img/<?= $image; ?>" alt="<?= $name ; ?> " width="200">

    <script src = "js/script.js" ></script>
</body>
</html>