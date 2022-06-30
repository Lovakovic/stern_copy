<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta name="description" content="Let's go phishing! :).">

    <link rel="preload" href="resources/style.css" as="style">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@600;800&family=Merriweather:wght@300&family=Open+Sans:wght@600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="resources/style.css">
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

    if(isset($_POST['title']) && isset($_POST['about']) && isset($_POST['content']) &&
        isset($_POST['category'])) {
      

        $photo_path = "resources/images/articles/" . strval(time()) . ".jpg";
        move_uploaded_file($_FILES['photo']['tmp_name'], $photo_path);
        $archive_status = 0;
         
        
        if(isset($_POST['archive'])) {
            $archive_status = 1;
        } 

        $article = new Article(0, $_POST['title'], date('Y-m-d'), $_POST['about'], $photo_path, $_POST['content'], $_POST['category'], $archive_status);
          
        save_article($article);
    }
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