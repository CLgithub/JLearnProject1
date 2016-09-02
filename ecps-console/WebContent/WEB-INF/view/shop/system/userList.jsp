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
	
	<table class="table table-hover" id="mainTable">
		<thead>
			<tr>
				<th>姓名</th>
				<th>登录名</th>
				<th>号码</th>
				<th>所属部门</th>
				<th>状态</th>
			</tr>
		</thead>
		<tbody>
			<!-- <tr>
				<td>Tanmay</td>
				<td>Bangalore</td>
				<td>560001</td>
			</tr> -->
		</tbody>
	</table>
</body>
<script type="text/javascript">
	$(function() {
		/* var total=${pageBean.total};
		alert(total);
		var rows=${pageBean.rows};
		alert(rows); */
		var tr1=$("#mainTable tbody");
		var newRow="<tr>"
			+"<td>${pageBean.rows[0].name}</td>"
			+"<td>${pageBean.rows[0].loginname}</td>"
			+"<td>${pageBean.rows[0].number}</td>"
		+"</tr>";
		tr1.append(newRow);
	});
</script>
</html>
