<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品类别列表页</title>
</head>
<body>
	${pageBean}
	<%-- ${user} --%>
	<form id="form1">
	<%--姓名：<input type="text" name="name" value="${user.name}" >
		登录名：<input type="text" name="loginname" value="${user.loginname}" >
		<input type="button" value="查询" id="searchB"> --%>
		<table class="table table-hover table-striped " id="mainTable" width="100%">
			<thead>
				<tr>
					<th width="50"><input type="checkbox" id="allCB" /></th>
					<th width="50">序号</th>
					<th>姓名</th>
					<th>登录名</th>
					<th>号码</th>
					<th>所属部门</th>
					<th>所属部门</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pageBean.rows}" var="v" varStatus="vs">
					<tr>
						<td><input type="checkbox" name="cb" /></td>
						<td>${vs.count}</td>
						<td>${v.brandName}</td>
						<td>${v.brandDesc}</td>
						<td>${v.imgs}</td>
						<td>${v.website}</td>
						<td>${v.brandsort}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--------------------------分页条开始-------------------->
		<ul class="pagination pagination-sm" >
			<li><span>共${pageBean.total}条</span></li>
			<li>
				<span>
				每页显示
				<select id="pageSize" name="pageSize" >
					<option <c:if test="${pageBean.pageSize==5}">selected="selected"</c:if>>5</option>
					<option <c:if test="${pageBean.pageSize==10}">selected="selected"</c:if>>10</option>
					<option <c:if test="${pageBean.pageSize==15}">selected="selected"</c:if>>15</option>
				</select>
				条
				</span>
			</li>
			<li><span>共${pageBean.totalPage}页</span></li>
			<li><span>
			当前第
				<select id="currentPage" name="currentPage" >
					<c:forEach begin="1" end="${pageBean.totalPage}" varStatus="vs"   >
						<option value="${vs.count}" <c:if test="${vs.count==pageBean.currentPage}">selected</c:if> >${vs.count}
					</c:forEach>
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
		
		$("#first,#last,#previous,#next,#searchB").click(function(){
			if($(this).attr("id")=="first"){
				$("#currentPage").val("1");
			}else if($(this).attr("id")=="last"){
				$("#currentPage").val("${pageBean.totalPage}");
			}else if($(this).attr("id")=="previous"){
				var cPage=$("#currentPage").val();
				$("#currentPage").val(parseInt(cPage)-1);	//当不再currentPage可选范围时就会为null
			}else if($(this).attr("id")=="next"){
				var cPage=$("#currentPage").val();
				$("#currentPage").val(parseInt(cPage)+1);
			}
			fun1();
		});
		$("#pageSize,#currentPage").change(function(){
			fun1();
		});
		function fun1(){
			var url="<%=path%>/ebBrandController/toEbBrandList.action";
			var form1=$("#form1");
			form1.attr("method","post");
			form1.attr("action",url);
			form1.submit();
		}
		
		
		
	});
</script>
</html>
