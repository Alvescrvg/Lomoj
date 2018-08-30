<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<form action="Produto" method="get" class="form">
    <input type="hidden" name="acao" value="pesq">
    <div class="form-group">
        <label for=""> Pesquisar </label>
        <input type="text" name="dados" class="form-control">
    </div>
    <div class="form-group">
        <button class="btn btn-primary">OK</button>
    </div>
</form>

<table class="table">
    <tr>
        <th>ID</th> <th>Nome</th> <th>Descrição</th> <th>foto01</th> <th> / </th> <th> X </th>
    </tr>
    <c:forEach items="${produtos}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.nome}</td>
            <td>${c.descricao}</td>
            <td>${c.foto01}</td>
            <td>/</td>
            <td>X</td>
        </tr> 
    </c:forEach>
    
</table>