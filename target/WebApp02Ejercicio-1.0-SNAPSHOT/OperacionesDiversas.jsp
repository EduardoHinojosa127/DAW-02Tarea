<%@page import="com.miempresa.webapp02ejercicio.OperacionesDiversas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.miempresa.webapp02ejercicio.OperacionesDiversas"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operaciones Diversas</title>
    </head>
    <body>
        <%
            double n1 = Double.parseDouble(request.getParameter("n1"));
            double r = 0;
            String nombre = "";
            char oper = request.getParameter("oper").charAt(0);
            OperacionesDiversas opdv = new OperacionesDiversas();
            if (oper == 'r') {
                r = opdv.raizCuadrada(n1);
                nombre = "Raiz Cuadrada";
            }
            else if(oper == 'c'){
                r = opdv.raizCubica(n1);
                nombre = "Raiz Cubica";
            }
            else if(oper == 'p'){
                r = opdv.potencia(n1);
                nombre = "Potencia";
            }
            else{
                r = opdv.valorAbsoluto(n1);
                nombre = "Valor Absoluto";
            }
            out.print("<h1>"+ nombre+"</h1>");
        %>
        
        <div class="alert alert-info" role="alert">
            <%
                out.print("Número 1 = " + n1);
                out.print("<br>");
                out.print("<br>");
                out.print("Resultado = " + r);
            %>
        </div>
    </body>
    
</html>
