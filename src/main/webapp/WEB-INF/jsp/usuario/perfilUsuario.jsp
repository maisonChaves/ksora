<%@include file="../topo.jsp" %>
<%@include file="../menu.jsp" %>

<script src="<c:url value='/js/usuario/edicao.js'/>"></script>
<script src="<c:url value='/js/usuario/cadastro.js'/>"></script>

<div class="cabecario shadow">
    <label>Alteração da Conta</label>
</div>
<div class="painel shadow">
    <br><br>
    <form>         
        <div class="grid" style="margin-left: 25%">
            <div class="row">
                <div class="span2">Nome:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">
                        <input type="text" id="nome" name="usuario.nome" value="${usuario.nome}" maxlength="50" />
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="span2">Email:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">        
                        <input type="text" id="email" name="usuario.email" value="${usuario.email}"/>
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                    </div>                    
                </div>
            </div>       
            <div class="row">
                <div class="span2">Nova Senha:</div>
                <div class="span1">
                    <div class="input-control  password size6 shadow">        
                        <input type="password" id="senha"  maxlength="15" oninput="Usuario.validaSegurancaSenha()"  />
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                        <meter value="0" id="mtSenha" max="100" class="shadow"></meter>                        
                    </div>                                                  
                </div>
            </div>
            <div class="row">
                <div class="span2">Confirmar Senha:</div>
                <div class="span1">
                    <div class="input-control  password size6 shadow">        
                        <input type="password" id="confirmarSenha" maxlength="15"/>
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                    </div>                    
                </div>
            </div>
        </div>        
        <input type="button" value="Alterar" class="shadow" onclick="EdicaoUsuario.validaCamposPerfilUsuario()"/>   
        <input type="hidden" name="usuario.id" value="${usuario.id}"/>                
        <input type="hidden" name="usuario.perfil" value="${usuario.perfil}"/>       
        <input type="hidden" name="usuario.senha" value="${usuario.senha}"/>       
        <input type="hidden" name="usuario.login" value="${usuario.login}"/>  
        <input type="hidden" name="usuario.dataCadastro" value="${usuario.dataCadastro}"/>
    </form>
    <div id="popUpValidacao"></div>
    <br>
</div>
<script>

</script>


<%@include file="../fundo.jsp" %>