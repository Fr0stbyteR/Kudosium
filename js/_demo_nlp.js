$(function(){

$("#test").blur(function(){//失去焦点时ajax
var wsSourceText = $(this).val();
	$.ajax({
	type: "POST", 
		url: "getws.php", 
		dataType: "json", 
		data: {"source":wsSourceText}, 
		success: function(json){
			$("#test").val(json.result);
		} 
	})
})
})