<%-- 
    Document   : addtime
    Created on : 24.04.2021, 12:24:47
    Author     : NEVM PC
--%>
<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.hairdresserproject.records.Day"%>
<%@page import="org.obrii.mit.dp2021.hairdresserproject.records.Hour"%>
<%@page import="java.io.File"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
   <%
    Calendar c = new GregorianCalendar();
    boolean canDeleteDay;
    List<Hour> days = (List<Hour>) request.getAttribute("days");
   %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddTime</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
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
    
    <body>

        
            
            <div class="nav-scroller bg-white box-shadow">
      <nav class="nav nav-underline">
        <p class="nav-link active" >???????????? ????????????</p>
        <form class="navbar-brand" action="<%=request.getContextPath()%>/success" method="post">
            <input class="btn btn-sm  btn-outline-primary" type="submit" value="?????????????? ???? ??????????????">
        
        </form>
      </nav>
            
    </div>
            
            
            
            
            
            
             
        
        
        
        
        
      
     
        
            
            
            
            
            
            
            
            
            
            
            
            
            
            <main role="main" class="container">
   
    <%for(int i = 0 ; i<14; i++){%>
  
      
       <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0"><%= c.get(Calendar.DAY_OF_MONTH)%> ?????????? <%=c.get(Calendar.MONTH)%> ???????????? <%= c.get(Calendar.YEAR)%> ????????</h6>
      
    
  
    
   <%%>
    
            
  
  <%canDeleteDay = false;
      for(int j = 0; j<days.size();j++){
                
                if(days.get(j).getDate().equals(String.valueOf(c.get(Calendar.DAY_OF_MONTH))) && days.get(j).getMonth().equals(String.valueOf(c.get(Calendar.MONTH))) ){
                 // if(true){
                 canDeleteDay = true;   
                 System.out.println(days.get(j).getDate());
                     System.out.println(String.valueOf(c.get(Calendar.DAY_OF_MONTH)));
                 
                  
            %>
            <div class="media text-muted pt-3">
          
                
                <div style="width: 32px; height: 32px; background:
                         <% if(days.get(j).isWriten()){
   %>#7F0000;<%}
else{
%>#2A357C;<%
}%>
                         
                         
                         border-radius:50%;"></div>
                         
          
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark"><%if(days.get(j).isWriten()){%>
          info: <%=days.get(j).getPhone()%>
            <form action="<%=request.getContextPath()%>/SDeleteRecord"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-sm  btn-outline-primary" type="submit">?????????????? ????????????????????</button>
        </form> 
            <%}%></strong>
              <form action="<%=request.getContextPath()%>/SDeleteRecord" method="post"> 
        <input type="hidden" name="day" value="<%=days.get(j).getDate()%>">
        <input type="hidden" name="month" value="<%=days.get(j).getMonth()%>">
       <input type="hidden" name="hour" value="<%=days.get(j).getTime()%>">
        <button class="btn btn-sm  btn-outline-primary" type="submit">?????????????? ?????? ????????????</button>
        </form> 
            </div>
            <span class="d-block">??????????: <%=days.get(j).getTime()%><%=days.get(j).getDate()%>-?? ?????????? </span>
          
            
                      
                   
           
                    </div>
</div> 
        
                
            
            
            <%
                        
                    
                }
                    
            }
            
   %>
            
            
            
            
            
           
       
    
   
       
    <small class="d-block text-right mt-3 d-flex">
         
         <form action="<%=request.getContextPath()%>/addtimework"> 
          <input  type="hidden" value="60" name="step">
            <input type="hidden" name="day" value="<%= c.get(Calendar.DAY_OF_MONTH)%>">
        <input type="hidden" name="month" value="<%=c.get(Calendar.MONTH)%>">
        <input type="hidden" name="year" value="<%= c.get(Calendar.YEAR)%>">
      
        <button class="btn btn-sm  btn-outline-primary" type="submit">???????????????? ?????????? ???? <%= c.get(Calendar.DAY_OF_MONTH)%> <%=c.get(Calendar.MONTH)%> <%= c.get(Calendar.YEAR)%></button>
        </form>  
     
     
     <%if(canDeleteDay){%>
        <form action="<%=request.getContextPath()%>/DeleteDay"> 
        <input type="hidden" name="day" value="<%= c.get(Calendar.DAY_OF_MONTH)%>">
        <input type="hidden" name="month" value="<%=c.get(Calendar.MONTH)%>">
        <input type="hidden" name="year" value="<%= c.get(Calendar.YEAR)%>">
        <button class="btn btn-sm  btn-outline-primary"  type="submit">?????????????? <%= c.get(Calendar.DAY_OF_MONTH)%> <%=c.get(Calendar.MONTH)%> <%= c.get(Calendar.YEAR)%> ?? ???????????????? ??????????????</button>
        </form>
         <%}%>
        
        
        
        </small>
      </div>
            
    
  
    <%c.add(Calendar.DAY_OF_YEAR, 1);
      canDeleteDay = false;  
      }%>
   
  </div>
  

   </main>
     
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    </body>
</html>



