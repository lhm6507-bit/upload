package com.hm.test;

import javax.servlet.http.HttpServletRequest;

public class Model {
    public static void calc(HttpServletRequest request) {
                String payname = request.getParameter("payname");
                int people = Integer.parseInt(request.getParameter("people"));
                int total = Integer.parseInt(request.getParameter("total"));

                int pay = total / people;

                Result r = new Result(payname,people,total,pay);
                request.setAttribute("result",r);


    }
}
