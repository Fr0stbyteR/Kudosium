$(function() {

$('#postRegisterForm').click(function() { //点击时ajax发布注册信息到login.php
	var email = $('#inputRegisterEmail').removeClass("has-error").val().trim();
	var username = $('#inputRegisterUsername').removeClass("has-error").val().trim();
	var password = $('#inputRegisterPassword').removeClass("has-error").val().trim();
	var remember = $('#inputRegisterRemember').val();
	if (email && username && password) {
		$.ajax({
			type: "POST", 
			url: "login.php?action=register", 
			dataType: "json", 
			data: {"email":email,"username":username,"password":password,"remember":remember}, 
			success: function(json){
				if (json.success) {
					window.location.replace("./");
				} else {
					for (key in json.error) {
						if (key == "email") {
							$('#inputRegisterEmail').parent().addClass("has-error").tooltip({ "title": json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						} else if (key == "username") {
							$('#inputRegisterUsername').parent().addClass("has-error").tooltip({ "title": json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						} else if (key == "password") {
							$('#inputRegisterPassword').parent().addClass("has-error").tooltip({ "title": json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						} else {
							$('#postRegisterForm').tooltip({ "title": key + json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						}
					}
				}
			} 
		})
	}
})
$('#postLoginForm').click(function() { //点击时ajax发布登录信息到login.php
	var email = $('#inputLoginEmail').removeClass("has-error").val().trim();
	var password = $('#inputLoginPassword').removeClass("has-error").val().trim();
	var remember = $('#inputLoginRemember').val();
	if (email && password) {
		$.ajax({
			type: "POST", 
			url: "login.php?action=login", 
			dataType: "json", 
			data: {"email":email,"password":password,"remember":remember}, 
			success: function(json){
				if (json.success) {
					window.location.replace("./");
				} else {
					for (key in json.error) {
						if (key == "email") {
							$('#inputLoginEmail').parent().addClass("has-error").tooltip({ "title": json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						} else if (key == "password") {
							$('#inputLoginPassword').parent().addClass("has-error").tooltip({ "title": json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						} else {
							$('#postLoginForm').tooltip({ "title": key + json.error[key] }).tooltip("show").click(function(){ $(this).tooltip("hide"); });
						}
					}
				}
			} 
		})
	}
})
})