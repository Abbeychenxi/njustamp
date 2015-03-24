package nju.software.util;

import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/**
 * @author ‰ΩúË?: fan
 * @version ÂàõÂª∫Êó∂Èó¥Ôº?015-3-12 ‰∏ãÂçà7:25:58 
 * Á±ªËØ¥Êò?
 */
public class RegexURL {
	private static Map<Integer, String> imageMap;
	
	public RegexURL() {
		
		
	}
	

	 /**
     * URLÊ£?ü•<br>
     * @see http://blog.csdn.net/davidhsing/article/details/4316850
     * @param pInput     Ë¶ÅÊ£ÄÊü•ÁöÑÂ≠óÁ¨¶‰∏?br>
     * @return boolean   ËøîÂõûÊ£?ü•ÁªìÊûú<br>
     */
    public static boolean isUrl (String pInput) {
    	
    	
		try {
			System.out.println(pInput);
			URL u = new URL(pInput);// this would check for the protocol
			u.toURI();// does the extra checking required for validation of URI
			
			return isImage(pInput);
		}
		catch (URISyntaxException e) {
			e.printStackTrace();
			return false;
		} catch (MalformedURLException e) {
			e.printStackTrace();
			return false;
		} 
    	
    	
//        if(pInput == null){
//            return false;
//        }
//        String regEx = "^(http|https|ftp)//://([a-zA-Z0-9//.//-]+(//:[a-zA-"
//            + "Z0-9//.&%//$//-]+)*@)?((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{"
//            + "2}|[1-9]{1}[0-9]{1}|[1-9])//.(25[0-5]|2[0-4][0-9]|[0-1]{1}"
//            + "[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)//.(25[0-5]|2[0-4][0-9]|"
//            + "[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)//.(25[0-5]|2[0-"
//            + "4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])|([a-zA-Z0"
//            + "-9//-]+//.)*[a-zA-Z0-9//-]+//.[a-zA-Z]{2,4})(//:[0-9]+)?(/"
//            + "[^/][a-zA-Z0-9//.//,//?//'///////+&%//$//=~_//-@]*)*$";
//        Pattern p = Pattern.compile(regEx);
//        Matcher matcher = p.matcher(pInput);
//        return matcher.matches();
    }
    
    public static boolean isImage(String url) {
    	imageMap = new HashMap<Integer, String>();
		imageMap.put(1, "bmp");
		imageMap.put(2, "dib");
		imageMap.put(3, "gif");
		imageMap.put(4, "jfif");
		imageMap.put(5, "jpe");
		imageMap.put(6, "jpeg");
		imageMap.put(7, "jpg");
		imageMap.put(8, "png");
		imageMap.put(9, "tif");
		imageMap.put(10, "tiff");
		imageMap.put(11, "ico");

    	String[] p = url.split("\\.");
    	if(p == null) {
    		return false;
    	}
    	
    	String px = p[p.length - 1];
    	System.out.println(px);

    	if(!imageMap.containsValue(px.toLowerCase())) {
    		return false;
    	}
    	return true;
    }
    
//    public static void main(String[] args) {
//    	boolean s = isUrl("http://img3.redocn.com/20091221/20091217_fa2a743db1f556f82b9asJ320coGmYFf.jpg");
//    	System.out.println(s);
//    }
}
