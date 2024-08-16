package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TestDAO;
import model.User;

//get post하면 안된다.
@WebServlet("/myPage")
public class TestController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	TestDAO dao = new TestDAO();
    	String name = dao.userName();
    	request.setAttribute("name", name);
    	
    	request.getRequestDispatcher("/miniproject/myPage.jsp").forward(request, response);
    	
    	
    	
    	
    	
    	
    	
    	
//    	// 요청 파라미터에서 이름을 가져오기
//        String userName = request.getParameter("userName");
//        
//        // 모델 생성
//		User user = new User(userName); 
//		// Parameter로 받는. http://localhost:8080/miniproject/userList?userName=홍길동 <- 친것.
//		//요청 파라미터에서 이름 추출: 클라이언트가 보낸 요청에서 userName 파라미터를 추출합니다. 예를 들어, URL에 ?userName=홍길동이 포함되어 있으면 userName 변수는 "홍길동"이 됩니다.
//        
//		// 모델 데이터를.결과를 request 객체에 저장
//        request.setAttribute("user", user);
//        //setAttribute안에 user 정보를 담는다 .
//       
//        // 뷰(JSP)로 포워딩
//        request.getRequestDispatcher("/miniproject/userList.jsp").forward(request, response);
//        //test 요청하면 처리할거 다 하고 day5/test.jsp로 forward 해달라
    }
}