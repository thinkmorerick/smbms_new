
	//带条件的跳转
	function jump_to(num){
    	$("#pageIndex").val(num);
    	$("#queryUserName").val($("#rqueryUserName").val());
    	$("#queryProviderId").val($("#rqueryProviderId").val());
    	$("#queryIsPayment").val($("#rqueryIsPayment").val());
    	$("#queryProvider").submit();
    }
    
(function (){
	var $borspan = $(".borspan");
	var $autopbn = $("#autopbn");
	var recordnum = parseInt($autopbn.attr("recordnum"));
	var curpage = parseInt($autopbn.attr("curpage"));
	var totalpage = parseInt($autopbn.attr("totalpage"));
	var pagenavnum = parseInt($autopbn.attr("pagenavnum"));
	getPagenav();
	function getPageNumberStr(i,pageIndex) {     
		var $obj = null;
		if (i == pageIndex){
			$obj = $("<strong>"+pageIndex+"</strong>");
        }else{
        	$obj = $("<a href='javascript:jump_to("+i+");'>"+i+"</a>");
        }
		return $obj;
    }
	function getPagenav() {
		var $pageinfo = $("<span>共"+recordnum+"条记录&nbsp;</span>");
		var $prev = $("<a href='javascript:jump_to("+(curpage-1)+");'>&laquo;</a>");
		var	$next = $("<a href='javascript:jump_to("+(curpage+1)+");'>&raquo;</a>");
		var $custompage = $("<label><input name='custompage' class='px' size='2' onkeydown='if(event.keyCode==13){jump_to(this.value);}' onkeyup='this.value = numReg(this.value);' type='text'><span title='totalpage'>/ "+totalpage+"页</span></label>");
		$borspan.append($pageinfo);
		if(curpage>1){
			$borspan.append($prev);
		}
		if(totalpage <= pagenavnum+1){
			for (var j = 1; j <= totalpage; j++){
            	$borspan.append(getPageNumberStr( j, curpage));
             }
         }else{
        	 //只考虑pagenavnum为奇数的情况
        	 var autopagenum = (pagenavnum+1)/2;
        	 var minpage = curpage - (autopagenum - 1);//-1
        	 var maxpage = curpage + (autopagenum - 1);//3
        	 if(minpage > 2 && maxpage < (totalpage-1)){		
        		 	$borspan.append("<a href='javascript:jump_to(1);'>1..</a>");
                	for (var j = minpage; j <= maxpage; j++){
                		$borspan.append(getPageNumberStr( j, curpage));
                    } 
                	$borspan.append("<a href='javascript:jump_to("+totalpage+");'>.."+totalpage+"</a>");
        	 }else if(minpage < 3){
        		 for (var j = 1; j <= pagenavnum; j++){
        			 $borspan.append(getPageNumberStr( j, curpage));
                 }
        		 $borspan.append("<a href='javascript:jump_to("+totalpage+");'>.. "+totalpage+"</a>");
        	 }else if(maxpage >= (totalpage-1)){
        		 $borspan.append("<a href='javascript:jump_to(1);'>1 ..</a>");
            	 for (var j =(totalpage-pagenavnum+1); j <= totalpage; j++){
            		 $borspan.append(getPageNumberStr( j, curpage));
                 } 
        	 } 
         }
		if(curpage<totalpage){
			$borspan.append($next);
		}
		$borspan.append($custompage);
	}







$(function(){
	$(".viewProvider").on("click",function(){
		var obj=$(this);
		window.location.href=path+"/provider.do?method=view&pid="+obj.attr("proid");
	});
	
	$(".modifyProvider").on("click",function(){
		var obj=$(this);
		window.location.href=path+"/provider.do?method=modify&pid="+obj.attr("proid");
	});
	
	$(".deleteProvider").on("click",function(){
		var obj=$(this);
		
		if(confirm("你确定要删除供应商【"+obj.attr("proname")+"】吗？")){
			$.ajax({
				type:"GET",
				url:path+"/provider.do",
				data:{method:"delprovider",pid:obj.attr("proid")},
				dataType:"json",
				success:function(data){
					if(data.delResult == "true"){ // 删除成功，移除当前行
						alert("删除成功");
						obj.parents("tr").remove();
					}else if(data.delResult == "false"){ // 删除失败
						alert("对不起，删除供应商【"+obj.attr("proname")+"】失败");
					}else if(data.delResult == "notexist"){
						alert("对不起，供应商【"+obj.attr("proname")+"】不存在");
					}else{
						alert("对不起，该供应商【"+obj.attr("proname")+"】下有【"+data.delResult+"】条订单，不能删除");
					}
				},
				error:function(data){
					alert("对不起，删除失败");
				}
				
			});
		}
	});
	
	
});
})();