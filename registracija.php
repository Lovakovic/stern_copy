<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="Please enjoy this article.">

    <link rel="preload" href="resources/style.css" as="style">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@600;800&family=Merriweather:wght@300&family=Open+Sans:wght@600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/style.css">
    <title>Registracija</title>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

    <script>
        $(function() {
            $("#navigation").load("navigation.php");
        });
    </script>
</head>
<body>
    <?php 
    include "connection.php";

    $username_taken = false;
    $bad_login = "";
    $complete_register_information = isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password-repeat']);
    $complete_login_information = isset($_POST['username']) && isset($_POST['password']);
    $register = !isset($_GET['log-in']);

    if($complete_register_information && $register) {
        $new_user = new User($_POST['username'], $_POST['password']);

        if(!is_username_taken($new_user->username)) {
            
            register_user($new_user);

        } else {
            
            $username_taken = "Korisničko ime je zauzeto!"; 

        }
    } else if($complete_login_information) {
        $login_successfull = log_in($_POST['username'], $_POST['password']);

        if($login_successfull) {
            session_start();
            $_SESSION['admin'] = user_is_admin($_POST['username']);
            $_SESSION['username'] = $_POST['username'];

            echo "<script> location.href='administrator.php'; </script>";
            exit();      

        } else {
            
            $bad_login = "Krivo uneseno korisničko ime i/ili lozinka!";
        }
    }
    ?>
    <header id="navigation"></header>
    <main>
        <?php 
        
        if($register) {
            echo "
            <form action='registracija.php' method='POST' enctype='multipart/form-data'>
                <h1 class='reg-heading'>Registracija</h1>
                <table class='reg-table'>
                    <tr>
                        <td colspan='2'><label for='username' class='hide-error-msg' id='username-error'></label>
                        <label style='color: red;'>$username_taken</label></td>
                    </tr>
                    <tr>
                        <td><label for='username'>Korisničko ime:</label></td>
                        <td><input type='text' id='username' name='username' class='reg-field' autofocus></td>
                    </tr>
                    <tr>
                        <td colspan='2'><label for='password' class='hide-error-msg' id='password-error'></label></td>
                    </tr>
                    <tr>
                        <td><label for='password'>Lozinka:</label></td>
                        <td><input type='password' name='password' id='password' class='reg-field'></td>
                    </tr>
                    <tr>
                        <td colspan='2'><label for='password-repeat' class='hide-error-msg' id='password-repeat-error'>Lozinke se moraju podudarati!</label></td>
                    </tr>
                    <tr>
                        <td><label for='password-repeat'>Ponovite lozinku:</label></td>
                        <td><input type='password' name='password-repeat' id='password-repeat' class='reg-field'></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type='submit' value='Registriraj se' id='reg-button' class='reg-button'>Registriraj se</button></td>
                    </tr>
                    <tr>
                    <td></td>
                    <td><a href='registracija.php?log-in=1' class='reg-button' id='login-link'>Prijavi se</a></td>
                    </tr>
                </table>
            </form>
        ";
        } else {

            echo "
                <form action='registracija.php?log-in=1' method='POST' enctype='multipart/form-data'>
                    <h1 class='reg-heading'>Prijava</h1>
                    <table class='reg-table'>
                        <tr>
                            <td colspan='2'><label for='username' class='hide-error-msg' id='username-error'></label>
                            <label></label></td>
                        </tr>
                        <tr>
                            <td><label for='username'>Korisničko ime:</label></td>
                            <td><input type='text' id='username' name='username' class='reg-field' autofocus></td>
                        </tr>
                        <tr>
                            <td colspan='2'><label for='password' class='hide-error-msg' id='password-error'></label></td>
                        </tr>
                        <tr>
                            <td><label for='password'>Lozinka:</label></td>
                            <td><input type='password' name='password' id='password' class='reg-field'></td>
                            <label style='color: red;'>$bad_login</label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button type='submit' value='Prijavi se' name='reg-button' id='log-in-button' 
                                class='reg-button'>Prijavi se</button></td>
                        </tr>
                    </table>
                </form>
            ";
        }
        ?>
    <script type="text/javascript">
        document.getElementById('reg-button').addEventListener('click', function(event)  {
            let validInput = true;
            const errorStyle = "red dotted 2px";

            let username = document.getElementById('username'), usernameLength = username.value.length;
            let password = document.getElementById('password'), passwordLength = password.value.length;
            let passwordRepeat = document.getElementById('password-repeat');

            if(usernameLength < 3) {
                validInput = false;

                username.style.border = errorStyle;
                document.getElementById('username-error').innerHTML = "Korisničko ime mora sadržavati minimalno 2 znaka!";
                document.getElementById('username-error').classList.replace('hide-error-msg', 'error-msg');
            }

            if(passwordLength < 5) {
                validInput = false;

                password.style.border = errorStyle;
                document.getElementById('password-error').innerHTML = "Lozinka mora sadržavati barem 5 znakova!";
                document.getElementById('password-error').classList.replace('hide-error-msg', 'error-msg');
            }

            if(password.value != passwordRepeat.value) {
                validInput = false;

                passwordRepeat.style.border = errorStyle;
                document.getElementById('password-repeat-error').classList.replace('hide-error-msg', 'error-msg');
            }

            if(!validInput) {
                event.preventDefault();
            }
        });
    </script>    
    </main>
    <footer>
        <h6 class="footer-text">Nachrichten vom 08.06.2022. | © stern.de GmbH | Register</h6>
    </footer>
</body>
</html>