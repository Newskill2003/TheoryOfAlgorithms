
<%@page import="TheoryOfAlgorithms.NewSkill.Lab6_7.Calculator"%>
<%@page import="TheoryOfAlgorithms.NewSkill.Lab6_7.BinaryTreePrinter"%>
<%@page import="TheoryOfAlgorithms.NewSkill.Lab6_7.BinaryTree"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6-7</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <p>Result:<br> <%= Calculator.Calculate(0, 2, 5)%></p>
        <%! BinaryTree tree = new BinaryTree();%>
        <%
            tree.add(4);
            tree.add(3);
            tree.add(15);
            tree.add(11);
            tree.add(16);
            tree.add(9);
            tree.add(8);
            tree.add(6);
        %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
        <%tree.mirrorTree(tree.getRoot()); %>
        <pre>
        <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
        </pre>
    </body>
</html>
