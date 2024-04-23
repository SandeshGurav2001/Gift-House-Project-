<?php 

$flag=0;
$uerror=$email="";
if(isset($_POST['submit']))
{
$email=$_POST['email'];
$username=$_POST['username'];
$password=$_POST['password'];
$usercheck=$username;
//connect to the server and select the database
$db=mysqli_connect("localhost","root","","gifthouse");
//query
$usercheck="SELECT * FROM user_master1 where username= '$username'";
$result=mysqli_query($db,$usercheck);

if(mysqli_num_rows($result) > 0)
{ 
  $uerror="*Username already taken";
}
else
{
$sql= "INSERT INTO user_master1(email,username,password) VALUES('$email','$username','$password')";
mysqli_query($db,$sql);
$flag=1;
$uerror=$email="";
}
}
?>

<?php include('partials-front/menu.php'); ?>


<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>Login - Gift House</title>
        <link rel="stylesheet" href="admin.css">
        <style>
    .login{
        background-image: url("images/images.jpg");
        background-repeat:no-repeat;
        background-size: cover;
      }
        </style>
    </head>

    <body>
        
        <div class="login">
            <h1 class="text-center">Signup</h1>
            <br>

            <?php 
                if(isset($_SESSION['login']))
                {
                    echo $_SESSION['login'];
                    unset($_SESSION['login']);
                }

                if(isset($_SESSION['no-login-message']))
                {
                    echo $_SESSION['no-login-message'];
                    unset($_SESSION['no-login-message']);
                }
            ?>
            <br>

            <!-- Login Form Starts HEre -->
            <form action="" method="POST" class="text-center">

            Email: <br>
            <input type="text" name="email" placeholder="Enter Email"><br><br>
            Username: <br>
            <input type="text" name="username" placeholder="Enter Username"><br><br>

            Password: <br>
            <input type="password" name="password" placeholder="Enter Password"><br><br>

            <input type="submit" name="submit" value="Login" class="btn-primary"><br><br>
            <h4 class="black-text" style="font-weight: bold;">Already have an account ? <a href="login.php" class="loginlink">Signup</a></h4>
            </form>
            <!-- Login Form Ends HEre -->
            <br>
            <p class="text-center">Created By - <a href="www.sagaryadav.com">Sagar Yadav</a></p>
        </div>

    </body>
</html>

<?php include('partials-front/footer.php'); ?>