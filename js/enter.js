$(function(){

$("#postRegisterForm").click(function(){//点击时ajax发布注册信息到login.php
var email = $("#inputRegisterEmail").val();
var username = $("#inputRegisterUsername").val();
var password = $("#inputRegisterPassword").val();
	$.ajax({
	type: "POST", 
		url: "login.php?action=register", 
		dataType: "json", 
		data: {"email":email,"username":username,"password":password}, 
		success: function(json){
		} 
	})
})
})