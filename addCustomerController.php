<?php
include_once "../config/dbconnect.php";

if (isset($_POST['username'], $_POST['email'], $_POST['password'], $_POST['confirmpassword'])) {
    $username = htmlspecialchars(trim($_POST['username']));
    $email = htmlspecialchars(trim($_POST['email']));
    $password = $_POST['password'];
    $confirmpassword = $_POST['confirmpassword'];

    // Validate input
    if (empty($username) || empty($email) || empty($password)) {
        die("All fields are required.");
    }
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("Invalid email format.");
    }
    if ($password !== $confirmpassword) {
        die("Passwords do not match.");
    }

    // Hash the password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Use prepared statement to prevent SQL injection
    $sql = "INSERT INTO `users` (`username`, `email`, `password`, `isAdmin`, `created_date`) 
            VALUES (?, ?, ?, 1, current_timestamp())";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "sss", $username, $email, $hashedPassword);

    if (mysqli_stmt_execute($stmt)) {
        header("Location: ../index.php?admin=success");
        exit;
    } else {
        die("Database error: " . mysqli_error($conn));
    }
} else {
    die("Invalid form submission.");
}
?>
