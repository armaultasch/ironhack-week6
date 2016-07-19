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
		
		console.log(ingID);
		addIngredient(ingID);
	});
});

function addIngredient(ingID, sandID) {
	// console.log(response);
 
 $.ajax({
 	type: "POST",
 	url: "/api/sandwiches/" + sandID + "/ingredients/add",
 	data: ingID,
 	success: updateSandwich,
 	error: handleError

 });
}

function handleError(err) {
		console.log("Error", err);
	}


