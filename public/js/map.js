$(document).ready(function(){

	window.api=new api_connect();

	initializeMap();

	//download locations and sync with db
	$("#btnSync").click(function(){
		parseData();

	});


	$("#ddDay").change(function(){
		clearMarkers();

		var day=$(this).val();
		if(day=="ALL"){
			headylocations = window.api.get_locations();

		}else{
			headylocations = window.api.get_locations(day);
		}

		for(i=0; i<headylocations.length; i++)
			map_location(headylocations[i]);

	});

	//parsedata = parseData();

	//addHeadyData(parsedata);

	headerheight=$("header").outerHeight();
	windowheight=$(window).outerHeight();
	$("#map_canvas").height(windowheight-headerheight);


});


window.map;
window.markers=[];
window.infowindows=[];

function clearMarkers(){
	
	for(i=0; i<window.markers.length;i++){
		window.markers[i].setMap(null);
	}
	window.markers=[];
}

function initializeMap(){
	//The center of the map coords
		var center = new google.maps.LatLng(44.337689, -72.75613709999999);

		//Initial Map Options
		var mapOptions = {
		      center:center,
		      zoom: 10,
		      mapTypeId: google.maps.MapTypeId.ROAD,
		      draggable:true,
		      zoomControl: true,
		      disableDoubleClickZoom:false,
		     scaleControl: true
		};

		//The map variable
		window.map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

		headylocations = window.api.get_locations();

		for(i=0; i<headylocations.length; i++)
			map_location(headylocations[i]);
}

function map_location(headylocation){

	marker = new google.maps.Marker({
		map:window.map,
		position: new google.maps.LatLng(headylocation.lat, headylocation.lng),
		title: headylocation.name,
		icon:"public/images/alchemistmarker.png"
	});

	window.markers.push(marker);

	google.maps.event.addListener(marker, 'click', function(event)
	{

		for(i=0; i<window.infowindows.length; i++){
			window.infowindows[i].close();
		}
		window.infowindows=[];

		//console.log(place.fld_placename);
		var content = "<div class=\"infowindow\">" 
		content += "<strong>Location Name</strong>: " + headylocation.name + "<br /><br />" ;
		content += "<strong>Address</strong>: " + headylocation.street +  "<br /><br />";
		content += "<strong>Delivery Day</strong>: " + headylocation.deliveryday;
		content+= "</div>";

		infowindow = new google.maps.InfoWindow({
				content: content
			});

		window.infowindows.push(infowindow);

		infowindow.open(window.map, this);

		//close window after 5 seconds
	    //setTimeout(function () { infowindow.close(); }, 5000);		

	});//end event listener

}



function addHeadyData(data){

	for(i=0; i<data.length; i++){
		headylocation = data[i];

		//Have to do this annoying callback thing because it results are Asynchronous 
		getLatLng(headylocation, function(latlng, currentlocation){

		 
        	marker = new google.maps.Marker({
				map:window.map,
				position: new google.maps.LatLng(lat, lng),
				title: currentfarm.name
			});

        	google.maps.event.addListener(marker, 'click', function(event)
			{

				//console.log(place.fld_placename);
				var content = "<div class=\"infowindow\">" 
				content += currentfarm.name + "<br />" ;
				content += currentfarm.address +  "<br />";
				content += currentfarm.phone + "<br /><br />";
				content += "Farm stand items: " + currentfarm.farmstand + "<br /><br />";
				content += "Farmers market location: " + currentfarm.farmersmarket;
				content+= "</div>";

				infowindow = new google.maps.InfoWindow({
      				content: content
  				});

				infowindow.open(window.map, this);
 
				//close window after 5 seconds
			    setTimeout(function () { infowindow.close(); }, 5000);		

			});//end event listener

		});
	
	}//for loop

}
