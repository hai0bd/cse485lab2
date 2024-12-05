<?php
// Bắt đầu session để quản lý đăng nhập
session_start();

// Tự động tải các file cần thiết
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/../controllers/NewsController.php';
require_once __DIR__ . '/../controllers/UserController.php';

// Kết nối CSDL
$database = new Database();
$db = $database->getConnection();

// Khởi tạo controller
$newsController = new NewsController($db);
$userController = new UserController($db);

// Xác định hành động thông qua tham số 'action'
$action = $_GET['action'] ?? 'home';

// Điều hướng dựa trên hành động
switch ($action) {
    case 'home':
        $news = $newsController->index(); // Lấy danh sách tin tức
        include __DIR__ . '/../views/news/index.php';
        break;

    case 'news-detail':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $newsDetail = $newsController->detail($id); // Lấy chi tiết tin
            include __DIR__ . '/../views/news/detail.php';
        } else {
            echo "Không tìm thấy bài viết.";
        }
        break;

    // Đăng nhập và xác thực admin
    case 'admin-login':
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $username = $_POST['username'] ?? '';
            $password = $_POST['password'] ?? '';
            $admin = $userController->login($username, $password); // Xử lý đăng nhập

            if ($admin) {
                $_SESSION['admin_logged_in'] = true;
                $_SESSION['admin_username'] = $username;
                header('Location: index.php?action=admin-dashboard');
                exit();
            } else {
                $error = "Tên đăng nhập hoặc mật khẩu sai.";
                include __DIR__ . '/../views/admin/login.php';
            }
        } else {
            include __DIR__ . '/../views/admin/login.php';
        }
        break;

    // Dashboard quản trị viên
    case 'admin-dashboard':
        // Kiểm tra đăng nhập quản trị viên
        if (!isset($_SESSION['admin_logged_in']) || !$_SESSION['admin_logged_in']) {
            header('Location: index.php?action=admin-login');
            exit();
        }

        $news = $newsController->index(); // Lấy danh sách tin tức
        include __DIR__ . '/../views/admin/dashboard.php'; // Chuyển đến Dashboard
        break;

    // Quản lý tin tức (thêm, sửa, xóa)
    case 'admin-manage':
        // Kiểm tra đăng nhập quản trị viên
        if (!isset($_SESSION['admin_logged_in']) || !$_SESSION['admin_logged_in']) {
            header('Location: index.php?action=admin-login');
            exit();
        }

        $actionType = $_GET['actionType'] ?? null;
        if ($actionType === 'add') {
            include __DIR__ . '/../views/admin/add-news.php'; // Hiển thị form thêm tin
        } elseif ($actionType === 'edit' && isset($_GET['id'])) {
            $id = $_GET['id'];
            $newsDetail = $newsController->detail($id); // Hiển thị form chỉnh sửa tin
            include __DIR__ . '/../views/admin/edit-news.php';
        } else {
            $news = $newsController->index(); // Lấy danh sách tin tức
            include __DIR__ . '/../views/admin/manage.php';
        }
        break;

    // Đăng xuất
    case 'admin-logout':
        session_destroy();
        header('Location: index.php?action=admin-login');
        break;

    default:
        echo "Trang không tồn tại.";
        break;
}
