<html class="html">
    <head>
        <title>Kwiaciarnia - Home</title>
        <link rel="stylesheet" href="main.css.css">
        <link rel="stylesheet" href="image-slider.css">
        <link rel="stylesheet" href="product-filter.css">
        <link rel="stylesheet" href="socialmedia.css.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="shortcut icon" href="../main/images/logo96x96.png">
        <meta charset="UTF-8">
    </head>
    <body class="body">
        <div class="naglowek">
          <a href="main.php"><img src="../main/images/logo96x96.png" style="height: 50px; width: 50px;"><p>WIACIARNIA u DZIUBAKA</p></a>
        </div>

        <div class="naglowek2">
          <p><a href="../rejestracja/rejestracja.php">Rejestracja</a></p>
        </div>

        <div class="naglowek2">
          <p><a href="../rejestracja/logowanie.php" >Zaloguj się</a></p>
        </div>

        <!-- GALERIA ZDJĘĆ -->
<div class="carousel-container">
    <div class="mySlides animate">
      <img src="https://d-art.ppstatic.pl/kadry/k/r/cf/b3/5c10fd3b4fedb_o_full.jpg" alt="slide" />
      <div class="number">1 / 5</div>
    </div>
  
    <div class="mySlides animate">
      <img src="https://styleblueprint.com/wp-content/uploads/2017/09/StyleBlueprintGuide_Flower_Mart_Hillsboro_PRODUCT_04-2014-2.jpg" alt="slide" />
      <div class="number">2 / 5</div>
    </div>
  
    <div class="mySlides animate">
      <img src="https://d-nm.ppstatic.pl/kadr/k/r/09/da/5c10fd3c489b4_o.jpg?" alt="slide" />
      <div class="number">3 / 5</div>
    </div>
  
    <div class="mySlides animate">
      <img src="https://images.the500hiddensecrets.com/2019-03/stockholm-shop-floristkompaniet.jpg?auto=format&fit=max&h=1080&ixlib=php-1.1.0&q=65&w=1920&s=62b507b7cff36dc6890c202ee67a4e77" alt="slide" />
      <div class="number">4 / 5</div>
    </div>
  
    <div class="mySlides animate">
      <img src="https://ocdn.eu/pulscms-transforms/1/jz6k9kqTURBXy8yZTdhMWQzZTdiYTcyN2E3ZjFmYmRmMzk3NTk5ZmIyNy5qcGVnkZMCzQNIAIKhMAGhMQE" alt="slide" />
      <div class="number">5 / 5</div>
    </div>
  
    <!-- PRZYCISKI PRZEWIJANIA -->
    <a class="prev" onclick="prevSlide()">&#10094;</a>
    <a class="next" onclick="nextSlide()">&#10095;</a>
  
    <!-- KROPKI -->
    <div class="dots-container">
      <span class="dots" onclick="currentSlide(1)"></span>
      <span class="dots" onclick="currentSlide(2)"></span>
      <span class="dots" onclick="currentSlide(3)"></span>
      <span class="dots" onclick="currentSlide(4)"></span>
      <span class="dots" onclick="currentSlide(5)"></span>
    </div>
  </div>
    <!-- KONIEC GALERII ZDJĘĆ -->
        
        <div class="czarny_pasek"></div>

        <div class="lewy">
          <p>FILTRUJ WEDŁUG</p>
          <form action="main-filtered-by.php" method="POST">
          <ul class="dropdown">
            <li class="title">CENY</li>
            <li>
              <label>OD NAJTAŃSZYCH
                <input type="checkbox" name="najtaniej" /><span></span></label>
            </li>
            <li>
              <label>OD NAJDROŻSZYCH
                <input type="checkbox" name="najdrozej" /><span></span></label>
            </li>
            <li class="title">NAZWY</li>
            <li>
              <label>A-Z
                <input type="checkbox" name="odpoczatku" /><span></span></label>
            </li>
            <li>
              <label>Z-A
                <input type="checkbox" name="odkonca" /><span></span></label>
            </li>
            <button class="filter-button" type="submit">FILTRUJ</button>
          </ul>
          </form>


          <p>KATEGORIE</p>
          <form action="main-filtered.php" method="POST">
          <ul class="dropdown">
            <li class="title">KWIATY</li>
            <li>
              <label>DONICZKOWE
                <input type="checkbox" name="kwiaty_doniczkowe" /><span></span></label>
            </li>
            <li>
              <label>BALKONOWE
                <input type="checkbox" name="kwiaty_balkonowe" /><span></span></label>
            </li>
            <li class="title">NASIONA</li>
            <li>
              <label>KWIATÓW DONICZKOWYCH
                <input type="checkbox" name="nasiona_kdoniczkowych" /><span></span></label>
            </li>
            <li>
              <label>KWIATÓW BALKONOWYCH
                <input type="checkbox" name="nasiona_kbalkonowych" /><span></span></label>
            </li>
            <li>
              <label>OWOCÓW
                <input type="checkbox" name="nasiona_owocow" /><span></span></label>
            </li>
            <li>
              <label>WARZYW
                <input type="checkbox" name="nasiona_warzyw" /><span></span></label>
            </li>
            <li class="title">DONICZKI</li>
            <li>
              <label>CERAMICZNE
                <input type="checkbox" name="doniczki_ceramiczne" /><span></span></label>
            </li>
            <li>
              <label>GLINIANE
                <input type="checkbox" name="doniczki_gliniane" /><span></span></label>
            </li>
            <li>
              <label>GŁOWA
                <input type="checkbox" name="doniczki_glowa" /><span></span></label>
            </li>
            <li>
              <label>NATURALNE
                <input type="checkbox" name="doniczki_naturalne" /><span></span></label>
            </li>
            <button class="filter-button" type="submit">FILTRUJ</button>
            </form>
          </ul>
        </div>

        <div class="srodek">
          <?php
            $server = mysqli_connect("localhost", "root", "", "kwiaciarnia");

            if(isset($_POST['kwiaty_doniczkowe'])) {
              $f1 = "SELECT nazwa_kwiat, nazwa_produkt, zdjecie, pochodzenie, cena FROM kwiaty WHERE id_kategoria=1";
              $dbf1 = mysqli_query($server, $f1);


              while($r = mysqli_fetch_array($dbf1)) {
              echo "<section class='blok'>";
                echo "<div><h2>$r[nazwa_kwiat]</h2></div>";
                echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                echo '<img src="'. $r['zdjecie'] . '" />'; 
                echo "<div><h4>Pochodzenie:&nbsp;$r[pochodzenie]</h4></div>";
                echo "<div><h3>$r[cena]zł</h3></div>";
              echo "</section>";
              }
            } elseif(isset($_POST['kwiaty_balkonowe'])){
                $f2 = "SELECT nazwa_kwiat, nazwa_produkt, zdjecie, pochodzenie, cena FROM kwiaty WHERE id_kategoria=2";
                $dbf2 = mysqli_query($server, $f2);

                while($r = mysqli_fetch_array($dbf2)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_kwiat]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />'; 
                  echo "<div><h4>Pochodzenie:&nbsp;$r[pochodzenie]</h4></div>";
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['nasiona_kdoniczkowych'])) {
                $f3 = "SELECT nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie FROM nasiona WHERE id_kategoria=1";
                $dbf3 = mysqli_query($server, $f3);

                while($r = mysqli_fetch_array($dbf3)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_nasiona]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h4>Pochodzenie:&nbsp;$r[pochodzenie]</h4></div>"; 
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['nasiona_kbalkonowych'])) {
                $f4 = "SELECT nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie FROM nasiona WHERE id_kategoria=2";
                $dbf4 = mysqli_query($server, $f4);

                while($r = mysqli_fetch_array($dbf4)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_nasiona]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h4>Pochodzenie:&nbsp;$r[pochodzenie]</h4></div>"; 
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['nasiona_owocow'])) {
                $f5 = "SELECT nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie FROM nasiona WHERE id_kategoria=3";
                $dbf5 = mysqli_query($server, $f5);

                while($r = mysqli_fetch_array($dbf5)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_nasiona]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h4>Pochodzenie:&nbsp;$r[pochodzenie]</h4></div>"; 
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['nasiona_warzyw'])) {
                $f6 = "SELECT nazwa_produkt, nazwa_nasiona, pochodzenie, cena, zdjecie FROM nasiona WHERE id_kategoria=4";
                $dbf6 = mysqli_query($server, $f6);

                while($r = mysqli_fetch_array($dbf6)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_nasiona]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h4>Pochodzenie:&nbsp;$r[pochodzenie]</h4></div>"; 
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['doniczki_ceramiczne'])) {
                $f7 = "SELECT nazwa_produkt, nazwa_doniczki, cena, zdjecie FROM doniczki WHERE id_kategoria=1";
                $dbf7 = mysqli_query($server, $f7);

                while($r = mysqli_fetch_array($dbf7)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_doniczki]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['doniczki_gliniane'])) {
                $f8 = "SELECT nazwa_produkt, nazwa_doniczki, cena, zdjecie FROM doniczki WHERE id_kategoria=2";
                $dbf8 = mysqli_query($server, $f8);

                while($r = mysqli_fetch_array($dbf8)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_doniczki]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['doniczki_glowa'])) {
                $f9 = "SELECT nazwa_produkt, nazwa_doniczki, cena, zdjecie FROM doniczki WHERE id_kategoria=3";
                $dbf9 = mysqli_query($server, $f9);

                while($r = mysqli_fetch_array($dbf9)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_doniczki]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            } elseif(isset($_POST['doniczki_naturalne'])) {
                $f10 = "SELECT nazwa_produkt, nazwa_doniczki, cena, zdjecie FROM doniczki WHERE id_kategoria=4";
                $dbf10 = mysqli_query($server, $f10);

                while($r = mysqli_fetch_array($dbf10)) {
                echo "<section class='blok'>";
                  echo "<div><h2>$r[nazwa_doniczki]</h2></div>";
                  echo "<div><h4>$r[nazwa_produkt]</h4></div>";
                  echo '<img src="'. $r['zdjecie'] . '" />';
                  echo "<div><h3>$r[cena]zł</h3></div>";
                echo "</section>";
              }
            }
          ?>
        </div>

        <div class="prawy"></div>

        <div>
          <div class="social_links">
              <p>NASZE SOCIAL MEDIA</p>
              <a href="https://www.instagram.com/" target="_blank">
                  <span class="fa-stack fa-lg ig combo">
                      <i class="fa fa-circle fa-stack-2x circle"></i>
                      <i class="fa fa-instagram fa-stack-1x fa-inverse icon"></i>
                    </span>
              </a>
              <a href="https://pl-pl.facebook.com/" target="_blank">
                  <span class="fa-stack fa-lg fb combo">
                      <i class="fa fa-circle fa-stack-2x circle"></i>
                      <i class="fa fa-facebook fa-stack-1x fa-inverse icon"></i>
                    </span>
              </a>
              <a href="https://www.youtube.com/" target="_blank">
                  <span class="fa-stack fa-lg yt combo">
                      <i class="fa fa-circle fa-stack-2x circle"></i>
                      <i class="fa fa-youtube-play fa-stack-1x fa-inverse icon"></i>
                    </span>
              </a>
              <a href="https://twitter.com/?lang=pl" target="_blank">
                  <span class="fa-stack fa-lg tw combo">
                      <i class="fa fa-circle fa-stack-2x circle"></i>
                      <i class="fa fa-twitter fa-stack-1x fa-inverse icon"></i>
                  </span>
              </a>
          </div>
        </div>
        
        <div class="stopkalewy"></div>
        
        <div class="footer">
          <ul>
            <li class="li_tag">DOŁĄCZ DO NAS</li>
            <ul>
              <li class="li_small">Załóż konto</li>
              <li class="li_small">Obserwuj nas na social mediach</li>
            </ul>
            <li class="li_tag" style="margin-top: 20px;">NEWSLETTER</li>
            <input type="email" placeholder="Wpisz swój adres e-mail">
          </ul>
            <input style="width: 50px; font-size: 12px; line-height: 2vw; margin-top: 10px; float: left; font-weight: bold;" type="submit" value="Wyślij">
        </div>

        <div class="footer">
          <ul>
            <li class="li_tag">STRONY</li>
            <ul>
              <a href="main.php"><li class="li_small">Home</li></a>
              <a href="../rejestracja/rejestracja.php"><li class="li_small">Rejestracja & logowanie</li></a>
            </ul>
          </ul>
        </div>

        <div class="footer">
          <ul>
            <li class="li_tag">KONTAKT</li>
            <ul>
              <li class="li_small">Nr tel. 123 123 123</li>
              <li class="li_small">Adres e-mail: kwiaciarnia@gmail.com</li>
            </ul>
          </ul>
        </div>

        <div class="footer_loc">
          <ul>
            <li class="li_tag">LOKALIZACJA</li>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d863.8905101123072!2d21.01832112396828!3d52.235185019705675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471ecdca6df5c68f%3A0x2b09b94c2ff4fb4e!2zUGlla2FybmlhIG9ybWlhxYRza28tZ3J1emnFhHNrYSDigKJNQVJVS1lBTuKAog!5e0!3m2!1spl!2spl!4v1634311538471!5m2!1spl!2spl" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </ul>
        </div>

        <script type="text/javascript" src="image-slider.js"></script>
        <script type="text/javascript" src="product-filter.js"></script>
    </body>

    <style>
      .filter-button {
        color: black;
        background-color: white;
        border: 2px solid #1c1d21;
        height: 1.25vw;
        width: 5vw;
        font-family: Cambria;
        font-weight: bold;
        margin-left: 3vw;
        margin-bottom: 10px;
        border-radius: 2vw;
      }

      .filter-button:hover {
        color: #ddbc6d;
        background-color: #1c1d21;
        border: 2px solid #1c1d21;
        transition: background-color .5s;
      }
    </style>
</html>