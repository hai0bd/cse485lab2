<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $action === 'add' ? 'Thêm bài viết' : 'Sửa bài viết' ?></title>
    <link rel="stylesheet" href="/public/style.css">
</head>

<body>
    <h1><?= $action === 'add' ? 'Thêm bài viết' : 'Sửa bài viết' ?></h1>
    <form method="POST" action="/admin/save.php" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $news['id'] ?? '' ?>">
        <label>Tiêu đề:</label>
        <input type="text" name="title" value="<?= $news['title'] ?? '' ?>" required>
        <label>Hình ảnh:</label>
        <input type="file" name="image">
        <?php if (isset($news['image'])): ?>
            <img src="<?= $news['image'] ?>" alt="<?= $news['title'] ?>" width="100">
        <?php endif; ?>
        <label>Nội dung:</label>
        <textarea name="content" required><?= $news['content'] ?? '' ?></textarea>
        <button type="submit"><?= $action === 'add' ? 'Thêm' : 'Lưu' ?></button>
    </form>
</body>

</html>