<?php
    header('Content-Type: text/html; charset=utf-8');

    // Returns database conenction object
    function connect() {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $db_name = "stern";
        
        $mysqli  = new mysqli($servername, $username, $password, $db_name);
        $mysqli->set_charset("utf8");

        if($mysqli -> connect_errno) {
            echo "Failed to connect to database: " . $mysqli -> connect_error;

            exit();
        }

        return $mysqli;
    }

    // Saves given article object to database
    function save_article($article) {
        $mysqli = connect();
       
        $category_id = get_category_id($article->category);

        $sql_query = "INSERT INTO article (title, dateEdited, shortDescription, photoPath, 
            content, categoryId, archived) VALUES(?, ?, ?, ?, ?, ?, ?)";

        $stmt = $mysqli->prepare($sql_query);

        $stmt->bind_param('sssssii', $article->title, $article->date, $article->description, 
            $article->photo_path, $article->text, $category_id, $article->archive_status);

        $stmt->execute();
    }

    // Updates article with a given id
    function update_article($article) {
        $mysqli = connect();
       
        $category_id = get_category_id($article->category);

        $sql_query = "UPDATE article 
            SET title=?, dateEdited=?, shortDescription=?, photoPath=?, content=?, 
            categoryId=?, archived=? WHERE id=$article->id";

        $stmt = $mysqli->prepare($sql_query);

        $stmt->bind_param('sssssii', $article->title, $article->date, $article->description, 
            $article->photo_path, $article->text, $category_id, $article->archive_status);

        $stmt->execute();
    }

    // Deletes the selected article 
    function delete_article($article_id) {
        $mysqli = connect();

        $sql_query = "DELETE FROM article WHERE id=?";

        $stmt = $mysqli->prepare($sql_query);

        $stmt->bind_param('i', $article_id);

        $stmt->execute();
    }

    // Returns array of news articles
    function fetch_news($category_name, $limit_articles=false) {
        $mysqli = connect();
        $category_id = get_category_id($category_name);
        $article_array = array();
        $id = $title = $date = $description = $photo_path = $text = '';

        $sql_query = "SELECT id, title, dateEdited, shortDescription, photoPath, content FROM article 
                WHERE categoryId=? AND archived=0 
                ORDER BY dateEdited";

        if($limit_articles) {
            $sql_query .= " LIMIT ?;";
        }

        $stmt = $mysqli->prepare($sql_query);
        
        if($limit_articles) {
            $stmt->bind_param('ii', $category_id, $limit_articles);
        }
        else {
            $stmt->bind_param('i', $category_id);
        }


        $stmt->execute();
        $stmt->bind_result($id, $title, $date, $description, $photo_path, $text);

        while($stmt->fetch()) {
            array_push($article_array, new Article($id, $title, $date, $description, 
                $photo_path, $text, $category_name, 0));
        }

        return $article_array;
    }

    // Fetches every article, regardless of category or archive status
    function fetch_every_article() {
        $mysqli = connect();
        $article_array = array();
        $id = $title = $date = $description = $photo_path = $text = $category_id = $archive_status = '';

        $sql_query = "SELECT * FROM article ORDER BY dateEdited";

        $stmt = $mysqli->prepare($sql_query);

        $stmt->execute();
        $stmt->bind_result($id, $title, $date, $description, $photo_path, $text, $category_id, $archive_status);

        while($stmt->fetch()) {
            $category_name = get_category_name($category_id);

            array_push($article_array, new Article($id, $title, $date, $description, 
                $photo_path, $text, $category_name, $archive_status));
        }

        return $article_array;
    }

    // Fetches the article with entered id
    function fetch_article($article_id) {
        $mysqli = connect();
        $id = $title = $date = $description = $photo_path = $text = $category_id = '';

        $sql_query = "SELECT id, title, dateEdited, shortDescription, photoPath, content, categoryId FROM article 
                WHERE id=?";

        $stmt = $mysqli->prepare($sql_query);
        $stmt->bind_param('i', $article_id);
        $stmt->execute();
        $stmt->bind_result($id, $title, $date, $description, $photo_path, $text, $category_id);
        $stmt->fetch();

        $category_name = get_category_name($category_id);

        return new Article($article_id, $title, $date, $description, 
                $photo_path, $text, $category_name, 0);
    }

    // This function works best if you have a *uncategorized* category in DB
    // whose id is 0 so you can spot errors more easily
    function get_category_id($category_name) {
        $mysqli = connect();
        $category_id = 0;

        $sql_query = "SELECT id FROM category WHERE categoryName=?";

        $stmt = $mysqli->prepare($sql_query);
        $stmt->bind_param('s', $category_name);
        $stmt->execute();
        $stmt->bind_result($category_id);

        if($stmt->fetch()) {
            return $category_id;
        }

        return false;
    }

    // Reverse of the function get_category_id
    function get_category_name($category_id) {
        $mysqli = connect();
        $category_name = 0;

        $sql_query = "SELECT categoryName FROM category WHERE id=?";

        $stmt = $mysqli->prepare($sql_query);
        $stmt->bind_param('s', $category_name);
        $stmt->execute();
        $stmt->bind_result($category_id);

        if($stmt->fetch()) {
            return $category_id;
        }

        return false;
    }

    // Inserts a new user into database
    function register_user($user) {
        $mysqli = connect();

        $sql_query = "INSERT INTO korisnik (korisnickoIme, lozinka, 
            privilegeLevel) VALUES(?, ?, 0)";

        $stmt = $mysqli->prepare($sql_query);
        $stmt->bind_param('ss', $user->username, $user->password_hash);
        $stmt->execute();
    }

    // Returns true if entered username and password match
    function log_in($username, $password) {
        $mysqi = connect();
        $password_hash = "";

        $sql_query = "SELECT lozinka FROM korisnik 
            WHERE korisnickoIme=?;";

        $stmt = $mysqi->prepare($sql_query);
        $stmt->bind_param('s', $username);
        $stmt->execute();
        $stmt->bind_result($password_hash);
        $stmt->fetch();

        if(password_verify($password, $password_hash)) {
            return true;
        }

        return false;
    }

    // Returns true 1 if user is admin, else 0
    function user_is_admin($username) {
        $mysqi = connect();
        $is_admin = 0;
    
        $sql_query = "SELECT privilegeLevel FROM korisnik 
            WHERE korisnickoIme=?;";

        $stmt = $mysqi->prepare($sql_query);
        $stmt->bind_param('s', $username);
        $stmt->execute();
        $stmt->bind_result($is_admin);
        $stmt->fetch();

        return $is_admin;
    }

    // Returna false if username is unique, otherwise false
    function is_username_taken($username) {
        $found_duplicate = false;
        $mysqli = connect();

        $sql_query = "SELECT korisnickoIme FROM korisnik WHERE 
            korisnickoIme=?";

        $stmt = $mysqli->prepare($sql_query);
        $stmt->bind_param('s', $username);
        $stmt->execute();

        $stmt->bind_result($found_duplicate);

        if($found_duplicate) {
            return true;
        }

        return false;
    }

    // Just for storing stuff in a more organized manner
    class Article {
        public $id;
        public $title;
        public $date;
        public $description;
        public $photo_path;
        public $text;
        public $category;
        public $archive_status;

        function __construct($id, $title, $date, $description, $photo_path, $text,
            $category, $archive_status) {
            
            $this->id = $id;
            $this->title = $title;
            $this->date = $date;
            $this->description = $description;
            $this->photo_path = $photo_path;
            $this->text = $text;
            $this->category = $category;
            $this->archive_status = $archive_status;
        }
    } 

    class User {
        public $username;
        public $password_hash;

        function __construct($username, $password) {
            $this->username = $username;
            $this->password_hash = password_hash($password, CRYPT_BLOWFISH);
        }

        function set_password($password) {
            $this->password_hash = password_hash($password, CRYPT_BLOWFISH);
        }
    }
?>