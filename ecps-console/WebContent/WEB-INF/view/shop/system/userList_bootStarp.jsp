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
	${pageBean}
	
	<form action="" method="post" >
		
		<table class="table table-hover table-striped " id="mainTable">
			<thead>
				<tr>
					<th width="50">序号</th>
					<th>姓名</th>
					<th>登录名</th>
					<th>号码</th>
					<th>所属部门</th>
					<th>状态</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pageBean.rows}" var="v" varStatus="vs">
					<tr>
						<td>${vs.count}</td>
						<td>${v.name}</td>
						<td>${v.loginname}</td>
						<td>${v.number}</td>
						<td>${v.depname}</td>
						<td>${v.status}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!--------------------------------- 分页条二 begin------------------------>
		<ul class="pagination pagination-sm" >
			<li>
				<a <c:if test="${pageBean.currentPage!=1}">href="#"</c:if> >上一页</a>
			</li>
			<li>
				<a <c:if test="${pageBean.currentPage != pageBean.totalPage}">href="#"</c:if> >下一页</a>
			</li>
			<li>
				<span>当前第
					<select>
						<c:forEach begin="1" end="${pageBean.totalPage}" varStatus="vs"   >
							<option value="${vs.count}" <c:if test="${vs.count==pageBean.currentPage}">selected</c:if> >${vs.count}
						</c:forEach>
					</select>页
				</span>
			</li>
			<li>
				<span>每页
					<select>
						<option <c:if test="${1==pageBean.pageSize}">selected</c:if> >1</option>
						<option <c:if test="${3==pageBean.pageSize}">selected</c:if> >3</option>
						<option <c:if test="${5==pageBean.pageSize}">selected</c:if> >5</option>
						<option <c:if test="${10==pageBean.pageSize}">selected</c:if> >10</option>
					</select>行
				</span>
			</li>
			<li>
				<span>共${pageBean.totalPage}页</span>
			</li>
			<li>
				<span>共${pageBean.total}行</span>
			</li>
		</ul>
		<!--------------------------------- 分页条二 end-------------------------->
	</form>
</body>
<script type="text/javascript">
	$(function() {
		var previous = 	$(".pagination li:contains('上一页')");
		var next = 		$(".pagination li:contains('下一页')");
		var currentS = 	$(".pagination li:contains('当前第') select");
		var pageSizeS = $(".pagination li:contains('每页') select");
		var currentPage=${pageBean.currentPage};
		var pageSize=	${pageBean.pageSize};
		var totalPage=	${pageBean.totalPage};
		var total=		${pageBean.total};
		//上一页
		previous.click(function(){
			if(currentPage!=1){
				fun1(parseInt(currentPage)-1, parseInt(pageSize));
			}
		});
		//下一页
		next.click(function(){
			if(currentPage!=totalPage){
				fun1(parseInt(currentPage)+1, parseInt(pageSize));
			}
		});
		//跳转到
		currentS.change(function(){
			var currentPage=$(".pagination li:contains('当前第') select>option:selected").text();
			var pageSize=	$(".pagination li:contains('每页') select>option:selected").text();
			if(parseInt(currentPage)*parseInt(pageSize)<=parseInt(total)){
				fun1(parseInt(currentPage), parseInt(pageSize));
			}
		});
		//每页
		pageSizeS.change(function(){
			var currentPage=$(".pagination li:contains('当前第') select>option:selected").text();
			var pageSize=	$(".pagination li:contains('每页') select>option:selected").text();
			if(parseInt(currentPage)*parseInt(pageSize)<=parseInt(total)){
				fun1(parseInt(currentPage), parseInt(pageSize));
			}
		});
		function fun1(curentPage,pageSize){
			location.replace("<%=path%>/sysUserController/toUserList.action?currentPage="+curentPage+"&pageSize="+pageSize)
		}
	});
</script>
</html>
