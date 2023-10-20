package com.example.webapptest;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.println("<h1>Registration Page</h1>");

        String name = req.getParameter("user_name");
        String email = req.getParameter("user_email");
        String password = req.getParameter("user_password");
        String gender = req.getParameter("user_gender");
        String course = req.getParameter("user_course");
        String cond = req.getParameter("condition");

        if (cond!=null) {
            if (cond.equals("checked")) {
                out.println("<h2> Registration successful</h2>");
                out.println("<h3>Your name : " + name);
                out.println("<h3>Your email : " + email);
                out.println("<h3>Your password : " + password);
                out.println("<h3>Orientation = : " + gender);
                out.println("<h3>Your selected course : " + course);

                RequestDispatcher rd = req.getRequestDispatcher("SuccessServlet");
                rd.forward(req,resp);
            }
        }
        else {
            out.println("<h2> Please accept the terms and conditions to Register</h2>");

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
            requestDispatcher.include(req,resp);
        }
    }
}
