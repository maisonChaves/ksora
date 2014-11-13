<%@include file="../topo.jsp" %>
<%@include file="../menu.jsp" %>
<script src="<c:url value='/js/projeto/cadastro.js'/>"></script>
<script src="<c:url value='/js/utils.js'/>"></script>


<div class="cabecario shadow">
    <label>Cadastro de Projeto</label>
</div>
<div class="painel shadow">
    <br>
    <div class="grid" style="margin-left: 25%">
        <div class="row">
            <div class="span2">Nome:</div>
            <div class="span1">
                <div class="input-control text size6 shadow">       
                    <input type="text" id="nome" name="projeto.nome" maxlength="50"  />
                    <button class="btn-clear" tabindex="-1" type="button"></button>
                </div>                    
            </div>
        </div>            
    </div>
    <center>            
        <a href="#"><img src="<c:url value="/img/projeto/addFile.png" />" onclick="Projeto.cadastraArquivo()"/></a>
        <a href="#"><img src="<c:url value="/img/projeto/saveFile.png" />" onclick="Projeto.grava()"/></a>        
    </center>           
    <br>
    <center>
        <div style="width: 90%">
            <table id="tabela" class="tabelaEditavel">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Editar</th>
                        <th>Apagar</th>
                    </tr> 
                </thead>
                <tbody>
                </tbody>
            </table>
    </center>
    <br><br>
    <div id="popUpValidacao"></div>
    <br>
</div>

<%@include file="../fundo.jsp" %>