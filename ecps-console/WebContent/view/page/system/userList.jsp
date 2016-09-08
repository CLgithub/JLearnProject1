<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- ${pageBean}
	${user} --%>
	<form id="form1">
		姓名：<input type="text" name="name" id="name" value="" >
		登录名：<input type="text" name="loginname" id="loginname" value="" >
		<input type="button" value="查询" id="searchB">
		<table class="table table-hover table-striped " id="mainTable" width="100%">
			<thead>
				<tr>
					<th width="50"><input type="checkbox" id="allCB" /></th>
					<th width="50">序号</th>
					<th>姓名</th>
					<th>登录名</th>
					<th>号码</th>
					<th>所属部门</th>
					<th>状态</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<!--------------------------分页条开始-------------------->
		<ul class="pagination pagination-sm" id="fyt" >
			<li><span id="total"></span></li>
			<li>
				<span>
				每页显示
				<select id="pageSize" name="pageSize" >
					<option <c:if test="${pageBean.pageSize==1}">selected="selected"</c:if>>1</option>
					<option <c:if test="${pageBean.pageSize==2}">selected="selected"</c:if>>2</option>
					<option <c:if test="${pageBean.pageSize==5}">selected="selected"</c:if>>5</option>
					<option <c:if test="${pageBean.pageSize==10}">selected="selected"</c:if>>10</option>
					<option <c:if test="${pageBean.pageSize==15}">selected="selected"</c:if>>15</option>
				</select>
				条
				</span>
			</li>
			<li><span id="totalPage"></span></li>
			<li><span>
			当前第
				<select id="currentPage" name="currentPage" >
					
				</select>
			页</span></li>
			<li><a href="#" id="first">首页</a></li>
			<li><a href="#" id="previous">上一页 </a></li>
			<li><a href="#" id="next">下一页</a></li>
			<li><a href="#" id="last">尾页</a></li>
		</ul>
		<!---------------------------------分页条结束-------------------------->
	</form>
</body>
<script type="text/javascript">
	$(function() {
		//全选
		$("#allCB").click(function(){
			var items=$('input:checkbox[name=cb]');
			var c=this.checked;
			items.each(function(index,item){
				item.checked=c;
			});
		});
		loadMain();
		fy();
	});
	function loadMain(){
		var cPage=$("#currentPage").val();
		var pSize=$("#pageSize").val();
		var name=$("#name").val();
		var loginname=$("#loginname").val();
		var data1={
			currentPage:cPage,
			pageSize:pSize,
			loginname:loginname,
			name:name
		};
		$.ajax({
			url:"<%=path%>/sysUserController/getPBBySearch.action",
			data:data1,
			dataType:"text",
			type:"post",
			success:function(data){
				var jsonObj = $.parseJSON(data);
				var rows="";
				for(var i=0;i<jsonObj.rows.length;i++){
					rows+="<tr>"
						+"<td><input type='checkbox' name='cb' /></td>"
						+"<td>"+parseInt(i+1)+"</td>"
						+"<td>"+jsonObj.rows[i].name+"</td>"
						+"<td>"+jsonObj.rows[i].loginname+"</td>"
						+"<td>"+jsonObj.rows[i].number+"</td>"
						+"<td>"+jsonObj.rows[i].depname+"</td>"
						+"<td>"+jsonObj.rows[i].status+"</td>"
						+"</tr>";
				}
				$("#mainTable tbody").get(0).innerHTML=rows;
				
				//加载分页条
				$("#total").text("共"+jsonObj.total+"条");
				$("#totalPage").text("共"+jsonObj.totalPage+"页");
				$("#totalPage").attr("value",jsonObj.totalPage);
				var pages="";
				for(var i=1;i<=jsonObj.totalPage;i++){
					if(i==jsonObj.currentPage){
						pages+='<option value="'+i+'" selected >'+i+'</option>'
					}else{
						pages+='<option value="'+i+'" >'+i+'</option>'
					}
				}
				$("#currentPage").get(0).innerHTML=pages;
			}
		});
	}
	function fy(){
		//翻页功能
		$("#first,#last,#previous,#next,#searchB").click(function(){
			if($(this).attr("id")=="first"){
				$("#currentPage").val("1");
			}else if($(this).attr("id")=="last"){
				var tPage=$("#totalPage").attr("value");
				$("#currentPage").val(tPage);
			}else if($(this).attr("id")=="previous"){
				var cPage=$("#currentPage").val();
				$("#currentPage").val(parseInt(cPage)-1);	//当不再currentPage可选范围时就会为null
			}else if($(this).attr("id")=="next"){
				var cPage=$("#currentPage").val();
				$("#currentPage").val(parseInt(cPage)+1);
			}
			loadMain();
		});
		$("#pageSize,#currentPage").change(function(){
			loadMain();
		});
	}
	
</script>
</html>
