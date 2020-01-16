$(document).ready(function(){
	// 查询所有的数据
	initTalbeData();
	// 绑定新增按钮
	$('#button_add').off('click').on('click',function(){
		$('#form_address_add_edit')[0].reset();
		$('#modal_address').modal('show');
		$('#rowId').removeAttr('value');
		$('#action_info').html('新增');
	});
	// 绑定Submit按钮
	$('#button_submit').off('click').on('click',function(){
		saveOrUpdate();
	});
	
	// 绑定 删除超链接事件
	$('#dataTable_wrapper').off('click','#deleteA').on('click','#deleteA',function(){
		var rowId = $(this).attr("data-rowId");
		if(confirm("您确定要删除吗？")){
			$.ajax({
				url:'address/dodelete/'+rowId,
				success:function(result){
					if(result){
						initTalbeData();
					}
				}
			});
		}
	});
	// 选择市信息
    $('#provinceCode').on('change',function(){
    	$("#cityCode option").remove();
    	$("#districtCode option").remove();
    	var option='<option>市信息</option>';
		var areaCode=$("#provinceCode").val();
		console.log(areaCode);
		$.ajax({
			 url:'address/findAll/'+areaCode,
			 success:function(result){
				 $.each(result, function(index, item) {
					 option+= '<option value="'+item.areaCode+'">'+item.areaName+'</option>';
				 });
				 $("#cityCode").append(option);
				 console.log(option);
			 }
		 });
	});
    // 选择区信息
    $('#cityCode').on('change',function(){
    	$("#areaCode option").remove();
    	var option='<option>区信息</option>';
		var areaCode=$("#cityCode").val();
		console.log(areaCode);
		$.ajax({
			 url:'address/findByCode/'+areaCode,
			 success:function(result){
				 $.each(result, function(index, item) {
					 option+= '<option value="'+item.areaCode+'">'+item.areaName+'</option>';
					 console.log(option);
				 });
				 $("#districtCode").append(option);
			 }
		 });
    });
	
});
// 执行 新增或修改
function saveOrUpdate(){
	var rowId = $('#rowId').val();
	if(rowId){// 如果主键有信息，则判断进行的是修改
		var formObj = $('#form_address_add_edit')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type:'post',
			url:'address/doupdate',
			data:formData,
			catch:false,
			processData:false,
			contentType:false,
			success:function(result){
				if(result){
					$('#modal_address').modal('hide');
					initTalbeData();
				}
			}
		});
	}else{// 则判断执行的是新增
		var formObj = $('#form_address_add_edit')[0];
		var formData = new FormData(formObj);
		$.ajax({
			type:'post',
			url:'address/add',
			data:formData,
			catch:false,
			processData:false,
			contentType:false,
			success:function(result){
				if(result){
					$('#modal_address').modal('hide');
					initTalbeData();
				}
			}
		});
	}
}
// go update
function goupdate(rowId){
	$.ajax({
		url:'address/goupdate/'+rowId,
		dataType:'json',
		success:function(address){
			if(address){
				// 将modal表单显示
				$('#modal_address').modal('show');
				$('#addressName').val(address.addressName);
				$('#addressNumber').val(address.addressNumber);
				$('#addressPrice').val(address.addressPrice);
				$('#addressInventory').val(address.addressInventory);
				$('#addressState').val(address.addressState);
				$('#addressInfo').val(address.addressInfo);
				$('#rowId').val(address.rowId);
				$('#action_info').html('修改');
			}
		}
	});
}
// init table data
 function initTalbeData(){
	 $.ajax({
		 url:'address/find',
		 success:function(htmlData){
			 $('#dataTable_wrapper').html(htmlData);
		 }
	 });
 }