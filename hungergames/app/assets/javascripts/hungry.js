$(function(){
	var button = $("button.play.fade");
	button.mouseover(function(){
		button.text("REAP");
	})
	button.mouseout(function(){
		button.text("");
	})
	button.click(function(){
		reap();
	})
})

function reap(){
	// var tributes = $("<p class= 'tribute'>");
	// var losers = $("<p class= 'losers'>");
	// var winner = $("<p class='winner'>");
	var list = $("<div class='list'>");
	var loser1 = $("<div class = 'loser1'>");
	var rd1 = $("<h2 class='banner'>").text("Round 1 Losers");
	var loser2 = $("<div class = 'loser2'>");
	var rd2 = $("<h2 class='banner'>").text("Round 2 Losers");
	var loser3 = $("<div class = 'loser3'>");
	var rd3 = $("<h2 class='banner'>").text("Round 3 Losers");
	var loser4 = $("<div class = 'loser4'>");
	var rd4 = $("<h2 class='banner'>").text("Round 4 Losers");
	var loser5 = $("<div class = 'loser4'>");
	var rd5 = $("<h2 class='banner'>").text("Round 5 Loser");
	var champ = $("<div class = 'loser4'>");
	var champ_banner = $("<h1 class='banner'>");

	var body = $("body");
	$.ajax({
		url: "/hg/game",
		type: "GET",
		success: function(data){
			console.log(data);
			$("<h2 class= 'banner'>").text("Tributes").appendTo(body);
			list.appendTo(body);

			for(var i = 0; i < data.tributes.length; i++){
				var tributes = $("<p class= 'tribute'>");
				tributes.text( "Name: "+ data.tributes[i].name +"; Age: "+ data.tributes[i].age +" Gender: "+ data.tributes[i].gender +" District: "+ data.tributes[i].district_id +" Rating:"+ data.tributes[i].rating );
				tributes.appendTo(list);
			}
			rd1.appendTo(body);
			loser1.appendTo(body);
			for(var i = 0; i < 12; i++){
				var losers = $("<p class= 'losers'>");
				losers.text( "Name: "+ data.first[i].name +"; Age: "+ data.first[i].age +" Gender: "+ data.first[i].gender +" District: "+ data.first[i].district_id +" Rating:"+ data.first[i].rating );
				losers.appendTo(loser1);
			}
			rd2.appendTo(body);
			loser2.appendTo(body);
			for(var i = 12; i < 18; i++){
				var losers = $("<p class= 'losers'>");
				losers.text( "Name: "+ data.second[i].name +"; Age: "+ data.second[i].age +" Gender: "+ data.second[i].gender +" District: "+ data.second[i].district_id +" Rating:"+ data.second[i].rating );
				losers.appendTo(loser2);
			}
			rd3.appendTo(body);
			loser3.appendTo(body);
			for(var i = 18; i < 21; i++){
				var losers = $("<p class= 'losers'>");
				losers.text( "Name: "+ data.third[i].name +"; Age: "+ data.third[i].age +" Gender: "+ data.third[i].gender +" District: "+ data.third[i].district_id +" Rating:"+ data.third[i].rating );
				losers.appendTo(loser3);
			}
			rd4.appendTo(body);
			loser4.appendTo(body);
				var loser_fourth = $("<p class= 'losers'>");
				loser_fourth.text( "Name: "+ data.fourth[21].name +"; Age: "+ data.fourth[21].age +" Gender: "+ data.fourth[21].gender +" District: "+ data.fourth[21].district_id +" Rating:"+ data.fourth[21].rating );
				loser_fourth.appendTo(loser4);

			rd5.appendTo(body);
			loser5.appendTo(body);

			var final_loser = $("<p class= 'losers'>");
			final_loser.text("Name: "+ data.finale[0][22].name +"; Age: "+ data.finale[0][22].age +" Gender: "+ data.finale[0][22].gender +" District: "+ data.finale[0][22].district_id +" Rating:"+ data.finale[0][22].rating);
			final_loser.appendTo(loser5);

			var banner = $("<h1 class='announce'>").text("Your Victor is:");
			var champion = $("<h1 class= 'victor'>").text(data.finale[1][0].name +" from District "+ data.finale[1][0].district_id);
			var stats = $("<h3 class = 'victor'>").text("Age: "+ data.finale[1][0].age +" Gender: "+ data.finale[1][0].gender +" Rating:"+ data.finale[1][0].rating);

			body.append($("<div class = 'winner'>").append(banner).append(champion).append(stats));



		}
	})
}