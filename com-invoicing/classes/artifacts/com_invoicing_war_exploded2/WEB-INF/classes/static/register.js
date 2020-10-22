var Register = function() {
	var handleInit = function() {
		var msg = $("body").data("msg");
		if (msg.length > 0) {
			alert(msg);
		}
	};

	return {
		init: function() {
			handleInit();
		}
	};
} ();

$(function() {
	Register.init();
});