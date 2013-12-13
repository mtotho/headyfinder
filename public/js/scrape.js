function parseData(){

	rawhtml="";

	
	$.ajax({
		type: 'get',
		url:"public/js/proxy.php",
	    async: false,
		
		success: function(data){
		
			rawhtml=data;
		}
	});	

	data=[];

	parsedHTML=$.parseHTML(rawhtml);
	wheretobuy =$(parsedHTML).find("#wheretobuy");
	locations =$(wheretobuy).find(".location");

	createLocation(0, locations);
}

function createLocation(i, locations){

	 setTimeout(function () {    //  call a 3s setTimeout when the loop is called
	          
			headylocation = locations[i];
			name = $(headylocation).find(".name")[0].innerHTML;
			street= $(headylocation).find(".street")[0].innerHTML;
			deliveryday=$(headylocation).find(".delivery")[0].innerHTML;


			if(street.search("VT")==-1){
				street+=", VT";
			}

			var obj={
				name:name,
				street:street,
				deliveryday:deliveryday
			}
			pushToDB(obj)

	      i++;                     
	      if (i < locations.length) {           
	         createLocation(i, locations);             
	      }                        
  	 }, 1000)
}


function pushToDB(headylocation){

	 geocoder = new google.maps.Geocoder();

	 var loc=[];
	
	 geocoder.geocode( { 'address': headylocation.street}, function(results, status) {
	 	
	 	//console.log(headylocation.street);
      // and this is function which processes response

      if (status == google.maps.GeocoderStatus.OK) {
	        lat=results[0].geometry.location.lat();
	        lng=results[0].geometry.location.lng();

	        var data={
	        	name:headylocation.name,
	        	street:headylocation.street,
	        	deliveryday:headylocation.deliveryday,
	        	lat: lat,
	        	lng: lng
	        }

	        console.log("Posting Data with lat lng");
	        console.log(data);

	        //add item to database with latlng
	        window.api.post_location(data);
	      	//callback(new google.maps.LatLng(lat,lng), headylocation);

      } else {
	      	console.log("posting data w/o lat lng");
	      	console.log(headylocation);
	      	window.api.post_location(headylocation);
	      	//add item to database without latlng
	        console.log("Geocode was not successful for the following reason: " + status);
      }
    });
}