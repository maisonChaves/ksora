var Util = {
    popUp: function(titulo, texto, altura, largura) {
        $.Dialog({
            height: altura != null ? altura : "100px",
            width: largura != null ? largura : "400px",
            overlay: true,
            shadow: true,
            flat: true,
            content: '',
            onShow: function(_dialog) {
                $.Dialog.title(titulo);
                $.Dialog.content(texto);
                $.Metro.initInputs();
            }
        });
    },
    contadorCaracter: function(texto, campo) {
        $(campo).html("");
        $(campo).html(texto.length + " caracteres digitados.");
    },
    enviaRequisicao: function(parametros) {
        $.ajax({
            url: parametros.url,
            data: parametros.data,
            dataType: parametros.tipo,
            async: parametros.async,
            success: function(resposta) {
                if (resposta.resposta == "sucesso") {
                    Util.popUp(parametros.popUpTitulo, parametros.popUpTexto, parametros.popUpAltura, parametros.popUpLargura);
                } else {
                    Util.popUp("Erro", "Ocorreu um erro ao gravar os dados", parametros.popUpAltura, parametros.popUpLarguraa);
                }
            }
        });
    },
    parametros: function(url, data, tipo, async, popUpTitulo, popUptexto, popUpAltura, popUpLargura) {
        var parametros = new Object();
        parametros.url = url;
        parametros.data = data;
        parametros.tipo = tipo;
        parametros.async = async;
        parametros.popUpTitulo = popUpTitulo;
        parametros.popUpTexto = popUptexto;
        parametros.popUpAltura = popUpAltura;
        parametros.popUpLargura = popUpLargura;

        return parametros;
    },
    limpaCampos: function() {
        $("input:text").val("");
        $("input:password").val("");
        $("select").val("");
    }


}

