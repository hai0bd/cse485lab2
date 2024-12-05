<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản trị tin tức</title>
    <link rel="stylesheet" href="/public/style.css">
</head>
<body>
    <h1>Quản trị tin tức</h1>
    <a href="/admin/form.php?action=add">Thêm bài viết</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Tiêu đề</th>
                <th>Hình ảnh</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($news as $item): ?>
                    <tr>
                        <td><?= $item['id'] ?></td>
                        <td><?= $item['title'] ?></td>
                        <td><img src="<?= $item['image'] ?>" alt="<?= $item['title'] ?>" width="100"></td>
                        <td>
                            <a href="/admin/form.php?action=edit&id=<?= $item['id'] ?>">Sửa</a>
                            <a href="/admin/delete.php?id=<?= $item['id'] ?>">Xóa</a>
                        </td>
                    </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
