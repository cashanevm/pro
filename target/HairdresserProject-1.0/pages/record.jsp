<%-- 
    Document   : record
    Created on : 25.04.2021, 10:56:08
    Author     : NEVM PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Записаться</title>
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    </head>
    <body>
         <div class="jumbotron">
        <div class="container">
          <h1 class="display-3">Hello, Сделать запись на:</h1>
          <p><%=request.getParameter("day")%>-е число
       <%=request.getParameter("month")%> месеца
         на время: <%=request.getParameter("hour")%> ?
      </p>
          
          <form action="<%=request.getContextPath()%>/MakeRecord" method="post">
           
           <input type="hidden" value="<%=request.getParameter("day")%>" name="day">
           <input type="hidden" value="<%=request.getParameter("month")%>" name="month">
           <input type="hidden" value="<%=request.getParameter("hour")%>" name="hour">
           
           
           
           <div class="mb-3">
              
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">+</span>
                </div>
                <input type="phone" class="form-control" id="username" placeholder="info" name="ph" >
                <div class="invalid-feedback" style="width: 100%;">
                  
                </div>
              </div>
            </div>
           
           
           
           
           
           
           
           
           
           <input type="submit" class="btn btn-primary btn-lg" value="Записаться!">
           
           
       </form>
          
         
        </div>
      </div>
        
        
        

        
        
    </body>
</html>
