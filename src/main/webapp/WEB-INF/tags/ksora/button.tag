<%-- 
    Document   : button
    Created on : 19/11/2014, 10:52:27
    Author     : Leonardo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag description="put the tag description here" pageEncoding="UTF-8"%>

<%@attribute name="texto"%>
<%@attribute name="tamanho"%>
<%@attribute name="onclick"%>
<%@attribute name="classe"%>
<%@attribute name="estilo"%>
<%@attribute name="id"%>
<%@attribute name="centralizado" type="java.lang.Boolean"%>


<input type="button" value="${texto}"  name="${idCampo}" class="shadow ${classe}"  
       onclick="${onclick}" style="${estilo}" id="${idCampo}"/>
