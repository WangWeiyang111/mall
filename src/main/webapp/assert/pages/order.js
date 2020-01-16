$(document).ready(function() {
	
	$('#look').off('click').on('click',function(){
		$.ajax({
			type:'post',
			url:'order/gofindaddressLook',
			dataType:'json',
			success:function(result){
				if(result){
					alert("adress成功");
					
					$.ajax({
						type:'post',
						url:'order/gofindcartLook',
						dataType:'json',
						success:function(result){
							if(result){
								alert("cart成功");
							}
						}
					});
				}
			}
		});
	});
	
	
	/*$('.cartLook').off('click').on('click',function(){
		$.ajax({
			type:'post',
			url:'order/gofindcartLook',
			dataType:'json',
			success:function(result){
				if(result){
					alert("cart成功");
				}
			}
		});
	});*/
	
	
});