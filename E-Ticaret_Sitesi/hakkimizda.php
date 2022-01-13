<?php 
	include 'header.php'; 

	// Belirli Veriyi Çekmek


	$hakkimizdasor=$db->prepare("SELECT * FROM hakkimizda WHERE hakkimizda_id=:id "); 
	$hakkimizdasor->execute(array(
	  'id'=> 0  
	));

	$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);


?>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title-wrap">
					<div class="page-title-inner">
					<div class="row">
						<div class="col-md-4">
							<div class="bigtitle">Hakkımızda</div>
						</div>
					
					</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9"><!--Main content-->
				<br>
					<div class="title">Video</div>
				<br>
				<iframe width="800" height="400" src="https://www.youtube.com/embed/<?php echo $hakkimizdacek['hakkimizda_video']; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

				<br><br>
					<div class="title">Vizyon</div>
				<br>

				<blockquote><?php echo $hakkimizdacek['hakkimizda_vizyon']; ?> </blockquote>

				<br>
					<div class="title">Misyon</div>
				<br>

				<blockquote><?php echo $hakkimizdacek['hakkimizda_misyon']; ?> </blockquote>
				<br>
					<div class="title"><?php echo $hakkimizdacek['hakkimizda_baslik']; ?></div>
				<br>
				<div class="page-content">
					<p>
						<?php echo $hakkimizdacek['hakkimizda_icerik']; ?>
					</p>
				</div>
			</div>

			<!--Sidebar Buraya Gelecek-->
			<?php // include 'sidebar.php' ?>
		</div>
		<div class="spacer"></div>
	</div>
	

<?php  //include 'footer.php'; ?>