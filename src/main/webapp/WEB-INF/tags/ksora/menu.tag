<%-- 
    Document   : menu
    Created on : 19/11/2014, 09:35:10
    Author     : Leonardo
--%>

<%@tag description="Menu" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navigation-bar dark">
    <nav class="navigation-bar-content">  
        <span class="element-divider"></span>
        <div class="element" style="margin-left: 3%;padding-left:  5px">
            <c:if test="${sessao.administrador}">
                <a class="dropdown-toggle" href="">Usuário</a>
                <ul class="dropdown-menu" data-role="dropdown">
                    <li><a href="<c:url value='/usuario/cadastro'/>">Cadastro</a></li>    
                    <li><a href="<c:url value='/usuario/consulta'/>">Consulta</a></li>    
                </ul>&nbsp;
            </c:if>
        </div>
        <span class="element-divider"></span>
        <div class="element">
            <a class="dropdown-toggle" href="#">Projeto</a>
            <ul class="dropdown-menu" data-role="dropdown">
                <li><a href="<c:url value='/projeto/cadastro'/>">Cadastro</a></li>                    
            </ul>&nbsp;
        </div>             
        <span class="element-divider"></span>

        <div class="element place-right" style="margin-right: 1%">
            <a class="dropdown-toggle" href="#">
                <span class="icon-cog">
                    <img src="<c:url value='/img/config.png'/>">
                </span>
            </a>
            <ul class="dropdown-menu place-right" data-role="dropdown">
                <li><a href="<c:url value='/usuario/perfilUsuario'/>">Perfil</a></li>
                <li class="divider"></li>
                <li><a href="<c:url value='/'/>">Sair</a></li>
            </ul>&nbsp;
        </div>                
        <span class="element-divider place-right"></span>
        <button class="element image-button image-left place-right">
            ${sessao.usuario.nome}            
        </button>
    </nav>
</nav>