<%-- 
    Document   : exam
    Created on : 17.06.2021, 12:25:25
    Author     : Ivan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Мусієнко Антон, Білет №15</h1>
        <h1>f(x)= 5/(3x-3)</h1>
        <form action="./exam" method="post" class="form-inline">
            <label for="x"><b>Enter x:</b></label>
            <div class="input-group">
                <input  class="form-control" id="x" type="text" name="x"/>
                <input class="btn btn-success" type="submit" value="Submit"/>
            </div>
            <p class="mt-3 mb-0"><b></b><%=request.getAttribute("result")%></p>
        </form>
        <%! FormulaExam fr = new FormulaExam(64); %>
        <p>Arguments: <%= fr.GetArgs()%> </p>
        <p>Solutions:<%= fr.Calculate() %></p>
        
    </body>
</html>