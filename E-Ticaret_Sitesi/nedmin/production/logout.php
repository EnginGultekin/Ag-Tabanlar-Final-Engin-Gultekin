<?php 

session_start();

session_destroy();   // Sessionu yok ettik ve güvenli çıkış sağlmış olduk

header("Location:login.php?durum=exit");


 ?>