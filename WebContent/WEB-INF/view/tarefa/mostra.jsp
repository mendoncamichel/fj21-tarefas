<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<c:import url="cabecalho.jsp" />
  <h3>Alterar tarefa - ${tarefa.id}</h3>
  <form action="alteraTarefa" method="post">

    <input type="hidden" name="id" value="${tarefa.id}" />
  
    Descri��o:<br />
    <textarea name="descricao" cols="100" rows="5"> ${tarefa.descricao} </textarea>
    <br />      

    Finalizado? <input type="checkbox" name="finalizado" 
      value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />      

    Data de finaliza��o: <br />
    <input type="text" name="dataFinalizacao" 
      value="<fmt:formatDate 
      value="${tarefa.dataFinalizacao.time}" 
      pattern="dd/MM/yyyy" />"/> 
    <br />
  
    <input type="submit" value="Alterar"/>
  </form>
</body>
</html>