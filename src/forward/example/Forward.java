package forward.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Forward")
public class Forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Forward() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		System.out.println("1번 화면에서 넘어온 값" + id);
		
		// 세번째 화면에서 사용할 값을 강제로 저장하려면 request.setAttribute
		request.setAttribute("name", "이지은");
		
		// 순수한 자바코드로 포워드 작성하기
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp");
		dp.forward(request, response);
		
//		response.sendRedirect("actionTag/forward_ex04.jsp"); 값을 가져갈 수 없음
	}

}
