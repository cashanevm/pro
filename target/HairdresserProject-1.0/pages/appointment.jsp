<%-- 
    Document   : appointment
    Created on : 24.04.2021, 12:02:17
    Author     : NEVM PC
--%>

<%@page import="org.obrii.mit.dp2021.hairdresserproject.records.Hour"%>
<%@page import="org.obrii.mit.dp2021.hairdresserproject.user.User"%>
<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.hairdresserproject.records.Day"%>

<%@page import="java.io.File"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
   <%
    Calendar c = new GregorianCalendar();
    
    
    List<Hour> days = (List<Hour>) request.getAttribute("days");
    
   %>
  <% User user = (User) session.getAttribute("user");
            String name = user.getName();
            String img = user.getImg();
            String email = user.getEmail();
           String id = user.getuserId();
         
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>AddTime</title>
         <!-- Bootstrap core CSS -->
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">


    </head>
    
    <style type="text/css">
 html,
body {
  overflow-x: hidden; /* Prevent scroll on narrow devices */
}

body {
  padding-top: 56px;
}

@media (max-width: 767.98px) {
  .offcanvas-collapse {
    position: fixed;
    top: 56px; /* Height of navbar */
    bottom: 0;
    width: 100%;
    padding-right: 1rem;
    padding-left: 1rem;
    overflow-y: auto;
    background-color: var(--gray-dark);
    transition: -webkit-transform .3s ease-in-out;
    transition: transform .3s ease-in-out;
    transition: transform .3s ease-in-out, -webkit-transform .3s ease-in-out;
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
  }
  .offcanvas-collapse.open {
    -webkit-transform: translateX(-1rem);
    transform: translateX(-1rem); /* Account for horizontal padding on navbar */
  }
}

.nav-scroller {
  position: relative;
  z-index: 2;
  height: 2.75rem;
  overflow-y: hidden;
}

.nav-scroller .nav {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: nowrap;
  flex-wrap: nowrap;
  padding-bottom: 1rem;
  margin-top: -1px;
  overflow-x: auto;
  color: rgba(255, 255, 255, .75);
  text-align: center;
  white-space: nowrap;
  -webkit-overflow-scrolling: touch;
}

.nav-underline .nav-link {
  padding-top: .75rem;
  padding-bottom: .75rem;
  font-size: .875rem;
  color: var(--secondary);
}

.nav-underline .nav-link:hover {
  color: var(--blue);
}

.nav-underline .active {
  font-weight: 500;
  color: var(--gray-dark);
}

.text-white-50 { color: rgba(255, 255, 255, .5); }

.bg-purple { background-color: var(--purple); }

.border-bottom { border-bottom: 1px solid #e5e5e5; }

.box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }

.lh-100 { line-height: 1; }
.lh-125 { line-height: 1.25; }
.lh-150 { line-height: 1.5; }

  </style>
    
    <body class="bg-light">
        
        
      
        
      
        
        
        <div class="nav-scroller bg-white box-shadow">
      <nav class="nav nav-underline">
        <p class="nav-link active" >График работы</p>
        <form class="navbar-brand" action="<%=request.getContextPath()%>/success" method="post">
            <input class="btn btn-sm  btn-outline-primary" type="submit" value="Перейти на главную">
        
        </form>
      </nav>
            
    </div>
   
            <main role="main" class="container">
            
           
        
        
        
        
              
        
        
        
    
       
<!--        <small class="d-block text-right mt-3">
          <a href="https://getbootstrap.com/docs/4.0/examples/offcanvas/#">All suggestions</a>
        </small>-->
      </div>
            
            
            <table>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
    <%for(int i = 0 ; i<14; i++){%>
   <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0"><%= c.get(Calendar.DAY_OF_MONTH)%> <%=c.get(Calendar.MONTH)%> <%= c.get(Calendar.YEAR)%></h6>
        
    
  
    
   <%%>
    
            <%for(int j = 0; j<days.size();j++){
                if(days.get(j).getDate().equals(String.valueOf(c.get(Calendar.DAY_OF_MONTH))) && days.get(j).getMonth().equals(String.valueOf(c.get(Calendar.MONTH))) ){
                %>
            
                
                <div class="media text-muted pt-3">
                    <div style="width: 32px; height: 32px; background:
                         <% if(days.get(j).isWriten() && ((user.isInstagram() && days.get(j).getUserid().equals(id)) || days.get(j).getUsersEmail().equals(email))){
   %>#2A357C;<%}
else  if (days.get(j).isWriten()) {

   %>#7F0000;<%
   
   
   }else{
%>#257A51;<%
}%>
                         
                         
                         border-radius:50%;"></div>
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark"> <%=days.get(j).getTime()%> время || <%=days.get(j).getDate()%>   число </strong>
             
            
            
            
            
            
            
            
            
            
            
            <% 
           if(user.isInstagram() && days.get(j).isWriten() && days.get(j).getUserid().equals(id)){
           
           
           
           %>
            
           
            
            <form action="<%=request.getContextPath()%>/DeleteRecord"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-sm  btn-outline-primary" type="submit">Удалить резервацию</button>
        </form> 
          
            </div>
            <span class="d-block"> Забронировано вами!</span>
          </div>
             

            
            
            <%
           
           
           
           
           }
                else if (days.get(j).isWriten() && days.get(j).getUsersEmail().equals(email)){
            
            %>
            
            
            
            <form action="<%=request.getContextPath()%>/DeleteRecord"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-sm  btn-outline-primary" type="submit">Удалить резервацию</button>
        </form> 
          </div>
            <span class="d-block">Забронировано для <%=days.get(j).getPhone()%>!</span>
          </div>
        
                 

            <%
               } else if (days.get(j).isWriten()){
                        
                        %>
            
              
            </div>
            <span class="d-block">Забронировано!</span>
          </div>
        
              

            
            <%
                        
                        }
            
            
            else{

%>
            
            <form action="<%=request.getContextPath()%>/MakeRecord"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-sm  btn-outline-primary" type="submit">Записаться</button>
        </form> 
            
            
            </div>
            <span class="d-block">Вільно</span>
          </div>
                  

            <%


} 
            
            
            %>      
           
                       </div>
     
                
            
            
            <%
                        
                    
                }
                    
            }
   %>
            
            
            
            
                  </div>

            
       
    
    
    <%c.add(Calendar.DAY_OF_YEAR, 1);}%>
   
  
  
 </main> 
   
     
    </body>
</html>

