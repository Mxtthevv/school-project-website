<html>
    <head>
        <title>Kwiaciarnia - Rejestracja & logowanie</title>
        <link rel="stylesheet" href="rejestracja.css">
        <link rel="shortcut icon" href="../main/images/logo96x96.png">
        <meta charset="UTF-8">
    </head>
    <body>
        <div class="container  right-panel-active">
            <!-- rejestracja -->
            <div class="container__form container--signup">
                <form action="logowanie.php" method="POST" class="form">
                    <h2 class="form__title">Zarejestruj się</h2>
                    <input type="text" placeholder="Nazwa użytkownika" class="input" name="username" required/>
                    <input type="email" placeholder="Email" class="input" name="email" required/>
                    <input type="password" placeholder="Hasło" class="input" name="password" required/>
                    <button class="btn" type="submit" name="submit">Zarejestruj się</button>
                </form>
            </div>
        
            <!-- logowanie -->
            <div class="container__form container--signin">
                <form action="logowanie.php" method="POST" class="form">
                    <h2 class="form__title">Zaloguj się</h2>
                    <input type="text" placeholder="Nazwa użytkownika" class="input" name="username"/>
                    <input type="password" placeholder="Hasło" class="input" name="password"/>
                    <a href="#" class="link">Zapomniałem hasła</a>
                    <button class="btn" type="submit" name="submit">Zaloguj się</button>
                </form>
            </div>
        
            <!-- przyciski -->
            <div class="container__overlay">
                <div class="overlay">
                    <div class="overlay__panel overlay--left">
                        <button class="btn" id="signIn">Zaloguj się</button>
                    </div>
                    <div class="overlay__panel overlay--right">
                        <button class="btn" id="signUp">Zarejestruj</button>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="rejestracja.js"></script>
        </div>

        <?php
            if(isset($_POST['submit'])) {
                $server = mysqli_connect("localhost", "root", "", "kwiaciarnia");
            }
        ?>
    </body>
</html>