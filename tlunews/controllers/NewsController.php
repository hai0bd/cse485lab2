<?php
require_once "../models/NewsModel.php";

class NewsController
{
    private $newsModel;

    public function __construct($db)
    {
        $this->newsModel = new NewsModel($db);
    }

    // Lấy danh sách bài viết
    public function index()
    {
        return $this->newsModel->getAllNews();
    }

    // Lấy chi tiết bài viết
    public function detail($id)
    {
        return $this->newsModel->getNewsById($id);
    }

    // Thêm bài viết
    public function create($data)
    {
        return $this->newsModel->createNews($data['title'], $data['content'], $data['image'], $data['category_id']);
    }

    // Sửa bài viết
    public function update($id, $data)
    {
        return $this->newsModel->updateNews($id, $data['title'], $data['content'], $data['image'], $data['category_id']);
    }

    // Xóa bài viết
    public function delete($id)
    {
        return $this->newsModel->deleteNews($id);
    }
}
?>