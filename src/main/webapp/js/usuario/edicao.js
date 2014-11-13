var EdicaoUsuario = {
    validaCamposPerfilUsuario: function() {
        var mensagemPopUp = 'Campo Inválido';
        if ($('#nome').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo nome.', null, null);
            $('#nome').focus();
            return;
        }
        var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        if ($('#email').val() != "") {
            if (!filtro.test($('#email').val())) {
                Util.popUp(mensagemPopUp, 'Preencha o campo email corretamente.', null, null);
                $('#email').focus();
                return;
            }
        } else if ($('#email').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo email.', null, null);
            $('#email').focus();
            return;
        }
        else if (Usuario.validaSenha($('#senha').val(), $('#confirmarSenha').val())) {
            Util.popUp(mensagemPopUp, 'As senhas inseridas são diferentes.', height, width);
            $('#senha').val('');
            $('#confirmarSenha').val('');
            $('#senha').focus();
            return;
        }
        else if ($("#senha").val() != "") {
            $("input[name='usuario.senha']").val($("#senha").val());
        }

        EdicaoUsuario.editaPerfil();
    },
    editaPerfil: function() {
        Util.enviaRequisicao(Util.parametros("../usuario/alteraUsuarioPerfil", $("form").serialize(), "json", true, "Dados gravados com sucesso",
                "Perfil de usuário alterado com sucesso", null, null));
    },
    gravar: function() {
        Util.enviaRequisicao(Util.parametros("../usuario/edita", $("form").serialize(), "json", true, "Sucesso",
                "Dados atualizados com sucesso.", 100, 400));

    }
}