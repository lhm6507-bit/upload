package com.hm.bmi;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class Model {
    public static void calc(HttpServletRequest request) {
        String path = request.getServletContext().getRealPath("uploadFile");
        System.out.println(path);

        MultipartRequest mr = null;
        try {
            mr = new MultipartRequest(
                    request,
                    path,
                    1024 * 1024 * 20,
                    "utf-8",
                    new DefaultFileRenamePolicy() );
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        String name = mr.getParameter("name");
        int cm = Integer.parseInt(mr.getParameter("cm"));
        int kg = Integer.parseInt(mr.getParameter("kg"));

        String imgF = mr.getFilesystemName("imgFile");

        String result = "";

        double m = cm / 100.0;
        double bmi = kg / (m * m);

        if (bmi < 18.5) {
            result = "저체중";
        }
        else if (bmi < 23.0) {
            result = "정상";
        }
        else if (bmi < 25.0) {
            result = "비만전단계";
        }
        else if (bmi < 30.0) {
            result = "1단계 비만";
        }
        else if (bmi < 35.0) {
            result = "2단계 비만";
        }
        else {
            result = "3단계 비만";
        }
        String bmi2 = String.format("%.1f",bmi);
        Bean bean = new Bean (name, kg, cm, imgF, result, bmi2, m);
        request.setAttribute("bean", bean);
    }
}
