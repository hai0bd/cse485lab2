<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $news['title'] ?></title>
    <link rel="stylesheet" href="../public/style.css">
</head>
<body>
    <h1><?= $news['title'] ?></h1>
    <img src="<?= $news['image'] ?>" alt="<?= $news['title'] ?>" class="news-image">
    <p><?= $news['content'] ?></p>
    <small>Đăng ngày: <?= $news['created_at'] ?></small>
</body>
</html>
