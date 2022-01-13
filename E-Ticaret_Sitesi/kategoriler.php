<?php include 'header.php'; 


if (isset($_GET['kategori_ad'])) {


	$kategorisor=$db->prepare("SELECT * FROM kategori where kategori_id=:id");
	$kategorisor->execute(array(
		'id' => $_GET['kategori_id']
		));

	$kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC);

	 $kategori_id=$kategoricek['kategori_id'];


	$urunsor=$db->prepare("SELECT * FROM urun where kategori_id=:kategori_id order by urun_id DESC");
	$urunsor->execute(array(
		'kategori_id' => $kategori_id
		));

	$say=$urunsor->rowCount();

} else {

	$urunsor=$db->prepare("SELECT * FROM urun order by urun_id DESC");
	$urunsor->execute();

}

 ?>

	<div class="container">
		<div class="clearfix"></div>
		<div class="lines"></div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title-wrap">
					<div class="page-title-inner">
					<div class="row">
						<div class="col-md-4">
							<div class="bigtitle">Kategoriler</div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9"><!--Main content-->
				<br>
					<div class="title">Kategoriler - Tüm Ürünler</div>
				<br>

				<div class="row prdct"><!--Products-->


				  <?php

				  	if ($say==0) {
					echo "Bu kategoride ürün bulunamadı";
				}


					while($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {
					?>
				
					<?php
					$urun_id=$uruncek['urun_id'];
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
						));

					$urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

					?>
					

					<div class="col-md-4">
						<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="urun-detay.php?id=<?php echo $uruncek['urun_id'];?>"><img 
								style="width: 350px; height: 110px;" src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>

							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice"><?php echo $uruncek['urun_fiyat']*1.80 ?> TL</span><?php echo $uruncek['urun_fiyat'] ?> TL</span></div></div>
						</div>

							<span class="smalltitle"><a href="urun-detay.php?id=<?php echo $uruncek['urun_id'];?>"><?php echo $uruncek['urun_ad']; ?></a></span>
							<span class="smalldesc">Item no.: <?php echo $uruncek['urun_id']; ?></span>
						</div>
					</div>

				<?php } ?>
					
					
				</div><!--Products-->
				
				<ul class="pagination shop-pag"> <!-pagination->
					<li><a href="#"><i class="fa fa-caret-left"></i></a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"><i class="fa fa-caret-right"></i></a></li>
				</ul> 

			</div>

			<?php include 'sidebar.php' ?>
			<!--sidebar-->
		</div>
		<div class="spacer"></div>
	</div>
	
	

	
<?php include 'footer.php'; ?>