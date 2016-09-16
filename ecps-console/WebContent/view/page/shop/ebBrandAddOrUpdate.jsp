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

<form  id="form1" action="" method="post" enctype="multipart/form-data" >
<table cellpadding="1" cellspacing="1" border="1">
	
	<tr>
		<td>品牌名称</td>
		<td>
			<input type="hidden" name="brandid" id="brandid" >
			<input type="text" id="brandname" name="brandname" class="text state"
					reg2="^[a-zA-Z0-9\u4e00-\u9fa5]{1,20}$" tip="必须是中英文或数字字符，长度1-20" />
		</td>
	</tr>
	<tr>
		<td>品牌LOGO</td>
		<td>
			<img id='imgsImgSrc' src="" height="100" width="100" />
			<input type='file' size='27' id='imgsFile' name='imgsFile'  />
			
			<span id="submitImgTip" class="pos">请上传图片宽为120px，高为50px，大小不超过100K。</span>
			<input type='text' id='imgs' name='imgs' value='' reg2="^.+$" tip="亲！您忘记上传图片了。" />
			
			<!-- <input type="text" name="imgs" id="imgs" >
			<img id='imgs' src="" height="100" width="100" /> -->
		</td>
	</tr>
	<tr>
		<td>品牌网站</td>
		<td>
			<input type="text" name="website" id="website" class="text state" 
				maxlength="100" tip="请以http://开头" reg1="http:///*" /> 
		</td>
	</tr>
	<tr>
		<td>品牌描述</td>
		<td>
			<textarea rows="4" cols="45" name="branddesc" id="branddesc" class="are"
					reg1="^(.|\n){0,300}$" tip="任意字符，长度0-300"></textarea>
		</td>
	</tr>
	<tr>
		<td>排序</td>
		<td>
			<input type="text" id="brandsort" reg1="^[1-9][0-9]{0,2}$" 
					tip="排序只能输入1-3位数的正整数" name="brandsort" class="text small" />
		</td>
	</tr>
	<tr>
		<td colspan="2"><input type="button" value="提交" id="sub" ></td>
	</tr>
</table>

</form>

</body>
<script type="text/javascript">
	$(function(){
		var brandId="${param.brandId}";
		var brandName="${param.brandName}";
		var imgs="${param.imgs}";
		var brandDesc="${param.brandDesc}";
		var website="${param.website}";
		var brandSort="${param.brandSort}";
		
		$("#brandid").val(brandId);
		$("#brandname").val(brandName);
		$("#imgs").val(imgs);
		$("#branddesc").val(brandDesc);
		$("#website").val(website);
		$("#brandsort").val(brandSort);
		
		$("#sub").click(function(){
			var data1=$("#form1").serialize();
			$.ajax({
				url:"<%=path%>/ebBrandController/saverOrUpdate.action",
				data:data1,
				dataType:"text",
				type:"post",
				success:function(data){
				//	alert(data);
					if(data=='true'){
						alert("操作成功");
						location.href="ebBrandList.jsp";
					}else{
						alert("输入有误，或用登录名已经被使用");
					}
				}
			});	
		})
		
		$("#imgsFile").change(function(){
			var options={
				url:"<%=path%>/ebUpdateController/updateFile.action",
				dataType:"text",
				success:function(responseData){
					var jsonObj = $.parseJSON(responseData);
					$("#imgsImgSrc").attr("src",jsonObj.realPath);
					$("#imgs").val(jsonObj.relativePath);
				},
				error:function(){
					alert("系统异常");
				}
			};
			$("#form1").ajaxSubmit(options);
		});
		
		
	});
</script>
</html>