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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            int a1 = Integer.parseInt(request.getParameter("n1"));
            int a2 = Integer.parseInt(request.getParameter("n2"));
            String operation = request.getParameter("operation");

            out.println("<html><body>");
            if ("add".equals(operation)) {
                out.println("<h1>Addition Result:</h1>" + addFucn(a1, a2));
            } else if ("sub".equals(operation)) {
                out.println("<h1>Subtraction Result:</h1>" + subFucn(a1, a2));
            } else if ("mul".equals(operation)) {
                out.println("<h1>Multiplication Result:</h1>" + mulFucn(a1, a2));
            } else {
                out.println("<h1>Error: No valid operation selected</h1>");
            }
            out.println("</body></html>");

        } catch (NumberFormatException e) {
            out.println("<p>Error: Invalid number format.</p>");
        } catch (Exception e) {
            out.println("<p>Error occurred: " + e.getMessage() + "</p>");
        } finally {
            out.close();
        }
    }
}
