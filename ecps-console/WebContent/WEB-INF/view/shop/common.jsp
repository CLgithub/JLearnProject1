<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<script src="<%=basePath%>bootstrap-3.3.7-dist/jquery/jquery.min-1.12.1.js"></script>
<link href="<%=basePath%>bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=basePath%>bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<%-- <!-- Bootstrap -->
<!-- <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="<%=basePath%>bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="<%=basePath%>gentelella/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!-- iCheck -->
<link href="<%=basePath%>gentelella/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="<%=basePath%>gentelella/build/css/custom.min.css" rel="stylesheet">


<!-- jQuery -->
<script src="<%=basePath%>gentelella/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<%=basePath%>gentelella/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<%=basePath%>gentelella/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="<%=basePath%>gentelella/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="<%=basePath%>gentelella/vendors/iCheck/icheck.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="<%=basePath%>gentelella/build/js/custom.min.js"></script> --%>
</head>
</html>