package com.hm.attr;

import javax.servlet.http.HttpServletRequest;

public class LuckModel {

    public static void calculateLuck(HttpServletRequest request) {
        try {
            // [여기에 추가!] 반드시 getParameter 보다 먼저 실행되어야 합니다.
            request.setCharacterEncoding("UTF-8"); 
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 여기서부터 데이터를 읽어야 한글이 깨지지 않고 'name'에 담깁니다.
        String name = request.getParameter("name"); 
        int num = Integer.parseInt(request.getParameter("num"));
        
        int score = num * 100;
        
        Luck l = new Luck(name, num, score);
        request.setAttribute("myluck", l); 
    }
}