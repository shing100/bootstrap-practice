package pls;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class RoomMgr {

	private DBConnectionMgr pool = null;

		    public RoomMgr() {
		        try {
		            pool = DBConnectionMgr.getInstance();
		        } catch (Exception e) {
		            System.out.println("Error : 커넥션 가져오기 실패!!");
		        }
		    }


		    public boolean insertRoom(RoomBean regBean) {
		    	boolean flag = false;
		        Connection con = null;
		        PreparedStatement pstmt = null;

			    try {
		            con = pool.getConnection();
		            String strQuery = "insert into room values(?,?,?,?,?)";
		            pstmt = con.prepareStatement(strQuery);
		            pstmt.setString(1, regBean.getNum());
		            pstmt.setString(2, regBean.getName());
		            pstmt.setString(3, regBean.getSize());
		            pstmt.setString(4, regBean.getRoomdata());
		            pstmt.setString(5, regBean.getPicture());
		            int count = pstmt.executeUpdate();

		            if (count == 1) {
		                flag = true;
		            }

		        } catch (Exception ex) {
		            System.out.println("Exception" + ex);
		        } finally {
		            pool.freeConnection(con, pstmt);
		        }
		        return flag;
		    }

		    public Vector getRoom(String num) {
		        Connection con = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        Vector vResult = new Vector();

		        try {
		            con = pool.getConnection();
		            String query = "select * from Room where num = ? order by num desc";
		            pstmt = con.prepareStatement(query);
		            pstmt.setString(1, num);
		            rs = pstmt.executeQuery();
		            while (rs.next()) {
		            	RoomBean Room = new RoomBean();
		            	Room.setNum(rs.getString("num"));
		            	Room.setName(rs.getString("name"));
		            	Room.setSize(rs.getString("size"));
		            	Room.setRoomdata(rs.getString("roomdata"));
		            	Room.setPicture(rs.getString("picture"));
		                vResult.add(Room);
		            }
		        } catch (Exception ex) {
		            System.out.println("Exception :" + ex);
		        } finally {
		            pool.freeConnection(con, pstmt, rs);
		        }
		        return vResult;
		    }


		    public Vector getRoomList() {
		        Connection con = null;
		        Statement stmt = null;
		        ResultSet rs = null;
		        Vector vResult = new Vector();

		        try {
		            con = pool.getConnection();
		            String query = "select * from Room order by num desc";
		            stmt = con.createStatement();
		            rs = stmt.executeQuery(query);
		            while (rs.next()) {
		            	RoomBean Room = new RoomBean();
		            	Room.setNum(rs.getString("num"));
		            	Room.setName(rs.getString("name"));
		            	Room.setSize(rs.getString("size"));
		            	Room.setRoomdata(rs.getString("roomdata"));
		            	Room.setPicture(rs.getString("picture"));
		                vResult.add(Room);
		            }
		        } catch (Exception ex) {
		            System.out.println("Exception :" + ex);
		        } finally {
		            pool.freeConnection(con, stmt, rs);
		        }
		        return vResult;
		    }


		    public RoomBean getRoomDetail(String num) {
		        Connection con = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        RoomBean Room = null;

		        try {
		            con = pool.getConnection();
		            String query = "select * from Room where num = ?";
		            pstmt = con.prepareStatement(query);
		            pstmt.setString(1, num);
		            rs = pstmt.executeQuery();

		            if (rs.next()) {
		            	Room = new RoomBean();
		            	Room.setNum(rs.getString("num"));
		            	Room.setName(rs.getString("name"));
		            	Room.setSize(rs.getString("size"));
		            	Room.setRoomdata(rs.getString("roomdata"));
		            	Room.setPicture(rs.getString("picture"));
		            }
		        } catch (Exception e) {
		            System.out.println("Exception :" + e);
		        } finally {
		            pool.freeConnection(con, pstmt, rs);
		        }
		        return Room;
		    }

		    public boolean deleteRoom(String num) throws SQLException {
		        Connection con = null;
		        PreparedStatement pstmt = null;
		        boolean result = false;

		        try {
		            con = pool.getConnection();
		            String query = "delete from Room where num = ?";
		            pstmt = con.prepareStatement(query);
		            pstmt.setString(1, num);
		            int count = pstmt.executeUpdate();
		            if (count == 1) result = true;
		        } catch (Exception e) {
		            System.out.println("Exception :" + e);
		        } finally {
		            pool.freeConnection(con, pstmt);
		        }
		        return result;
		    }
}
