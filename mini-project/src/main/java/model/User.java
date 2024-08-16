package model;

public class User {
	 private String name;
	 private String userId;
	 private String status;
 

 //생성자
 public User(String name) {
     this.name = name;
     
 }
 public User(String userId, String name, String status) {
     this.userId = userId;
     this.name = name;
     this.status = status;
 }

 //객체변수에 직접접근. '메소드를 통해 간접접근'.
 public String getName() {
     return name;
 }

 public String getUserId() {
	return userId;
}

 public String getStatus() {
	return status;
}
}
