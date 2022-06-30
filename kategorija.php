<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="Let's go phishing! :).">

    <link rel="preload" href="resources\style.css" as="style">
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
    <?php 
        include 'connection.php';

        $category_name = $_GET['category'];

        $category_articles = fetch_news($category_name);
    ?>
    <main>
        <h1 class="index-category-heading"><?php echo $category_name; ?></h1>
        <section class="index-article-container">
        <?php 
        foreach ($category_articles as $article) {
            echo '
            <article class="index-article">
                <a href="clanak.php?id='  . $article->id . '">
                <img src="' . $article->photo_path . '" alt=" ' . $category_name . ' article picture">
                <h4 class="index-article-category">' . $article->title . '</h4>
                <h3 class="index-article-heading">' . $article->description . '</h3>
                </a>
            </article>
            ';
        }
        ?>
        </section>
    </main>
    <footer>
        <h6 class="footer-text">Nachrichten vom 09.06.2022. | © stern.de GmbH |  <?php echo ucfirst($category_name);?></h6>
    </footer>
</body>
</html>