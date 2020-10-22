var AddSale = function() {
	var handleValidation = function() {
		$("#addSaleForm").submit(function() {
			var $productId = $("#productId");
			if ($.trim($productId.val()).length == 0) {
				alert("请选择商品！");
				$productId.focus();
				return false;
			}
			
			var $price = $("#price");
			if ($.trim($price.val()).length == 0) {
				alert("请输入单价！");
				$price.focus();
				return false;
			} else if (!/^[1-9]\d*([.]\d{2})?$/.test($price.val())) {
				alert("单价错误！");
				$price.select();
				return false;
			}
			
			var $quantity = $("#quantity");
			if ($.trim($quantity.val()).length == 0) {
				alert("请输入数量！");
				$quantity.focus();
				return false;
			} else if (!/^[1-9]\d{0,2}$/.test($quantity.val())) {
				alert("数量错误！");
				$quantity.select();
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
	AddSale.init();
});