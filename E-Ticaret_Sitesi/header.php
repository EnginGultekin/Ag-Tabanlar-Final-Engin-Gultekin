<?php 
ob_start();
session_start();
include 'nedmin/netting/baglan.php';
//include 'nedmin/production/fonksiyon.php';

// Belirli Veriyi Çekmek
$ayarsor=$db->prepare("SELECT * FROM ayar WHERE ayar_id=:id"); 
$ayarsor->execute(array(
  'id'=> 0  
));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);


$kullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_mail=:mail");
$kullanicisor->execute(array(
  'mail' => $_SESSION['userkullanici_mail']
  ));
$say=$kullanicisor->rowCount();
$kullanicicek=$kullanicisor->fetch(PDO::FETCH_ASSOC);

 ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $ayarcek['ayar_title'] ?></title>

  	<meta name="description" content="<?php echo $ayarcek['ayar_description'] ?>">
  	<meta name="keywords" content="<?php echo $ayarcek['ayar_keyword'] ?>">
  	<meta name="author" content="<?php echo $ayarcek['ayar_autor'] ?>">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,400italic,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
	<link href='font-awesome\css\font-awesome.css' rel="stylesheet" type="text/css">
	<!-- Bootstrap -->
    <link href="bootstrap\css\bootstrap.min.css" rel="stylesheet">
	
	<!-- Main Style -->
	<link rel="stylesheet" href="style.css">
	
	<!-- owl Style -->
	<link rel="stylesheet" href="css\owl.carousel.css">
	<link rel="stylesheet" href="css\owl.transitions.css">
	

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div id="wrapper">
	<div class="header"><!--Header -->
		<div class="container">
			<div class="row">
				<div class="col-xs-6 col-md-4 main-logo"><br>
					<a href="index.php"><img  width="300" height="40"  src="<?php echo $ayarcek['ayar_logo']; ?>" alt="Site Logosu" class="logo img-responsive"></a>
				</div>
				<div class="col-md-8">
					<div class="pushright">
						<div class="top">


							<?php 

	             if (!isset($_SESSION['userkullanici_mail'])) {?>

	             		<a href="#" id="reg" class="btn btn-default btn-dark">Giriş Yap<span>-- ya da --</span>Kayıt Ol</a>

	             <?php } else { ?>

	             <a href="#"  class="btn btn-default btn-dark">Hoşgeldin<span>--</span><?php echo $kullanicicek['kullanici_adsoyad'] ?></a>

             <?php } ?>	

							
							<div class="regwrap">
								<div class="row">
									<div class="col-md-6 regform">
										<div class="title-widget-bg">
											<div class="title-widget">Login</div>
										</div>



										 <form action="nedmin/netting/islem.php" method="POST" role="form">


			                  <div class="form-group">
			                   <input type="text" class="form-control" name="kullanici_mail" id="username" placeholder="Kullanıcı Adınız (Mail Adresiniz)">
			                 </div>


			                 <div class="form-group">
			                   <input type="password" class="form-control" name="kullanici_password" id="password" placeholder="Şifreniz">
			                 </div>


			                 <div class="form-group">
			                   <button type="submit" name="kullanicigiris" class="btn btn-default btn-red btn-sm">Giriş Yap</button>
			                 </div>

			               </form>



									</div>
									<div class="col-md-6">
										<div class="title-widget-bg">
											<div class="title-widget">Register</div>
										</div>
										<p>
			                Yeni mi geldin ? Alışverişe başlamak için daha fazla geç kalma hemen kayıt ol!
			              </p>
			              <a href="register.php"><button class="btn btn-default btn-yellow">Kayıt Ol</button></a>
									</div>
								</div>
							</div>
							<div class="srch-wrap">
								<a href="#" id="srch" class="btn btn-default btn-search"><i class="fa fa-search"></i></a>
							</div>
							<div class="srchwrap">
								<div class="row">
									<div class="col-md-12">
										<form action="arama.php" method="POST" class="form-horizontal" role="form">
					            <div class="form-group">
					             <!--<label for="search" class="col-sm-2 control-label">Search</label>-->
					            <button name="arama" class="btn btn-default btn-yellow"> Ara </button></a>    
					             <div class="col-sm-10">

					              <input type="text" name="aranan" minlength="3" class="form-control" id="search">
					            </div>
					          </div>
					        </form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="dashed"></div>
	</div><!--Header -->
	<div class="main-nav"><!--end main-nav -->
		<div class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li><a href="index.php" class="active">Ana Sayfa</a><div class="curve"></div></li>
								

								<?php 

									$menusor=$db->prepare("SELECT * FROM menu WHERE menu_durum=:durum ORDER BY menu_sira ASC limit 5");
									$menusor->execute(array(
										'durum' => 1
									));

								 while($menucek=$menusor->fetch(PDO::FETCH_ASSOC)) { 

								 		if($menucek['menu_id'] == 1 OR $menucek['menu_id'] == 3){?>

								 			<li><a href="<?php echo $menucek['menu_url']; ?>"><?php echo $menucek['menu_ad']; ?></a></li>

								 		<?php }else{ ?>

											<li><a href="<?php echo $menucek['menu_url']; ?>?id=<?php echo $menucek['menu_id']; ?> "><?php echo $menucek['menu_ad']; ?></a></li>
											<?php   }
								 } ?>


							</ul>
						</div>
					</div>
			

				 <div class="col-md-2 machart">
			   <button id="popcart" class="btn btn-default btn-chart btn-sm "><span class="mychart">Alışveriş Sepeti</span>|<span class="allprice">$0.00</span></button>
			   <div class="popcart">
			    <table class="table table-condensed popcart-inner">
			     <tbody>

			      <?php 
			      $kullanici_id=$kullanicicek['kullanici_id'];
			      $sepetsor=$db->prepare("SELECT * FROM sepet where kullanici_id=:id");
			      $sepetsor->execute(array(
			        'id' => $kullanici_id
			        ));

			      while($sepetcek=$sepetsor->fetch(PDO::FETCH_ASSOC)) {

			        $urun_id=$sepetcek['urun_id'];
			        $urunsor=$db->prepare("SELECT * FROM urun where urun_id=:urun_id");
			        $urunsor->execute(array(
			          'urun_id' => $urun_id
			          ));

			        $uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);
			        $toplam_fiyat+=$uruncek['urun_fiyat']*$sepetcek['urun_adet'];
			        ?>


			        <?php
					$urun_id=$uruncek['urun_id'];
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
						));

					$urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

					?>


			        <tr>
			         <td><img style="width: 100px; height: 40px;" src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" width="100" alt=""></td>
			        <td><a href="#"><?php echo $uruncek['urun_ad'] ?></a></td>
			        <td><?php echo $sepetcek['urun_adet'] ?> Adet</td>
			        <td><?php echo $uruncek['urun_fiyat'] ?></td>
			        <td><!--<a href=""><i class="fa fa-times-circle fa-2x"></i></a>--></td>
			      </tr>

			      <?php } ?>

			    </tbody>
			  </table>
			  <br>
			  <div class="btn-popcart">
			   <a href="odeme.php" class="btn btn-default btn-red btn-sm">Sepete Git</a>
			 </div>
			 <div class="popcart-tot">
			   <p>
			    Toplam Tutar<br>
			    <span><?php echo $toplam_fiyat ?> TL</span>
			  </p>
			</div>
			<div class="clearfix"></div>
			</div>
			</div>
					

					<?php 

						if (isset($_SESSION['userkullanici_mail'])) {?>

						<ul class="small-menu">
						  <li><a href="hesabim.php" class="myacc">Hesap Bilgilerim</a></li>
						  <li><a href="siparislerim.php" class="myshop">Siparişlerim</a></li>
						  <li><a href="logout.php" class="mycheck">Güvenli Çıkış</a></li>
						</ul>

						<?php }

					?>


				</div>
			</div>
		</div>
	</div><!--end main-nav -->