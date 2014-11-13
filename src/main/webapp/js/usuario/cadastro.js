var Usuario = {
    validaCampos: function() {
        var mensagemPopUp = 'Campo Inválido',
                height = '100px',
                width = '400px';
        if ($('#nome').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo nome.', height, width);
            $('#nome').focus();
            return;
        }
        var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
        if ($('#email').val() != "") {
            if (!filtro.test($('#email').val())) {
                Util.popUp(mensagemPopUp, 'Preencha o campo email corretamente.', height, width);
                $('#email').focus();
                return;
            }
        } else if ($('#email').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo email.', height, width);
            $('#email').focus();
            return;
        }

        if ($('#tipoUsuario').val() == "") {
            Util.popUp(mensagemPopUp, 'Selecione um tipo de usuário.', height, width);
            $('#tipoUsuario').focus();
            return;
        }

        if ($('#login').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo login.', height, width);
            $('#login').focus();
            return;
        }

        if ($('#login').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo login.', height, width);
            $('#login').focus();
            return;
        }

        if ($('#senha').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo senha.', height, width);
            $('#senha').focus();
            return;
        } else if ($('#confirmarSenha').val() == "") {
            Util.popUp(mensagemPopUp, 'Preencha o campo confirmar senha.', height, width);
            $('#confirmarSenha').focus();
            return;
        } else if (Usuario.validaSenha($('#senha').val(), $('#confirmarSenha').val())) {
            Util.popUp(mensagemPopUp, 'As senhas inseridas são diferentes.', height, width);
            $('#senha').val('');
            $('#confirmarSenha').val('');
            $('#senha').focus();
            return;
        }
        Usuario.gravar();

    },
    validaSenha: function(senha, senhaConfirmacao) {
        if (senha != senhaConfirmacao) {
            return true;
        }
    },
    gravar: function() {
        Util.enviaRequisicao(Util.parametros("../usuario/gravar", $("form").serialize(), "json", true, "Dados gravados com sucesso",
                "Usuário cadastrado com sucesso", 100, 400));
        Util.limpaCampos();
    }
}

