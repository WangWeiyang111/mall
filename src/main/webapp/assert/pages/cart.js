$(document).ready(function() {

	
	
});
function goaddcart(productId1){
	$.ajax({
		type:'post',
		url:'cart/addcart/'+productId1,
		dataType:'json',
		success:function(result){
			alert(result);
		}
	});
}