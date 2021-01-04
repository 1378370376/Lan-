package ssm.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import ssm.utils.WangEditor;


@Controller
public class Uploadfile {
	@ResponseBody
	@RequestMapping(value = "fileService", method = RequestMethod.POST)
	public WangEditor fileload (@RequestParam("file") MultipartFile file,HttpServletRequest request) throws Exception  {
		
		//获取上传文件的输入流
		InputStream in = file.getInputStream();
		//上传文件的文件名
		String fileName = file.getOriginalFilename();

		String[] strings = fileName.split("\\.");

		fileName = String.valueOf(new Random().nextInt(5)) + new Date().getTime() + "." + strings[1];

		String realPath = request.getSession().getServletContext().getRealPath("");

		String contextPath = request.getContextPath();

		String path = realPath.replace(contextPath.substring(1), "");


		String uploadPath = path + "upload";

		
		File uploadFile = new File(uploadPath,fileName);
		FileUtils.copyInputStreamToFile(in, uploadFile);

		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/upload/"
				+ fileName;
		System.out.println(url);
		String[] str = { url };
		WangEditor we = new WangEditor(str);

		return we;
	}
}
