$(document).ready(function() {
	// 进入修改页面
	$('#button_goupdate').on('click', function() {
		var rowId = $(this).attr('rowId');
		alert('确定进入修改账户页面？')
		$.ajax({
			url:'mall/goupdate/'+rowId,
			dataType:'json',
			success:function(user){
				if(user){
					//将modal表单显示
					$('#modal_user').modal('show');
					//将用户信息传到新的修改页面上
					$('#userName').val(user.userName);
					$('#userCode').val(user.userCode);
					$('#userPass').val(user.userPass);
					$('#userPhone').val(user.userPhone);
				}
			}
		});
	});
	
	//绑定修改事件，进行修改
	$('#button_submit').on('click',function(){
         alert('确定提交修改？')
         $.ajax({
        	 url:'mall/doupdate',
        	 data:$('#form_user_add_edit').serialize(),
        	 dataType:'json',
        	 success:function(result){
        		 if(result){
        			 alert('账户修改成功，请重新登录')
        			 window.location.href = "mall/goIndex";
        		 }
        	 }
         });
		 
		 
	});
	
	//绑定 删除事件 
	$('#button_delete').on('click',function(){
		var rowId = $(this).attr("rowId");
		/*alert(rowId)*/
		if(confirm("您确定要注销账户吗？")){
			$.ajax({
				url:'mall/doDelete/'+rowId,
				data : $('#form_user_edit').serialize(),
				dataType : 'json',
				success:function(rowId){
					if(rowId){
						alert('注销账户成功')
						window.location.href = "mall/goIndex";
					}
				}
			});
		}
	});
	
	
	//退出账号
	$('#button_out').on('click', function() {
		alert('确定退出个人账户？')
		$.ajax({
			type : 'post',
			url : 'mall/doOutLogin',
			dataType : 'json',
			success : function(result) {
				alert('退出成功')
				if (result) {
					window.location.href = "mall/goIndex";
				}
			}
		});
	})
	
	
	
});
