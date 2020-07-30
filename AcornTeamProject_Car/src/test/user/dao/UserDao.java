package test.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import test.user.dto.UserDto;
import test.util.DbcpBean;

public class UserDao {
   private static UserDao dao;
   private UserDao() {}
   public static UserDao getInstance() {
      if(dao==null) {
         dao=new UserDao();
      }
      return dao;
   }
   //UserDto 객체에 있는 id, pwd 가 유효한 정보인지 여부를 리턴하는 메소드
   public boolean isValid(UserDto dto) {
      //유효한 정보인지 여부를 담을 지역변수 만들고 초기값 false 부여하기
      boolean isValid=false;
      //필요한 객체의 참조값을 담을 지역변수 만들기 
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
         //Connection 객체의 참조값 얻어오기 
         conn = new DbcpBean().getConn();
         //실행할 sql 문 준비하기
         String sql = "SELECT id"
               + " FROM benz_member"
               + " WHERE id=? AND pwd=?";
         pstmt = conn.prepareStatement(sql);
         //sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
         pstmt.setString(1, dto.getId());
         pstmt.setString(2, dto.getPwd());
         //select 문 수행하고 결과 받아오기 
         rs = pstmt.executeQuery();
         //반복문 돌면서 결과 값 추출하기 
         while (rs.next()) {
            //select 된 결과가 있으면 유효한 정보 이므로 isValid 에 true 를 넣어준다.
            isValid=true;
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         try {
            if (rs != null)
               rs.close();
            if (pstmt != null)
               pstmt.close();
            if (conn != null)
               conn.close();
         } catch (Exception e) {
         }
      }
      //아이디 비밀번호가 유효한 정보인지 여부를 리턴해준다.
      return isValid;
   }
   
   //회원정보를 저장하는 메소드
   public boolean insert(UserDto dto) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      int flag = 0;
      try {
         conn = new DbcpBean().getConn();
         //실행할 sql 문 준비하기 
         String sql = "INSERT INTO benz_member"
               + " (num, id, pwd, country, email)"
               + " VALUES(benz_seq.NEXTVAL, ?, ?, ?, ?)";
         pstmt = conn.prepareStatement(sql);
         //? 에 바인딩 할 값이 있으면 바인딩한다.
         pstmt.setString(1, dto.getId());
         pstmt.setString(2, dto.getPwd());
         pstmt.setString(3, dto.getCountry());
         pstmt.setString(4, dto.getEmail());
         //sql  문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기 
         flag = pstmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         try {
            if (pstmt != null)
               pstmt.close();
            if (conn != null)
               conn.close();
         } catch (Exception e) {
         }
      }
      if (flag > 0) {
         return true;
      } else {
         return false;
      }
   }
   
   
}