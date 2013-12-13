
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>HeadyFinder | Michael Toth</title>
		
		<link rel="stylesheet" href="<?php echo site_url("public/css/reset.css") ?>" />
		<link rel="stylesheet" href="<?php echo site_url("public/css/mainstyle.css") ?>" />

		<!--LOAD PLUGINS -->

			<!--jQuery & jQueryUI -->
			<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
			
			<!--Google Maps API v3 w/ API key-->
			<script type="text/javascript" src="https://maps.google.com/maps/api/js?key=AIzaSyAHDR09KWWgVoyFCoavaoHm2cCAHX5VL2g&sensor=false">
		    		</script>
			
			<script src="<?php echo site_url('public/js/api_connect.js') ?>" ></script>
			<script src="<?php echo site_url('public/js/scrape.js') ?>" ></script>
	   		<script src="<?php echo site_url('public/js/map.js') ?>" ></script>

	   		<style type="text/css">
				.infowindow{
					width: 250px;
					height:100px;
				}

	   		</style>
	</head>

	<body>	
		<div id="container">
			<header>
				<h1>HeadyFinder <span style="color:black">|</span> <span style="color:#4a4fff">Michael Toth</span></h1> 
				
				<div id="daySelect">
					<p id="lblSelectDay">Select Delivery Day</p>
					<select id="ddDay">
						<option selected="selected">ALL</option>
						<option>Monday</option>
						<option>Tuesday</option>
						<option>Wednesday</option>
						<option>Thursday</option>
						<option>Friday</option>
					</select>
				</div>
				<div style="clear:both"></div>
			</header>

			<div id="map_canvas"></div>
			
			<input type="button" id="btnSync" value="Sync Locations" />
		</div><!--end container-->
	</body>

</html>