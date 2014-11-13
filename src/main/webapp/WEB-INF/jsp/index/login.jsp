<%@include file="../topo.jsp" %>

<style>
    .teste{     
        font-family: metroSysIcons;
        border-style: solid;
        border-color: #333333;    
        background:  #333333;
        height: 9%;
    }
    .formLogin{
        margin-top: 10px;
        margin-left: 50%;
    }
    #entrar{
        height: 34px;
        margin-left: 10px;
    }




</style>
<form id="frm" action="<c:url value='/usuario/login'/>">
    <div class="teste">    
        <div class="formLogin">
            <div class="input-control text size3 shadow">  
                <input type="text" placeholder="Usuário" id="usuario" name="usuario.login" maxlength="50"  />
                <button class="btn-clear" tabindex="-1" type="button"></button>
            </div>
            <div class="input-control text size3 shadow">       
                <input type="password" placeholder="Senha" id="senha" name="usuario.senha" maxlength="50"  />
                <button class="btn-clear" tabindex="-1" type="button"></button>
            </div>      
            <input type="submit" id="entrar" value="Entrar" class="shadow" />         
        </div>
    </div>
</form>
<script>
//    function  validaLogin() {
//        if ($("#usuario").val() == "" || $("#senha").val() == "") {
//            Util.popUp("Aviso", "Favor preencher os campos corretamente.", null, null);
//        }
//        var parametros = new Array();
//        parametros.push("usuario.login=", $("#usuario").val(), "&");
//        parametros.push("usuario.senha=", $("#senha").val());
//        $.ajax({
//            url: "<c:url value='/usuario/login'/>",
//            data: parametros.join(""),
//            dataType: "json",
//            async: true,
//            success: function(resposta) {
//                if (resposta.resposta == 'sucesso') {
//                    $("#frm").attr("action", "<c:url value='/usuario/login'/>");
//                    $("#frm").submit();
//                } else {
//                    Util.popUp("Erro ao tentar entrar.", "Login ou senha incorretos.", null, null);
//                    $("#statusLogin").html("Login ou senha incorretos.");
//                }
//            }
//        });
//    }



</script>
<%@include file="../fundo.jsp" %>
