package nju.software.util;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 通用工具累了
 * @author cun
 *
 */
public class CommonUtil {

	/**
	 * 判断用户传入的字符串是不是数字
	 * @param str 字符串
	 * @return 如果是数字则返回true,否则返回false
	 */
    public static boolean  isNumeric(String str) {  
        Pattern pattern = Pattern.compile("[0-9]*");  
        Matcher isNum = pattern.matcher(str);  
        if (!isNum.matches()) {  
            return false;  
        }  
        return true;  
    }  
    public static String readParse(String urlPath) throws Exception { 
        ByteArrayOutputStream outStream = new ByteArrayOutputStream(); 
        byte[] data = new byte[1024]; 
         int len = 0; 
         URL url = new URL(urlPath); 
         HttpURLConnection conn = (HttpURLConnection) url.openConnection(); 
         InputStream inStream = conn.getInputStream(); 
         while ((len = inStream.read(data)) != -1) { 
             outStream.write(data, 0, len); 
         } 
         inStream.close(); 
         return new String(outStream.toByteArray());//通过out.Stream.toByteArray获取到写的数据 
     }
}
