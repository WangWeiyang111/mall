//页面加载完成就开始执行
$(document).ready(function(){
    //attach:注册表单校验事件
	$('#form_product_add_edit').validationEngine('attach', {
		onValidationComplete : function(form, status) {
			//如果校验通过
			if(status){
				//执行 新增或修改
				saveOrUpdate();
			}
		}
	});
	//查询所有的数据
	initTableData(1);
	//绑定新增按钮
	$('#button_add').off('click').on('click',function(){
		//显示新增表单
		$('#modal_product').modal('show');
		//清空里面的信息
		$('#form_product_add_edit')[0].reset();
		//清空表单校验的信息
		$('.formError').remove();
		//尝试移除data-skip这一个属性（为了唯一性校验）
		$('#productCode').removeAttr('data-skip');
		//移除已经存在的rowId
		$('#rowId').removeAttr('value');
		$('#action_info').html('新增');
	});
	
	//绑定submit按钮
	$('#button_submit').off('click').on('click',function(){
		//让当前的表单执行提交动作
		//表单提交动作会触发表单的校验
		$('#form_product_add_edit').submit();
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
						initTableData(1);
					}
				}
			});
		}
	});
	
	//绑定搜索按钮
	$('#button_search').on('click',function(){
		//查询所有的数据
		initTalbeData(1);
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
						initTalbeData(1);
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
						alert("商品新增成功");	
						$('#modal_product').modal('hide');
						initTableData(1);
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
				//if(true) js false()
				if(product){
					//将modal表单显示
					$('#modal_product').modal('show');
					//尝试清空所有的校验信息
					$('.formError').remove();
					//$('#roleName').val(role.roleName);
					var productCode = product.productCode;
					//在需要进行唯一性校验的field里面增加 data-skip这个属性并赋值。
					$('#productCode').val(productCode)/*.attr('data-skip',productCode);*/
					$('#productName').val(product.productName);
					$('#productPictureFile').val(product.productPictureFile);
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

	//init table data
	function initTableData(pageNo) {
		$.ajax({
			type :'post',
			url : 'product/find/' + pageNo,
			/*data : $('#form_search').serialize(),*/
			success : function(htmlData) {
				alert("展示商品");
				$('#dataTable_wrapper').html(htmlData);
			}
		});
	}
	
	//响应分页
	/* function page_select(pageNo){
		 initTalbeData(pageNo);
	 }*/
	 //上一页
	 /*function page_prev(){
		var current_page = $('#ul_pagination').find('.active').find('span').text();
		//console.log(current_page);
		initTalbeData(current_page-1);
	 }*/
	 //下一页
	 /*function page_next(){
		 var current_page = $('#ul_pagination').find('.active').find('span').text();
		 initTalbeData(parseInt(current_page)+1);
	 }*/
