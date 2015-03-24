package nju.software.util;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

/**
 * @author 浣滆�: fan
 * @version 鍒涘缓鏃堕棿锛�015-3-18 涓嬪崍3:39:24 绫昏鏄�
 */
public class HttpConnection {

	/**
	 * 
	 * HTTP get璇锋眰
	 * 
	 * @param path
	 * @return
	 * @throws Exception
	 */
	public static String httpGet(String path) throws Exception {
		path = URLEncoder.encode(path,"utf-8");
		URL url = new URL(path);
		System.out.println("&&&^^^" + path);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		// conn.setRequestProperty("Accept-Charset", "utf-8");
		conn.setRequestProperty("contentType", "UTF-8");
		conn.setConnectTimeout(5000);
		if (conn.getResponseCode() == 200) { // 200琛ㄧず璇锋眰鎴愬姛
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					conn.getInputStream(), "utf-8"));// 璁剧疆缂栫爜,鍚﹀垯涓枃涔辩爜

			StringBuilder sb = new StringBuilder();

			String line = null;

			while ((line = reader.readLine()) != null) {
				sb.append(line + "\n");
			}

			reader.close();

			return sb.toString();
		}
		// InputStream is = conn.getInputStream(); // 浠ヨ緭鍏ユ祦鐨勫舰寮忚繑鍥�
		// // 璋冪敤鏁版嵁娴佸鐞嗘柟娉�
		// byte[] data = readInputStream(is);
		// is.close();
		// return new String(data);
		// }
		return null;
	}

	public static String httpPost(String path, String parameterData)
			throws Exception {
		//System.out.println(parameterData);
		//String parameterData = "picture=6704.jpg";

		//URL localURL = new URL(
		//		"http://192.168.68.101:8080/GetStamp/GetTaoBaoURL");
		 URL localURL = new URL(path);
		URLConnection connection = localURL.openConnection();
		HttpURLConnection httpURLConnection = (HttpURLConnection) connection;

		httpURLConnection.setDoOutput(true);
		httpURLConnection.setRequestMethod("POST");
		httpURLConnection.setRequestProperty("Accept-Charset", "utf-8");
		httpURLConnection.setRequestProperty("Content-Type",
				"application/x-www-form-urlencoded");
		httpURLConnection.setRequestProperty("Content-Length",
				String.valueOf(parameterData.length()));

		OutputStream outputStream = null;
		OutputStreamWriter outputStreamWriter = null;

		InputStream inputStream = null;
		InputStreamReader inputStreamReader = null;
		BufferedReader reader = null;
		StringBuffer resultBuffer = new StringBuffer();
		String tempLine = null;

		try {

			outputStream = httpURLConnection.getOutputStream();
			outputStreamWriter = new OutputStreamWriter(outputStream);

			outputStreamWriter.write(parameterData.toString());
			outputStreamWriter.flush();

			if (httpURLConnection.getResponseCode() >= 300) {
				throw new Exception(
						"HTTP Request is not success, Response code is "
								+ httpURLConnection.getResponseCode());
			}

			inputStream = httpURLConnection.getInputStream();
			inputStreamReader = new InputStreamReader(inputStream);
			reader = new BufferedReader(inputStreamReader);

			while ((tempLine = reader.readLine()) != null) {
				resultBuffer.append(tempLine);
			}

		} finally {

			if (outputStreamWriter != null) {
				outputStreamWriter.close();
			}

			if (outputStream != null) {
				outputStream.close();
			}

			if (reader != null) {
				reader.close();
			}

			if (inputStreamReader != null) {
				inputStreamReader.close();
			}

			if (inputStream != null) {
				inputStream.close();
			}

		}

		return resultBuffer.toString();
	}

	/**
	 * 浠庤緭鍏ユ祦涓幏鍙栨暟鎹�
	 * 
	 * @param inStream
	 *            杈撳叆娴�
	 * @return
	 * @throws Exception
	 */
	public static byte[] readInputStream(InputStream inStream) throws Exception {
		ByteArrayOutputStream outStream = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = inStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, len);
		}
		inStream.close();
		return outStream.toByteArray();
	}

	/**
	 * test
	 * 
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		// httpGet("http://192.168.68.12:8085/stamp/match?imgurl=http://192.168.63.11:8000/stampitem/service/rp/pic51_2.jpg.jpg&limit=10");
		System.out.println(httpPost("d", "d"));
	}
}
