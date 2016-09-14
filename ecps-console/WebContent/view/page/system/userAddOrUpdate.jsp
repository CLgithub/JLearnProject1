<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增或修改用户</title>
</head>
<body>

<form  id="form1" action="" method="post" >
<table cellpadding="1" cellspacing="1" border="1">
	
	<tr>
		<td>姓名</td>
		<td>
			<input type="hidden" name="id" id="id" >
			<input type="text" name="name" id="name">
		</td>
	</tr>
	<tr>
		<td>登录名</td>
		<td><input type="text" name="loginname" id="loginName" ></td>
	</tr>
	<tr>
		<td>号码</td>
		<td><input type="text" name="number" id="number" ></td>
	</tr>
	<tr>
		<td>状态</td>
		<td><input type="text" name="status" id="status" ></td>
	</tr>
	<tr>
		<td colspan="2"><input type="button" value="提交" id="sub" ></td>
	</tr>
</table>

</form>

</body>
<script type="text/javascript">
	$(function(){
		var id="${param.id}";
		var name="${param.name}";
		var loginname="${param.loginname}";
		var number="${param.number}";
		var status="${param.status}";
		$("#id").attr("value",id);
		$("#name").attr("value",name);
		$("#loginName").attr("value",loginname);
		$("#number").attr("value",number);
		$("#status").attr("value",status);
		
		$("#sub").click(function(){
			var data1=$("#form1").serialize();
			$.ajax({
				url:"<%=path%>/sysUserController/saverOrUpdate.action",
				data:data1,
				dataType:"text",
				type:"post",
				success:function(data){
	//				alert(data);
					if(data=='true'){
						alert("操作成功");
						location.href="userList.jsp";
					}else{
						alert("输入有误，或用登录名已经被使用");
					}
				}
			});	
		})
	});
</script>
</html>