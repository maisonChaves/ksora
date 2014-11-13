<%@include file="../topo.jsp" %>
<%@include file="../menu.jsp" %>

<script src="<c:url value='/js/usuario/edicao.js'/>"></script>
<script src="<c:url value='/js/utils.js'/>"></script>

<div class="cabecario shadow">
    <label>Edição de Usuário</label>
</div>
<div class="painel shadow">
    <br><br>   
    <form>
        <input type="hidden" value="${usuario.id}" name="usuario.id"/>
        <div class="grid" style="margin-left: 25%">
            <div class="row">
                <div class="span2">Nome:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">       
                        <input type="text" id="nome" readonly="readonly" value="${usuario.nome}" maxlength="50" />

                    </div>                    
                </div>
            </div>
            <div class="row">
                <div class="span2">Email:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">        
                        <input type="text" id="email" readonly="readonly"  value="${usuario.email}"/>

                    </div>                    
                </div>
            </div>
            <div class="row">
                <div class="span2">Tipo Usuário:</div>
                <div class="span1">
                    <div class="input-control select size6 shadow">
                        <select id="tipoUsuario" name="usuario.perfil" >                            
                            <option value="1" <c:if test="${usuario.perfil eq 'TRADUTOR'}">selected</c:if>>Tradutor</option>
                            <option value="2" <c:if test="${usuario.perfil eq 'REVISOR'}">selected</c:if>>Revisor</option>
                            </select>
                        </div>                    
                    </div>
                </div>
                <div class="row">
                    <div class="span2">Login:</div>
                    <div class="span1">
                        <div class="input-control text size6 shadow">        
                            <input type="text" id="login" readonly="readonly" value="${usuario.login}"  maxlength="15"/>                        
                    </div>                    
                </div>
            </div>          
        </div>        
                    <input type="button" value="Salvar" class="shadow" onclick="EdicaoUduario.gravar()"/>   
    </form>
    <div id="popUpValidacao"></div>
</form>
<br>

</div>
<%@include file="../fundo.jsp" %>