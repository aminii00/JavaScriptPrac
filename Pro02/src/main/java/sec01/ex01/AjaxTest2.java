package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AjaxTest2")
public class AjaxTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String info = "";
		PrintWriter writer = response.getWriter();
		info = "<main><book>" + 
		       "<title><![CDATA[�ʺ��ڸ� ���� �ڹ� ���α׷���]]</title>" +
			   "<writer><![CDATA[�����Ͻ� �� | �̺���]]></writer>" + 
		       "<image><![CDATA[http://localhost:8080/Pro02/image/image1.jpg]]></image>" +
			   "<book>" + 
			   "<title><![CDATA[����� ���̽�]]</title>" +
			   "<writer><![CDATA[�����Ͻ� �� | �̽���]]></writer>" + 
		       "<image><![CDATA[http://localhost:8080/Pro02/image/image2.jpg]]></image>"+
			   "</book></main>";
		System.out.println(info);
		writer.print(info);
	}

}
