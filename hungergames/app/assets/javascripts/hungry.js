$(function(){
	var button = $("button.play");

	button.click(function(){
		reap();
	})
})

function reap(){
	var tributes = $("<p class= 'tribute'>");
	var list = $("<div class='list'>");
	var body = $("body");
	$.ajax({
		url: "/hg/game",
		type: "GET",
		success: function(data){
			console.log(data);
			// window.location.href = "/hg/games";
			list.appendTo(body);
			for(var i = 0; i < data.length; i++){
				var tributes = $("<p class= 'tribute'>");
				tributes.text( "Name: "+ data[i].name +"; Age: "+ data[i].age +" Gender: "+ data[i].gender +" District: "+ data[i].district_id +" Rating:"+ data[i].rating );
				tributes.appendTo(list);
			}
			
		}
	})
}