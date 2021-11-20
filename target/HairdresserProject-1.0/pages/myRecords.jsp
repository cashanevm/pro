<%-- 
    Document   : myRecords
    Created on : 25.04.2021, 12:41:43
    Author     : NEVM PC
--%>

<%@page import="org.obrii.mit.dp2021.hairdresserproject.user.User"%>
<%@page import="org.obrii.mit.dp2021.hairdresserproject.records.Hour"%>
<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.hairdresserproject.records.Day"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <%
    
    
     Calendar c = new GregorianCalendar();
     User user = (User) session.getAttribute("user");
            String name = user.getName();
            String img = user.getImg();
            String email = user.getEmail();
            String id = user.getuserId();
    
    List<Hour> days = (List<Hour>) request.getAttribute("days");
    
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    </head>
    <body>
  
  

 
        <div class="nav-scroller bg-white box-shadow">
      <nav class="nav nav-underline">
        <p class="nav-link active" >Сегодня: <%=c.get(Calendar.DAY_OF_MONTH)%>-е число</p>
        <form class="navbar-brand" action="<%=request.getContextPath()%>/success" method="post">
            <input class="btn btn-sm  btn-outline-primary" type="submit" value="Перейти на главную">
        
        </form>
      </nav>
            
    </div>
   
            <main role="main" class="container">
        
        
    
        
      
        
          
            
            
            
        <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">Мои записи</h6>
        
            
            
            
         <%
   
    for(int j = 0; j<days.size();j++){
    %>
         
              
   
        
        
        <%
          
            if(user.isInstagram()){
            
             if(id.equals(days.get(j).getUserid())){
            
           
            %>
 
<div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&amp;bg=007bff&amp;fg=007bff&amp;size=1" alt="32x32" class="mr-2 rounded" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17b3b2d4de7%20text%20%7B%20fill%3A%23007bff%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17b3b2d4de7%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23007bff%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2211.5390625%22%20y%3D%2216.9%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true" style="width: 32px; height: 32px;">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark"><%=days.get(j).getDate()%>-е число <%=days.get(j).getMonth()%> месеца на время: <%=days.get(j).getTime()%></strong>
             
              
              
              <form action="<%=request.getContextPath()%>/DeleteRecord"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-lg  btn-outline-primary" type="submit">Удалить</button>
        </form> 
              
            </div>
            <span class="d-block"> <%=days.get(j).getPhone()%></span>
          </div>
        </div>
            
            
    
   
       
       
  


<%
            
            }
            
            
            
            
            }else{
             if(email.equals(days.get(j).getUsersEmail())){
            
           
            %>
 
            
            <div class="media text-muted pt-3">
          <div style="width: 32px; height: 32px; background:#2A357C;border-radius:50%;"></div>
                <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark"><%=days.get(j).getDate()%>-е число <%=days.get(j).getMonth()%> месеца на время: <%=days.get(j).getTime()%></strong>
             
              
              
              <form action="<%=request.getContextPath()%>/DeleteRecord"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-lg  btn-outline-primary" type="submit">Удалить</button>
        </form> 
              
            </div>
            <span class="d-block"> <%=days.get(j).getUsersName()%></span>
          </div>
        </div>
            
            
            
            
            
            
            
            
            
            
            
            

   </th> 
  
      
        
        
        
         
       
   </td>
    
  </tr>


<%
            
            }
            
            
            
            }
            
               
            
            
    
    
    }
   %>
        </div>
        </main>
    </body>
</html>
