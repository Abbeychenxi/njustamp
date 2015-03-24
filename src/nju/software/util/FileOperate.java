package nju.software.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * @author 作�?: fan
 * @version 创建时间�?015-3-13 下午1:49:52
 * 
 *          old class not use
 */

public class FileOperate {

	public static String fileUpload(HttpServletRequest request, String filePath) {
		String temp = null;
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			try {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				List<FileItem> items = upload.parseRequest(request);
				System.out.println("$$" + items.size());
				for (FileItem item : items) {
					String fileName = getFileName(item.getName());
					temp = fileName;
					System.out.println("$" + fileName);
					if (fileName != null) {
						File fullFile = new File(item.getName());
						File savedFile = new File(filePath,
								fullFile.getName());
						item.write(savedFile);
					}
				}
				System.out.println("good");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return temp;
	}

	public static String fileDownLoad(String remoteFilePath,
			String localFilePath) {
		URL urlfile = null;
		HttpURLConnection httpUrl = null;
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		 
        String fileName = getFileName(remoteFilePath);
		File f = new File(localFilePath + fileName);
		try {
			urlfile = new URL(remoteFilePath);
			httpUrl = (HttpURLConnection) urlfile.openConnection();
			httpUrl.connect();
			bis = new BufferedInputStream(httpUrl.getInputStream());
			bos = new BufferedOutputStream(new FileOutputStream(f));
			int len = 2048;
			byte[] b = new byte[len];
			while ((len = bis.read(b)) != -1) {
				bos.write(b, 0, len);
			}
			bos.flush();
			bis.close();
			httpUrl.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				bis.close();
				bos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return fileName;
	}
	
	private static String getFileName(String url) {
		String[] px = url.split("\\.");
		String postfix = px[px.length - 1];
		Date d = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddhhmmss"); 
        return sdf.format(d.getTime()) + "." + postfix;
	}
}
