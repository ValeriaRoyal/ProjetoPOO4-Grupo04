<%-- 
    Document   : login
    Created on : 28/10/2018, 13:40:31
    Author     : valre
--%>

<%@page import="java.util.Calendar"%>
<%@page import="br.com.fatecpg.quiz.Player"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <%@include file="WEB-INF/jspf/hearder.jspf" %>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        
    </head>
    <body class="text-center">
        <h1>Quiz</h1>
         <% if (request.getParameter("quizz") != null){
            double score = 0;
            for (Quiz q: Db.getQuiz()){
                String userAnswer = request.getParameter(q.getQuiz());
                if(userAnswer.equals(q.getAnswer())){
                    score++;
                }
            } 
         
                Calendar calen = Calendar.getInstance();
                calen.set(calen.get(Calendar.YEAR), calen.get(Calendar.MONTH), calen.get(Calendar.DATE);
                Db.getPlayers().add(new Player(k, score, calen.getTime()));
                    response.sendRedirect("profile.jsp");
         // revendo isso aqui
         %>
            <div class="form-signin btn-outline-light">
            <h1 style="color:gold">
                Nota: <u><%= Math.round(100*((double)(cdz)/10.0)) %></u>
            </h1>
            <% } %>
            </div> 
        <form>
            <%for(Quiz q: Db.getQuiz()){%>
            <h4><%=q.getQuiz()%></h4>
            <%for(int i=0; i<q.getAlternatives().length; i++){%>
            <input type="radio"
                name="<%=q.getQuiz()%>" 
                value="<%=q.getAlternatives()[i]%>"
                /><strong><%=q.getAlternatives()[i]%></strong>
            <%}%>
            <hr/>
            <%}%>
            <input type="submit" class="btn btn-outline-light" name="quizz" value="Enviar"/>
            <button type="submit" formaction="login.jsp" class="btn btn-outline-light">Voltar</button>

            
        </form>
    <br>
    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
