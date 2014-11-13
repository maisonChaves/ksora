<%@include file="../topo.jsp" %>
<%@include file="../menu.jsp" %>

<script src="<c:url value='/js/usuario/cadastro.js'/>"></script>
<script src="<c:url value='/js/usuario/consulta.js'/>"></script>
<script src="<c:url value='/js/utils.js'/>"></script>

<div class="cabecario shadow">
    <label>Consulta de Usuário</label>
</div>
<div class="painel shadow">
    <br>     
    <center>
        <div style="width: 90%">
            <table id="tabela" class="tabelaEditavel">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Login</th>
                        <th>Email</th>
                        <th>Perfil</th>
                        <th>Editar</th>
                        <th>Apagar</th>
                    </tr> 
                </thead>
                <tbody>
                </tbody>
            </table>
    </center>
    <br><br>
</div>
</div>
<script>$(document).ready(function() {ConsultaUsuario.carregaLista();});</script>





<%@include file="../fundo.jsp" %>