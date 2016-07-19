//application.js
//= require jquery
//= bootstrap.min
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function() {
 	var sandID = $(".sandy_class").data("sandwich-id");
	
	$(".button").on("click", function (event){
		console.log(event);
		event.preventDefault();
		var ingID = $(event.currentTarget).data("ingredient-id");
		var ingName = $(event.currentTarget).data("ingredient-name");
		var ingCals = $(event.currentTarget).data("ingredient-calories");
		
	
		// addIngredient(ingID, sandID);
		updateSandwich(ingName, ingCals);
	});
});

function addIngredient(ingID, sandID) {
	console.log(ingID);
	console.log(sandID);
 
 $.ajax({
 	type: "POST",
 	url: "/api/sandwiches/" + sandID + "/ingredients/add",
 	data: ingID,
 	success: updateSandwich(ingID),
 	error: handleError

 });
}

function handleError(err) {
		console.log("Error", err);
	}

function updateSandwich (ingName, ingCals) {

var html = `
<br>Name:
${ingName}<br>
Calories:
${ingCals}<br>



`;
$(".js-list-ing").append(html);


}
