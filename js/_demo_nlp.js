$(function(){

$('.hasDurableDropdown').on({ //可输入dropdown不能在点击后关闭
	"shown.bs.dropdown": function() { $(this).addClass("dropdownKeep"); },
	//"click":             function() { $(this).removeClass("dropDownKeep"); },
	"hide.bs.dropdown": function() { return $(this).hasClass("dropdownKeep") ? false : true; }
})
$('.durableDropdownToggle').on({ 
	"click": function() { $(this).closest('.hasDurableDropdown').removeClass("dropdownKeep"); },
})
$('.dropdownCloseButton').on({
	"click": function() { $(this).closest('.hasDurableDropdown').removeClass("dropdownKeep"); },
})
$('.inputPredicateDropdownSubmitButton').on({
	"click": function() { $(this).closest('.inputPredicate').find('.inputPredicateText').text($(this).prev('input').val()); },
})
$('.inputObjectDetailPlusButton').on({
	"click": function() { 
		if (!$(this).parent('li.dropdownInputLi').prev().is('li.divider')) $(this).parent('li.dropdownInputLi').before('<li role="presentation" class="divider"></li>');
		$(this).parent('li.dropdownInputLi').prev('li.divider').before('<li role="presentation" class="inputObjectDetailLi"><a role="menuitem" href="#">'+$(this).prev('input').val()+'</a></li>'); },
})

$('.inputSourceInput').blur(function() { //失去焦点时ajax
	var wsSourceText = $(this).val();
		if (wsSourceText) {
			$.ajax({
			type: "POST", 
			context: this,
			url: "getws.php", 
			dataType: "json", 
			data: {"text":wsSourceText}, 
			success: function(json) {
				$(this).parent().find('.inputPredicateText').text(json.predicate[0]);
				json.predicate.shift();
				var inputPredicateCandidateHtml = "";
				if (json.predicate.length) {
					for (i in json.predicate) {
						inputPredicateCandidateHtml += '<li role="presentation" class="inputPredicateCandidateLi"><a role="menuitem" href="#">'+json.predicate[i]+'</a></li>'
					}
					inputPredicateCandidateHtml += '<li role="presentation" class="divider"></li>';
				}
				$(this).parent().find('.inputPredicateDropdown').prepend(inputPredicateCandidateHtml);
				$(this).parent().find('.inputObjectInput').val(json.object[0]).removeClass("inputHidden");
				$(this).siblings('.hidden').removeClass("hidden");
				$(this).siblings('.inputReadySpan').addClass("hidden");
				$(this).val(json.note).removeClass("inputSourceInput").addClass("inputNoteInput").off("blur");
			} 
		})
	}
})
})