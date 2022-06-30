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
        session_start();

        $allow_entry = $_SESSION['admin'];
        if($allow_entry) {

            $show_all_articles = !isset($_GET['id']) && !isset($_POST['save_edit']);
            $edit_article = isset($_GET['id']);
        

            if($show_all_articles) {
                $category_articles = fetch_every_article();

            } else if($edit_article) {
                $article_selected_id = $_SESSION['article_id'] = $_GET['id'];

                $article = fetch_article($article_selected_id);
            } else {
                // We save changes

                if(!isset($_POST['delete'])) {
                    $archive_status = (isset($_POST['archive'])) ? 1 : 0;

                    $photo_path = "resources/images/articles/" . strval(time()) . ".jpg";
                    move_uploaded_file($_FILES['photo']['tmp_name'], $photo_path);
                    $article = new Article($_SESSION['article_id'], $_POST['title'], date('Y-m-d'), $_POST['about'], $photo_path, $_POST['content'], $_POST['category'], $archive_status);

                    update_article($article);
                } else {
                    delete_article($_SESSION['article_id']);
                }

                $show_all_articles = true;
                $category_articles = fetch_every_article();
            }
        }
    ?>
    <main>
        
        <?php 
        if($allow_entry) {

            echo '
                <div class="admin-nav">
                <a href="unos.php" class="admin-nav-button" id="input-new">Unesi novi članak</a>
                <a href="administrator.php" class="admin-nav-button" id="edit">Uredi postojeći članak</a>
                </div><div class="clear"></div><hr>
                <h1 class="admin-heading">Odaberite članak koji želite urediti:</h1>
                <section class="index-article-container">
            ';
            
            if($show_all_articles) {
                foreach ($category_articles as $article) {
                    $archived_message = '';
                    if($article->archive_status == 1) {
                        $archived_message = '[ARHIVIRANO]';
                    }
    
                    echo '
                    <article class="index-article">
                        <a href="administrator.php?id='  . $article->id . '">
                        <img src="' . $article->photo_path . '" alt=" ' . $article->category . ' article picture">
                        <h4 class="index-article-category">' . $archived_message . ' ' . $article->title . '</h4>
                        <h3 class="index-article-heading">' . $article->description . '</h3>
                        </a>
                    </article>
                    ';
                }
            } else { // Serve the edit article layout
                
                echo '
                    <form id="article-input" action="administrator.php" method="POST" class="admin-input" enctype="multipart/form-data">
                        <div class="input-item">
                            <label for="title" class="hide-error-msg" id="title-error">Naslov vijesti treba imati između 5 i 30
                            znakova!</label><br>
                            <label for="title">Naslov vijesti</label>
                            <div class="input-field">
                                <input type="text" name="title" id="title" class="input-field-textual" value="' . 
                                $article->title  . '" autofocus>
                            </div>
                        </div>
                        <div class="input-item">
                            <label for="about" class="hide-error-msg" id="about-error">Kratki sadržaj mora imati između 10 i 100
                            znakova!</label><br>
                            <label for="about">Kratki sadržaj vijesti)</label>
                            <div class="input-field">
                                <textarea name="about" id="about" cols="30" rows="5" class="input-field-textual"">' . 
                                $article->description . '</textarea>
                            </div>
                        </div>
                        <div class="input-item">
                            <label for="content" class="hide-error-msg" id="content-error">Sadržaj mora biti unesen</label><br>   
                            <label for="content">Sadržaj vijesti</label>
                            <div class="input-field">
                                <textarea name="content" id="content" cols="30" rows="20" class="input-field-textual">' . 
                                $article->text . ' </textarea>
                            </div>
                        </div>
                        <div class="input-item">
                            <label for="photo" class="hide-error-msg" id="photo-error">Slika mora biti unesena!</label><br>
                            <label for="photo">Slika: </label>
                            <div class="input-field">
                                <input type="file" accept="image/*" class="input-text" name="photo" id="photo"/>
                            </div>
                        </div>
                        <div class="input-item">
                            <label for="categroy" class="hide-error-msg" id="category-error">Kategorija mora biti odabrana!</label><br>
                            <label for="category">Kategorija vijesti</label>
                            <div class="input-field">
                                <select name="category" id="category" class="input-field-textual">
                                    <option value="odabir" selected>Odabir kategorije</option> 
                                    <option value="politika">Politika</option>
                                    <option value="zdravlje">Zdravlje</option>
                                    <option value="sport">Sport</option>
                                </select>
                            </div>
                        </div>
                        <div class="input-item-save">
                            <table>
                                <th>
                                    <label>Spremiti u arhivu:</label>   
                                </th>
                                <th>
                                    <div class="input-field">
                                        <input type="checkbox" name="archive">
                                    </div>
                                </th>
                                <th>
                                    <label>Želim obrisati članak:</label>
                                </th>
                                <th>
                                    <div class="input-field">
                                        <input type="checkbox" name="delete" id="delete">
                                    </div>
                                </th>
                            </table>
                        </div>
                        <div class="input-item">
                            <button type="reset" value="Poništi">Poništi</button>
                            <button type="submit" value="Prihvati" name="save_edit" id="submit">Prihvati</button>
                        </div>
                    </form>
                    <script src="resources/validacija.js" type="text/javascript"></script>    
                ';
            }
        } else {
            echo '
            <h4 class="index-article-category">Pozdrav ' . $_SESSION['username'] . ',
            nemate potrebnu razinu prava za pristup ovoj stranici, no idalje možete
            slobodno pregledati vijesti!</h4>
            ';
        }
        ?>
        </section>
     
    </main>
    <footer>
        <h6 class="footer-text">Nachrichten vom 09.06.2022. | © stern.de GmbH |  Administracija</h6>
    </footer>
</body>
</html>