package com.cl.ecps.shop.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.cl.ecps.common.uitl.DataUtil;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;

import net.sf.json.JSONObject;


@Controller
@RequestMapping("ebUpdateController")
public class EbUpdateController {
	
//	@RequestMapping(value="updateFile",produces={"application/json;charset=UTF-8"})
	@RequestMapping("updateFile")
	@ResponseBody
	public Object updateFile(Model model,HttpServletRequest request,HttpServletResponse response) throws UniformInterfaceException, IOException{
//		response.setContentType("text/html; charset=utf-8");
		return upLoad1(model,request,response);
	}

	private Object upLoad1(Model model,HttpServletRequest request,HttpServletResponse response) throws UniformInterfaceException, IOException {
		// 得到上传文件
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = mRequest.getFileMap();
		Set<String> keySet = fileMap.keySet();
		Iterator<String> iterator = keySet.iterator();
		String key = iterator.next();
		MultipartFile mFile = fileMap.get(key);
		// 设置文件存储路径
		String brandid = request.getParameter("brandid");
		String fileName0 = mFile.getOriginalFilename();
		fileName0=fileName0.substring(fileName0.lastIndexOf("."), fileName0.length());
		String fileName=brandid+"_logo"+fileName0;
		
		String filePath = (String) DataUtil.readProp("file_path");
		String relativePath = "/upLoadFile/" + fileName;	//相对路径
		String realPath = filePath + "/upLoadFile/" + fileName;	//绝对路径
		// 存储文件
		//创建jersy的客户端
		Client client = Client.create();
		//创建web资源对象
		WebResource wResource = client.resource(realPath);
		wResource.put(mFile.getBytes());
		//将地址返回页面
//		response.getWriter().write(realPath);
		JSONObject jo = new JSONObject();
		jo.accumulate("realPath", realPath);
		jo.accumulate("relativePath", relativePath);
		return jo;
	}
	
}
