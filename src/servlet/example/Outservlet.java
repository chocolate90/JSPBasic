package servlet.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Outservlet")
public class Outservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Outservlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// 서블릿에서 아웃객체를 이용해서 브라우저 화면으로 보내는 방법
		// 브라우저에 아웃객체를 이용해서 데이터를 보낼 때 문서에 대한 타입을 반드시 지정해야 한다. (content-type)
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<h2>안뇽방가</h2>");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
