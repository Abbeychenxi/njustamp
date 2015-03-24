package nju.software.util;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * ͨ�ù�������
 * @author cun
 *
 */
public class CommonUtil {

	/**
	 * �ж��û�������ַ����ǲ�������
	 * @param str �ַ���
	 * @return ����������򷵻�true,���򷵻�false
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
         return new String(outStream.toByteArray());//ͨ��out.Stream.toByteArray��ȡ��д������ 
     }
}
