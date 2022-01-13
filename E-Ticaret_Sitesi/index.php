<?php  include 'header.php' ?>

	<div class="container">
		
		<div class="clearfix"></div>
		<div class="lines"></div>

		<?php include 'slider.php'; ?>    <!--  Slider Dosyası -->

		
	</div>

	<div class="f-widget featpro">
		<div class="container">
			<div class="title-widget-bg">
				<div class="title-widget">Öne Çıkan Ürünler</div>
				<div class="carousel-nav">
					<a class="prev"></a>
					<a class="next"></a>
				</div>
			</div>


			<div id="product-carousel" class="owl-carousel owl-theme">



		 	<?php 
		 	/*
			$urunsor=$db->prepare("SELECT * FROM urun where urun_durum=:urun_durum and urun_onecikar=:urun_onecikar");
			$urunsor->execute(array(
				'urun_durum' => 1,
				'urun_onecikar' => 1
				));

			
			while($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {
				?> 

               <!--

				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="product.htm"><img src="images\sample-1.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag blue"><div class="inner"><span><?php echo $uruncek['urun_fiyat'] ?> TL</span></div></div>
						</div>
						<span class="smalltitle"><a href="product.htm"><?php echo $uruncek['urun_ad'] ?></a></span>
						<span class="smalldesc">Ürün Kodu.: <?php echo $uruncek['urun_id'] ?></span>
					</div>
				</div>            -->

				<?php }  */?> 




				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;"  src="dimg/urun/11.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag blue"><div class="inner"><span>$450</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Nikon Camera</a></span>
							<span class="smalldesc">Item no.: 210</span>
					</div>
				</div>


				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/08.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$79</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Black Shoes</a></span>
							<span class="smalldesc">Item no.: 675</span>
					</div>
				</div>

				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/15.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag blue"><div class="inner"><span>$450</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Nikon Camera</a></span>
							<span class="smalldesc">Item no.: 210</span>
					</div>
				</div>


				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="kategoriler.php"><img  style="width: 360px; height: 110px;" src="dimg/urun/18.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$79</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Black Shoes</a></span>
							<span class="smalldesc">Item no.: 675</span>
					</div>
				</div>


				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/24.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag blue"><div class="inner"><span>$450</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Nikon Camera</a></span>
							<span class="smalldesc">Item no.: 210</span>
					</div>
				</div>


				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/28.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$79</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Black Shoes</a></span>
							<span class="smalldesc">Item no.: 675</span>
					</div>
				</div>


				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/29.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$79</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Black Shoes</a></span>
							<span class="smalldesc">Item no.: 675</span>
					</div>
				</div>



				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/33.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$79</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Black Shoes</a></span>
							<span class="smalldesc">Item no.: 675</span>
					</div>
				</div>



				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="new"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;" src="dimg/urun/12.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag on-sale"><div class="inner on-sale"><span class="onsale"><span class="oldprice">$314</span>$79</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Black Shoes</a></span>
							<span class="smalldesc">Item no.: 675</span>
					</div>
				</div>


				<div class="item">
					<div class="productwrap">
						<div class="pr-img">
							<div class="hot"></div>
							<a href="kategoriler.php"><img style="width: 360px; height: 110px;"  src="dimg/urun/01.jpg" alt="" class="img-responsive"></a>
							<div class="pricetag blue"><div class="inner"><span>$450</span></div></div>
						</div>
							<span class="smalltitle"><a href="product.htm">Nikon Camera</a></span>
							<span class="smalldesc">Item no.: 210</span>
					</div>
				</div>


				


			</div>
		</div>
	</div>
	
	
	
	<div class="container">
		<div class="row">
			<div class="col-md-9"> <!--Main content--> 
				<br>
					<div class="title">Hakkımızda Bilgi</div>
				<br>
				<p class="ct">
					<?php 
					$hakkimizdasor=$db->prepare("SELECT * FROM hakkimizda where hakkimizda_id=:id");
					$hakkimizdasor->execute(array(
						'id' => 0
						));
					$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);

					echo substr($hakkimizdacek['hakkimizda_icerik'],0,1800) ?>
				</p>

				<a href="hakkimizda.php" class="btn btn-default btn-red btn-sm">Devamını Oku</a>
			

				<div class="spacer"></div>
			</div> <!--Main content--> 


			 <!-- Sidebar  -->
			 <?php include 'sidebar.php' ?> 
				
			
		</div>
	</div>  <br><br>
	
	<?php  include 'footer.php' ?>