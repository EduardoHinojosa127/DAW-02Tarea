<%@page import="com.miempresa.webapp02ejercicio.OperacionesBasicas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.miempresa.webapp02ejercicio.OperacionesBasicas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            double n1 = Double.parseDouble(request.getParameter("n1"));
            double n2 = Double.parseDouble(request.getParameter("n2"));
            double r = 0;
            String nombre = "";
            char oper = request.getParameter("oper").charAt(0);
            OperacionesBasicas opba = new OperacionesBasicas();
            if (oper == 's') {
                r = opba.suma(n1, n2);
                nombre = "Suma";
            }
            else if(oper == 'r'){
                r = opba.resta(n1, n2);
                nombre = "Resta";
            }
            else if(oper == 'm'){
                r = opba.multiplicacion(n1, n2);
                nombre = "Multiplicacion";
            }
            else{
                r = opba.division(n1, n2);
                nombre = "Division";
            }
            out.print("<h1>"+ nombre+"</h1>");
        %>
        
        <div class="alert alert-info" role="alert">
            <%
                out.print("Número 1 = " + n1);
                out.print("<br>");
                out.print("Número 2 = " + n2);
                out.print("<br>");
                out.print("<br>");
                out.print("Resultado = " + r);
            %>
        </div>
        
    </body>
</html>
