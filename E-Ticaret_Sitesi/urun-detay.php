<?php 

include 'header.php'; 


$id = $_GET['id'];
$ids = 0;
$stok = 0;
$fiyat = 0;
$name = "None";
$acıklama = "None";
$vidyos = "IeoIqsUTqsA";

if($id == 2){ $ids = 2;$stok = 142; $fiyat = 254.99; $name = "Siyah Rugan Ayakkabı";  
$acıklama = "İç dış Deri Kaplama kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane";}

else if($id == 3){$ids = 3; $stok = 24; $fiyat = 469; $name = "Gümüş Kaplama Saat";  
$acıklama = "Dışı gümüş kaplama içi özel metallerle tasarlanmış mekanik su geçirmez saat kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane"; }
else if($id == 4){ $ids = 4;$stok = 250; $fiyat =49.99 ; $name = "Kadın-Erkek Bluz" ; 
$acıklama = "Erkek ve Kadınlar için uygun  unisex mükemmel Bluzlar kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane";}
else if($id == 6){$ids = 6; $stok = 20; $fiyat =125 ; $name = "Galatasararay Forması";  
$acıklama = "Orjinal Galatasaray forması GSstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Galatasaraylılar bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane";}
else if($id == 7){ $ids = 7;$stok = 75; $fiyat =125 ; $name = "Fenerbahçe Forması"; 
$acıklama = "Orjinal Fenerbahçe forması FBstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Fenerbahçeliler bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane";}
else if($id == 8){ $ids = 8;$stok = 65; $fiyat =125 ; $name = "Beşiktaş Forması"; 
$acıklama = "Orjinal Beşiktaş forması BJKstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Beşiktaşlılar bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane
";}
else if($id == 9){ $ids = 9;$stok = 15; $fiyat =125 ; $name = "Hatayspor Forması"; 
$acıklama = "Orjinal Hatayspor forması HSstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Hataylılar bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane";}
else if($id == 10){$ids = 10; $stok = 8; $fiyat =1245 ; $name = "Full Donanımlı Fotoğraf Makinası"; 
$acıklama = "Full Donanımlı Efsane Mercekleriyle birlikte Her şeyi Sanki yanınızdaymış gibi gösteren göz gibi gören uzağı yakın edebilen sizin için özel tasarlanabilen 8 ayrı mercek yapısı bulunan bu ürünü sakın kaçırmayın aldığınzda yeni birtane sipariş edeceğinizde bu ürün çoktan tükenmiş olacaktır ";}
else if($id == 11){$ids = 11; $stok = 145; $fiyat =5624 ; $name = "Full Paket Akıllı Telefon "; 
$acıklama = "Full Donanımlı Efsane Mercekleriyle birlikte Her şeyi Sanki yanınızdaymış gibi gösteren göz gibi gören uzağı yakın edebilen sizin için özel tasarlanabilen 8 ayrı mercek yapısı bulunan bu ürünü sakın kaçırmayın aldığınzda yeni birtane sipariş edeceğinizde bu ürün çoktan tükenmiş olacaktır ";}
else { $stok = 0 ; $fiyat = 0; $name = "Geçersiz Ürün"; }


/*$urunsor=$db->prepare("SELECT * FROM urun WHERE urun_id=$id");
$urunsor->execute();

$uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);

echo$say=$urunsor->rowCount();

if ($say==0) {
	
	header("Location:index.php?durum=oynasma");
	exit;
}
*/
?>

<head>
	
	<!-- fancy Style -->
	<link rel="stylesheet" type="text/css" href="js\product\jquery.fancybox.css?v=2.1.5" media="screen">
</head>

<?php 

if ($_GET['durum']=="OK") {?>

<script type="text/javascript">
	alert("Yorum Başarıyla Eklendi");
</script>

<?php } 
?>




<div class="container">
	
	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	<div class="row">

	</div>
	<div class="row">
		<div class="col-md-9"><!--Main content-->
			<div class="title-bg">
				<div class="title"><?php echo $name ?></div>
			</div>
			<div class="row">
				<div class="col-md-6">

				<?php
					$urun_id=$ids;
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
						));

					$urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

					?>
					
					

					<div class="dt-img">
						<div class="detpricetag blue"><div class="inner"><?php echo $fiyat ?> TL</div></div>
						<a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img style="width: 350px; height: 220px;" src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
					</div>


					<?php
					$urun_id=$ids;
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1,3 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
						));

					while($urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC)) {

					?>

					<div class="thumb-img">
						<a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img style="width: 110px; height: 100px;" src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
					</div>

					<?php } ?>	

				</div>
				<div class="col-md-6 det-desc">
					<div class="productdata">
						<div class="infospan">Ürün Kodu <span><?php echo $ids; ?></span></div>
						<div class="infospan">Ürün Fiyat <span><?php echo $fiyat ?></span></div>




						<div class="clearfix"></div>
						<hr>


						<form action="nedmin/netting/islem.php" method="POST">

						<div class="form-group">
							<label for="qty" class="col-sm-2 control-label">Adet</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" value="1" name="urun_adet">
							</div>
							<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">

							<input type="hidden" name="urun_id" value="<?php echo $ids ?>">
							<div class="col-sm-4">
								<button type="submit" name="sepetekle" class="btn btn-default btn-red btn-sm"><span class="addchart">Sepete Ekle</span></button>
							</div>
							<div class="clearfix"></div>
						</div>
						</form>


						<div class="sharing">
							<div class="share-bt">
								<div class="addthis_toolbox addthis_default_style ">
									<a class="addthis_counter addthis_pill_style"></a>
								</div>
								<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f0d0827271d1c3b"></script>
								<div class="clearfix"></div>
							</div>


							<div  class="avatock"><span>

								<?php if ($stok>=1) {

									echo "Stok Adeti : ".$stok;
								} else {

									echo "Ürün Kalmadı";
								} ?>

							</span></div>
						</div>



					</div>
				</div>
			</div>

				<div class="tab-review">
				<ul id="myTab" class="nav nav-tabs shop-tab">
					
					<li <?php if ($_GET['durum']!="OK") {?>
						class="active"
						<?php } ?>><a href="#desc" data-toggle="tab">Açıklama</a></li>
						<li 

						<?php if ($_GET['durum']=="OK") {?>
						class="active"
						<?php } ?>

						<?php 
						$kullanici_id=$kullanicicek['kullanici_id'];
						$urun_id=$id;

						$yorumsor=$db->prepare("SELECT * FROM yorumlar where urun_id=:urun_id");
						$yorumsor->execute(array(
							'urun_id' => $urun_id
							));


							?>
							><a href="#rev" data-toggle="tab">Yorumlar (<?php echo $yorumsor->rowCount(); ?>)</a></li>
							<li class=""><a href="#video" data-toggle="tab">Ürün Video</a></li>
						</ul>



						<div id="myTabContent" class="tab-content shop-tab-ct">
							<div class="tab-pane fade <?php if ($_GET['durum']!="OK") {?>
								active in
								<?php } ?>" id="desc">
								<p>
									<?php echo $acıklama ?>
								</p>
							</div>


							<div class="tab-pane fade <?php if ($_GET['durum']=="OK") {?>
								active in
								<?php } ?>" id="rev">


								<?php 




								while($yorumcek=$yorumsor->fetch(PDO::FETCH_ASSOC)) {

									$ykullanici_id=$yorumcek['kullanici_id'];

									$ykullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_id=:id");
									$ykullanicisor->execute(array(
										'id' => $ykullanici_id
										));

									$ykullanicicek=$ykullanicisor->fetch(PDO::FETCH_ASSOC);
									?>



									<!-- Yorumları Dökeceğiz -->
									<p class="dash">
										<span><?php echo $ykullanicicek['kullanici_adsoyad'] ?></span> (<?php echo $yorumcek['yorum_zaman'] ?>)<br><br>
										<?php echo $yorumcek['yorum_detay'] ?>
									</p>

									<!-- Yorumları Dökeceğiz -->

									<?php } ?>


									<h4>Yorum Yazın</h4>

									<?php if (isset($_SESSION['userkullanici_mail'])) {?>

									<form action="nedmin/netting/islem.php" method="POST" role="form">


										<div class="form-group">
											<textarea name="yorum_detay" class="form-control" placeholder="Lütfen yorumunuzu buraya yazınız..." id="text"></textarea>
										</div>

										<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">

										<input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">

										<input type="hidden" name="gelen_url" value="<?php 
										echo "http://".$_SERVER['HTTP_HOST']."".$_SERVER['REQUEST_URI'].""; 

										?>">

										

										<button type="submit" name="yorumkaydet" class="btn btn-default btn-red btn-sm">Yorumu Gönder</button>
									</form>

									<?php } else {?>

									Yorum yazabilmek için <a style="color:red" href="register">kayıt</a> olmalı yada üyemizseniz giriş yapmalısınız...

									<?php } ?>


						

					</div>

					<div class="tab-pane fade " id="video">
						<p>
							

							<?php 

							$say=strlen($vidyos);

							if ($say>0) {?>
							
							<iframe width="655" height="335" src="https://www.youtube.com/embed/<?php echo $vidyos ?>" frameborder="0" allowfullscreen></iframe>

							<?php } else {

								echo "Bu ürüne video eklenmemiştir";

							}

							?>
						</p>
					</div>


				</div>
			</div>
				<div class="spacer"></div>
			</div><!--Main content-->


			<?php include 'sidebar.php' ?>
		</div>
	</div>

	<?php include 'footer.php' ?>