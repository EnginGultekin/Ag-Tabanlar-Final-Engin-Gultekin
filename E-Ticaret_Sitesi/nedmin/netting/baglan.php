<?php 

try {

$db=new PDO("mysql:host=localhost;dbname=eticaret;charset=utf8",'root','Legend000..');

	//echo "Veritabanı bağlantısı başarılı";

} catch (PDOExpception $e) {

	echo $e->getMessage();
}

?>