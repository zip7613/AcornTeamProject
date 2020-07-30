package test.user.dto;

public class UserDto {
   //필드
   private int num;
   private String id;
   private String pwd;
   private String country;
   private String email;
   
   //디폴트생성자
   public UserDto() {}

   public UserDto(int num, String id, String pwd, String country, String email) {
      super();
      this.num = num;
      this.id = id;
      this.pwd = pwd;
      this.country = country;
      this.email = email;
   }

   public int getNum() {
      return num;
   }

   public String getId() {
      return id;
   }

   public String getPwd() {
      return pwd;
   }

   public String getCountry() {
      return country;
   }

   public String getEmail() {
      return email;
   }

   public void setNum(int num) {
      this.num = num;
   }

   public void setId(String id) {
      this.id = id;
   }

   public void setPwd(String pwd) {
      this.pwd = pwd;
   }

   public void setCountry(String country) {
      this.country = country;
   }

   public void setEmail(String email) {
      this.email = email;
   }
   
}