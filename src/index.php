<?php
if(!isset($_SESSION)){
        session_start();
}
if(!isset($_SESSION["counter"])){
	        echo "YES";
		        $_SESSION['counter'] = 1;

}
else{
	        $_SESSION["counter"] += 1;
}

echo "Hello, World from Docker! <br>";
echo 'session.save_handler = ' . ini_get('session.save_handler') . "\n";
echo $_SESSION["counter"];

?>
