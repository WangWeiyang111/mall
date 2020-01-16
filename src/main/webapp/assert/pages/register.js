//当页面加载完成后开始执行
$(document).ready(function() {
	// 对注册按钮绑定事件
	$('#button_register').on('click', function() {
		$.ajax({
			type : 'post',
			url : 'mall/doRegister',
			data : $('#form_user_register').serialize(),
			dataType : 'json',
			success : function(result) {  // 请求响应成功后的回调
				if(result){
					alert("注册成功，请登录");
					$('#form_user_register')[0].reset();
					window.location.href = "mall/goLogin";
				}
			}
		});
	});
});