var SearchSale = function() {
	var handlePagination = function() {
		$("a[data-num]").click(function() {
			var pageNum = $(this).data("num");
			var type = $("#type").val();
			location.href = "/searchSale?pageNum=" + pageNum + "&type=" + type;
		});
	};
	
	return {
		init: function() {
			handlePagination();
		}
	};
} ();

$(function() {
	SearchSale.init();
});