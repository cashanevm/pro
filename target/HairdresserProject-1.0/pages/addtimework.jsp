<%-- 
    Document   : addtimework
    Created on : 24.04.2021, 12:50:36
    Author     : NEVM PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%
   session.setAttribute("day",request.getParameter("day"));
    session.setAttribute("month",request.getParameter("month"));
    session.setAttribute("year",request.getParameter("year"));
   int Step = Integer.parseInt(request.getParameter("step"));
   
    
   
   %>
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addtimework</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
         <!-- Bootstrap core CSS -->
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    </head>
    <body>
        
          <h1></h1>
          
        
        
        
        
        
        
        
        
        <div class="container">
      <div class="py-5 text-center">
        <h2>Заданый шаг в <%=Step%> минут</h2>
         <form action="<%=request.getContextPath()%>/success" method="post">
            <input class="btn btn-outline-primary" type="submit" value="Перейти на главную">
        
        </form>
      </div>

      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <form action="<%=request.getContextPath()%>/addtimework" method="get">
        <input  type="range" list="tickmarks" name="step" min="35" max="85" step="5" style="width: 100%">
       
        <datalist id="tickmarks" style="display: flex; justify-content: space-around">
            <option value="35" label="35 хв" >
            
            <option value="40">
            <option value="45">
            <option value="50">
            <option value="55">
            <option value="60" label="60" >
            <option value="65">
            <option value="70">
            <option value="75">
            <option value="80">
            <option value="85" label="85" >
        </datalist>
        
        
        <input  type="hidden" value="<%=request.getParameter("day")%>" name="day">
        <input  type="hidden" value="<%=request.getParameter("month")%>" name="month">
        <input  type="hidden" value="<%=request.getParameter("year")%>" name="year">
            
  <input  class="btn btn-primary btn-lg btn-block" type="submit" value="Задать шаг" />
        
        
        </form>

          
        </div>
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Выбери время для работы</h4>
          
            <form class="needs-validation" action="<%=request.getContextPath()%>/addtimework" method="post">

            

           

            

           
            
            <hr class="mb-4">
            
            
            
            <input  type="hidden" value="<%=request.getParameter("day")%>" name="day">
        <input  type="hidden" value="<%=request.getParameter("month")%>" name="month">
        <input  type="hidden" value="<%=request.getParameter("year")%>" name="year">
            <%for(int i = 0 ; i<1440;i=i+Step){%>
            
                
                 
              
                <label  for="hours"><%if(i==0){out.println(0);}else{out.println(i/60);}%>:<%if(i==0){out.println(0);}else{out.println(i%60);}%></label>
        <input   type="checkbox" name="hours" value="<%if(i==0){out.println(0);}else{out.println(i/60);}%>:<%if(i==0){out.println(0);}else{out.println(i%60);}%>"/><br>
       
            
     <%}%>
       
        
        
       
            
            
             
            
            
            
           
            
            
            
            <hr class="mb-4">
            
             <input class="btn btn-primary btn-lg btn-block" type="submit" value="Добавить Выбранные часы" />
          </form>
        </div>
      </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2021-2022</p>
        <ul class="list-inline">
          <li class="list-inline-item"><a href="https://www.instagram.com/ssentimentta_/?hl=ru">Privacy</a></li>
          <li class="list-inline-item"><a href="https://www.instagram.com/ssentimentta_/?hl=ru">Terms</a></li>
          <li class="list-inline-item"><a href="https://www.instagram.com/ssentimentta_/?hl=ru">Support</a></li>
        </ul>
      </footer>
    </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      
      
    </body>
</html>
