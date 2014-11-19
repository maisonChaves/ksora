<%@ taglib tagdir="/WEB-INF/tags/ksora/" prefix="ksora"%>
<script src="<c:url value='/js/usuario/cadastro.js'/>"></script>
<script src="<c:url value='/js/utils.js'/>"></script>

<ksora:main>
    <ksora:panel nomeTela="Cadastro Usuário">
        <ksora:grid>
            <ksora:input nomeCampo="Nome" nome="usuario.nome" id="nome" obrigatorio="true"  caracteres="50"/>
            <ksora:input nomeCampo="Email" nome="usuario.email" id="email" obrigatorio="true" caracteres="25"/>
            <ksora:select nomeCampo="Perfil do Usuário" id="perfil" nome="usuario.perfil" obrigatorio="true">
                <ksora:option valor="">Selecione</ksora:option>
                <ksora:option valor="GERENTE">Gerente</ksora:option>
                <ksora:option valor="TRADUTOR">Tradutor</ksora:option>
                <ksora:option valor="REVISOR">Revisor</ksora:option>
            </ksora:select>
            <ksora:input nomeCampo="Login" nome="usuario.login" id="login" caracteres="15"/>
            <ksora:inputPassword nomeCampo="Senha" nome="usuario.senha" id="senha" obrigatorio="true" caracteres="15"/>
            <ksora:inputPassword nomeCampo="Confirmar Senha" nome="confirmarSenha" id="confirmarSenha" obrigatorio="true" caracteres="15"/>           
        </ksora:grid>
        <ksora:button texto="Gravar" onclick="Usuario.validaCampos()" />
        <ksora:popUp id="popUpValidacao"/>
    </ksora:panel>
</ksora:main>