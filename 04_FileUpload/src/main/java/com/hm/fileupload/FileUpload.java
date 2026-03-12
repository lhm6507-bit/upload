package com.hm.fileupload;

import java.io.IOException;
import java.io.PrintWriter; // 추가
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 저장 경로
		String savePath = "C:\\Users\\soldesk\\img";
		String saveRealpath = request.getServletContext().getRealPath("imgFile");

		System.out.println(savePath);
		System.out.println(saveRealpath);

		// 2. 파일 업로드 처리
		MultipartRequest mr = new MultipartRequest(
				request,
				saveRealpath,
				30 * 1024 * 1024,
				"utf-8",
				new DefaultFileRenamePolicy()
		);

		// 3. 값 받기
		String name = mr.getParameter("name");
		System.out.println(name);

		String pic = mr.getFilesystemName("pic");
		String etc = mr.getFilesystemName("etc");

		System.out.println(pic);
		System.out.println(etc);

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8"); // 추가하면 더 좋음

		PrintWriter out = response.getWriter();

		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">"); // 큰따옴표 escape
		out.print("</head>");
		out.print("<body>");

		out.print("<h1>" + name + "</h1>");
		out.printf("<h1><img src='imgFile/%s'></h1>", pic);
		out.printf("<h1>%s</h1>", etc);

		out.printf("<h1><a href='imgFile/%s'>사진보기</a></h1>", pic);
		out.printf("<h1><a href='imgFile/%s'>파일 다운로드</a></h1>", etc);

		out.print("</body>");
		out.print("</html>");
	}
}