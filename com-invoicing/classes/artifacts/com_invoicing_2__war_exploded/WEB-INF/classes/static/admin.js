var Admin	 = function() {
	var handleInit = function() {
		$(".newsAdd").click(function() {
			var tid = $("body").data("id");
			location.href = "/newsAdd?nId=" + id + "&content=" + $content.val();
		});
	};

	var handledel = function() {
		$(".click").click(function() {
			alert(1);
			// $this=$("#btnDel button")
			// if (confirm("确定要删除吗？")) {
			// 	location.href = "/newsDel";
			// 	var id =$this.data("id");
			// 	alert(id)
			// 	location.href="newsDel?id="+id;
			// }
		});
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
			handledel();
			handleLogout();
		}
	};
} ();

$(function() {
	Admin.init();
});