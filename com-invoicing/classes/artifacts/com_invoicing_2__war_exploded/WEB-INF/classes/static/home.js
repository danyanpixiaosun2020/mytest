var Home = function() {
	var handleInit = function() {
		var msg = $("body").data("msg");
		if (msg.length > 0) {
			alert(msg);
		}
	};
	
	var handleLogout = function() {
		$("#linkLogout").click(function() {
			if (confirm("确定要退出系统吗？")) {
				location.href = "/logout";
			}
		});
	};


	
	return {
		init: function() {
			handleInit();
			handleLogout();
		}
	};
} ();

$(function() {
	Home.init();
});