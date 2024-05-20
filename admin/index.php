<?php
session_start();
error_reporting(0);
include("include/config.php");

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    if ($username === "admin" && $password === md5("sibiselva")) {
        $_SESSION['alogin'] = $username;
        // No need to fetch data from the database in this case
        $extra = "dashboard.php";
        $host = $_SERVER['HTTP_HOST'];
        $uri = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        header("location: http://$host$uri/$extra");
        exit();
    } else {
        $_SESSION['errmsg'] = "Invalid username or password";
        $extra = "index.php";
        $host = $_SERVER['HTTP_HOST'];
        $uri = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
        header("location: http://$host$uri/$extra");
        exit();
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Login</title>
    <style type="text/css">
    	body{
    margin: 0;
    padding: 0;
    background: url(images/mgg.jpg);
    background-size: cover;
    font-family: sans-serif;
}

.loginBox{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 350px;
    height: 450px;
    padding: 50px;
    border-radius: 10px;
    box-sizing: border-box;
    background: rgba(0,0,0,.5);
}

.user{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    overflow: hidden;
    position: absolute;
    top: calc(-100px/2);
    left: calc(50% - 50px);
}

h2{
    margin: 0;
    padding: 10px 0 20px;
    color: #FB11AA;
    text-align: center;
}

.loginBox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
    color: #fff;
}

.loginBox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginBox input[type="text"],
.loginBox input[type="password"]{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}

::placeholder{
    color: rgba(255,255,255,.5);
}

.loginBox input[type="submit"]{
    border: none;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
    background: #ff267e;
    cursor: pointer;
    border-radius: 20px;
}

.loginBox input[type="submit"]:hover{
    background: #efed40;
    color: #262626;
}

.loginBox a{
    color: #fff;
    font-size: 14px;
    font-weight: bold;
    text-decoration: none;
}
/* Center the button horizontally and vertically */
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh; /* Adjust this as needed to fit the button in your layout */
}

/* Apply a red background color and border-radius to the button */
.back-to-home {
  background-color: #F1FF65; /* Red color code */
  padding: 10px 20px;
  border: none;
  margin-left: 45px;
  border-radius: 20px; /* Adjust the value to change the level of roundness */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Add a subtle shadow */
  font-size: 16px;
  color: black; /* White text color */
  text-decoration: none; /* Remove underline from the anchor */
}

/* Style the anchor element inside the button */
.back-to-home a {
  color: black; /* White text color */
  text-decoration: none; /* Remove underline */
}

/* Hover effect for the button */
.back-to-home:hover {
  background-color: #F1FF65; /* Slightly lighter red on hover */
  cursor: pointer;
  color:black;
  font-weight: bold;
}


    </style>
</head>
<body>
    <div class="loginBox">
        <img src="images/user-face.png" class="user"><br>
        <h2 style="color:#e3eb64;">Welcome sibi</h2><br>
        <span style="color:red;"><?php echo htmlentities($_SESSION['errmsg']); ?><?php echo htmlentities($_SESSION['errmsg']="");?></span>
        <form method="post">
           <p>User Name</p>
            <input type="text" name="username" placeholder="Enter UserName">
            <p>Password</p>
            <div style="display: flex; align-items: center;">
                <input type="password" name="password" id="passwordInput" placeholder="Enter Password">
                <input type="checkbox" id="showPassword" style="margin-left: 5px;">
                <label for="showPassword" style="margin-left: -45px; margin-bottom: 20px; color: white;">Show</label>

            </div>

            
            <script>
                const passwordInput = document.getElementById("passwordInput");
                const showPasswordCheckbox = document.getElementById("showPassword");

                showPasswordCheckbox.addEventListener("change", function() {
                    if (showPasswordCheckbox.checked) {
                        passwordInput.type = "text";
                    } else {
                        passwordInput.type = "password";
                    }
                });
            </script>

            <input type="submit" name="submit" value="Sign In">
            <button class="back-to-home">
                <a href="http://localhost/agro_agencies/index.php">Back to Home Page</a>
            </button>
        </form>
    </div>
</body>

</html>