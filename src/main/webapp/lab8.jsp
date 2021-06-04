
<%@page import="TheoryOfAlgorithms.NewSkill.Lab8.AlgorithmDetails"%>
<%@page import="TheoryOfAlgorithms.NewSkill.Lab8.Algorithms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <h2 class="text-left"><b>Постановка задачі:</b> відсортувати масив цілих чисел</h2>
        <p><b>Вихідні дані:</b><br>Кількість елементів: 30000</p>
        <%! Algorithms algorithms = new Algorithms(30000);%>
        <hr>
        <% AlgorithmDetails shellSortDetails = algorithms.ShellSort(); %>
        <p><b>Назва алгоритму: </b>Shell Sort</p>
        <p><b>Час роботи:</b>  <%= shellSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= shellSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= shellSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): O^2</b></p>
        <hr>
        <% AlgorithmDetails quickSortDetails = algorithms.QuickSort(); %>
        <p><b>Назва алгоритму: </b>Quick Sort</p>
        <p><b>Час роботи:</b>  <%= quickSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= quickSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= quickSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): O^2</b></p>
        <hr>
        <% AlgorithmDetails heapSortDetails = algorithms.HeapSort(); %>
        <p><b>Назва алгоритму: </b>Head Sort</p>
        <p><b>Час роботи:</b>  <%= heapSortDetails.getTime() %>ms</p>
        <p><b>Кількість порівнянь </b><%= heapSortDetails.getComparisons() %></p>
        <p><b>Кількість перестановок </b><%= heapSortDetails.getSubstitutions() %></p>
        <p><b>Складність(Big-O): nlog(n)</b></p>
    </body>
</html>
