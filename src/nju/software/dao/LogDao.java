package nju.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import nju.software.util.JdbcUtils_C3P0;

public class LogDao {

	public static void saveLog(String log)
	{
//		Connection conn = null;
//        PreparedStatement st = null;
//        try{
//            //获取数据库连接
//            conn = JdbcUtils_C3P0.getConnection();
//            String sql = "INSERT INTO  log  VALUES (null,?)";
//            st=conn.prepareStatement(sql);
//            st.setString(1,log);
//            st.executeUpdate();
//        }catch (Exception e) {
//            e.printStackTrace();
//             
//        }finally{
//            //释放资源
//            JdbcUtils_C3P0.release(conn, st,null);
//        } 
	}
}
