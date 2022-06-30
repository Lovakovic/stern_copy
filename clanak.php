<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="Let's go phishing! :).">

    <link rel="preload" href="resources/style.css" as="style">
    <link rel="stylesheet" href="resources/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@600;800&family=Merriweather:wght@300&family=Open+Sans:wght@600;700&display=swap" rel="stylesheet">

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
<?php 
    include "connection.php";
    session_start();

    $article_id = $_GET['id'];
    $article = fetch_article($article_id);
?>
<main>
    <article>
        <div class="article-heading-container">
            <h2 class="article-heading"><?php echo "$article->title";?></h2>
            <h4 class="article-date"><?php echo "$article->date";?></h4>
        </div>
        <h3 class="article-description"><?php echo "$article->description";?></h3>
        <figure class="article-img-container">
            <img src="<?php echo "$article->photo_path";?>" alt="Article photo"> 
        </figure><hr>
        <p class="article-paragraph"><?php echo "$article->text";?></p>
    </article>
</main>
<footer>
    <h6 class="footer-text">Nachrichten vom 08.06.2022. | © stern.de GmbH | <?php echo "$article->title";?></h6>
</footer>
</body>
</html>