$(document).ready(function() {
	
	initTableData();
	

	
	//绑定submit按钮
	$('#button_submit0').off('click').on('click',function(){
		saveOrUpdate();
	});
	
	//绑定新增一级目录按钮
	$('#button_addcatalog0').off('click').on('click',function(){
		//显示新增表单
		$('#modal_catalog0').modal('show');
		//清空里面的信息
		$('#form_catalog_add_edit')[0].reset();
		//清空表单校验的信息
		$('.formError').remove();
		//移除已经存在的rowId
		$('#rowId').removeAttr('value');
		$('#parentId').removeAttr('value');
		$('#parentId').val('-1');
		$('#parentName').val('这是一级目录');
		$('#action_info').html('新增');
	});
	
	
	
	
	
	//删除
	$('#dataTable_wrapper').off('click','#catalog0delete').on('click','#catalog0delete',function(){
	    var rowId = $(this).attr('data-rowId'); 
		if(confirm('你确定要删除吗？')){
			$.ajax({
				url:'catalog/docatalog0delete/'+rowId,
				success:function(result){
					if(result){
						alert("删除成功");
						initTableData();
					}
				}
			});
		}
	});
	
	
	//增加子目录
	$('#dataTable_wrapper').off('click','#gocatal1gsave').on('click','#gocatal1gsave',function(){
		var parentId = $(this).attr('data-rowId');
		var parentName = $(this).attr('parent-name');
		$('#modal_catalog0').modal('show');
		$('.formError').remove();
		$('#form_catalog_add_edit')[0].reset();
		//移除已经存在的rowId
		$('#rowId').removeAttr('value');
		$('#parentId').val(parentId);
		$('#parentName').val(parentName);
		});
   });
   



//初始化页面
	function initTableData(){
		$.ajax({
			type :'post',
			url : 'catalog/dofind',
			success : function(htmlData) {
				$('#dataTable_wrapper').html(htmlData);
			}
		});
	}
	
	
	
	
	// go update
	function gocatalog0update(rowId){
		$.ajax({
			url:'catalog/gocatalog0update/'+rowId,
			dataType:'json',
			success:function(catalog){
				if(catalog){
					//将modal表单显示
					$('#modal_catalog0').modal('show');
					//尝试清空所有的校验信息
					$('.formError').remove();
					if(catalog.parentId == -1){
						$('#parentName').val('这是一级目录');
					}else{
						$('#parentName').val('这是二级目录');
					}
					$('#catalogName').val(catalog.catalogName);
					$('#catalogInfo').val(catalog.catalogInfo);
					$('#rowId').val(rowId);
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
				url:'catalog/docatalog0update',
				data:$('#form_catalog_add_edit').serialize(),
				dataType:'json',
				success:function(result){
					if(result){
						$('#modal_catalog0').modal('hide');
						alert("修改成功");
						initTableData();
					}
				}
			});
		}else{//主键rowId没有就是新增
			$.ajax({
				type : 'post',
				url : 'catalog/docatalog0add',
				data : $('#form_catalog_add_edit').serialize(),
				dataType : 'json',
				success : function(result) {
					if(result){
						$('#modal_catalog0').modal('hide');
						alert("新增目录成功");
						initTableData();
					}
				}
			});
		}
	}

