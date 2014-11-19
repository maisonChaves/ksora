<%-- 
    Document   : select
    Created on : 19/11/2014, 09:41:30
    Author     : Leonardo
--%>

<%@tag description="Input do tipo Select" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags/ksora/" prefix="ksora"%>


<%@attribute name="onchange"%>
<%@attribute name="nomeCampo" type="java.lang.String"%>
<%@attribute name="obrigatorio" type="java.lang.Boolean"%>
<%@attribute name="id" required="true"%>
<%@attribute name="nome" required="true"%>
<jsp:doBody var="body" />


<div class="row">
    <div class="span2">${nomeCampo}:</div>
    <div class="span1">
        <div class="input-control select size6 shadow">
            <select id="${id}" name="${nome}" onchange="${onchange}" obrigatorio="${obrigatorio}" >
                ${body}
            </select>
        </div>                    
    </div>
</div>