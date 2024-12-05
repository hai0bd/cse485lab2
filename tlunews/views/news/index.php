<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách tin tức</title>
    <link rel="stylesheet" href="../public/style.css">
</head>

<body>
    <h1>Danh sách tin tức</h1>
    <div class="news-list">
        <?php foreach ($news as $item): ?>
            <div class="news-item">
                <img src="<?= $item['image'] ?>" alt="<?= $item['title'] ?>" class="news-image">
                <h2><a href="/news/detail.php?id=<?= $item['id'] ?>"><?= $item['title'] ?></a></h2>
                <p><?= substr($item['content'], 0, 100) ?>...</p>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>