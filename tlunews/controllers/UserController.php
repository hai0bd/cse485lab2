<?php
require_once "../models/UserModel.php";

class UserController
{
    private $userModel;

    public function __construct($db)
    {
        $this->userModel = new UserModel($db);
    }

    // Đăng nhập
    public function login($username, $password): mixed
    {
        return $this->userModel->login($username, $password);
    }

    // Đăng xuất
    public function logout()
    {
        session_start();
        session_destroy();
    }
}
?>
