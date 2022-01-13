<?php 
	include 'header.php'; 

	// Belirli Veriyi Çekmek

	$url_id = $_GET['id'];

	$menusor=$db->prepare("SELECT * FROM menu WHERE menu_id=$url_id "); 
	$menusor->execute();
	$menucek=$menusor->fetch(PDO::FETCH_ASSOC);


?>

	    <br><br>
		<center><a href="iletisim.php"><button><div class="title"> İletişime Geç ve Mesajını Yolla</div></button></a></center>
	

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="page-title-wrap">
					<div class="page-title-inner">
					<div class="row">
						<div class="col-md-4">
							<div class="bigtitle"> <?php echo $menucek['menu_ad']; ?></div>
						</div>
						<blockquote><?php echo $menucek['menu_detay']; ?> </blockquote>
					</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9"><!--Main content-->

			
			<!--Sidebar Buraya Gelecek-->
			<?php //include 'sidebar.php' ?> 
 		</div>
		<div class="spacer"></div>
	</div>
	

<?php  include 'footer.php'; ?>