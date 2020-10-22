var Message = function() {
	var handleInit = function() {
		$("#messageBtn").click(function() {
			var $content = $("#content");
			var id = $("body").data("id");

			location.href = "/messageAdd?nId=" + id + "&content=" + $content.val();
		});
	};

	return {
		init: function() {
			handleInit();
		}
	};
} ();

$(function() {
	Message.init();
});