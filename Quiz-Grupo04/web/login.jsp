<%-- 
    Document   : login
    Created on : 28/10/2018, 13:40:31
    Author     : valre
--%>

<%@page import="br.com.fatecpg.quiz.Player"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/hearder.jspf" %>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        
        
    </head>
    
    <body class="text-center">
        
        <div class="row align-items-center" >
            <div class="col-md-12">
                
                <form class="form-signin">
                    <h1 class="h3 mb-3 font-weight-normal">Insira o login</h1>
                    <label for="inputUser" class="sr-only">Nome do usuário</label>
                    <input type="user" id="inputUser" class="form-control" placeholder="Nome do usuário" required autofocus>
                    <button class="btn btn-lg btn-outline-light btn-block"  type="submit" formaction="home.jsp">Entrar no Quiz</button>
                </form>
            
            </div>
            <div class="col-md-6">
                <strong>Top 10</strong>
                <table class="table">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Score</th>
                      </tr>
                    </thead>
                           <%int i =1; %>      
                    <tbody>
                        
                       <% for (Player p : Db.getPlayers()) { %>
                            <% if (i <= 10) {%>
                            <tr>    
                                <td><%= i++%>º</td>
                                <td><%= p.getName()%></td>
                                <td><%= p.getScore()%></td>
                            </tr>
                            <% } %>  
                            <%}%>
                    </tbody>
                  </table>
            </div>
            
            <div class="col-md-6">
            <strong>Historico</strong>
            <table class="table">
                <thead>
                    
                  <tr>
                    <th>Name</th>
                    <th>Score</th>
                    <th>Date</th>
                  </tr>
                </thead>
                <tbody>
                    <% DateFormat df = new SimpleDateFormat("dd/MM/yyyy");%>
                  <% for (Player p :Db.getPlayers()) {%>
                    <tr>
                        <td><%= p.getName()%></td>
                        <td><%= p.getScore()%></td>
                        <td><%= df.format(p.getData())%></td>
                    </tr>
                    <%}%>
                  </tr>
                </tbody>
              </table>
            </div>
        </div>
    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
