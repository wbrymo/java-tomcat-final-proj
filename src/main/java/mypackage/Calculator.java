package mypackage;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Calculator extends HttpServlet {

    public long addFucn(long first, long second) {
        return first + second;
    }

    public long subFucn(long first, long second) {
        return first - second;
    }

    public long mulFucn(long first, long second) {
        return first * second;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int a1 = Integer.parseInt(request.getParameter("n1"));
            int a2 = Integer.parseInt(request.getParameter("n2"));
            String operation = request.getParameter("operation");

            String result = "";
            if ("add".equals(operation)) {
                result = "Addition Result: " + addFucn(a1, a2);
            } else if ("sub".equals(operation)) {
                result = "Subtraction Result: " + subFucn(a1, a2);
            } else if ("mul".equals(operation)) {
                result = "Multiplication Result: " + mulFucn(a1, a2);
            } else {
                result = "No valid operation selected.";
            }

            // Store result in request scope
            request.setAttribute("calcResult", result);

            // Forward to index.jsp
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            request.setAttribute("calcResult", "Error: " + e.getMessage());
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
    }
}
