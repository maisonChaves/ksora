<%-- 
    Document   : inputPassword
    Created on : 19/11/2014, 10:48:22
    Author     : Leonardo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Input de texto" pageEncoding="UTF-8"%>
<%@attribute name="nomeCampo"%>
<%@attribute name="id" required="true"%>
<%@attribute name="nome" required="true"%>
<%@attribute name="obrigatorio" type="java.lang.Boolean"%>
<%@attribute name="onkeyup"%>
<%@attribute name="onblur"%>
<%@attribute name="caracteres" type="java.lang.Integer"%>
<%@attribute name="valor" type="java.lang.String"%>
<%@attribute name="tamanho" type="java.lang.String"%>
<%@attribute name="readonly"%>

<div class="row">
    <div class="span2">${nomeCampo}:</div>
    <div class="span1">
        <div class="input-control  password size6 shadow">     
            <input type="password" 
                   id="${id}"
                   name="${nome}"
                   maxlength="${caracteres}"
                   obrigatorio="${obrigatorio}"
                   onkeyup="${onkeyup}"
                   onblur="${onblur}"
                   ${readonly} />
            <button class="btn-clear" tabindex="-1" type="button"></button>
        </div>                    
    </div>
</div>