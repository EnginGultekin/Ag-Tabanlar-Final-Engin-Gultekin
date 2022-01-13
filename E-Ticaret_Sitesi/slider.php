<div class="main-slide">
	<div id="sync1" class="owl-carousel">


		<?php 

		$slidersor=$db->prepare("SELECT * FROM slider");
		$slidersor->execute();

		while($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) {

		 ?>


		<div class="item">
			<div class="slide-desc">
				<div class="inner">
					<h1><?php echo $slidercek['slider_ad'] ?></h1>
					<p>
						Hepsi aynı fiyata kendi alanlarında farklı ve yüksek kaliteli ürünler bu fırsat kaçmaz sakın kaçırmayın sonra üzülen siz olursunuz ... 
					</p>
				</div>
				<div class="inner">
					<div class="pro-pricetag big-deal">
						<div class="inner">
							<span class="oldprice">$320</span>
							<span>$110</span>
							<span class="ondeal">En İyi Fiyat</span>
						</div>
					</div>
				</div>
			</div>
			<div class="slide-type-1">
				<a href="<?php echo $slidercek['slider_link'] ?>"><img src="<?php echo $slidercek['slider_resimyol'] ?>" alt="" class="img-responsive"></a>
			</div>
		</div>

		<?php } ?>




	</div>
</div>

		<!--  AltBar -->

		<div class="bar"></div>
		<div id="sync2" class="owl-carousel">

			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Galatasaray Forması</h3>
					<p>GS Storeden Size</p>
				</div>
			</div>

			<div class="item">
				<div class="slide-type-1-sync">
					<h3>HataySpor Forması</h3>
					<p>Hataydan Size</p>
				</div>
			</div>
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Stil Ceket</h3>
					<p>%100 Deri Ceket</p>
				</div>
			</div>
			
			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Nike Airbax</h3>
					<p>Rahat Spor Ayakkabısı</p>
				</div>
			</div>

			<div class="item">
				<div class="slide-type-1-sync">
					<h3>Kapşonlu Ceket</h3>
					<p>İnanılmaz Sıcak Tutar</p>
				</div>
			</div>
			
		</div>