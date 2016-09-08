<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加/修改商品类别页</title>
</head>
<body>
	<form id="form111" name="form111"
		action="<%=path%>/ebBrandController/addBrand.action" method="post"
		enctype="multipart/form-data">
		<div>
			<p>
				<label><samp>*</samp>品牌名称：</label>
				<input type="text" id="brandname" name="brandname" class="text state"
					reg2="^[a-zA-Z0-9\u4e00-\u9fa5]{1,20}$" tip="必须是中英文或数字字符，长度1-20" />
				<span></span>
			</p>
			<p>
				<label class="alg_t"><samp>*</samp>品牌LOGO：</label>
				<img id='imgsImgSrc' src="" height="100" width="100" />
			</p>
			<p>
				<label></label>
					<input type='file' size='27' id='imgsFile' name='imgsFile' onchange='submitUpload()' />
					<span id="submitImgTip" class="pos">请上传图片宽为120px，高为50px，大小不超过100K。</span>
					<input type='hidden' id='imgs' name='imgs' value='' reg2="^.+$" tip="亲！您忘记上传图片了。" />
				<span></span>
			</p>
			<p>
				<label>品牌网址：</label>
				<input type="text" name="website" class="text state" maxlength="100" tip="请以http://开头" reg1="http:///*" /> 
				<span class="pos">&nbsp;</span>
			</p>
			<p>
				<label class="alg_t">品牌描述：</label>
				<textarea rows="4" cols="45" name="branddesc" class="are"
					reg1="^(.|\n){0,300}$" tip="任意字符，长度0-300"></textarea>
				<span class="pos">&nbsp;</span>
			</p>
			<p>
				<label>排序：</label>
				<input type="text" id="brandsort" reg1="^[1-9][0-9]{0,2}$" 
					tip="排序只能输入1-3位数的正整数" name="brandsort" class="text small" />
				<span class="pos">&nbsp;</span>
			</p>
			<p>
				<label>&nbsp;</label>
				<input type="submit" name="button1" class="hand btn83x23" value="完成" />
				<input type="button" class="hand btn83x23b" id="reset1" value='取消' onclick="backList('${backurl}')" />
			</p>
		</div>
	</form>
</body>
<script type="text/javascript">
	function submitUpload(){
		var options={
			url:"<%=path%>/ebUpdateController/updateFile.action",
			dataType:"text",
			success:function(responseData){
				var jsonObj = $.parseJSON(responseData);
				$("#imgsImgSrc").attr("src",jsonObj.realPath);
				$("#imgs").attr("value",jsonObj.relativePath);
			},
			error:function(){
				alert("系统异常");
			}
		};
		$("#form111").ajaxSubmit(options);
	}
</script>
</html>