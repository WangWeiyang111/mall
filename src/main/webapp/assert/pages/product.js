//页面加载完成就开始执行
$(document).ready(function(){
	
	initTableData();	

	
	
	//绑定新增按钮
	$('#button_add').off('click').on('click',function(){
		//显示新增表单
		$('#modal_product').modal('show');
		//清空里面的信息
		$('#form_product_add_edit')[0].reset();
		//清空表单校验的信息
		$('.formError').remove();
		//移除已经存在的rowId
		$('#rowId').removeAttr('value');
		$('#action_info').html('新增');
		var parentId = -1;
		$('#div1').html('<select class="form-control" name="catalog1" id="catalog1"></select>');
		$('#div2').html('<select class="form-control" name="catalogId" id="catalog2"></select>');
		
		doFindCatalog(parentId);
		
		$('#catalog1').off('change').on('change',function(){
			var parentId = $('#catalog1').val();
			
			doFindCatalog1(parentId);
		});
		
		
		
	});
	
	
	
	//绑定submit按钮
	$('#button_submit').off('click').on('click',function(){
		saveOrUpdate();
	});
	
	//绑定 删除超连接事件 
	$('#dataTable_wrapper').off('click','#deleteA').on('click','#deleteA',function(){
		var rowId = $(this).attr("data-rowId");
		if(confirm("您确定要删除吗？")){
			$.ajax({
				url:'product/doelete/'+rowId,
				success:function(result){
					if(result){
						alert("删除成功");
						initTableData();
					}
				}
			});
		}
	});
	
	
	
	//绑定 上架超连接事件 
	$('#dataTable_wrapper').off('click', '#productStateUp').on('click','#productStateUp', function() {
	var rowId = $(this).attr("data-rowId");
	var productState = $(this).attr("data-state");
	$.ajax({
		type : 'post',
		url : 'product/updateState/' + rowId, 
        data: { "productState": productState},
		dataType : 'json',
		success : function(result) {
		if (result) {
		    $('#modal_product').modal('hide');
		    alert("商品上架成功");
		initTableData();
	}
}
});

});
	
	//绑定 下架超连接事件 
	$('#dataTable_wrapper').off('click', '#productStateDown').on('click','#productStateDown', function() {
	var rowId = $(this).attr("data-rowId");
	var productState = $(this).attr("data-state");
	$.ajax({
		type : 'post',
		url : 'product/updateState/' + rowId, 
        data: { "productState": productState},
		dataType : 'json',
		success : function(result) {
		if (result) {
		    $('#modal_product').modal('hide');
		    alert("下架商品成功");
		initTableData();
	}
}
});

});
	
	//商品的前台展示
	$('.doproductlook').off('click').on('click',function(){
		var catalogId=$(this).attr('catalogId');
		$.ajax({
			type:'post',
			url:'product/dofindproductbycatalogid/'+catalogId,
			dataType:'json',
			success : function(productLookList) {
				alert(productLookList);
				$.each(productLookList,function(index,productlook){
				$('#productLookList1').append('<div class="col-xs-12 col-sm-4 col-md-4"><div class="panel"><div class="panel-body p-t-30 p-b-30 text-center"><a href="product/goProducatDetail?rowId='+productlook.rowId+'" class="product-item"><img src="'+productlook.productPicture+'" class="img-responsive center-block" alt="" /></a><h5 class="m-tb-20">'+productlook.productName+'</h5><h6 class="text-success">'+productlook.productPrice+'</h6></div></div></div>');	
				});
			}
		});
	});
	
});




	//执行 新增或修改
	function saveOrUpdate(){
		var rowId = $('#rowId').val();
		if(rowId){//如果主键有信息，则判断进行的是修改
			$.ajax({
				type:'post',
				url:'product/doupdate',
				data:$('#form_product_add_edit').serialize(),
				dataType:'json',
				success:function(result){
					if(result){
						$('#modal_product').modal('hide');
						alert("修改成功");
						initTableData();	
					}
				}
			});
		}else{//则判断执行的是新增
			/*jquery拿到的是一个集合 后面加[0]是为了取数组的第一个值 */
			/*将表单封装成二进制文件，new formData()需要的是一个HtmlElement类型的参数  将jquery数组转换成HtmlElement类型的对象*/
			var formData = new FormData($('#form_product_add_edit')[0]);
			$.ajax({
				type:'post',
				url:'product/add',
				data:formData,
				cache: false, //不缓存  每次读取的都是最新数据  
				processData : false, // 告诉jQuery不 要去处理发送的数据 默认为true会把表单数据处理成文本型
				contentType : false,// 告诉jQuery不要去设置Content-Type请求头
				success:function(result){
					if(result){
						$('#modal_product').modal('hide');
						alert("商品新增成功");	
						initTableData();
					}
				}
			});
		}
		
	}
	
	// go update
	function goupdate(rowId){
		$.ajax({
			url:'product/goupdate/'+rowId,
			dataType:'json',
			success:function(product){
				if(product){
					//将modal表单显示
					$('#modal_product').modal('show');
					//尝试清空所有的校验信息
					$('.formError').remove();
					$('#productCode').val(product.productCode)
					$('#productName').val(product.productName);
					$('#productPrice').val(product.productPrice);
					$('#productCount').val(product.productCount);
					$('#productStatus').val(product.productStatus);
					$('#productInfo').val(product.productInfo);
					$('#rowId').val(product.rowId);
					$('#action_info').html('修改');
				}
			}
		});
	}

	
	function initTableData() {
		$.ajax({
			type :'post',
			url : 'product/find',
			success : function(htmlData) {
				$('#dataTable_wrapper').html(htmlData);
			}
		});
	}
	
	
	function doFindCatalog(parentId){
		$.ajax({
			type:'post',
			url:'product/dofindcatalog/'+parentId,
			dataType:'json',
			success:function(catalogList){
				$.each(catalogList,function(index,catalog){
					$('#catalog1').append('<option value="'+catalog.rowId+'">'+catalog.catalogName+'</option>');
					
				});
			}
		});
	}
	
	function doFindCatalog1(parentId){
		$.ajax({
			type:'post',
			url:'product/dofindcatalog/'+parentId,
			dataType:'json',
			success:function(catalogList){
				
				$.each(catalogList,function(index,catalog){
					$('#catalog2').append('<option value="'+catalog.rowId+'">'+catalog.catalogName+'</option>');
				});
	
			}
		});
	}
	
	
  
	
	