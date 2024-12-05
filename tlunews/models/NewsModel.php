<?php
class NewsModel
{
    private $conn;
    private $table_name = "news";

    public function __construct($db)
    {
        $this->conn = $db;
    }

    // Lấy tất cả bài viết
    public function getAllNews()
    {
        $query = "SELECT * FROM " . $this->table_name . " ORDER BY created_at DESC";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Lấy chi tiết bài viết
    public function getNewsById($id)
    {
        $query = "SELECT * FROM " . $this->table_name . " WHERE id = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Thêm bài viết
    public function createNews($title, $content, $image, $category_id)
    {
        $query = "INSERT INTO " . $this->table_name . " (title, content, image, category_id, created_at)
                  VALUES (?, ?, ?, ?, NOW())";
        $stmt = $this->conn->prepare($query);
        return $stmt->execute([$title, $content, $image, $category_id]);
    }

    // Sửa bài viết
    public function updateNews($id, $title, $content, $image, $category_id)
    {
        $query = "UPDATE " . $this->table_name . " SET title = ?, content = ?, image = ?, category_id = ? WHERE id = ?";
        $stmt = $this->conn->prepare($query);
        return $stmt->execute([$title, $content, $image, $category_id, $id]);
    }

    // Xóa bài viết
    public function deleteNews($id)
    {
        $query = "DELETE FROM " . $this->table_name . " WHERE id = ?";
        $stmt = $this->conn->prepare($query);
        return $stmt->execute([$id]);
    }
}
?>