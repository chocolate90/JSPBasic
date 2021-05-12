package servlet.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// 2. wep.xml에 선언하는 방법 (어노테이션 방법과 함께 사용할 수 없음)
public class TestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TestServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("her!!");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
