//当页面加载完成后开始执行
$(document).ready(function() {
	
	initTableData();
	
	//绑定submit按钮
	$('#adminuser_submit').off('click').on('click',function(){
		saveOrUpdate();
	});
	//绑定新增按钮
	$('#adminuser_add').off('click').on('click',function(){
		//显示新增表单
		$('#modal_adminuser').modal('show');
		//清空里面的信息
		$('#form_admin_add_edit')[0].reset();
		//清空表单校验的信息
		$('.formError').remove();
		//移除已经存在的rowId
		$('#rowId').removeAttr('value');
		$('#action_info').html('新增');
	});
	
	//删除
	$('#dataTable_wrapper').off('click','#admindelete').on('click','#admindelete',function(){
	    var rowId = $(this).attr('data-rowId'); 
		if(confirm('你确定要删除吗？')){
			$.ajax({
				url:'admin/doadmindelete/'+rowId,
				success:function(result){
					alert(result);
					if(result){
						initTableData();
					}
				}
			});
		}
	});
});




//后面都是函数

function initTableData(){
	$.ajax({
		type :'post',
		url : 'admin/adminfind',
		success : function(htmlData) {
			$('#dataTable_wrapper').html(htmlData);
		}
	});
}



// go update
function goupdate(rowId){
	$.ajax({
		url:'admin/goupdate/'+rowId,
		dataType:'json',
		success:function(user){
			if(user){
				//将modal表单显示
				$('#modal_adminuser').modal('show');
				//尝试清空所有的校验信息
				$('.formError').remove();
				/*$('#userKind').val(user.userKind);*/
				$('#userName').val(user.userName);
				$('#userCode').val(user.userCode);
				$('#userPass').val(user.userPass);
				$('#userPhone').val(user.userPhone);
				$('#rowId').val(user.rowId);
				$('#action_info').html('修改');
			}
		}
	});
}



//判断是增加还是修改
function saveOrUpdate(){
	var rowId = $('#rowId').val();
	if(rowId){//如果主键有信息 就是修改
		$.ajax({
			type:'post',
			url:'admin/doadminupdate',
			data:$('#form_admin_add_edit').serialize(),
			dataType:'json',
			success:function(result){
				if(result){
					$('#modal_adminuser').modal('hide');
					initTableData();
				}
			}
		});
	}else{//主键rowId没有就是新增
		// 对注册按钮绑定事件
			$.ajax({
				type : 'post',
				url : 'admin/doadminadd',
				data : $('#form_admin_add_edit').serialize(),
				dataType : 'json',
				success : function(result) {  // 请求响应成功后的回调
					$('#modal_adminuser').modal('hide');
					initTableData();
				}
			});
	}
}













