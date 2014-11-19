<%-- 
    Document   : option
    Created on : 19/11/2014, 09:45:03
    Author     : Leonardo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Opção do input select" pageEncoding="UTF-8"%>
<%@attribute name="valor" type="java.lang.String"%>
<%@attribute name="selecionado" type="java.lang.Boolean"%>"%>
<jsp:doBody var="body" />
<option value="${valor}" 
<c:if test="${selecionado eq true}">selected</c:if>>
${body}
</option>