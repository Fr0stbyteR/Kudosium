$(function(){

$('.hasDurableDropdown').on({ //可输入dropdown不能在点击后关闭
	"shown.bs.dropdown": function() { $(this).addClass("dropDownKeep"); },
	//"click":             function() { $(this).removeClass("dropDownKeep"); },
	"hide.bs.dropdown":  function() { return $(this).hasClass("dropDownKeep") ? false : true; }
})
$('.inputDropdownToggle').on({ //可输入dropdown不能在点击后关闭
	"click":             function() { $(this).parent('.hasDurableDropdown').removeClass("dropDownKeep"); },
})
$('.dropdownInputButton').on({
	"click": function() { $(this).parents('.hasDurableDropdown').removeClass("dropDownKeep"); },
})

$('.inputSourceInput').blur(function() { //失去焦点时ajax
	var wsSourceText = $(this).val();
	$.ajax({
		type: "POST", 
		context: this,
		url: "getws.php", 
		dataType: "json", 
		data: {"text":wsSourceText}, 
		success: function(json) {
			$(this).parent().find('.inputPredicateText').text(json.predicate[0]);
			$(this).parent().find('.inputObjectText').text(json.object[0]);
			$(this).siblings('.hidden').removeClass("hidden");
			$(this).siblings('.inputReadySpan').addClass("hidden");
			$(this).val(json.note).removeClass("inputSourceInput").addClass("inputNoteInput").off("blur");
		} 
	})
})
})