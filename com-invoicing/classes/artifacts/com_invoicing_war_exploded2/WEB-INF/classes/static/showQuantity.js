var ShowQuantity = function() {
	var handleValidation = function() {
		$("#showQuantityForm").submit(function() {
			var $productId = $("#productId");
			if ($.trim($productId.val()).length == 0) {
				alert("请选择商品！");
				$productId.focus();
				return false;
			}
			
			return true;
		});
	};
	
	return {
		init: function() {
			handleValidation();
		}
	};
} ();

$(function() {
	ShowQuantity.init();
});