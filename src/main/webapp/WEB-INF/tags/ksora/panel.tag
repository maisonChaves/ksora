<%-- 
    Document   : panel
    Created on : 19/11/2014, 09:13:53
    Author     : Leonardo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Painel de conteúdo" pageEncoding="UTF-8"%>

<jsp:doBody var="body" />
<%@attribute name="nomeTela" type="java.lang.String"%>


<div class="cabecario shadow">
    <label>${nomeTela}</label>
</div>
<div class="painel shadow">
    <br><br>       
    ${body}
    <br><br>
</div>
