<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CheckerBoard</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
 <!-- Obtenemos el valor de los parametros -->
    <% String width = request.getParameter("width");
    	String height = request.getParameter("height");
    	int columnas = Integer.parseInt(width);
    	int filas = Integer.parseInt(height);
    %>
    <%! 
    public String getColor(int fila, int col) {
    	if(fila %2 == 0 ){
			return (col%2 == 0)? "blue":"red";
		}else{
			return (col%2 == 0)? "red":"blue";
		}
    }
    %>

    <!-- Mostramos el valor que obtuvimos -->
    <h1>CheckerBoard <%= width %> w X <%= height %> h</h1>
 <% for(int index = 0; index < filas; index++) { %>
        <div></div>
         <% for(int col = 0; col < columnas; col++) { %>
        <div class=<%= getColor(index,col) %>></div>
  <% } %>
  <% } %>
</body>
</html>