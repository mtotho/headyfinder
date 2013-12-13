function api_connect(){

	//places.add(): add place to db
	this.post_location = function(data){
		if(window.dbgMethodCalls)
			console.log("api.post_location()");

		$.ajax({
			type: 'post',
			url: "api/location/post",
			data:data,
			async:false,
			success: function(data){
				console.log(data);
				if(data==1)
					return 1;
			}
		});	
	}//end add functi

	//places.getById(): returns the place data depending on the id 
	this.get_locations = function(day){
		if(window.dbgMethodCalls)
			console.log("api.get_locations");

		var returndata;
		$.ajax({
			type: 'post',
			url: "api/location/get",
			data:{
				"day":day
			},
			async:false,
			complete: function(data){

				returndata= jQuery.parseJSON(data.responseText);
				//console.log(returndata);
			}
		});	
		return returndata	
	}//end list function
}