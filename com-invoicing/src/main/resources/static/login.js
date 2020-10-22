var Login = function() {
	var handleInit = function() {
		var msg = $("body").data("msg");
		if (msg.length > 0) {
			alert(msg);
		}
	};
	
	var handleValidation = function() {
		$("#loginForm").submit(function() {
			var $username = $("#username");
			if ($.trim($username.val()).length == 0) {
				alert("用户名必填！");
				$username.focus();
				return false;
			}
			
			var $password = $("#password");
			if ($.trim($password.val()).length == 0) {
				alert("密码必填！");
				$password.focus();
				return false;
			}
			
			return true;
		});
	};

	return {
		init: function() {
			handleInit();
			handleValidation();
		}
	};
} ();

$(function() {
	Login.init();
});