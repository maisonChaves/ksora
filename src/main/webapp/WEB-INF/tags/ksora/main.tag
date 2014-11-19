<%-- 
    Document   : main
    Created on : 19/11/2014, 09:32:06
    Author     : Leonardo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags/ksora/" prefix="ksora"%>
<%@tag description="Cabeçario e importações" pageEncoding="UTF-8"%>
<jsp:doBody var="body" />
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <head>    
        <title>ksora</title>
        <link rel="stylesheet" href='<c:url value="/template/css/metro-bootstrap.css"/>'>
        <link rel="stylesheet" href='<c:url value="/template/css/utils.css"/>'>
        <script src="<c:url value='/jquery/jQuery.js'/>"></script> 
        <script src="<c:url value='/jquery/jqueryComplexify.js'/>"></script>        
        <script src="<c:url value='/js/utils.js'/>"></script>
        <script src="<c:url value='/jquery/jquery-ui.js'/>"></script>
        <script src='<c:url value="/template/min/metro.min.js"/>'></script>
        <script src='<c:url value="/jquery/jquery.widget.min.js"/>'></script>    
        <script src="<c:url value='/jquery/jquery.dataTables.js'/>"></script>
    </head>
    <body class="metro">   
        <ksora:menu></ksora:menu>
        ${body}        
    </body>
</html>
