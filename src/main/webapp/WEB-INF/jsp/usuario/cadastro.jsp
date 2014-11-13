<%@include file="../topo.jsp" %>
<%@include file="../menu.jsp" %>

<script src="<c:url value='/js/usuario/cadastro.js'/>"></script>
<script src="<c:url value='/js/utils.js'/>"></script>

<div class="cabecario shadow">
    <label>Cadastro Usuário</label>
</div>
<div class="painel shadow">
    <br><br>   
    <form>
        <div class="grid" style="margin-left: 25%">
            <div class="row">
                <div class="span2">Nome:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">       
                        <input type="text" id="nome" name="usuario.nome" maxlength="50" />
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                    </div>                    
                </div>
            </div>
            <div class="row">
                <div class="span2">Email:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">        
                        <input type="text" id="email" name="usuario.email"/>
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                    </div>                    
                </div>
            </div>
            <div class="row">
                <div class="span2">Tipo Usuário:</div>
                <div class="span1">
                    <div class="input-control select size6 shadow">
                        <select id="tipoUsuario" name="usuario.perfil" >
                            <option value="">Selecione</option>
                            <option value="1">Tradutor</option>
                            <option value="2">Revisor</option>
                        </select>
                    </div>                    
                </div>
            </div>
            <div class="row">
                <div class="span2">Login:</div>
                <div class="span1">
                    <div class="input-control text size6 shadow">        
                        <input type="text" id="login" name="usuario.login" maxlength="15"/>
                        <button class="btn-clear" tabindex="-1" type="button"></button>
                    </div>                    
                </div>
            </div>
            <div class="row">
                <div class="span2">Senha:</div>
                <div class="span1">
                    <div class="input-control  password size6 shadow">        
                        <input type="password" id="senha" name="usuario.senha" maxlength="15" oninput="Usuario.validaSegurancaSenha()"  />
                        <button class="btn-clear" tabindex="-1" type="button"></button>                                             
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
        <input type="button" value="Salvar" class="shadow" onclick="Usuario.validaCampos()"/>   
    </form>
    <div id="popUpValidacao"></div>
</form>
<br>

</div>
<%@include file="../fundo.jsp" %>