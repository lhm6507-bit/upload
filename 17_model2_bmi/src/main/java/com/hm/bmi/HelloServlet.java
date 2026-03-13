package com.hm.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {



    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Model.calc(request);
        request.getRequestDispatcher("output.jsp").forward(request,response);

    }
    public void destroy() {
    }
}