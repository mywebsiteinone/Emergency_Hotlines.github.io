<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Friendsbook Login</title>
    <link rel="stylesheet" href="./Friendsbook Login_files/style.css">
  </head>
  <body>
    <div class="container flex">
      <div class="facebook-page flex">
        <div class="text">
          <h1>Friendsbook</h1>
          <p>friendsbook in other words</p>
          <p>for marites and mosang only.</p>
        </div>
        <form onsubmit="validateLogin(); return false;">
          <input type="email" id="email" placeholder="Email @tsismis.com" required="email">
          <input type="password" id="password" placeholder="Password" required="password">
          <div class="link">
            <button type="submit" class="login">Login</button>
            <a href="file:///C:/xampp/htdocs/login/friendsbooklogin.php" class="forgot" onclick="forgotPassword()">Forgot password?</a>
          </div>
          <hr>
          <div class="button">
            <a href="file:///C:/xampp/htdocs/login/friendsbooklogin.php" onclick="createNewAccount()">Create new account</a>
          </div>
        </form>
      </div>
    </div>

    <script>
      function validateLogin() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;

        if (email === "" || password === "") {
          alert("Please enter both email and password");
        } else {
          alert("Login successful!");
          window.location.href = "file:///C:/xampp/htdocs/E_WEB/index.html";
        }
      }

      function forgotPassword() {
        var email = prompt("Enter your email:");
        alert("Password reset instructions sent to " + email);
      }

      function createNewAccount() {
        
        alert(
          "Redirect to registration page or perform other actions for creating a new account."
        );
      }
    </script>
  

</body></html>