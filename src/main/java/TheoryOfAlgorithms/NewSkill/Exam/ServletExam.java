/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package TheoryOfAlgorithms.NewSkill.Exam;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletExam extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String x = request.getParameter("x");
        double param = Double.parseDouble(x);
        double result = CalcExam.Calculate(param);
        request.setAttribute("result", result);
        request.getRequestDispatcher("exam.jsp").forward(request, response);
    }
}
