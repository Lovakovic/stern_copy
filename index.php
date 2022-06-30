<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="Let's go phishing! :).">

    <!-- <link rel="preload" href="resources/style.css" as="style"> -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@600;800&family=Open+Sans:wght@600;700&family=Raleway:wght@600;800&family=Teko:wght@400;600&display=swap" rel="stylesheet"> 

    <link rel="stylesheet" href="resources\style.css">
    <title>Nachrichten, Hintergründe & Reportagen | STERN.de</title>

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

    <script>
        $(function() {
            $("#navigation").load("navigation.php");
        });
    </script>
</head>
<body>
    <header id="navigation"></header>
    <main>
        <?php 
        include 'connection.php';

        $politcs_articles = fetch_news("politika", 3);
        $health_articles = fetch_news("zdravlje", 3);
        $sport_articles = fetch_news("sport", 3);

        ?>
        <section class="index-article-section">
            <a href="kategorija.php?category=politika"><h2 class="index-category-heading">Politika ></h2></a>
            <div class="index-article-container">
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $politcs_articles[0]->id ?>">
                    <img src="<?php echo $politcs_articles[0]->photo_path ?>" alt="politics article picture">
                    <h4 class="index-article-category"><?php echo $politcs_articles[0]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $politcs_articles[0]->description ?></h3>
                    </a>
                </article>
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $politcs_articles[1]->id ?>">
                    <img src="<?php echo $politcs_articles[1]->photo_path ?>" alt="politics article picture">
                    <h4 class="index-article-category"><?php echo $politcs_articles[1]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $politcs_articles[1]->description ?></h3>
                    </a>
                </article>
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $politcs_articles[2]->id ?>">
                    <img src="<?php echo $politcs_articles[2]->photo_path ?>" alt="politics article picture">
                    <h4 class="index-article-category"><?php echo $politcs_articles[2]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $politcs_articles[2]->description ?></h3>
                    </a>
                </article>
            </div>
        </section><hr>
        <section class="index-article-section">
            <a href="kategorija.php?category=zdravlje"><h2 class="index-category-heading">Zdravlje ></h2></a>
            <div class="index-article-container">
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $health_articles[0]->id ?>">
                    <img src="<?php echo $health_articles[0]->photo_path ?>" alt="health article picture">
                    <h4 class="index-article-category"><?php echo $health_articles[0]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $health_articles[0]->description ?></h3>
                    </a>
                </article>
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $health_articles[1]->id ?>">
                    <img src="<?php echo $health_articles[1]->photo_path ?>" alt="health article picture">
                    <h4 class="index-article-category"><?php echo $health_articles[1]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $health_articles[1]->description ?></h3>
                    </a>
                </article>
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $health_articles[2]->id ?>">
                    <img src="<?php echo $health_articles[2]->photo_path ?>" alt="health article picture">
                    <h4 class="index-article-category"><?php echo $health_articles[2]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $health_articles[2]->description ?></h3>
                    </a>
                </article>
            </div>
        </section><hr>
        <section class="index-article-section">
            <a href="kategorija.php?category=sport"><h2 class="index-category-heading">Sport ></h2></a>
            <div class="index-article-container">
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $sport_articles[0]->id ?>">
                    <img src="<?php echo $sport_articles[0]->photo_path ?>" alt="politics article picture">
                    <h4 class="index-article-category"><?php echo $sport_articles[0]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $sport_articles[0]->description ?></h3>
                    </a>
                </article>
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $sport_articles[1]->id ?>">
                    <img src="<?php echo $sport_articles[1]->photo_path ?>" alt="politics article picture">
                    <h4 class="index-article-category"><?php echo $sport_articles[1]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $sport_articles[1]->description ?></h3>
                    </a>
                </article>
                <article class="index-article">
                    <a href="<?php echo 'clanak.php?id=' . $sport_articles[2]->id ?>">
                    <img src="<?php echo $sport_articles[2]->photo_path ?>" alt="politics article picture">
                    <h4 class="index-article-category"><?php echo $sport_articles[2]->title ?></h4>
                    <h3 class="index-article-heading"><?php echo $sport_articles[2]->description ?></h3>
                    </a>
                </article>
            </div>
        </section><hr>
    </main>
    <footer>
        <h6 class="footer-text">Nachrichten vom 09.06.2022. | © stern.de GmbH | Home </h6>
    </footer>
</body>
</html>