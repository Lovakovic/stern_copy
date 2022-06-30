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
    <main><hr>
        <div class="admin-nav">
            <a href="unos.php" class="admin-nav-button" id="input-new">Unesi novi članak</a>
            <a href="administrator.php" class="admin-nav-button" id="edit">Uredi postojeći članak</a>
        </div><div class="clear"></div><hr>
        <form id="article-input" action="skripta.php" method="post" class="input" enctype="multipart/form-data">
            <div class="input-item">
                <label for="title" class="hide-error-msg" id="title-error">Naslov vijesti treba imati između 5 i 30
                    znakova!</label><br>
                <label for="title">Naslov vijesti</label>
                <div class="input-field">
                    <input type="text" id="title" name="title" class="input-field-textual" autofocus>
                </div>
            </div>
            <div class="input-item">
                <label for="about" class="hide-error-msg" id="about-error">Kratki sadržaj mora imati između 10 i 100
                    znakova!</label><br>
                <label for="about">Kratki sadržaj vijesti</label>
                <div class="input-field">
                    <textarea name="about" id="about" cols="30" rows="5" class="input-field-textual"></textarea>
                </div>
            </div>
            <div class="input-item">
                <label for="content" class="hide-error-msg" id="content-error">Sadržaj mora biti unesen</label><br>
                <label for="content">Sadržaj vijesti</label>
                <div class="input-field">
                    <textarea name="content" id="content" cols="30" rows="20" class="input-field-textual"></textarea>
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
                <label>Spremiti u arhivu:
                <div class="input-field">
                    <input type="checkbox" name="archive"><br>
                </div>
                </label>
            </div>
            <div class="input-item">
                <button type="reset" value="Poništi">Poništi</button>
                <button type="submit" value="Prihvati" id="submit">Prihvati</button>
            </div>
            <input type="checkbox" name="delete" id="delete" style="display: none;">
        </form>
    <script src="resources/validacija.js" type="text/javascript"></script>    
    </main>
    <footer>
        <h6 class="footer-text">Nachrichten vom 08.06.2022. | © stern.de GmbH | Write</h6>
    </footer>
</body>
</html>